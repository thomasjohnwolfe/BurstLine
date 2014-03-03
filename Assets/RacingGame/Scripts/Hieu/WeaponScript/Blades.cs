using UnityEngine;
using System.Collections;

public class Blades : Weapon {
	public GameObject[] particle;
	float time;
	BladeProjectile[] script;
	bool blade = false;
	public override void execute(){
		script = this.GetComponentsInChildren<BladeProjectile>();
		time= Time.time;
		this.networkView.RPC ("EmitBladeParticle",RPCMode.All,"BladeOpen",1);
	}
	void Update(){
		if(blade && (Time.time - time) > lifetime){
			this.networkView.RPC ("EmitBladeParticle",RPCMode.All,"BladeClose",0);
		}
	}
	[RPC]
	void EmitBladeParticle(string name,int i){
		if(i==1){
			this.animation.CrossFade(name);
			blade = true;
			foreach(BladeProjectile e in script){
				e.enabled = true;
				assignToPrefab(this,e);
			}
			foreach(GameObject g in particle){
				g.particleEmitter.emit=true;
			}
		}
		else{
			this.animation.CrossFade(name);
			blade= false;
			foreach(BladeProjectile e in script){
				e.enabled = false;
			}
			foreach(GameObject g in particle){
				g.particleEmitter.emit=false;
			}
		}
	}
}
