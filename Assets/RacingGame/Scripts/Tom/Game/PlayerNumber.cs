using UnityEngine;
using System.Collections;
using System.Collections.Generic;
//displays numbers over players heads
public class PlayerNumber : MonoBehaviour {

	public string 		mainCameraName 	= 		"Main Camera";
	public string 		playerTag		= 		"Player";
	public string 		otherPlayerTag 	= 		"OtherPlayer";
	public string 		uiRootName 		= 		"UI Root";
	public float 		trackingDist 	= 		50f;
	public Vector3		Offset			= 		new Vector3(0,2,0);
	public int			pixelOffset		=		15;
	public GameObject 	nameLabelPrefab;
	public float 		playerDotForwardVector; //fordisplay only
	public Vector3		playerWorldScreen;  //fordisplay only
	public Vector2		playerScreenPoint;
	UIAnchor 			anchorScript;
	Transform 							player;
	Dictionary<Transform,UIAnchor> 	otherCarDict = new Dictionary<Transform, UIAnchor>(); //car : minimapsprite
	Transform 							camera;
	Camera								camComponent;

	void Start (){
		StartCoroutine(FindPlayer());
		InvokeRepeating("PopulateOtherCarDict",0f,3f);
	}
	

	void Update ()
	{
		//TextOverPlayer();
		TextOnScreen();
		DrawLabelsInRange();

		//for testing
		//if(carList.Count>0)
		//	transform.position = carList["Player"];
	}

	void TextOverPlayer()
	{
		/*
		foreach(KeyValuePair<Transform,GameObject> kvp in otherCarDict)
		{
			kvp.Value.transform.position = kvp.Key.position;
		}
		*/
	}

	void TextOnScreen()
	{
		foreach(KeyValuePair<Transform,UIAnchor> kvp in otherCarDict)
		{
			playerScreenPoint = camComponent.WorldToScreenPoint(kvp.Key.transform.position + Offset);
			//playerWorldScreen = camComponent.ViewportToWorldPoint(playerScreenPoint);
			kvp.Value.pixelOffset = new Vector2(playerScreenPoint.x -1f,playerScreenPoint.y + pixelOffset);
			//kvp.Value.transform.localPosition = playerWorldScreen + camera.forward;


			//kvp.Value.transform.position = camera.position + camera.forward;
			//kvp.Value.transform.rotation = camera.rotation;
		}
	}


	IEnumerator FindPlayer()
	{
		while(player==null)
		{
			GameObject g = GameObject.FindWithTag(playerTag);
			if(g!=null)
				player = g.transform;
			yield return null;
		}
		while(camera==null)
		{
			GameObject c =  GameObject.Find(mainCameraName);
			camera = c==null? null: c.transform;
			camComponent = c==null? null : c.GetComponent<Camera>();
			yield return null;
		}
		print ("Now tracking player.");
		yield return null;
	}

	void PopulateOtherCarDict()
	{
		if(otherCarDict.Count != networkManager._instance.players)
		{
			GameObject[] otherPlayers = GameObject.FindGameObjectsWithTag(otherPlayerTag);
			foreach(GameObject car in otherPlayers)
			{
				if(!otherCarDict.ContainsKey(car.transform))
				{
					int ID = GetCarID(car);
					if(ID!=0){
						otherCarDict.Add(car.transform,CreatSpriteAndParentToNGUIPanel(GetCarName(car)));
						print ("Now tracking " +car.transform.name + "player number.");
					}
				}
			}
		}
	}

	int GetCarID(GameObject car) {return car.GetComponent<playerID>().ID;}

	string GetCarName(GameObject car){return "Player "+  GetCarID(car);}

	UIAnchor CreatSpriteAndParentToNGUIPanel(string carName)
	{
		GameObject g = (GameObject.Instantiate(nameLabelPrefab) as GameObject);
		g.transform.parent = GameObject.Find(uiRootName).transform;
		g.transform.localScale = Vector3.one;
		g.GetComponentInChildren<UILabel>().text = carName;
		UIAnchor anchor = g.GetComponentInChildren<UIAnchor>();
		return anchor;
	}

	void DrawLabelsInRange()
	{
		foreach(KeyValuePair<Transform,UIAnchor> kvp in otherCarDict)
		{
			Vector3 d = (kvp.Key.position - player.position);
			Vector3 f = camera.forward;
			float mag = Vector3.Dot(d,f);
			kvp.Value.gameObject.SetActive(InForwardDistance(mag));
		}
	}

	bool InForwardDistance(float mag)
	{
		return (mag < trackingDist && mag >0);
	}

	void ScreenPosition()
	{

	}

}
