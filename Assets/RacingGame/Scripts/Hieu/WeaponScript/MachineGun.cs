using UnityEngine;
using System.Collections;

public class MachineGun : Weapon {
	public GameObject[] shootLocation;
	public GameObject[] particle;
	public GameObject projectilePrefab;
	public int numberProjectile;
 	public int ammo;
	int count;
	float time;
	bool emitParticle = false;
	void Start (){
		count = ammo;
		Debug.Log ("Machine gun: "+count);
	}
	public override void execute(){
		GameSoundCommands.instance.PlayShoot();	
		foreach(GameObject location in shootLocation){
			for(int i=0;i<numberProjectile;i++){
				GameObject clone;
				clone = Network.Instantiate(this.projectilePrefab,location.transform.position,location.transform.rotation,0) as GameObject;
				count--;
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
		if(count<=0){
			this.networkView.RPC("EmitMachineGunParticle",RPCMode.All,0);
			count = ammo;
			this.networkView.RPC ("disableWeapon",RPCMode.All,this.networkView.viewID,index);
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
