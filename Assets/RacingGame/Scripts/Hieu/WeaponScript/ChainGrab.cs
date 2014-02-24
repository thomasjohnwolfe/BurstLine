using UnityEngine;
using System.Collections;

public class ChainGrab : Weapon {
	public override void execute(){
		GameObject clone;
		clone =(GameObject) Instantiate(this.projectilePrefab,this.shootLocation.transform.position,this.shootLocation.transform.rotation);
		//clone.transform.parent = this.transform;
		assignToPrefab(this,clone.GetComponent<ChainGrabProjectile>());

	}
}
