using UnityEngine;
using System.Collections;

public class LaserBeam : Weapon {
	GameObject clone;
	public GameObject shootLocation;
	public GameObject projectilePrefab;
	public override void execute(){

		clone = Network.Instantiate(this.projectilePrefab,this.shootLocation.transform.position+new Vector3(0,1,2),Quaternion.identity,0) as GameObject;
		clone.gameObject.transform.parent = this.transform;
		assignToPrefab(this,clone.GetComponent<LaserBeamProjectile>());
		Debug.Log("Laser Beam");
	}
}
