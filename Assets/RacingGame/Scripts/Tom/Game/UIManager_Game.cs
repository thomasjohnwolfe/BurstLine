using UnityEngine;
using System.Collections;
using System.Collections.Generic;
//THIS SCRIPT TAKES CAR OF IN GAME UI
//CALLING THE INIT() FUNCTION AFTER SPAWNING A CAR SHOULD TAKE CARE OF EVERYTHING
//  Add "OtherPlayer" tags to objects will create minimap graphics at their location 

class UIManager_Game : MonoBehaviour
{
	public static 	UIManager_Game instance;

	public 			bool 			criticalLightOn; //for coroutine trigger
	[Range (0,1)]
	public 			float 			sheildPercent;

	private			CarRally 		carStats; //Hieu's script
	private			CarController	carControl;
	private 		bool 			carSpawned; 
	Dictionary<GameObject,GameObject> 	OtherPlayersMiniMapLoc; //<player,minimapSprite>
	
	private static 	UISprite 		speedometer,
									//boostMeter,
									shield,
									critLight,
									MapBG;

	private static 	UILabel 		timeTxt;
	
	private 		Transform 		shieldT, //tansform for Shield sprite
									PlayerLocT; //transform for MiniMapspite
	private 		GameObject 		MiniMapSprite;

	private 		bool 			critBlinking;
	private 		int 			boostMaxNum		=	2; //idx


	private	static		Weapon_UI[] 	weapon 		= 	new Weapon_UI[3];
	private			Boost_UI[] 		boost 		= 	new Boost_UI[3];

	//miniMaprelated
	public 			Transform 		boundaryL,boundaryR,boundaryT,boundaryB;
	private			Transform		PlayerGlobalTransform;
	private 		Vector2			mapDimensions;
	private 		Transform		miniMapBoundries;
	public			Color			speedStartColor,speedEndColor;

	private	static 	UILabel 		_LapTime,_TotalTime,_Rank,_LapNumber;
	CarUserControl carUsercontrol;
	float gameTime,lapTime =0;

	void Awake(){
		instance = this;
		}

	void Start()
	{
		OtherPlayersMiniMapLoc = new Dictionary<GameObject, GameObject> ();
		InvokeRepeating ("FindOtherPlayers", 1f, 3f);
		miniMapBoundries = GameObject.Find ("MiniMapBoundaries").transform;
		// = GameObject.Find("PlayerLoc");

		_LapTime 	= GameObject.Find("LapTime").GetComponent<UILabel>();
		_TotalTime 	= GameObject.Find("TotalTime").GetComponent<UILabel>();
		_Rank		= GameObject.Find("Rank").GetComponent<UILabel>();
		_LapNumber 	= GameObject.Find("LapNumber").GetComponent<UILabel>();

	}
	

	public static string LAP_TIME{
		get{return _LapTime.text;}
		set{_LapTime.text = value;}
	}

	public static string RANK{
		get{return _Rank.text;}
		set{_Rank.text = value;}
	}

	public static string TOTAL_TIME{
		get{return _TotalTime.text;}
		set{_TotalTime.text = value;}
	}

	public static string LAP_NUMBER{
		get{return _LapNumber.text;}
		set{_LapNumber.text = value;}
	}

	private void FindOtherPlayers()
	{
		GameObject[] t = GameObject.FindGameObjectsWithTag ("OtherPlayer");
		foreach (GameObject found in t)
		{
			int id = found.GetComponent<playerID>()==null? 0:found.GetComponent<playerID>().ID;

			if(id!=0)
			{
				if(!OtherPlayersMiniMapLoc.ContainsKey(found))
				{
					OtherPlayersMiniMapLoc.Add(found,CreatePlayersMiniMapSprite(found));
					print ("found player, adding minimapSprite" + OtherPlayersMiniMapLoc[found].name);

				}
			}
		}
	}

