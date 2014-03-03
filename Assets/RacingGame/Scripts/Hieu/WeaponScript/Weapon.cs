using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Weapon : MonoBehaviour{
	public KeyCode keyInput;
	public float speed;
	public float damage;
	public float lifetime;
	[HideInInspector]
	public GameObject owner;
	public virtual void execute(){
		//Debug.Log("Weapon");
	}

	public void assignToPrefab(Weapon w, ProjectileScript p){
		p.damage = w.damage;
		p.lifetime = w.lifetime;
		p.owner = w.owner;
		p.speed = w.speed;
		//Debug.Log("assign value");
		//Debug.Log (p.damage);
	}
}
