using UnityEngine;
using System.Collections;

public class RushProjectile : ProjectileScript {

	// Use this for initialization
	void Start () {
		time = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
		if(Time.time - time > this.lifetime){
			this.enabled = false;
			time = Time.time;
		}
		//Debug.Log(damage);
	}

	void FixedUpdate(){
		//this.owner.rigidbody.AddForce(this.owner.rigidbody.velocity.normalized*speed,ForceMode.VelocityChange);
	}

	void OnTriggerEnter(Collider c){
		//Debug.Log(c.gameObject.layer);
		//set the layer of the collider subfolder, not the whole car gameobject
		if(c.gameObject!=this.owner && c.gameObject.layer == 13){
			Debug.Log(this.owner+" deal "+damage+" to "+c.gameObject.name);
		}
	}
}
