import com.tinkerforge.BrickletHumidity;
import com.tinkerforge.IPConnection;

public class ExampleSimple {
	private static final String host = new String("localhost");
	private static final int port = 4223;
	private static final String UID = new String("ABC"); // Change to your UID
	
	// Note: To make the example code cleaner we do not handle exceptions. Exceptions you
	//       might normally want to catch are described in the commnents below
	public static void main(String args[]) throws Exception {
		IPConnection ipcon = new IPConnection(host, port); // Create connection to brickd (Can throw IOException)

		BrickletHumidity hum = new BrickletHumidity(UID); // Create device object
		ipcon.addDevice(hum); // Add device to ip connection (Can throw IPConnection.TimeoutException)
		// Don't use device before it is added to a connection
		

		// Get current humidity (unit is %RH/10)
		int humidity = hum.getHumidity(); // Can throw IPConnection.TimeoutException

		System.out.println("Relative Humidity: " + humidity/10.0 + " %RH");
		
		System.out.println("Press ctrl+c to exit");
		ipcon.joinThread();
	}
}