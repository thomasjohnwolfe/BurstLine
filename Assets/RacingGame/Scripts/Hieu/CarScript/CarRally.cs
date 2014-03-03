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
	public GameObject model;
	bool add = false;


	// Use this for initialization
	void Start () {
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
	}

	void OnTriggerEnter(Collider c){
		if(c.gameObject.tag == "Weapon"){
			Debug.Log ("pick up item");
			add = false;
			assignedWeapon();
			Network.RemoveRPCs(c.gameObject.networkView.viewID);
			Network.Destroy(c.gameObject);
			//Destroy(c.gameObject);
		}
	}

	void assignedWeapon(){
		int slot = -1;
		do{
			slot = Random.Range(0,MAXSLOT);
			Debug.Log("Random number "+slot);
			if(weaponFull()){
				if(boost<3) {
					boost++;
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
	
	void addWeapon(int num){
		this.weapon[num].enabled = true;
		for(int i=0;i<MAXSLOT;i++){
			if(this.weaponslot[i] == -1){
				this.weaponslot[i] = num;
				add = true;
				return;
			}
		}
	}
	
	void removeWeapon(int num){
		this.weapon[num].enabled = false;
		for(int i=0;i<MAXSLOT;i++){
			if(this.weaponslot[i] == num){
				this.weaponslot[i] = -1;
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
