using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CarRally : MonoBehaviour {
	public const int MAXSLOT = 3;
	[Range (0,1)]
	public float currentHealth = 1f;
	public Weapon[] weapon;
	public int[] weaponslot;
	public GameObject target;
	bool add = false;
	public int boost = 3;
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
	}

	void OnTriggerEnter(Collider c){
		if(c.gameObject.tag == "Weapon"){
			Debug.Log ("pick up item");
			add = false;
			assignedWeapon();
			Destroy(c.gameObject);
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
