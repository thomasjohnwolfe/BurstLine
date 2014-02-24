using UnityEngine;
using System.Collections;
//THIS SCRIPT TAKES CAR OF IN GAME UI
//CALLING THE INIT() FUNCTION AFTER SPAWNING A CAR SHOULD TAKE CARE OF EVERYTHING
class UIManager_Game : MonoBehaviour
	{


	//sprites
	private static UISprite speedometer,boostMeter,shield,critLight,MapBG;

	//time
	private static UILabel timeTxt;

	//shield
	private Transform shieldT,PlayerLocT;

	//reference to car attributes
	CarController carControl;
	private bool carSpawned; //to read values when car is spawned
	
	private bool critBlinking;

	//public inspector values for boost, speed, sheild
	[Range (0,1)]
	public float speedBoost,speedRegular,sheildPercent;

	//public bool for testing critical light
	public bool criticalLightOn;

	// fortesting
	//public int boostNumber = 0;

	private int boostMaxNum=2; //idx

	//custom sprite classes
	Weapon_UI[] weapon = new Weapon_UI[3];
	Boost_UI[] boost = new Boost_UI[3];

	//miniMap
	public Transform boundaryL,boundaryR,boundaryT,boundaryB;
	Transform PlayerGlobalTransform;
	private Vector2 mapDimensions;

	//void Start(){}

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
		boostMeter = GameObject.Find("Boost").GetComponent<UISprite>();
		shield = GameObject.Find("Shield_UI").GetComponent<UISprite>();
		critLight = GameObject.Find("CriticalLight").GetComponent<UISprite>();
		shieldT = GameObject.Find("Shield_UI").transform;
		
		timeTxt = GameObject.Find("TotalTime").GetComponent<UILabel>();
		MapBG =  GameObject.Find("MapBG").GetComponent<UISprite>();
		PlayerLocT =  GameObject.Find("PlayerLoc").transform;

		PlayerGlobalTransform = GameObject.FindGameObjectWithTag ("Player").transform;

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
		carSpawned = true;
	}

	public Vector3 MiniMapLoc
	{
		set {PlayerLocT.localPosition = new Vector3(value.x*MapBG.width,value.y*MapBG.height - MapBG.height,0) ;}
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
		set { speedometer.fillAmount = Mathf.Clamp( (value*.63f),0,0.63f);}
	}
	public float Boost
	{
		get {return boostMeter.fillAmount;}
		//set { boost.fillAmount = Mathf.Clamp( (value*.6f)+.41f,.41f,1.0f);}
		set { boostMeter.fillAmount = Mathf.Clamp( (value*.63f),0,0.63f);}

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
					critBlinking = value;
					StartCoroutine(CritLight());
				}
				critBlinking = value;
			}
			
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
		setBoostNumber(boostMaxNum);
		if(boostMaxNum <=0)
		{
			return false;
		}
		else
		{
			return true;
		}
	}

	void RunInspectorTestValues()
	{
		//assign public values for inspector
		speedRegular =(carControl.CurrentSpeed*2 / carControl.MaxSpeed);
		speedBoost= (carControl.CurrentSpeed*2 / carControl.MaxSpeed)-1f;

		//assign test inspector values to script
		SpeedoMeter = speedRegular;
		Boost =speedBoost;
		Shield = sheildPercent;
		CriticalLightON = criticalLightOn;

		//grab time to test timer;
		TimeTotal = Time.time.ToString();


		//assign boost number
		//setBoostNumber(boostNumber);

		if (Input.GetKeyDown(KeyCode.Alpha4))
		{
			ActivateBoost();
		}

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

	}

	void Update()
	{

		if(carSpawned)
		{
			//Init ();
			RunInspectorTestValues();
			MiniMapLoc = MiniMapPosition();
		}
	}

	public Vector3 MiniMapPosition()
	{
		return new Vector3((PlayerGlobalTransform.position.x - boundaryL.position.x)/mapDimensions.x,(PlayerGlobalTransform.position.z - boundaryB.position.z)/mapDimensions.y,0);
	}

	//toggles enabled display
	public void SetWeaponEnabled(int number,bool setting)
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

	}
}