	public void FixedUpdate(){
		LAP_TIME = lapTime.ToString();
		TOTAL_TIME = gameTime.ToString();
	}
	public void ResetLapTime(){
		lapTime = 0;
	}
	//public method to be called when your local car is spawned
	public void Init()
	{
		for(int i=0;i<3;i++)
		{
			weapon[i] = new Weapon_UI("weapon"+i,PlayerPrefs.GetString("weapon"+ (i+1) ));
			SetWeaponEnabled(i,false);
			boost[i] = new Boost_UI("boost"+i,"boostSprite");
		}

		mapDimensions = new Vector2(Mathf.Abs(boundaryR.position.x-boundaryL.position.x),Mathf.Abs(boundaryT.position.z-boundaryB.position.z));
		carControl = GameObject.FindGameObjectWithTag("Player").GetComponent<CarController>();
		speedometer = GameObject.Find("SpeedOmeter").GetComponent<UISprite>();
		//boostMeter = GameObject.Find("Boost").GetComponent<UISprite>();
		shield = GameObject.Find("Shield_UI").GetComponent<UISprite>();
		critLight = GameObject.Find("CriticalLight").GetComponent<UISprite>();
		shieldT = GameObject.Find("Shield_UI").transform;
		
		timeTxt = GameObject.Find("TotalTime").GetComponent<UILabel>();
		MapBG =  GameObject.Find("MapBG").GetComponent<UISprite>();
		PlayerLocT =  GameObject.Find("PlayerLoc").transform;

		PlayerGlobalTransform = GameObject.FindGameObjectWithTag ("Player").transform;
		carStats = GameObject.FindGameObjectWithTag("Player").GetComponent<CarRally>();
		carUsercontrol =   GameObject.FindGameObjectWithTag("Player").GetComponent<CarUserControl>();
		// PLAYER PREFS TEST
		Debug.Log("weapon1: " + PlayerPrefs.GetString("weapon1"));
		Debug.Log("weapon2: " + PlayerPrefs.GetString("weapon2"));
		Debug.Log("weapon3: " + PlayerPrefs.GetString("weapon3"));
		/* 
		Debug.Log("Data From Player Selection");
		Debug.Log("CarModel: " + PlayerPrefs.GetString("car"));
		Debug.Log("speed: " + PlayerPrefs.GetFloat("speed"));
		Debug.Log("boost: " + PlayerPrefs.GetFloat("boost"));
		Debug.Log("handling: " + PlayerPrefs.GetFloat("handling"));
		Debug.Log("accel: " + PlayerPrefs.GetFloat("accel"));
		*/
		StartCoroutine (InitMiniMapSprite ());
		carSpawned = true;

	}

	IEnumerator InitMiniMapSprite()
	{
		playerID playerIDscr = GameObject.FindGameObjectWithTag("Player").GetComponent<playerID>();
		while (playerIDscr.ID == 0)
		{
			yield return new WaitForSeconds(0.5f);
			TagMiniMapSprite_PlayerNumber (PlayerLocT.gameObject, GameObject.FindGameObjectWithTag ("Player"));

		}
	}

	void TagMiniMapSprite_PlayerNumber(GameObject spriteObject, GameObject player)
	{
		string name = player.GetComponent<playerID> ().ID.ToString();
		spriteObject.GetComponent<UILabel> ().text =  (name == null)? "P " : "P "+name;
	}

	GameObject CreatePlayersMiniMapSprite(GameObject player)
	{
		GameObject spriteObj= Instantiate(Resources.Load("MiniMap_OtherPlayer")) as GameObject;
		spriteObj.transform.parent = GameObject.Find ("MapBG").transform;
		spriteObj.transform.localScale = GameObject.Find ("PlayerLoc").transform.localScale;
		spriteObj.transform.localRotation = GameObject.Find ("PlayerLoc").transform.localRotation;
		spriteObj.transform.localPosition = GameObject.Find ("PlayerLoc").transform.localPosition;
		TagMiniMapSprite_PlayerNumber (spriteObj,player);
		return spriteObj;

	}

