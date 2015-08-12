#include <stdio.h>

#include "ip_connection.h"
#include "bricklet_humidity.h"

#define HOST "localhost"
#define PORT 4223
#define UID "XYZ" // Change to your UID

// Callback function for humidity outside of 30 to 60 %RH (parameter has unit %RH/10)
void cb_humidity_reached(uint16_t humidity, void *user_data) {
	(void)user_data; // avoid unused parameter warning

	printf("Humidity: %f %%RH\n", humidity/10.0);
	puts("Recommended humiditiy for human comfort is 30 to 60 %RH.");
}

int main(void) {
	// Create IP connection
	IPConnection ipcon;
	ipcon_create(&ipcon);

	// Create device object
	Humidity h;
	humidity_create(&h, UID, &ipcon);

	// Connect to brickd
	if(ipcon_connect(&ipcon, HOST, PORT) < 0) {
		fprintf(stderr, "Could not connect\n");
		return 1;
	}
	// Don't use device before ipcon is connected

	// Get threshold callbacks with a debounce time of 10 seconds (10000ms)
	humidity_set_debounce_period(&h, 10000);

	// Register threshold reached callback to function cb_humidity_reached
	humidity_register_callback(&h,
	                           HUMIDITY_CALLBACK_HUMIDITY_REACHED,
	                           (void *)cb_humidity_reached,
	                           NULL);

	// Configure threshold for "outside of 30 to 60 %RH" (unit is %RH/10)
	humidity_set_humidity_callback_threshold(&h, 'o', 30*10, 60*10);

	printf("Press key to exit\n");
	getchar();
	ipcon_destroy(&ipcon); // Calls ipcon_disconnect internally
	return 0;
}
