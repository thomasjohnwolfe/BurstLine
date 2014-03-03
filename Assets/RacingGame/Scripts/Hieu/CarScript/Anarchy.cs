using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Anarchy: CarRally {
	List<Color> colorset = new List<Color> ();
	int index = 0;
	bool assigncolor = false;
	// Use this for initialization
	void Start () {
		colorset.Add (Color.magenta);
		colorset.Add (Color.red);
		colorset.Add (Color.black);
		colorset.Add (Color.blue);

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
		if(!networkView.isMine){
			networkView.RPC("updateHealth",RPCMode.All,getHealth());
		}
		if (!assigncolor) {
			index = this.GetComponentInChildren<playerID> ().ID;
		}
		if (index!= 0 && !assigncolor) {
			setCarColor(index);
			assigncolor = true;
		}

		if(networkView.isMine){
		
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
	[RPC]
	void updateHealth(float val){
		currentHealth = val;
	}

	void setCarColor(int i){
		m.renderer.material.SetColor ("_Color", colorset[i-1]);
	}

}
