using UnityEngine;
using System.Collections;

public class networkManager : MonoBehaviour {
	
	public string connectionIP = "127.0.0.1";
	public int connectionPort = 25001;

	public GameObject thing;
	public GameObject camera;
	public GameObject myCar;
	
	public int players = 0;
	public int player = 0;

	void OnGUI(){
		
		//if (player > 0){
		//	GUI.Label(new Rect(20,Screen.height-50,200,32),"Player "+player.ToString());
		//}
		
		if (Network.peerType == NetworkPeerType.Disconnected){

			GUI.Label(new Rect(10, 10, 300, 20), "Status: Disconnected");
			if (GUI.Button(new Rect(10, 30, 120, 20), "Client Connect")){
				
				Network.Connect(connectionIP, connectionPort);
				
			}
			if (GUI.Button(new Rect(10, 50, 120, 20), "Initialize Server")){
				Network.InitializeServer(32, connectionPort, false);
				myCar = newPlayer();
				players = 1;
				player = 1;
				myCar.GetComponent<playerID>().ID = player;
			}
		}
		else if (Network.peerType == NetworkPeerType.Client){

			GUI.Label(new Rect(10, 10, 300, 20), "Status: Connected as Client");
			if (GUI.Button(new Rect(10, 30, 120, 20), "Disconnect")){

				Network.Disconnect(200);
			}
		}
		else if (Network.peerType == NetworkPeerType.Server){

			GUI.Label(new Rect(10, 10, 300, 20), "Status: Connected as Server");
			if (GUI.Button(new Rect(10, 30, 120, 20), "Disconnect")){
				Network.Disconnect(200);
			}
		}
	}

	void OnConnectedToServer(){ 
		Debug.Log ("Definitely Connected");
		GameObject guy;
		myCar = newPlayer();
		GetID();
		
	}
	
	void OnDisconnectedFromServer(){
		players--;
	}
	
	
	//----------------------------------------------------------------
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
		networkView.RPC("BroadcastID",RPCMode.All,player,myCar.networkView.viewID);
	}
	[RPC]
	void BroadcastID(int _player,NetworkViewID _NVID){
		Debug.Log("Broadcasting ID");
		NetworkView.Find(_NVID).gameObject.GetComponent<playerID>().ID = _player;
	}
	//------------------------------------------------------------------
	
	
	GameObject newPlayer(){
		GameObject peerBall = Network.Instantiate(thing,this.transform.position,Quaternion.identity,0) as GameObject;
		GameObject c = Network.Instantiate (camera, Vector3.zero, Quaternion.identity, 0) as GameObject;
		Debug.Log(peerBall);
		GameObject.Find ("UI Root").GetComponent<UIManager_Game> ().Init ();
		return peerBall;

	}
	
	
}