using UnityEngine;
using System.Collections;

public class CarSpeedControl
{

	CarController carCtlScript;
	public Rigidbody car;
	public float speedSQ;
	public float speed;
	Vector3 velNorm;
	float maxTorque;
	public bool Boosting;
	public bool applyDrag = true;
	public float speedRatio,boostRatio;
	float boostTimer;
	public CarSpeedControl(CarController c)
	{
		carCtlScript = c;
		car = c.gameObject.rigidbody;

		maxTorque = c.MaxTorque;
	}


	public void LimitSpeed()
	{
		speedSQ = car.velocity.sqrMagnitude;
		speed = car.velocity.magnitude;
		velNorm = car.velocity.normalized;
		speedRatio = speed/carCtlScript.normalSpeedCap;
		boostRatio = speed/carCtlScript.MaxSpeed;
		if(!Boosting)
		{
			if(speed > carCtlScript.normalSpeedCap)
			{
				car.velocity = velNorm * carCtlScript.normalSpeedCap;
			}

		}
		else
		{
			if(speed > carCtlScript.MaxSpeed)
			{
				car.velocity = velNorm * carCtlScript.MaxSpeed;
			}
			car.AddForce(car.gameObject.transform.forward*10*Time.deltaTime);
		}
		if(applyDrag) ApplyDrag();
	}


	void ApplyDrag()
	{
		if(speed > carCtlScript.MaxSpeed*0.1f)
		{
			car.AddForce(-velNorm * speed* carCtlScript.dragCoef,ForceMode.Force);
			carCtlScript.MaxTorque = speedRatio * -maxTorque  + maxTorque +1f ;
		}
	}



}