	void SetPlayersMiniMapLoc()
	{
		foreach (KeyValuePair<GameObject,GameObject> kvp in OtherPlayersMiniMapLoc)
		{
			kvp.Value.transform.localPosition = GlobalPosToMiniMap( MiniMapPosition(kvp.Key.transform)    );
		}
	}

	Vector3 GlobalPosToMiniMap(Vector3 pos)
	{
		return new Vector3 (pos.x * MapBG.width, pos.y * MapBG.height - MapBG.height, 0);
	}

	public Vector3 MiniMapLoc
	{
		set {PlayerLocT.localPosition = GlobalPosToMiniMap(value) ;}
		get {return new Vector3 (PlayerLocT.localPosition.x/MapBG.width,PlayerLocT.localPosition.y/MapBG.height,0);}
	}

	public string TimeTotal
	{
		get {return timeTxt.text;}
		set {timeTxt.text = value;}
	}

	public float SpeedoMeter
	{
		get {return speedometer.fillAmount;}
		set { speedometer.fillAmount = Mathf.Clamp( (value*.5f),0,0.75f);}
	}
	public float Boost
	{
		//get {return boostMeter.fillAmount;}
		//set { boost.fillAmount = Mathf.Clamp( (value*.6f)+.41f,.41f,1.0f);}
		set { ;}//speedometer.color = Color.Lerp (speedStartColor,speedEndColor,value);}
			//boostMeter.fillAmount = Mathf.Clamp( (value*.63f),0,0.63f);}

	}
	public float Shield
	{
		get {return shieldT.localScale.x;}
		set { shieldT.localScale = new Vector3(Mathf.Clamp(value,0f,1f),Mathf.Clamp(value,0f,1f),Mathf.Clamp(value,0f,1f));}
	}

	public bool CriticalLightON
	{
		get {return critBlinking;}
		set {
				if(value == true && !critBlinking)
				{
					critBlinking = value;//don't delete this
					StartCoroutine(CritLight());
				}

				critBlinking = value;

			}
			
	}

	public void AddBoost(){
				setBoostNumber (boostMaxNum+2);
		}

	//for manually setting amount of boosts, likely a reset to 3
	public void setBoostNumber(int num)
	{
		for(int j=0;j<3;j++)
		{
			boost[j].Active(false);
		}

		num = Mathf.Clamp(num,0,3);
		for(int i = 0; i<num;i++)
		{
			boost[i].Active(true);
		}
		boostMaxNum = num-1;
	}
	
	//for activating a boost sequence 
	public bool ActivateBoost()
	{
		if(boostMaxNum <=-1)
		{
			return false;
		}
		setBoostNumber(boostMaxNum);
		carStats.boost--;
		StartCoroutine(setBoostValueInSpeedScript(carControl.boostTime));
		return true;

	}

	IEnumerator setBoostValueInSpeedScript(float time)
	{
		if(carControl.tomSpeedScript.Boosting == true) yield break;
		Debug.Log("boosting");
		carControl.tomSpeedScript.car.AddForce(carControl.tomSpeedScript.car.gameObject.transform.forward*1000,ForceMode.Force);
		carControl.tomSpeedScript.Boosting = true;
		//carControl.MaxSpeed *= 2f;
		carControl.tomSpeedScript.applyDrag = false;
		yield return new WaitForSeconds(time*0.9f);
		carControl.tomSpeedScript.applyDrag = true;
		Debug.Log("reApplyingDrag");
		GameSoundCommands.instance.PlayBoostStop();
		TrailRenderer t = carControl.gameObject.GetComponent<TrailRenderer>();
		StartCoroutine(FadeTrailRenderer(t,time*0.2f));
		yield return new WaitForSeconds(time*0.1f);

		//carControl.MaxSpeed /= 2f;



	}

