// Do not remove the include below
#include "WaterLevel.h"

#define triggerSoundPin 7
#define echoInputPin 6
#define soundSpeedMetersPerSecond 343.0f

long durationMicrosseconds = 0l;
long distanceInCentimeters = 0l;

// Enter a MAC address and IP address for your controller below.
// The IP address will be dependent on your local network:
byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };

// Initialize the Ethernet server library
// with the IP address and port you want to use
// (port 80 is default for HTTP):
EthernetServer server(80);

//The setup function is called once at startup of the sketch
void setup() {

	Serial.begin(9600);
	pinMode(triggerSoundPin, OUTPUT);
	pinMode(echoInputPin, INPUT);

	// start the Ethernet connection and the server:
	Ethernet.begin(mac);
	server.begin();
	Serial.print("server is at ");
	Serial.println(Ethernet.localIP());

}

void renderDataOnHttpServer() {
	// listen for incoming clients
	EthernetClient client = server.available();
	if (client) {
		Serial.println("new client");
		// an http request ends with a blank line
		boolean currentLineIsBlank = true;
		while (client.connected()) {
			if (client.available()) {
				char c = client.read();
				Serial.write(c);
				// if you've gotten to the end of the line (received a newline
				// character) and the line is blank, the http request has ended,
				// so you can send a reply
				if (c == '\n' && currentLineIsBlank) {
					// send a standard http response header
					client.println("HTTP/1.1 200 OK");
					client.println("Content-Type: text/html");
					client.println("Connection: close"); // the connection will be closed after completion of the response
					client.println("Refresh: 5"); // refresh the page automatically every 5 sec
					client.println();
					client.println("<!DOCTYPE HTML>");
					client.println("<html>");
					client.print("Time between pulse and echo (microsseconds): ");
					client.print(durationMicrosseconds);
					client.println("<br />");
					client.print("Calculated distance (centimeters): ");
					client.println(distanceInCentimeters);
					client.print("<br />");
					client.println("</html>");
					break;
				}
				if (c == '\n') {
					// you're starting a new line
					currentLineIsBlank = true;
				} else if (c != '\r') {
					// you've gotten a character on the current line
					currentLineIsBlank = false;
				}
			}
		}
		// give the web browser time to receive the data
		delay(1);
		// close the connection:
		client.stop();
		Serial.println("client disconnected");
	}
}

void makePulse() {
	digitalWrite(triggerSoundPin, LOW);
	delayMicroseconds(2); // Added this line
	digitalWrite(triggerSoundPin, HIGH);
	delayMicroseconds(10); // Added this line
	digitalWrite(triggerSoundPin, LOW);
}

void printSensorData() {
	Serial.print("Time between pulse and echo = ");
	Serial.print(durationMicrosseconds);
	Serial.print("us; Measured distance = ");
	Serial.print(distanceInCentimeters);
	Serial.println("cm");
}

void calculate() {
	durationMicrosseconds = pulseIn(echoInputPin, HIGH);
	distanceInCentimeters = durationMicrosseconds / 58.2;
}

// The loop function is called in an endless loop
void loop() {
	makePulse();
	calculate();
	printSensorData();
	delay(10);
	renderDataOnHttpServer();
//Add your repeated code here
}

