#include <ros/ros.h>
#include "plc_config_sensors.h"
#include "plc_config_actuators.h"
#include "commande_plc/sensors.h"
#include "commande_plc/actuators.h"
#include <sstream>

int16 sensors_data[3];
int16 actuators_data[3];

struct coord{
  uint8_t data_mod;
  uint16_t data_pos;
};
coord identification_act (string nom_objet);
string identification_sen (uint8_t data_in_module, uint16_t data_in_position);


void readingCallback (const commande_plc::sensors msg)
{
  ROS_INFO("I heard sensors data: [%d]", msg.sensors_data);

}

// fonction d'initialisation des valeurs des actionneurs
void val_act (string nom_objet, bool val)
{
  uint8_t data_mod_aux;
  uint16_t data_pos_aux;
  coord_out coord;
  coord_out identification_act (string nom_objet);
  data_mod_aux = coord_out.data_mod;
  data_pos_aux = coord_out.data_pos;
  ((actuators_data[data_mod_aux]>>data_pos_aux) & 1) = val;
}

//fonction d'association des variables à leurs valeurs, à l'aide de la fonction d'identification
bool valeur(string nom_objet)
{
  bool data_out_aux;
  uint8_t data_mod_aux;
  uint16_t data_pos_aux;
  coord_out coord;

  // pour les capteurs
  for (int i=0; i<3; ++i)
  {
    for (int j=0; j<16; ++j)
      {
      if identification_sen(i,j) = nom_objet;
      data_out_aux = ((sensors_data[i]>>j) & 1);
      }
  }

  //pour les actionneurs
  coord_out identification_act (string nom_objet);
  data_mod_aux = coord_out.data_mod;
  data_pos_aux = coord_out.data_pos;

  /* on resume les valeurs des actionneurs en un tableau de 3 entiers pour simplifier le contenu du message, à l'aide de fichier de la fonction 
  d'identification et la technique de masquage des registres, on peut le determiner la valeur donnée par chaque actionneur */

  data_out_aux = ((actuators_data[data_mod_aux]>>data_pos_aux) & 1);

  return(data_out_aux)
}


int main(int argc, char **argv)
{	
//initialisation du noeud ros et création d'un handle associe au noeud
	ros::init(argc, argv, "commande_plc");	
	ros::NodeHandle nh;
  ros::Subscriber sub = n.subscribe("get_sensors_data", 1000, readingCallback);
  ros::Publisher pub = n.advertise<commande_plc::actuators>("set_actuators_data", 1000);
	ros::Rate loop_rate(25); //fréquence de la boucle (25Hz)

  val_act(R11D,0);
  val_act(R11G,0);
  val_act(V11,1);
  val_act(D11,0);
  val_act(ST20,1);
  val_act(ST24,1);
  val_act(ST23,1);
  val_act(R12D,0);
  val_act(R12G,0);
  val_act(V12,1);
  val_act(D12,0);
  val_act(ST21,1);
  val_act(R1D,0);
  val_act(R1G,0);
  val_act(V1,1);
  val_act(D1,0);


//Declaration des variables de transition entre les etapes de la grafcet
	int jeton_g =1;
  int jeton_k =1;

	while (ros::ok())
	{
		//Code commande _ Exemple partie gauche
                //c'est un exemple d'implementation de grafcet, ce code doit changer en fonction de scenario

		switch(jeton_g)
		{
			case 1:
        if(value(PS20)==1){
          value(D11)==1;
          if(value(D11G)==1){value(R11D)==1;}
          if(value(D11D)==1){value(R11G)==1;}
          jeton_g++;
        }
			break;
			
			case 2:
        value(V11)==1;
        if (value(D11D) == 1){value(ST20)==1;}
        if (value(D11G) == 1){value(ST20)==1;}
        jeton_g++;
      }
			break;


			case 3:
				if (value(PS20) == 0) {
          if value(CP9 == 1) ST24=0; 
          if value(CP10 == 1) ST23=0;
					jeton_g++;
        }
			break;

      case 4: 
        value(V12)==1;
        if (value(D12D) == 1){value(ST21)==1;}
        if (value(D12G) == 1){value(ST21)==1;}
        jeton_g++;
      }
      break;

      case 5:
        if(value(PS21)==1){
          value(D12)==1;
          if(value(D12G)==1){value(R12D)==1;}
          if(value(D12D)==1){value(R12G)==1;}
          jeton_g++;
        }
      break;

      case 6:
				if(value(PS23)==1){
          value(D1)==1;
          if(value(D1G)==1){value(R1D)==1;}
          if(value(D1D)==1){value(R1G)==1;}
          jeton_g++;
        }
      break;

      case 7:
        if(value(PS1) == 0) {
          if value(CP1 == 1) 
          if value(CP2 == 1) 
				jeton_g++;	
      }
			break;
    }
    commande::actuators msg;
    //msg.actuators_data = atoll(argv[1]);
    for (int i=0; i<3; ++i)
      {
        msg.actuators_data[i] = actuators_data[i];
      }  
    pub.publish(msg);
          
		ros::spinOnce(); //permet aux fonction callback de ros dans les objets d'êtres appelées
		loop_rate.sleep(); //permet de synchroniser la boucle while. Il attend le temps qu'il reste pour faire le 25Hz (ou la fréquence indiquée dans le loop_rate)
	}

	return 0;
}
