using UnityEngine;
using System.Collections;

public class SentinelCar : CarRally {


	// Use this for initialization
	void Start () {
		weapon = new Weapon[MAXSLOT];
		weaponslot = new int[MAXSLOT];
		weapon[0] = this.GetComponent<HomingMissile>() as Weapon;
		weapon[1] = this.GetComponent<LaserBeam>() as Weapon;
		weapon[2] = this.GetComponent<StickyMine>() as Weapon;
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
		test ();
		foreach (Weapon w in weapon){
			if(Input.GetKeyDown(w.keyInput) && w.enabled){

				w.execute();
				//w.enabled = false;
				//for debug only
				target = null;
			}
		}
	}

	void test(){

		RaycastHit hit;
		Vector3 point = this.transform.position;
		if(Physics.SphereCast(point,10,this.transform.forward,out hit,60)){

			if(hit.collider.gameObject.layer == 13){	//use layer if tag is not available
				target = hit.collider.gameObject;
			}
		}
		if(target!=null){
			//Debug.Log(hit.collider.name+"........."+hit.distance);
			Debug.DrawLine(point+new Vector3(0,1,0),target.transform.position,Color.red);
		}
	}


}
