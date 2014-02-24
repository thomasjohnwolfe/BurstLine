using UnityEngine;
using System.Collections;

public class Anarchy: CarRally {

	// Use this for initialization
	void Start () {
		weapon = new Weapon[MAXSLOT];
		weaponslot = new int[MAXSLOT];
		weapon[0] = this.GetComponent<Blades>() as Weapon;
		weapon[1] = this.GetComponent<ChainGrab>() as Weapon;
		weapon[2] = this.GetComponent<Rush>() as Weapon;
		for(int i = 0; i<MAXSLOT;i++){
			weapon[i].owner = this.gameObject;
			//weapon[i].enabled = false;
		}
		//set up weaponslot -1 is empty
		for(int i = 0; i<MAXSLOT;i++){
			weaponslot[i] = -1;
		}
	}
	
	// Update is called once per frame
	void Update () {
		foreach (Weapon w in weapon){
			if(Input.GetKeyDown(w.keyInput) && w.enabled){
				
				w.execute();
				//w.enabled = false;
				//for debug only
				target = null;
			}
		}
	}
}
