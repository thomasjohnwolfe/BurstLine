using UnityEngine;
using System.Collections;

public class StickyMine : Weapon {

	public override void execute(){
		GameObject clone;
		for(int i=0;i<this.numberProjectile;i++){
			clone = Network.Instantiate(this.projectilePrefab,new Vector3(this.shootLocation.transform.position.x+Mathf.Sin(i)*2,
			                                                      this.shootLocation.transform.position.y,
			                                                      this.shootLocation.transform.position.z+Mathf.Cos(i)*2),
			                                                      Quaternion.identity,0) as GameObject;

			assignToPrefab(this,clone.GetComponent<StickyMineProjectile>());

			//Debug.Log(i+"...."+Mathf.Sin(i)+"....."+Mathf.Cos(i));
			//clone.rigidbody.velocity = this.transform.up*speed;
			clone.rigidbody.velocity = new Vector3(Mathf.Sin(i),0,Mathf.Cos(i))*speed;
		}
		Debug.Log("Sticky Mine");
	}
}
