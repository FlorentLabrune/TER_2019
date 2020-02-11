#include "vrepController.h"
#include "vrep_common/simRosPauseSimulation.h"
#include "vrep_common/simRosStartSimulation.h"

#include "vrep_common/simRosLoadModel.h"

#include <ros/ros.h>

// PAUSE
void vrepController::pause()
{
	client_simRosPauseSimulation.call(srv_PauseSimulation);
}

// PLAY
void vrepController::play()
{
	client_simRosStartSimulation.call(srv_StartSimulation);				
}

// Chargement des modèles dans la simulation
void vrepController::loadModel(char shuttleNumber)
{
	if(shuttleNumber>54 || shuttleNumber<48) printf(" ATTENTION, LE NUMERO DU SHUTTLE DOIT ETRE COMPRIS ENTRE 0 ET 6 \n");
	else {		
		if(shuttleNumber == 48) shuttleNumber = char(74); // SI 0 -> ShuttleZ
		shuttleNumber = char(shuttleNumber+16);
		string shuttleName = "models/montrac/shuttle"+string(&shuttleNumber)+".ttm";
		srv_LoadModel.request.fileName = shuttleName;			
		client_simRosLoadModel.call(srv_LoadModel);
	}
}

// On ferme le processus vrep
void vrepController::close()
{
	system("pkill vrep");
}

void vrepController::init(ros::NodeHandle n)
{
	system("cd V-Rep/ &&(./vrep.sh -h ../Simulation.ttt &) && cd .."); // On execute VREP sans afficher la fenetre
	sleep(2);
	client_simRosLoadModel = n.serviceClient<vrep_common::simRosLoadModel>("/vrep/simRosLoadModel");
	client_simRosStartSimulation = n.serviceClient<vrep_common::simRosStartSimulation>("/vrep/simRosStartSimulation");	
	client_simRosPauseSimulation = n.serviceClient<vrep_common::simRosPauseSimulation>("/vrep/simRosPauseSimulation");	
}
