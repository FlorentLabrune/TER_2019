#include "sensorState.h"
#include "switchState.h"
#include "stopState.h"
#include <ros/ros.h>

int main(int argc, char **argv)
{	
//initialisation du noeud ros et création d'un handle associé au noeud
	ros::init(argc, argv, "planificateur");	
	ros::NodeHandle nh;

//création et initialisation des objets Capteur, Aiguillage et point d'arret
	sensorState SensorSt;
	SensorSt.init(nh);

	switchState switchSt;
	switchSt.init(nh);

	stopState stopSt;
	stopSt.init(nh);

	ros::Rate loop_rate(25); //fréquence de la boucle (25Hz)

///////////////////////////////////////////
//////// Déclaration des variables ////////
///////////////////////////////////////////

	int jeton_g =1;
/*
//pour le reste des aiguillages de la cellule, on configure aussi: 
        int jeton_g(1);
	int jeton_verrd1(0), jeton_verrd2(0), jeton_verrd3(0), jeton_verrd4(0);
	int jeton_verrg1(0), jeton_verrg2(0);
*/
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
	while (ros::ok())
	{
		///////////////////////////////////
		//////////// Coder le scenario ////////////
		///////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////Exemple partie gauche/////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////

		switch(jeton_g)
		{
			case 1:
                                  if (SensorSt.PS[6] == 1){
				  switchSt.unlockSwitch(3);
                                  switchSt.turnLeft(3);
                                  jeton_g++;}
			break;
			
			case 2:
                                  if (SensorSt.DG[3] == 1){
                                     switchSt.lockSwitch(3);
                                     jeton_g++;}
			break;

			case 3:
				if (SensorSt.PS[14] == 1) {
                                    switchSt.unlockSwitch(10);
                                    switchSt.turnLeft(10);
					jeton_g++;	}
			break;

			case 4:
				if (SensorSt.DG[10] == 1){
                                    switchSt.lockSwitch(10);
					jeton_g++;	}
		        break;

                        case 5:
				if (SensorSt.PS[4] == 1) {
                                    switchSt.unlockSwitch(11);
                                    switchSt.turnLeft(11);
					jeton_g++;	}
			break;

                        case 6:
				if (SensorSt.DG[11] == 1){
                                    switchSt.lockSwitch(11);
					jeton_g++;	}
			break;   

                        case 7:
				if (SensorSt.PS[14] == 1) {
                                    switchSt.unlockSwitch(12);
                                    switchSt.turnLeft(12);
					jeton_g++;	}
			break;

                        case 8:
				if (SensorSt.DG[12] == 1){
                                    switchSt.lockSwitch(12);
					jeton_g++;	}
			break;    

                        case 9:
				if (SensorSt.PS[4] == 1) {
                                    switchSt.unlockSwitch(11);
                                    switchSt.turnRight(11);
					jeton_g++;	}
			break;

                        case 10:
				if (SensorSt.DD[11] == 1){
                                    switchSt.lockSwitch(11);
					jeton_g++;	}
			break;

                        case 11:
				if (SensorSt.PS[14] == 1) {
                                    switchSt.unlockSwitch(12);
                                    switchSt.turnRight(12);
					jeton_g++;	}
			break;

                        case 12:
				if (SensorSt.DD[12] == 1){
                                    switchSt.lockSwitch(12);
					jeton_g++;	}
			break;
         
                  }
/*
//on continue à configurer le reste des cas si on veut avoir un scénario qui fait basculer tous
//les aiguillage de la partie gauche de la cellule, non seulement A11 et A12:

			case 13 :
				if (SensorSt.CP[1] == 1){
					stopSt.go(21);
					stopSt.stop(3);								
					switchSt.unlockSwitch(1); 
					switchSt.turnLeft(1);	
					switchSt.unlockSwitch(2); 
					switchSt.turnLeft(2);	
					jeton_verrg1++;
					jeton_g++;	}
				break;

			case 14 :
				if (SensorSt.PS[2] == 1){	
					stopSt.go(3);	
					stopSt.stop(5);
					jeton_g++;	}
				break;

			case 15 :
				if (SensorSt.PS[4] == 1){	
					switchSt.unlockSwitch(2); 
					switchSt.turnRight(2);	
					stopSt.stop(7);
					jeton_verrg2++;						
					jeton_g++;	}
				break;

			case 16:
				if (SensorSt.DD[2] == 1){	
					stopSt.go(5);					
					jeton_g++;	}
				break;
		}

//lorsqu'on tourne un aiguillage, on doit créer un RdP parallèle qui attend que l'aiguillage soit en place pour le revérouiller.
		switch(jeton_verrg1)
		{
			case 1||2:
				if (SensorSt.DG[1] == 1){
					switchSt.lockSwitch(1);
					jeton_verrg1++;
				}
				if (SensorSt.DG[2] == 1){
					switchSt.lockSwitch(2);
					jeton_verrg1++;
				}
		}
		switch(jeton_verrg2)
		{
			case 1:
				if (SensorSt.DD[2] == 1){
					switchSt.lockSwitch(2);
					jeton_verrg2++;
				}
		}

		///////////////////////////////////
		//////////// fin code /////////////
		///////////////////////////////////
*/

		ros::spinOnce(); //permet aux fonction callback de ros dans les objets d'êtres appelées
		loop_rate.sleep(); //permet de synchroniser la boucle while. Il attend le temps qu'il reste pour faire le 25Hz (ou la fréquence indiquée dans le loop_rate)
	}

	return 0;


}
