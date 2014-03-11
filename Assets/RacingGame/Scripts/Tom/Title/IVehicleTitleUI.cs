using UnityEngine;
using System.Collections;

public interface IVehicleTitleUI
{
	string Name
	{
		get;
		set;
	}

	string Item1
	{
		get;
		set;
	}

	string Item2
	{
		get;
		set;
	}

	string Item3
	{
		get;
		set;
	}

	string Description
	{
		get;
		set;
	}

	float Handling
	{
		get;
		set;
	}

	float Speed
	{
		get;
		set;
	}

	float Accel
	{
		get;
		set;
	}

	float Boost
	{
		get;
		set;
	}

}
