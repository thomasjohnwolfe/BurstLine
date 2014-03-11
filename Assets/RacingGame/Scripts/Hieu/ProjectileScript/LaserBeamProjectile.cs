using UnityEngine;
using System.Collections;

public class LaserBeamProjectile : ProjectileScript {

	// Use this for initialization
	void Start () {
		time = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
		if (networkView.isMine) {
			if ((Time.time - time) > lifetime) {
				DestroyGameObject();
			}
		}
	}

	void OnCollisionEnter(Collision c){
		if (networkView.isMine) {
						if (c.gameObject.layer == 13) { //layer 13 is Cars
							DestroyGameObject();
								//deal damage to the other car here
						}
				}
	}
	/*
	void OnNetworkInstantiate(NetworkMessageInfo info) {
		Debug.Log (networkView.viewID + " spawned");
		if (Network.isServer) {
			Network.RemoveRPCs (networkView.viewID);
			Network.Destroy (gameObject);
		}
	}
	*/
}
