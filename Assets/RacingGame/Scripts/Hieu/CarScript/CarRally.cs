using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CarRally : MonoBehaviour {
	[Range (0,100)]
	public float currentHealth = 100f;
	public int boost = 3;
	public const int MAXSLOT = 3;
	public Weapon[] weapon;
	[HideInInspector]
	public int[] weaponslot;
	public GameObject target;
	public GameObject[] model;
	bool add = false;


	// Use this for initialization
	void Start () {
		weaponslot = new int[MAXSLOT];
	}
	
	// Update is called once per frame
	void Update () {

	}

	public float getHealth(){
		if(currentHealth <= 0) return 0;
		return currentHealth;
	}

	public void dealDamage(float val){
		currentHealth -= val;
		if(currentHealth<=0) currentHealth = 0;
		networkView.RPC ("broadcastDamage", RPCMode.All, currentHealth, networkView.viewID);
	}
	
	[RPC]
	void broadcastDamage(float _currentHealth,NetworkViewID _ID){
		NetworkView.Find (_ID).GetComponent<CarRally> ().currentHealth = _currentHealth;
	}

	void OnTriggerEnter(Collider c){
		if(c.gameObject.tag == "Weapon"){
			Debug.Log ("pick up item");
			add = false;
			assignedWeapon();
			Network.RemoveRPCs(c.gameObject.networkView.viewID);
			Network.Destroy(c.gameObject.networkView.viewID);
			//Destroy(c.gameObject);
		}
	}


	void assignedWeapon(){
		int slot = -1;
		do{
			slot = Random.Range(0,MAXSLOT);
			//Debug.Log("Random number "+slot);
			if(weaponFull()){
				if(boost<3) {
					Debug.Break(); 
					boost++;
					UIManager_Game.instance.AddBoost();
				}
				else {
					break;
				}
			}
		}while(weaponIsAlreadyPickUp(slot) && !add);
		if (!weaponIsAlreadyPickUp (slot) && !add) {
			addWeapon (slot);
			Debug.Log ("pick up " + slot);
		}
	}
	
	public void addWeapon(int num){
		this.weapon[num].enabled = true;
		UIManager_Game.SetWeaponEnabled(num,true);
		for(int i=0;i<MAXSLOT;i++){
			if(this.weaponslot[i] == -1){
				this.weaponslot[i] = num;
				add = true;
				return;
			}
		}
	}
	
	public void removeWeapon(int num){
		this.weapon[num].enabled = false;
		UIManager_Game.SetWeaponEnabled(num,false);
		for(int i=0;i<MAXSLOT;i++){
			if(this.weaponslot[i] == num){
				this.weaponslot[i] = -1;
				//return;
			}
		}
	}
	
	bool weaponIsAlreadyPickUp(int num){
		for(int i=0;i<MAXSLOT;i++){
			if(num == this.weaponslot[i]){
				return true;
			}
		}
		return false;
	}
	
	bool weaponFull(){
		for(int i=0;i<MAXSLOT;i++){
			if(this.weaponslot[i] == -1){
				return false;
			}
		}
		return true;
	}
}
//testTom
