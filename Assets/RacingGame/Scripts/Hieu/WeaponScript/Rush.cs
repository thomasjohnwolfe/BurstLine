using UnityEngine;
using System.Collections;

public class Rush : Weapon {
	public GameObject particle;
	float time;
	RushProjectile scriptProjectile;
	RushParticle scriptParticle;
	bool rush = false;
	public override void execute(){
		isUpdate = true;
		this.rigidbody.AddForce(this.rigidbody.velocity.normalized*speed,ForceMode.VelocityChange);
		//scriptProjectile = this.GetComponentInChildren<RushProjectile>();
		//scriptParticle = this.GetComponentInChildren<RushParticle>();
		this.networkView.RPC("EmitRushParticle",RPCMode.All,this.networkView.viewID,1);
		time = Time.time;
		assignToPrefab(this,scriptProjectile);
	}
	void Update(){
		if(isUpdate){
			if(rush && (Time.time-time)> lifetime){
				Debug.Log("stop emiting");
				this.networkView.RPC("EmitRushParticle",RPCMode.All,this.networkView.viewID,0);
				isUpdate = false;
				this.networkView.RPC ("disableWeapon",RPCMode.All,this.networkView.viewID,index);
			}
		}
	}
	[RPC]
	void EmitRushParticle(NetworkViewID id,int i){
		scriptProjectile = NetworkView.Find(id).GetComponentInChildren<RushProjectile>();
		scriptParticle = NetworkView.Find(id).GetComponentInChildren<RushParticle>();
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
