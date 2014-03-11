using UnityEngine;
using System.Collections;

public class ChainGrab : Weapon {
	public GameObject shootLocation;
	public GameObject projectilePrefab;
	public override void execute(){
		GameObject clone;
		clone =(GameObject) Network.Instantiate(this.projectilePrefab,this.shootLocation.transform.position,this.shootLocation.transform.rotation,0);
		//clone.transform.parent = this.transform;
		assignToPrefab(this,clone.GetComponent<ChainGrabProjectile>());
	}
}
