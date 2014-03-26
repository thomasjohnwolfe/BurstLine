using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CarRally : MonoBehaviour {
	[Range (0,100)]
	public float currentHealth = 100f;
	public int boost = 3;
	public const int MAXSLOT = 3;
	public Weapon[] weapon;
	[HideInInspector]
	public int[] weaponslot;
	public GameObject target;
	public GameObject[] model;
	public List<GameObject> route = new List<GameObject>();
	public List<GameObject> listPoint = new List<GameObject>();
	public bool finishLap = false;
	public bool defeat = false;
	bool add = false;
	public int lap = 1;
	public int rank = 0;
	public int rankNode = 0;
	// Use this for initialization
	void Start () {
		weaponslot = new int[MAXSLOT];
	}
	
	// Update is called once per frame
	void Update () {

	}

	public float getHealth(){
		if(currentHealth <= 0) return 0;
		return currentHealth;
	}

	public void dealDamage(float val){
		currentHealth -= val;
		if(currentHealth<=0) currentHealth = 0;
		networkView.RPC ("broadcastDamage", RPCMode.All, currentHealth, networkView.viewID);
	}

	public void addLap(){
		lap++;
		UIManager_Game.LAP_NUMBER = lap.ToString();
		networkView.RPC("broadcastLap",RPCMode.All,networkView.viewID,lap);
	}
	[RPC]
	void broadcastLap(NetworkViewID id,int _lap){
		NetworkView.Find (id).GetComponent<CarRally>().lap = _lap;
	}
	[RPC]
	void broadcastDamage(float _currentHealth,NetworkViewID _ID){
		NetworkView.Find (_ID).GetComponent<CarRally> ().currentHealth = _currentHealth;
	}


	void OnTriggerEnter(Collider c){
		if(c.gameObject.tag == "CheckRank"){
			rankNode++;
			networkView.RPC ("broadcastRankNode",RPCMode.All,networkView.viewID,this.rankNode);
		}

		if(c.gameObject.tag == "Weapon"){
			//print (this.gameObject.tag);
			//Network.Destroy(c.gameObject.networkView.viewID);
			//Debug.Log ("pick up item");
			if(this.gameObject.tag!="OtherPlayer")
			{
				assignedWeapon();
			}
		}
		else if(c.gameObject.tag == "CheckLaps"){
			if(!this.route.Contains(c.gameObject)){
				//print (this.route.Count);
				//print ("Route add 1"+ c.gameObject);
				this.route.Add (c.gameObject);
			}
		}
		else if(c.tag == "KillBox"){
			print ("hitting killbox");
			currentHealth=0;
		}
	}

	[RPC]
	void broadcastRankNode(NetworkViewID id,int node){
		NetworkView.Find(id).GetComponent<CarRally>().rankNode = node;
	}

	public void assignedWeapon(){
		int slot = -1;
		while(true)
		{
			slot = Random.Range(0,MAXSLOT);
			Debug.Log("Random number "+slot);
			if(!weaponIsAlreadyPickUp(slot)){
				addWeapon (slot);
				break;
			}
			if(weaponFull()){

				//boost++;
				//if(UIManager_Game.RANK!="1")
				//{
					UIManager_Game.instance.AddBoost();
					break;
				//}


			}
		}
		//}while(weaponIsAlreadyPickUp(slot) && !add);
		/*
		if (!weaponIsAlreadyPickUp (slot) && !add) {
			addWeapon (slot);
			Debug.Log ("pick up " + slot);
		}
		*/
	}
	
	public void addWeapon(int num){
		this.weapon[num].enabled = true;
		UIManager_Game.SetWeaponEnabled(num,true);
		for(int i=0;i<MAXSLOT;i++){
			if(this.weaponslot[i] == -1){
				this.weaponslot[i] = num;
				//add = true;
				return;
			}
		}
	}
	
	public void removeWeapon(int num){
		this.weapon[num].enabled = false;
		UIManager_Game.SetWeaponEnabled(num,false);
		for(int i=0;i<MAXSLOT;i++){
			if(this.weaponslot[i] == num){
				this.weaponslot[i] = -1;
				//return;
			}
		}
	}
	
	bool weaponIsAlreadyPickUp(int num){
		for(int i=0;i<MAXSLOT;i++){
			if(num == this.weaponslot[i]){
				return true;
			}
		}
		return false;
	}
	
	bool weaponFull(){
		for(int i=0;i<MAXSLOT;i++){
			if(this.weaponslot[i] == -1){
				return false;
			}
		}
		return true;
	}
}
//testTom
