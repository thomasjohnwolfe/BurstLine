using UnityEngine;
using System.Collections;

public class RushProjectile : ProjectileScript {

	public Rush playerRushScript;

	// Use this for initialization
	void Start () {
		playerRushScript = GameObject.FindGameObjectWithTag("Player").GetComponent<Rush>();
		time = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
	}

	void FixedUpdate(){
		//this.owner.rigidbody.AddForce(this.owner.rigidbody.velocity.normalized*speed,ForceMode.VelocityChange);
	}

	void OnTriggerEnter(Collider c){
		//Debug.Log(c.gameObject.layer);
		//set the layer of the collider subfolder, not the whole car gameobject
		if(playerRushScript !=null)
		{
			if(c.gameObject.tag == "OtherPlayer" && playerRushScript.rush){
				c.gameObject.GetComponent<CarRally>().dealDamage(damage);
				GameSoundCommands.instance.PlayShoot();
				//Debug.Log(this.owner+" deal "+damage+" to "+c.gameObject.name);
			}
		}
	}
}
