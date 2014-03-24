﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Anarchy: CarRally {
	public Material[] mat;
	public GameObject exploparticle;
	public GameObject finishParticle;
	public float exploForce = 500;
	public float exploRadius = 20;
	public float exploUpDirection = 3;
	List<Color> colorset = new List<Color> ();
	int index = 0;
	bool assigncolor = false;

	public Color color;

	// Use this for initialization
	void Start () {
		colorset.Add (Color.magenta);
		colorset.Add (Color.red);
		colorset.Add (Color.black);
		colorset.Add (Color.blue);
		this.lap = 1;
		UIManager_Game.LAP_NUMBER = lap.ToString();
		weapon = new Weapon[MAXSLOT];
		weaponslot = new int[MAXSLOT];
		weapon = this.GetComponents<Weapon>();
		for(int i=0; i<MAXSLOT;i++){
			weapon[i].name = "Weapon "+(i+1).ToString();
			Debug.Log(weapon[i].name);
			weapon[i].index = i;
		}
		for(int i = 0; i<MAXSLOT;i++){
			weapon[i].owner = this.gameObject;
			weapon[i].enabled = false;
		}
		//set up weaponslot -1 is empty
		for(int i = 0; i<MAXSLOT;i++){
			weaponslot[i] = -1;
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (!assigncolor) {
			index = this.GetComponentInChildren<playerID> ().ID;
		}
		if (index!= 0 && !assigncolor) {
			setCarColor(index);
			assigncolor = true;
		}

		if(networkView.isMine){
			for(int i=0;i<MAXSLOT;i++){
				if(!weapon[i].isUpdate){
					if( (Input.GetKeyDown(weapon[i].keyInput) || Input.GetButtonDown(weapon[i].name)) && weapon[i].enabled){
						weapon[i].execute();
					}
				}
			}
		}
	}

	void FixedUpdate(){
		if(base.finishLap){
			StartCoroutine(GenerateFinishParticle());
			this.GetComponent<DisableAll>().Disable();
		}

		if(this.getHealth()==0){
			GameObject temp = (GameObject) Network.Instantiate(exploparticle,this.transform.position,Quaternion.identity,0);
			temp.transform.parent = this.transform;
			this.rigidbody.AddExplosionForce(exploForce,this.transform.position,exploRadius,exploUpDirection);
			StartCoroutine(disableParticle(temp));
			this.GetComponent<DisableAll>().Disable();
		}
	}

	IEnumerator GenerateFinishParticle(){
		//show GUI winning
		GameObject[] temp = new GameObject[5];
		for(int i =0;i<5;i++){
		temp[i] = Network.Instantiate(finishParticle,new Vector3(this.transform.position.x+Mathf.Sin(i)*2,
		                                               this.transform.position.y+0.5f,
		                                               this.transform.position.z+Mathf.Cos(i)*2), Quaternion.identity,0) as GameObject;
		temp[i].transform.parent = this.transform;
		}
		while(true){
			foreach(GameObject t in temp){
				//t.transform.position += new Vector3(Mathf.Sin(Time.deltaTime),0,Mathf.Cos (Time.deltaTime));
			}
			yield return new WaitForSeconds(0.2f);
		}


	}

	IEnumerator disableParticle(GameObject g){
		yield return new WaitForSeconds(6);
		this.rigidbody.isKinematic = true;
		g.particleEmitter.maxEnergy = 1.2f;
		g.particleEmitter.minEmission = 50;
		g.particleEmitter.maxEmission = 150;
		/*
		foreach(GameObject m in model){
			m.renderer.material.SetColor("_PaintColor",Color.black);
		}
		*/
	}

	[RPC]
	void updateHealth(float val){
		currentHealth = val;
	}

	void setCarColor(int i){
		//Debug.Log ("i  is " + i);
		//Debug.Log (model[0].renderer.materials[0].name);
		foreach (GameObject m in model) {
			m.renderer.material	= mat[i-1];	

			color = mat[i-1].GetColor("_PaintColor");
		}
		//model.renderer.material.SetColor ("_Color", colorset[i-1]);
	}

}
