﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class networkManager : MonoBehaviour {
	
	private string connectionIP = "127.0.0.1";
	public int connectionPort = 25001;
	private string myIP = "127.0.0.1";
	
	public GameObject car_prefab;
	public GameObject camera;
	public GameObject rearViewCam;
	private GameObject myCar;
	
	public int players = 0;
	public int player = 0;
	
	public string state = "waiting";
	
	private List<GameObject> spawns;
	
	private float countDown = 3f;
				
	public static networkManager _instance;
	//Hieu's add
	public GameObject[] spawnItemLocation;

	void Awake(){
		_instance = this;
	}
	

	void Start(){
		state = "waiting";
		spawns = new List<GameObject> ();
		foreach(Transform i in this.transform){
			spawns.Add(i.gameObject);	
		}
		myIP = Network.player.ipAddress;
		
		//Hieu's add
		spawnItemLocation= GameObject.FindGameObjectsWithTag ("SpawnItem");
	}
	
	void OnGUI(){
		Vector2 size = new Vector2(512/2,128/2);
		if (state == "waiting"){
			if (GUI.Button(new Rect((Screen.width/2)-(size.x/2),(Screen.height/4)-(size.y/2),(size.x),(size.y)),"CONNECT")){
				Network.Connect(connectionIP, connectionPort);
				state = "clientWait";
				Debug.Log("Connected as Client");
				
				//MasterServer.ClearHostList();
				//MasterServer.RequestHostList("Race");
			}
			connectionIP = GUI.TextField(new Rect((Screen.width/2)+(size.x/2)+20,(Screen.height/4)-(size.y/4),(size.x/2),(size.y/2)),connectionIP);
			
			if (GUI.Button(new Rect((Screen.width/2)-(size.x/2),(Screen.height/4)-(size.y/2)+100,(size.x),(size.y)),"START NEW SERVER")){
				Network.InitializeServer(4, connectionPort, false);
				//MasterServer.RegisterHost("Race","Balls");
				players = 1;
				player = 1;
				myCar = newPlayer();
				myCar.GetComponent<playerID>().ID = player;
				state = "serverWait";
				Debug.Log("Started Server");
				
			}
			GUI.Label(new Rect((Screen.width/2)+(size.x/2)+20,(Screen.height/4)-(size.y/4)+100,(size.x/2),(size.y/2)),"On "+myIP);
			
			/*
			if (MasterServer.PollHostList().Length != 0 && !Network.isServer) {
				HostData[] hostData = MasterServer.PollHostList();
				connectionIP = hostData[0].ip[0];

				Network.Connect(connectionIP, connectionPort);

				//Network.Connect("10.245.20.127", connectionPort);

				MasterServer.ClearHostList();
				state = "clientWait";
				Debug.Log("Connected as Client");
			}	*/
		}
		
		if (state == "serverWait"){
			if (GUI.Button(new Rect((Screen.width/2)-(size.x/2),(Screen.height/2)-(size.y/2)+100,(size.x),(size.y)),"START GAME WITH "+players.ToString()+" PLAYERS") || players == 4){
				networkView.RPC("startGame",RPCMode.All);
			}
			GUI.Label(new Rect((Screen.width/2)+(size.x/2)+20,(Screen.height/4)-(size.y/4)+100,(size.x/2),(size.y/2)),"On "+myIP);
		}
		
		if (state == "countDown"){
			GUI.Box(new Rect((Screen.width/2)-(size.x/2),(Screen.height/2)-(size.y/2)+100,(size.x),(size.y)),((int)Mathf.Ceil(countDown)).ToString());
			countDown -= Time.deltaTime/2;
			if (countDown <=0){
				CreateItem();
				GetAllPlayers();
				state = "started";
				GameObject.FindGameObjectWithTag("CheckPointManager").SendMessage("GameStart",player);
				myCar.GetComponent<CarUserControl>().enabled = true;
				myCar.rigidbody.isKinematic = false;
			}
		}
		
		
	}
	
	void OnConnectedToServer(){ 
		Debug.Log ("Definitely Connected");
		GameObject guy;
		GetID();
		
	}
	
	void OnDisconnectedFromServer(){
		players--;
	}
	
	
	void GetID(){
		Debug.Log("Requesting Player Count");
		networkView.RPC("RequestPlayerCount",RPCMode.Server);
	}
	[RPC]
	void RequestPlayerCount(NetworkMessageInfo _info){
		Debug.Log("Got request, Sending info");
		NetworkPlayer sender = _info.sender;
		networkView.RPC("SendPlayerCount",sender,players);
		players++;
	}
	[RPC]
	void SendPlayerCount(int _players){
		Debug.Log("Got Player Count");
		players = _players;
		players++;
		player = players;
		myCar = newPlayer();
		myCar.transform.position = spawns[player-1].transform.position;
		networkView.RPC("BroadcastID",RPCMode.All,player,myCar.networkView.viewID);
	}
	[RPC]
	void BroadcastID(int _player,NetworkViewID _NVID){
		Debug.Log("Broadcasting ID");
		NetworkView.Find(_NVID).gameObject.GetComponent<playerID>().ID = _player;
		gatherIDs();
	}
	//------------------------------------------------------------------
	void gatherIDs(){
		Debug.Log (myCar.GetComponent<playerID>().ID.ToString()+ "Requesting ID's");
		GameObject[] playerObjs = GameObject.FindGameObjectsWithTag("OtherPlayer");
		foreach(GameObject i in playerObjs){
			networkView.RPC("requestObjID",RPCMode.Server,i.networkView.viewID);
		}
	}
	[RPC]
	void requestObjID(NetworkViewID _NVID,NetworkMessageInfo _info){
		Debug.Log ("sending ID");
		int requestedID = NetworkView.Find(_NVID).gameObject.GetComponent<playerID>().ID;
		NetworkPlayer sender = _info.sender;
		networkView.RPC("sendObjID",sender,requestedID,_NVID);
	}
	[RPC]
	void sendObjID(int _ID,NetworkViewID _NVID){
		Debug.Log ("Assigning ID " + _ID.ToString ());
		NetworkView.Find(_NVID).gameObject.GetComponent<playerID>().ID = _ID;
	}
	//--------------------------------------------------------------------
	
	[RPC]
	void startGame(){
		GameSoundCommands.instance.PlayStartSound ();
		state = "countDown";

		GameObject[] cars = GameObject.FindGameObjectsWithTag("OtherPlayer");
		foreach (GameObject car in cars){
			//GameObject.Destroy(car.GetComponent<CarController>());
			//GameObject.Destroy(car.GetComponent<CarSelfRighting>());
			//GameObject.Destroy(car.GetComponent<ObjectResetter>());
			//GameObject.Destroy(car.GetComponent<Anarchy>());
			//GameObject.Destroy(car.GetComponent<MachineGun>());
			//GameObject.Destroy(car.GetComponent<Rush>());
			//GameObject.Destroy(car.GetComponent<Blades>());
			GameObject.Destroy(car.GetComponent<UV_Randomizer>());
		}

	}
	
	
	
	GameObject newPlayer(){
		GameObject peerBall = Network.Instantiate(car_prefab,spawns[player-1].transform.position,spawns[player-1].transform.rotation,0) as GameObject;
		peerBall.rigidbody.isKinematic = true;
		peerBall.tag = "Player";
		//CheckLap.Players.Add(peerBall.GetComponent<CarRally>());
		Instantiate (camera, Vector3.zero, Quaternion.identity);

		//CreateItem();

		// Rearview Camera
		GameObject c =  GameObject.Find("RviewCam");//Instantiate(rearViewCam,peerBall.transform.position,peerBall.transform.rotation*Quaternion.Euler(0,180,0)) as GameObject;
		c.transform.parent = peerBall.transform;
		c.transform.localPosition = new Vector3(.195f,.806f,-2.959f);
		c.transform.rotation = peerBall.transform.rotation * Quaternion.Euler (353, 180, 0);

		//Debug.Log(peerBall);
		GameObject.Find ("UI Root").GetComponent<UIManager_Game> ().Init ();
		return peerBall;
		
	}
	void CreateItem(){
		foreach (GameObject s in spawnItemLocation) {
			s.GetComponent<SpawnItemOverNetwork>().CreateItem();		
		}
	}

	void GetAllPlayers(){
		CheckLap.Players = GameObject.FindObjectsOfType(typeof(CarRally)) as CarRally[];
		RankManager.players = GameObject.FindObjectsOfType(typeof(CarRally)) as CarRally[];
		foreach(CarRally c in CheckLap.Players){
			Debug.Log("Car's name: "+c.gameObject.name);
			Debug.Log("Car's tag: "+c.gameObject.tag);
		}
	}
	
	
	
}
