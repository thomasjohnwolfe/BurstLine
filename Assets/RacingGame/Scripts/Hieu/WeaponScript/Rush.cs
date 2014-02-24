using UnityEngine;
using System.Collections;

public class Rush : Weapon {
	

	public override void execute(){
		this.rigidbody.AddForce(this.rigidbody.velocity.normalized*speed,ForceMode.VelocityChange);
		RushProjectile script;
		script = this.GetComponentInChildren<RushProjectile>();
		script.enabled = true;
		assignToPrefab(this,script);
	}
}
