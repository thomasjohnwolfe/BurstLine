using UnityEngine;
using System.Collections;

public class ChainGrabProjectile : ProjectileScript {

	// Use this for initialization
	void Start () {
		time = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
		if(networkView.isMine){
			if(target == null){
				if(Time.time - time > lifetime){
					DestroyGameObject();
				}
				transform.Translate( Vector3.forward*speed*Time.deltaTime);
			}
			else{
				target.GetComponent<DisableAll>().Disable();
				target.transform.Translate(toOwner(target.transform.position)*-speed*Time.deltaTime,Space.World);
				transform.Translate(toOwner(this.transform.position)*-speed*Time.deltaTime);

				if( (target.transform.position - owner.transform.position).magnitude <10){
					target.GetComponent<DisableAll>().Enable();
					target = null;
				}
				if( (this.transform.position - owner.transform.position).magnitude < 1){
					DestroyGameObject();
				}
			}

			Vector3 fwd = transform.TransformDirection(Vector3.forward);
			RaycastHit hit;
			if(Physics.Raycast(this.transform.position,fwd,out hit,2)){
				Debug.Log(hit.collider.gameObject.name);

				if(hit.collider.gameObject.tag == "OtherPlayer"){
					target = hit.collider.gameObject;
				}
			}
		}
	}


	Vector3 toOwner(Vector3 pos){
		Debug.Log ((pos - this.owner.transform.position).normalized);
		return (pos - this.owner.transform.position).normalized;
	}

	/*
	void OnTriggerEnter(Collider c){
		if(c.gameObject.layer == 13){
			Debug.Log("chain grab hit target");
			target = c.gameObject;
			//c.gameObject.transform.parent = this.gameObject.transform;
		}
	}
	*/
}
