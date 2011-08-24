/* humidity-bricklet
 * Copyright (C) 2011 Olaf Lüke <olaf@tinkerforge.com>
 *
 * humidity.c: Implementation of Humidity Bricklet messages
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#include "humidity.h"

#include <adc/adc.h>

#include "bricklib/bricklet/bricklet_communication.h"
#include "bricklib/utility/util_definitions.h"
#include "brickletlib/bricklet_entry.h"
#include "brickletlib/bricklet_simple.h"
#include "config.h"

#define MAX_ADC_VALUE ((1  << 12) - 1)
#define MAX_VOLTAGE 3300
#define MAX_HUMIDITY 1000

#define HUMDITIY_0RH (500*MAX_ADC_VALUE/MAX_VOLTAGE)
#define HUMDITIY_100RH (2700*MAX_ADC_VALUE/MAX_VOLTAGE)
#define HUMIDITY_AVERAGE 100

#define SIMPLE_UNIT_HUMIDITY 0
#define SIMPLE_UNIT_ANALOG_VALUE 1

const SimpleMessageProperty smp[] = {
	{SIMPLE_UNIT_HUMIDITY, SIMPLE_TRANSFER_VALUE, SIMPLE_DIRECTION_GET}, // TYPE_GET_HUMIDITY
	{SIMPLE_UNIT_ANALOG_VALUE, SIMPLE_TRANSFER_VALUE, SIMPLE_DIRECTION_GET}, // TYPE_GET_ANALOG_VALUE
	{SIMPLE_UNIT_HUMIDITY, SIMPLE_TRANSFER_PERIOD, SIMPLE_DIRECTION_SET}, // TYPE_SET_HUMIDITY_CALLBACK_PERIOD
	{SIMPLE_UNIT_HUMIDITY, SIMPLE_TRANSFER_PERIOD, SIMPLE_DIRECTION_GET}, // TYPE_GET_HUMIDITY_CALLBACK_PERIOD
	{SIMPLE_UNIT_ANALOG_VALUE, SIMPLE_TRANSFER_PERIOD, SIMPLE_DIRECTION_SET}, // TYPE_SET_ANALOG_VALUE_CALLBACK_PERIOD
	{SIMPLE_UNIT_ANALOG_VALUE, SIMPLE_TRANSFER_PERIOD, SIMPLE_DIRECTION_GET}, // TYPE_GET_ANALOG_VALUE_CALLBACK_PERIOD
	{SIMPLE_UNIT_HUMIDITY, SIMPLE_TRANSFER_THRESHOLD, SIMPLE_DIRECTION_SET}, // TYPE_SET_HUMIDITY_CALLBACK_THRESHOLD
	{SIMPLE_UNIT_HUMIDITY, SIMPLE_TRANSFER_THRESHOLD, SIMPLE_DIRECTION_GET}, // TYPE_GET_HUMIDITY_CALLBACK_THRESHOLD
	{SIMPLE_UNIT_ANALOG_VALUE, SIMPLE_TRANSFER_THRESHOLD, SIMPLE_DIRECTION_SET}, // TYPE_SET_ANALOG_VALUE_CALLBACK_THRESHOLD
	{SIMPLE_UNIT_ANALOG_VALUE, SIMPLE_TRANSFER_THRESHOLD, SIMPLE_DIRECTION_GET}, // TYPE_GET_ANALOG_VALUE_CALLBACK_THRESHOLD
	{0, SIMPLE_TRANSFER_DEBOUNCE, SIMPLE_DIRECTION_SET}, // TYPE_SET_DEBOUNCE_PERIOD
	{0, SIMPLE_TRANSFER_DEBOUNCE, SIMPLE_DIRECTION_GET}, // TYPE_GET_DEBOUNCE_PERIOD
};

const SimpleUnitProperty sup[] = {
	{humidity_from_analog_value, SIMPLE_SIGNEDNESS_UINT, TYPE_HUMIDITY, TYPE_HUMIDITY_REACHED, SIMPLE_UNIT_ANALOG_VALUE}, // humidity
	{analog_value_from_mc, SIMPLE_SIGNEDNESS_UINT, TYPE_ANALOG_VALUE, TYPE_ANALOG_VALUE_REACHED, SIMPLE_UNIT_ANALOG_VALUE}, // analog value
};


void invocation(uint8_t com, uint8_t *data) {
	simple_invocation(com, data);
}

void constructor(void) {
	BC->humidity_avg = 0;
	adc_channel_enable(BS->adc_channel);
	simple_constructor();
}

void destructor(void) {
	simple_destructor();
	adc_channel_disable(BS->adc_channel);
}

int32_t analog_value_from_mc(int32_t value) {
	return (uint16_t)BA->adc_channel_get_data(BS->adc_channel);
}

int32_t humidity_from_analog_value(int32_t value) {
	BC->humidity_avg_sum += value;

	if(BC->tick % HUMIDITY_AVERAGE == 0) {
		uint16_t value = BC->humidity_avg_sum/HUMIDITY_AVERAGE;
		if(value < HUMDITIY_0RH) {
			BC->humidity_avg = 0;
		} else if(value > HUMDITIY_100RH) {
			BC->humidity_avg = 1000;
		} else {
			BC->humidity_avg = SCALE(value,
			                         HUMDITIY_0RH,
			                         HUMDITIY_100RH,
									 0,
									 MAX_HUMIDITY);
		}
		BC->humidity_avg_sum = 0;
	}

	return BC->humidity_avg;
}

void tick(void) {
	simple_tick();
}
