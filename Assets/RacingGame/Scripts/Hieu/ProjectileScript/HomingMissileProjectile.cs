using UnityEngine;
using System.Collections;

public class HomingMissileProjectile : ProjectileScript {
	// Use this for initialization
	void Start () {
		time = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
		if (networkView.isMine) {
			float distance = 0;
			if ((Time.time - time) > lifetime) {
				Network.RemoveRPCs (networkView.viewID);
				Network.Destroy (gameObject);
			}
			if (target != null) {
				distance = (target.transform.position - owner.transform.position).magnitude;
				if (distance < range) { //distance from shooting car to target
						if ((target.transform.position - this.transform.position).magnitude < 5) { //distance from projectile to target
								this.rigidbody.velocity = this.transform.forward * speed;
						} else {
								this.transform.LookAt (target.transform.position);
								this.transform.Translate (Vector3.forward * speed * Time.deltaTime);
						}
				}
			}
		}
	}

	void OnCollisionEnter(Collision c){
		if (networkView.isMine) {
				if (c.gameObject.layer == 13) { //layer 13 is Cars
					Network.RemoveRPCs (networkView.viewID);
					Network.Destroy (gameObject);
						//deal damage to the other car here
				}
		}
	}
	void FixedUpdate(){
		//this.rigidbody.MovePosition(this.rigidbody.position+new Vector3(0,0,speed)*Time.deltaTime);
	}
}
