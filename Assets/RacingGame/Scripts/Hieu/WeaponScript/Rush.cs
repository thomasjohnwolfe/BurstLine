using UnityEngine;
using System.Collections;

public class Rush : Weapon {
	public GameObject particle;
	float time;
	RushProjectile scriptProjectile;
	RushParticle scriptParticle;
	bool rush = false;
	public override void execute(){
		this.rigidbody.AddForce(this.rigidbody.velocity.normalized*speed,ForceMode.VelocityChange);

		scriptProjectile = this.GetComponentInChildren<RushProjectile>();
		scriptParticle = this.GetComponentInChildren<RushParticle>();
		this.networkView.RPC("EmitRushParticle",RPCMode.All,1);
		time = Time.time;

		assignToPrefab(this,scriptProjectile);
	}
	void Update(){
		if(rush && (Time.time-time)> lifetime){
			this.networkView.RPC("EmitRushParticle",RPCMode.All,0);
		}
	}
	[RPC]
	void EmitRushParticle(int i){
		if(i==1){
			scriptProjectile.enabled = true;
			scriptParticle.Enable(true);
			rush = true;
		}
		else{
			scriptProjectile.enabled = false;
			scriptParticle.Enable(false);
			rush = false;
		}
	}

}
