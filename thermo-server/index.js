var serialport = require('serialport');// include the library
   SerialPort = serialport.SerialPort; // make a local instance of it
   // get port name from the command line:
   portName = process.argv[2];

var myPort = new SerialPort(portName, {
   baudRate: 9600,
   // look for return and newline at the end of each data packet:
   parser: serialport.parsers.readline("\n")
 });

function showPortOpen() {
   console.log('port open. Data rate: ' + myPort.options.baudRate);
}

function showPortClose() {
   console.log('port closed.');
}

function showError(error) {
   console.log('Serial port error: ' + error);
}

var log = require('single-line-log').stdout;

myPort.on('open', showPortOpen);
myPort.on('data', sendSerialData);
myPort.on('close', showPortClose);
myPort.on('error', showError);

var WebSocketServer = require('ws').Server;
var SERVER_PORT = 8081;               // port number for the webSocket server
var wss = new WebSocketServer({port: SERVER_PORT}); // the webSocket server
var connections = new Array;          // list of connections to the server

wss.on('connection', handleConnection);

function handleConnection(client) {
 console.log("New Connection from " + client); // you have a new client
 connections.push(client); // add this client to the connections array

 client.on('message', sendToSerial); // when a client sends a message,

 client.on('close', function() { // when a client closes its connection
 console.log("connection closed"); // print it out
 var position = connections.indexOf(client); // get the client's position in the array
 connections.splice(position, 1); // and delete it from the array
 });
}

function sendToSerial(data) {
 console.log("sending to serial: " + data);
 myPort.write(data);
}

// This function broadcasts messages to all webSocket clients
function broadcast(data) {
 for (myConnection in connections) {   // iterate over the array of connections
   try {
     connections[myConnection].send(data); // send the data to each connection
   }
   catch (err)
   {
     console.log(err);
   }
 }
}

function sendSerialData(data) {
   log("Arduino read: " + data);
   // if there are webSocket connections, send the serial data
   // to all of them:
   if (connections.length > 0) {
     broadcast(data);
   }
}

var http = require('http');

var finalhandler = require('finalhandler');
var serveStatic = require('serve-static');

var serve = serveStatic("./public");

var server = http.createServer(function(req, res) {
  var done = finalhandler(req, res);
  serve(req, res, done);
});

server.listen(8080);
