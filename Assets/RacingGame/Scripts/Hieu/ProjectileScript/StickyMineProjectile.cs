using UnityEngine;
using System.Collections;

public class StickyMineProjectile : ProjectileScript {

	// Use this for initialization
	void Start () {
		time = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
		if (networkView.isMine) {
			if (Time.time - time > lifetime) {
				Debug.Log("destroy");
				Network.RemoveRPCs (networkView.viewID);
				Network.Destroy (gameObject);
			}
		}
	}
	void FixedUpdate(){
		//this.rigidbody.velocity = owner.transform.up*speed;
	}
}
