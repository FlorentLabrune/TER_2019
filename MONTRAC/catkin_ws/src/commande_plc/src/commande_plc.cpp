#include <ros/ros.h>
#include "../../plc_in/src/plc_config_sensors.h"
#include "../../plc_out/src/plc_config_actuators.h"
#include "commande_plc/sensors.h"
#include "commande_plc/actuators.h"
#include <sstream>

int16_t sensors_data[3];
int16_t actuators_data[3];


void readingCallback (const commande_plc::sensors msg)
{
  ROS_INFO("I heard sensors data: [%d]", msg.sensors_data1);

}

// fonction d'initialisation des valeurs des actionneurs
void val_act (std::string nom_objet, bool val)
{
  uint8_t data_mod_aux;
  uint16_t data_pos_aux;

  coord coord_out = identification_act(nom_objet);
  data_mod_aux = coord_out.data_mod;
  data_pos_aux = coord_out.data_pos;
  actuators_data[data_mod_aux] = (val & 1);
  actuators_data[data_mod_aux] = actuators_data[data_mod_aux] << data_pos_aux;
}

//fonction d'association des variables à leurs valeurs, à l'aide de la fonction d'identification
bool valeur(std::string nom_objet)
{
  bool data_out_aux;
  uint8_t data_mod_aux;
  uint16_t data_pos_aux;
  coord coord_out;

  // pour les capteurs
  for (int i=0; i<3; ++i)
  {
    for (int j=0; j<16; ++j)
      {
        if (identification_sen(i,j) == nom_objet)
          data_out_aux = ((sensors_data[i]>>j) & 1);
      }
  }

  //pour les actionneurs
  coord_out = identification_act (nom_objet);
  data_mod_aux = coord_out.data_mod;
  data_pos_aux = coord_out.data_pos;

  /* on resume les valeurs des actionneurs en un tableau de 3 entiers pour simplifier le contenu du message, à l'aide de fichier de la fonction 
  d'identification et la technique de masquage des registres, on peut le determiner la valeur donnée par chaque actionneur */

  data_out_aux = ((actuators_data[data_mod_aux]>>data_pos_aux) & 1);

  return(data_out_aux);
}


int main(int argc, char **argv)
{	
//initialisation du noeud ros et création d'un handle associe au noeud
	ros::init(argc, argv, "commande_plc");	
	ros::NodeHandle n;
        ros::Subscriber sub = n.subscribe("get_sensors_data", 1000, readingCallback);
        ros::Publisher pub = n.advertise<commande_plc::actuators>("set_actuators_data", 1000);
	ros::Rate loop_rate(25); //fréquence de la boucle (25Hz)

        val_act("R11D",0);
        val_act("R11G",0);
        val_act("V11",1);
        val_act("D11",0);
        val_act("ST20",1);
        val_act("ST24",1);
        val_act("ST23",1);
        val_act("R12D",0);
        val_act("R12G",0);
        val_act("V12",1);
        val_act("D12",0);
        val_act("ST21",1);
        val_act("R1D",0);
        val_act("R1G",0);
        val_act("V1",1);
        val_act("D1",0);


//Declaration des variables de transition entre les etapes de la grafcet
	int jeton_g =1;
        int jeton_k =1;

	while (ros::ok())
	{
		/*Code commande _ Exemple partie gauche
                //c'est un exemple d'implementation de grafcet, ce code doit changer en fonction de scenario

		switch(jeton_g)
		{
			case 1:
                                  if(valeur("PS20")==1){
                                     valeur("D11")==1;
                                     if(valeur("D11G")==1){valeur("R11D")==1;}
                                     if(valeur("D11D")==1){valeur("R11G")==1;}
                                      jeton_g++;
                                    }
			break;
			
			case 2:
                                  valeur("V11")==1;
                                  if (valeur("D11D") == 1){valeur("ST20")==1;}
                                  if (valeur("D11G") == 1){valeur("ST20")==1;}
                                  jeton_g++;
			break;


			case 3:
				                          if (valeur("PS20") == 0) {
                                    if (valeur("CP9") == 1) ST24=0; 
                                    if (valeur("CP10") == 1) ST23=0;
					                         jeton_g++;	}
			break;

                        case 4: 
                                  valeur("V12")==1;
                                  if (valeur("D12D") == 1){valeur("ST21")==1;}
                                  if (valeur("D12G") == 1){valeur("ST21")==1;}
                                  jeton_g++;  
                        break;

                        case 5:
                                  if(valeur("PS21")==1){
                                     valeur("D12")==1;
                                     if(valeur("D12G")==1){valeur("R12D")==1;}
                                     if(valeur("D12D")==1){valeur("R12G")==1;}
                                  jeton_g++;}
                        break;

                        case 6:
				                            if(valeur("PS23")==1){
                                     valeur("D1")==1;
                                     if(valeur("D1G")==1){valeur("R1D")==1;}
                                     if(valeur("D1D")==1){valeur("R1G")==1;}
                                 jeton_g++;}
                        break;

                        case 7:
                                /*if (valeur("PS1") == 0) {
                                    if (valeur("CP1") == 1) 
                                    if (valeur("CP2") == 1)
                                      jeton_g++;	}
                        //TODO
			break;
                  }*/
                 commande_plc::actuators msg;
                  msg.actuators_data0 = actuators_data[0];
                  msg.actuators_data1 = actuators_data[1];
                  msg.actuators_data2 = actuators_data[2];  
                 pub.publish(msg);
          
		 ros::spinOnce(); //permet aux fonction callback de ros dans les objets d'êtres appelées
		 loop_rate.sleep(); //permet de synchroniser la boucle while. Il attend le temps qu'il reste pour faire le 25Hz (ou la fréquence indiquée dans le loop_rate)
	}

	return 0;
}
