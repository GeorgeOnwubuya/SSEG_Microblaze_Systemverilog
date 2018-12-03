/*
 * main_sseg.cpp
 *
 *  Created on: Nov 29, 2018
 *      Author: user
 */

#include "chu_init.h"
#include "sseg_core.h"
#include "gpio_cores.h"
#include "chu_io_rw.h"

void sw_check(SSEGCore *sseg, SSEGCore *ref_rate, GpiCore *sw) {

	uint32_t s;
	s = sw -> read();
	sseg -> write_data_sseg(s);
	ref_rate -> write_refresh_rate(1000);
}


//Instantiate SSEG and switches
GpiCore sw(get_slot_addr(BRIDGE_BASE, S3_SW));
SSEGCore sseg(get_slot_addr(BRIDGE_BASE, S8_SSEG));
SSEGCore ref_rate(get_slot_addr(BRIDGE_BASE, S8_SSEG));

int main() {

	while(1) {
	sw_check(&sseg, &ref_rate, &sw);
	}
}
