using UnityEngine;
using System.Collections;

public class BladeProjectile : ProjectileScript {

	public Blades playerBladeScript;

	void Start () {
		playerBladeScript = GameObject.FindGameObjectWithTag("Player").GetComponent<Blades>();
	}
	

	void Update () {
	}

	void OnTriggerEnter(Collider c){
		if(playerBladeScript!=null)
		{
			if(c.gameObject.tag == "OtherPlayer" && playerBladeScript.blade){
				base.ActivateParticle();
				GameSoundCommands.instance.PlayBladeHit();
				c.gameObject.GetComponent<CarRally>().dealDamage(damage);
				//Debug.Log(this.owner+" deal "+damage+" to "+c.gameObject.name);
			}
		}
	}



}
