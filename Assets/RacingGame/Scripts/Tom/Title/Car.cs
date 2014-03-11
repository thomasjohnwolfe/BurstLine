using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public class Car : MonoBehaviour,IVehicleTitleUI
{
	public float handling,speed,accel,boost;

	public string name;
	public string description;

	public string item1, item2, item3;

	public string Item1
	{
		get{return item1;}
		set{item1 = value;}
	}

	public string Item2
	{
		get{return item2;}
		set{item2 = value;}
	}

	public string Item3
	{
		get{return item3;}
		set{item3 = value;}
	}

	public string Name
	{
		get{return name;}
		set{name = value;}
	}

	public string Description
	{
		get{return description;}
		set{description = value;}
	}

	public float Handling
	{
		get{return handling;}
		set{handling = value;}
	}
	
	public float Speed
	{
		get{return speed;}
		set{speed = value;}
	}
	
	public float Accel
	{
		get{return accel;}
		set{accel = value;}
	}
	
	public float Boost
	{
		get{return boost;}
		set{boost = value;}
	}
}
