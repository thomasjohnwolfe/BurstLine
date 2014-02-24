using UnityEngine;
using System.Collections;

public class CarRally : MonoBehaviour {
	public const int MAXSLOT = 3; 
	public int health;
	public Weapon[] weapon;
	public int[] weaponslot;
	public GameObject target;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	void OnTriggerEnter(Collider c){
		if(c.gameObject.tag == "Weapon"){
			assignedWeapon();
			Destroy(c.gameObject);
		}
	}
	
	void assignedWeapon(){
		int slot;
		do{
			slot = Random.Range(0,MAXSLOT);
		}while(weaponIsAlreadyPickUp(slot));
		addWeapon(slot);
		Debug.Log("pick up "+slot);
	}
	
	void addWeapon(int num){
		this.weapon[num].enabled = true;
		for(int i=0;i<MAXSLOT;i++){
			if(this.weaponslot[i] == -1){
				this.weaponslot[i] = num;
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
}
