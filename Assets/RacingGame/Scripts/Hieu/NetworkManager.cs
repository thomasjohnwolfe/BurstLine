using UnityEngine;
using System.Collections;

public class NetworkManager : MonoBehaviour {
	static int i = 0;
	string gameName = "CarGame";
	bool refreshing = false;
	HostData[] hostdata;
	float x,y,w,h;
	public Transform spawnLocation;
	public GameObject carPrefab;
	public GameObject camera;
	// Use this for initialization
	void Start () {
		x = Screen.width * 0.05f;
		y = Screen.width * 0.05f;
		w = Screen.width * 0.1f;
		h = Screen.width * 0.1f;

		//camera.GetComponent<AutoCam> ().SetTarget (carPrefab.transform);
	}
	
	// Update is called once per frame
	void Update () {
		if (refreshing) {
			if(MasterServer.PollHostList().Length > 0){
				refreshing = false;
				Debug.Log(MasterServer.PollHostList().Length);
				hostdata = MasterServer.PollHostList();
			}
		}

	}

	void OnGUI(){
		if (!Network.isClient && !Network.isServer) {
						if (GUI.Button (new Rect (x, y, w, h), "Start Server")) {
								StartServer ();	
						}
						if (GUI.Button (new Rect (x, y + h * 1.2f, w, h), "Join")) {
								refreshHostList ();		
						}
		}
		if (hostdata != null) {
				foreach (HostData data in hostdata) {
						if (GUI.Button (new Rect (x + w * 1.2f, y, w, h), data.gameName)) {
								Network.Connect (data);
						}
				}
		}
		
	}


	void refreshHostList(){
		MasterServer.RequestHostList (gameName);
		refreshing = true;
		Debug.Log ("refreshing");
	}

	void StartServer(){
		Network.InitializeServer (8, 25001, !Network.HavePublicAddress());
		MasterServer.RegisterHost (gameName, "Car", "Testing");
	}

	void OnMasterServerEvent(MasterServerEvent msEvent) {
		if (msEvent == MasterServerEvent.RegistrationSucceeded)
			Debug.Log("Server registered");
		
	}

	void OnServerInitialized(){
		Debug.Log("Server initialized and ready");
		MasterServer.RegisterHost (gameName, "Car", "Testing");
		spawnCar ();
	}

	void OnConnectedToServer(){
		spawnCar ();
	}

	void spawnCar(){
		GameObject g =Network.Instantiate (carPrefab, spawnLocation.position, spawnLocation.rotation,0) as GameObject;
		g.name = "Player" + i;
		i++;
		Network.Instantiate (camera, Vector3.zero, Quaternion.identity, 0);

		UIManager_Game script = GameObject.FindObjectOfType<UIManager_Game> ();
		script.Init ();
	}
}
