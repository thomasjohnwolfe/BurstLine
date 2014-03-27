using UnityEngine;
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
	bool dead = false;
	public Color color;
	GameObject explodeParticleInstance;
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
		if(Input.GetKeyDown(KeyCode.Escape)|| Input.GetKeyDown(KeyCode.Joystick1Button6))
		{
			RESETPOS(this.gameObject);
		}

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

	public void RESETPOS(GameObject g){
		//GameObject.FindGameObjectWithTag("CheckPointManager").SendMessage("subPlace",GameObject.FindGameObjectWithTag("Player").GetComponent<playerID>().ID);
		GameSoundCommands.instance.PlayStartSound();
		g.transform.position = checkpoint.transform.position;;
		g.transform.rotation = checkpoint.transform.rotation;
		g.rigidbody.velocity = Vector3.zero;
		g.rigidbody.angularVelocity = Vector3.zero;
	}

	void FixedUpdate(){
		if (this.defeat) {
			this.GetComponent<DisableAll> ().Disable ();
		}
		else if (this.finishLap && !this.defeat) {
			Debug.Log("player "+this.GetComponent<playerID>().ID+" win ");
			if(UIManager_Game.RANK=="1")
				UIManager_Game.instance.DisplayVictory (8f);
			StartCoroutine (GenerateFinishParticle ());
			GameObject[] otherplayer = GameObject.FindGameObjectsWithTag ("OtherPlayer");
			NetworkViewID ids;
			foreach (GameObject g in otherplayer) {
					ids = g.networkView.viewID;
					networkView.RPC ("SendDefeat", RPCMode.All, ids);
			}
			//networkView.RPC ("SendDefeat",RPC
			this.GetComponent<DisableAll> ().Disable ();
		}

		if(this.getHealth()==0 && !dead){
			Die();
		}
	}

	[RPC]
	void SendDefeat(NetworkViewID id){
		NetworkView.Find (id).GetComponent<CarRally> ().defeat = true;
	}

	public void Die(){

		explodeParticleInstance = (GameObject) Network.Instantiate(exploparticle,this.transform.position,Quaternion.identity,0);
		StartCoroutine(CoDie(explodeParticleInstance));

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

	IEnumerator CoDie(GameObject g){
		dead = true;
		GameSoundCommands.instance.PlayDeathSound();

		explodeParticleInstance.transform.parent = this.transform;
		this.rigidbody.AddExplosionForce(exploForce,this.transform.position,exploRadius,exploUpDirection);
		this.GetComponent<DisableAll>().Disable();
		yield return new WaitForSeconds(2);
		this.rigidbody.isKinematic = true;
		g.particleEmitter.maxEnergy = 1.2f;
		g.particleEmitter.minEmission = 50;
		g.particleEmitter.maxEmission = 150;
		yield return new WaitForSeconds(1);
		GameObject.Destroy(g);
		this.GetComponent<DisableAll>().Enable();
		this.rigidbody.isKinematic = false;
		GameObject.Find("ResetPosScript").GetComponent<ResetPos>().RESETPOS(this.gameObject);
		currentHealth = 100f;

		dead = false;
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
