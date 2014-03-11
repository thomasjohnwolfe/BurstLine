using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Anarchy: CarRally {
	public Material[] mat;
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
		weapon = this.GetComponents<Weapon>();
		for(int i=0; i<MAXSLOT;i++){
			weapon[i].name = "Weapon "+(i+1).ToString();
			Debug.Log(weapon[i].name);
			weapon[i].index = i;
		}
		for(int i = 0; i<MAXSLOT;i++){
			weapon[i].owner = this.gameObject;
			weapon[i].enabled = false;
		}
		//set up weaponslot -1 is empty
		for(int i = 0; i<MAXSLOT;i++){
			weaponslot[i] = -1;
		}
	}
	
	// Update is called once per frame
	void Update () {
		//if(!networkView.isMine){
		//networkView.RPC("updateHealth",RPCMode.All,getHealth());
		//}
		if (!assigncolor) {
			index = this.GetComponentInChildren<playerID> ().ID;
		}
		if (index!= 0 && !assigncolor) {
			setCarColor(index);
			assigncolor = true;
		}

		if(networkView.isMine){
			for(int i=0;i<MAXSLOT;i++){
				if(!weapon[i].isUpdate){
					if( (Input.GetKeyDown(weapon[i].keyInput) || Input.GetButtonDown(weapon[i].name)) && weapon[i].enabled){
						weapon[i].execute();
					}
				}
			}
		}
	}
	[RPC]
	void updateHealth(float val){
		currentHealth = val;
	}

	void setCarColor(int i){
		//Debug.Log ("i  is " + i);
		//Debug.Log (model[0].renderer.materials[0].name);
		foreach (GameObject m in model) {
			m.renderer.material	= mat[i-1];	
		}
		//model.renderer.material.SetColor ("_Color", colorset[i-1]);
	}

}
