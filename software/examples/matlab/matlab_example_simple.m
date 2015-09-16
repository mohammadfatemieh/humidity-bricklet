function matlab_example_simple()
    import com.tinkerforge.IPConnection;
    import com.tinkerforge.BrickletHumidity;

    HOST = 'localhost';
    PORT = 4223;
    UID = 'XYZ'; % Change to your UID

    ipcon = IPConnection(); % Create IP connection
    h = BrickletHumidity(UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Get current humidity (unit is %RH/10)
    humidity = h.getHumidity();
    fprintf('Humidity: %g %%RH\n', humidity/10.0);

    input('Press key to exit\n', 's');
    ipcon.disconnect();
end
