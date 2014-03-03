using UnityEngine;
using System.Collections;

public class MachineGun : Weapon {
	public GameObject[] shootLocation;
	public GameObject[] particle;
	public GameObject projectilePrefab;
	public int numberProjectile;
	float time;
	bool emitParticle = false;
	public override void execute(){
		foreach(GameObject location in shootLocation){
			for(int i=0;i<numberProjectile;i++){
				GameObject clone;
				clone = Network.Instantiate(this.projectilePrefab,location.transform.position,location.transform.rotation,0) as GameObject;
				assignToPrefab(this,clone.GetComponent<MachineGunProjectile>());
				//clone.rigidbody.velocity = location.transform.forward*speed;
				//clone.rigidbody.velocity = transform.TransformDirection(Vector3.forward*speed);
			}
		}
		this.networkView.RPC("EmitMachineGunParticle",RPCMode.All,1);

	}

	void Update(){
		if(emitParticle && (Time.time-time)> 0.5f){
			this.networkView.RPC("EmitMachineGunParticle",RPCMode.All,0);
		}
	}
	[RPC]
	void EmitMachineGunParticle(int boolean){
		if(boolean == 1){
			foreach(GameObject p in particle){
				p.particleEmitter.emit = true;
				time=Time.time;
				emitParticle = true;
			}	
		}
		else{
			foreach(GameObject p in particle){
				p.particleEmitter.emit = false;
				emitParticle = false;
			}
		}
	}

}
