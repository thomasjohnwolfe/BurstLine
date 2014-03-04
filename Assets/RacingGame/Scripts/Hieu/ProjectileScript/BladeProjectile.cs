using UnityEngine;
using System.Collections;

public class BladeProjectile : ProjectileScript {

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	}

	void OnTriggerEnter(Collider c){
		if(c.gameObject.tag == "OtherPlayer"){
			c.gameObject.GetComponent<CarRally>().dealDamage(damage);
			//Debug.Log(this.owner+" deal "+damage+" to "+c.gameObject.name);
		}
	}

}
