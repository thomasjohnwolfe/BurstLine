using UnityEngine;
using System.Collections;

public class MachineGunProjectile : ProjectileScript {

	// Use this for initialization
	void Start () {
		time= Time.time;
	}
	
	// Update is called once per frame
	void Update () {
		if (networkView.isMine) {
			if ((Time.time - time) > lifetime) {
				DestroyGameObject();
			}
			RaycastHit hit;
			if(Physics.Raycast(this.transform.position,this.transform.forward,out hit,1.5f)){
				//Debug.Log(hit.collider.gameObject.name);
				if(hit.collider.gameObject.tag == "OtherPlayer"){
					hit.collider.gameObject.GetComponent<CarRally>().dealDamage(damage);
				}
				Network.Instantiate(Resources.Load("ParticlePrefabs/CollideParticle"),this.transform.position,Quaternion.identity,0);
				DestroyGameObject();
			}
		}
	}
	void FixedUpdate(){
		this.rigidbody.MovePosition(this.rigidbody.position+this.transform.forward*speed*Time.deltaTime);
		//this.rigidbody.AddForce(this.transform.forward*speed);
	}
	/*
	void OnCollisionEnter(Collision c){
		if (networkView.isMine) {
			if (c.gameObject.tag == "OtherPlayer") { 
				DestroyGameObject();
			}
		}
	}
	*/

}
