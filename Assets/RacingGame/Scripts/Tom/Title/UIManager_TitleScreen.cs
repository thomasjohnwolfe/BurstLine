using UnityEngine;
using System.Collections;

public class UIManager_TitleScreen : MonoBehaviour
{

	public 	string 					GameSceneName = "MainGame";
	public 	GameObject[] 			Cars = new GameObject[3];
	public 	int 					carIdx = 0;
	public GameObject 				g;
			IVehicleTitleUI 		currentCar;
			UISlider 				handling,speed,accel,boost;
			GameObject 				txtVehicleDesc;//Label for description
			GameObject 				txtVehicleName;//Label for name
			string 					descripText;//car description text, type writer effect
			UISprite[]				items = new UISprite[3];//images for items
			UILabel[]				itemLbls = new UILabel[3];//images for items
	void Start()
	{
		items[0] 		= GameObject.Find("Item0").GetComponent<UISprite>();
		items[1] 		= GameObject.Find("Item1").GetComponent<UISprite>();
		items[2] 		= GameObject.Find("Item2").GetComponent<UISprite>();

		itemLbls[0] 		= GameObject.Find("lblItem1").GetComponent<UILabel>();
		itemLbls[1] 		= GameObject.Find("lblItem2").GetComponent<UILabel>();
		itemLbls[2] 		= GameObject.Find("lblItem3").GetComponent<UILabel>();
		
		handling 		= GameObject.Find("handling").GetComponent<UISlider>();
		speed 			= GameObject.Find("speed").GetComponent<UISlider>();
		accel 			= GameObject.Find("accel").GetComponent<UISlider>();
		boost			= GameObject.Find("boost").GetComponent<UISlider>();
		txtVehicleDesc 	= GameObject.Find("txtVehicleDesc");
		txtVehicleName 	= GameObject.Find("txtVehicleName");

		currentCar 		= (IVehicleTitleUI)Cars[carIdx].GetComponentInChildren(typeof(IVehicleTitleUI));
		SetActiveCar();

		UpdateCarDescAndItems_VSelectScreen(currentCar);
		txtVehicleDesc.GetComponent<UILabel>().text = "";
	}

	void FixedUpdate()
	{
		UpdateStatBars_VSelectScreen(currentCar);
	}
	
	public void UpdateStatBars_VSelectScreen(IVehicleTitleUI currentCar)
	{
		handling.value =  Mathf.Lerp(handling.value,Mathf.Clamp(currentCar.Handling,0,1),0.1f);
		handling.foregroundWidget.color = Color.Lerp(Color.red,Color.green,handling.value);
		
		speed.value =  Mathf.Lerp(speed.value,Mathf.Clamp(currentCar.Speed,0,1),0.1f);
		speed.foregroundWidget.color = Color.Lerp(Color.red,Color.green,speed.value);
		
		accel.value =  Mathf.Lerp(accel.value,Mathf.Clamp(currentCar.Accel,0,1),0.1f);
		accel.foregroundWidget.color = Color.Lerp(Color.red,Color.green,accel.value);
		
		boost.value =  Mathf.Lerp(boost.value,Mathf.Clamp(currentCar.Boost,0,1),0.1f);
		boost.foregroundWidget.color = Color.Lerp(Color.red,Color.green,boost.value);
	}
	
	public void UpdateCarDescAndItems_VSelectScreen(IVehicleTitleUI currentCar)
	{
		StopTypeWriter();
		txtVehicleDesc.GetComponent<UILabel>().text = currentCar.Description;
		descripText = currentCar.Description;
		txtVehicleName.GetComponent<UILabel>().text = currentCar.Name;
		StartTypeWriter();

		items[0].spriteName = itemLbls[0].text = currentCar.Item1;
		items[1].spriteName = itemLbls[1].text = currentCar.Item2;
		items[2].spriteName = itemLbls[2].text = currentCar.Item3;

	}

	public void StartTypeWriter()
	{
		descripText = txtVehicleDesc.GetComponent<UILabel>().processedText;
		txtVehicleDesc.AddComponent<TypewriterEffect>();
		txtVehicleDesc.GetComponent<TypewriterEffect>().charsPerSecond = 60;

	}

	public void StopTypeWriter()
	{
		GameObject.Destroy(txtVehicleDesc.GetComponent<TypewriterEffect>());
		txtVehicleDesc.GetComponent<UILabel>().text = descripText;
	}

	public void IncrementCurrentCar()
	{
		carIdx+= (carIdx > Cars.Length-2) ? -(Cars.Length-1): 1;
		SetActiveCar();
	}

	public void DecrementCurrentCar()
	{
		carIdx -= (carIdx < 1) ? -(Cars.Length-1): 1;
		SetActiveCar();

	}

	public void SetActiveCar()
	{
		for(int i=0; i< Cars.Length; i++)
		{
			Cars[i].SetActive(false);
		}
		Cars[carIdx].SetActive(true);
		currentCar = (IVehicleTitleUI)Cars[carIdx].GetComponentInChildren(typeof(IVehicleTitleUI));
		UpdateCarDescAndItems_VSelectScreen(currentCar);
	}

	public void LoadGame()
	{
		print("loading level");
		SavePrefs();
		Application.LoadLevel(GameSceneName);
	}



	public void SavePrefs()
	{
		PlayerPrefs.SetString("car",currentCar.Name);
		PlayerPrefs.SetFloat("handling", handling.value);
		PlayerPrefs.SetFloat("speed", speed.value);
		PlayerPrefs.SetFloat("accel", accel.value);
		PlayerPrefs.SetFloat("boost", boost.value);
		PlayerPrefs.SetString("weapon1",currentCar.Item1);
		PlayerPrefs.SetString("weapon2",currentCar.Item2);
		PlayerPrefs.SetString("weapon3",currentCar.Item3);
	}

}
