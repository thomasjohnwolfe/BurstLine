using UnityEngine;
using System.Collections;

public class ChainGrabProjectile : ProjectileScript {

	// Use this for initialization
	void Start () {
		time = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
		if(target == null){
			if(Time.time - time > lifetime){
				Destroy(this.gameObject);
			}
			transform.Translate(Vector3.forward*speed*Time.deltaTime);
		}
		else{
			transform.Translate(toOwner()*-speed*Time.deltaTime);
		}
		Vector3 fwd = transform.TransformDirection(Vector3.forward);
		RaycastHit hit;
		if(Physics.Raycast(this.transform.position,fwd,out hit,2)){
			Debug.Log(hit.collider.gameObject.name);
			if(hit.collider.gameObject.tag == "Player"){
			target = hit.collider.gameObject;
			target.transform.parent = this.gameObject.transform;
			}
		}
	}

	Vector3 toOwner(){
		return (this.transform.position - this.owner.transform.position).normalized;
	}

	void OnTriggerEnter(Collider c){

		if(c.gameObject.layer == 13){
			Debug.Log("chain grab hit target");
			target = c.gameObject;
			c.gameObject.transform.parent = this.gameObject.transform;
		}
	}
}
