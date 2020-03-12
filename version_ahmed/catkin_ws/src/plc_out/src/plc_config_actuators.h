#ifndef __include_plc_config_actuators_h__
#define __include_plc_config_actuators_h__

#include <string>
struct coord{
    uint8_t data_mod;
    uint16_t data_pos;
};
coord identification_act(std::string actuator_nm);

#endif