	IEnumerator FadeTrailRenderer(TrailRenderer trail,float delay)
	{
		print ("fading trail renderer");
		float trailInitTime = trail.time;
		float time=0;
		while(time < delay){
			trail.time = Mathf.Lerp(trail.time,0,time/delay);
			time+=Time.deltaTime;
			yield return null;
		}
		carControl.gameObject.GetComponent<TrailRenderer>().enabled=false;
		trail.time = trailInitTime;
		print ("faded");
		carControl.tomSpeedScript.Boosting = false;
		Debug.Log("boosting stop");
		yield return null;
	}

	void RunInspectorTestValues()
	{
		SpeedoMeter = carControl.tomSpeedScript.speedRatio;
		speedometer.color = carControl.tomSpeedScript.Boosting? speedEndColor : speedStartColor;
		Shield = carStats.getHealth()/100f;

		//TimeTotal = Time.time.ToString();

		CriticalLightON = (carStats.getHealth()<0.5f);

		if (Input.GetKeyDown(KeyCode.Alpha4)||Input.GetButtonDown("Boost"))
		{
			if(networkManager._instance.state == "started")
			{
				if(carControl.tomSpeedScript.Boosting==false && boostMaxNum >-1)
				{
					GameSoundCommands.instance.PlayBoostEngine(carControl.boostTime);
					GameSoundCommands.instance.PlayBoostStart();
					carControl.gameObject.GetComponent<TrailRenderer>().enabled=true;
					ActivateBoost();
				}
			}
		}
		/*
		if (Input.GetKeyDown(KeyCode.Alpha1))
		{
			print ("activating weapon 1");
			SetWeaponEnabled(0,true);
		}
		if (Input.GetKeyDown(KeyCode.Q))
		{
			print ("deactivating weapon 1");
			SetWeaponEnabled(0,false);
		}
		if (Input.GetKeyDown(KeyCode.Alpha2))
		{
			print ("activating weapon 2");
			SetWeaponEnabled(1,true);
		}
		if (Input.GetKeyDown(KeyCode.W))
		{
			print ("deactivating weapon 2");
			SetWeaponEnabled(1,false);
		}
		if (Input.GetKeyDown(KeyCode.Alpha3))
		{
			print ("activating weapon 3");
			SetWeaponEnabled(2,true);
		}
		if (Input.GetKeyDown(KeyCode.E))
		{
			print ("deactivating weapon 3");
			SetWeaponEnabled(2,false);
		}
		*/
	}

	void Update()
	{
		if(carUsercontrol.enabled)
		{
			gameTime+=Time.deltaTime;
			lapTime+=Time.deltaTime;
		}
		if (Input.GetKeyDown (KeyCode.Return))
						AddBoost ();
		if(carSpawned)
		{
			//Init ();
			RunInspectorTestValues();
			UpdatePlayersMiniMap();
		}
		SetPlayersMiniMapLoc ();
	}

	void UpdatePlayersMiniMap()
	{
		MiniMapLoc = MiniMapPosition(PlayerGlobalTransform);
	}

	public Vector3 MiniMapPosition(Transform t)
	{
		return new Vector3((t.position.x - boundaryL.position.x)/mapDimensions.x,(t.position.z - boundaryB.position.z)/mapDimensions.y,0);
	}

	//toggles enabled display

	public static void SetWeaponEnabled(int number,bool setting)
	{
		weapon[number].Active(setting);
	}

	IEnumerator CritLight() //BLINKING ROUTINE FOR CRIT LIGHT
	{
		Color startC = critLight.color;
		float t = 0;
		while(critBlinking)
		{
			while(t<1.2f)
			{
				critLight.color = Color.Lerp(startC,Color.black,t);
				yield return null;
				t+=Time.deltaTime;

			}
			while(t>0f)
			{
				critLight.color = Color.Lerp(Color.black,startC,t);
				yield return null;
				t-=Time.deltaTime;

			}
		}
		critLight.color = startC;

	}
}
