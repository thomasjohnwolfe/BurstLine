using UnityEngine;
using System.Collections;

public class Blades : Weapon {
	public GameObject[] particle;
	float time;
	BladeProjectile[] script;
	public bool blade = false;
	public override void execute(){
		isUpdate = true;
		this.networkView.RPC ("EmitBladeParticle",RPCMode.All,this.networkView.viewID,"BladeOpen",1);
	}
	void Update(){
		if(isUpdate){
			if(blade && (Time.time - time) > lifetime){
				this.networkView.RPC ("EmitBladeParticle",RPCMode.All,this.networkView.viewID,"BladeClose",0);
				isUpdate = false;
				this.networkView.RPC ("disableWeapon",RPCMode.All,this.networkView.viewID,index);
			}
		}
	}
	[RPC]
	void EmitBladeParticle(NetworkViewID id,string name,int i){
		script = NetworkView.Find(id).GetComponentsInChildren<BladeProjectile>();
		if(i==1){
			time= Time.time;
			NetworkView.Find(id).animation.CrossFade(name);
			GameSoundCommands.instance.PlayBladeSheathe();
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
			NetworkView.Find(id).animation.CrossFade(name);
			GameSoundCommands.instance.PlayBladeUnSheathe();
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
