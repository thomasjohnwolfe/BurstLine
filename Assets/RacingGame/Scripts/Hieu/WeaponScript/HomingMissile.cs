using UnityEngine;
using System.Collections;

public class HomingMissile : Weapon {
	public float range = 60;
	public float radius = 10;
 	GameObject target;
	public GameObject shootLocation;
	public GameObject projectilePrefab;
	public int numberProjectile;
	public override void execute(){
		GameObject clone;
		findTarget();	//find target
		for(int i=0; i< this.numberProjectile;i++){
			//Debug.Log(target.name);
			//instantiate missile, pass info to projectile
			clone = Network.Instantiate(this.projectilePrefab,this.shootLocation.transform.position,Quaternion.identity,0) as GameObject;

			//assign all properties from base class Weapon, to the Prfab script
			assignToPrefab(this,clone.GetComponent<HomingMissileProjectile>());

			//assign the extra properties of Homing Missile to the prefab script
			clone.GetComponent<HomingMissileProjectile>().target = this.target;
			clone.GetComponent<HomingMissileProjectile>().range = this.range;


			if(target==null || (target.transform.position - this.transform.position).magnitude > range){
				//Debug.Log(target);
				clone.rigidbody.velocity = this.transform.forward*speed;
			}
			//Debug.Log("Homing Missile");
		}
	}
	void findTarget(){
		RaycastHit hit;
		Vector3 point = this.transform.position;
		if(Physics.SphereCast(point,radius,this.transform.forward,out hit,this.range)){
			if(hit.collider.gameObject.layer == 13){	//layer 13 is Cars
				//use layer if tag is not available
				target = hit.collider.gameObject;
			}
		//	Debug.Log(hit.collider.name+"........."+hit.distance);
			Debug.DrawLine(point+new Vector3(0,1,0),hit.point,Color.red);
		}
	}
}
