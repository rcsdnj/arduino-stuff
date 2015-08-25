import BaseHTTPServer

class MyHandler(BaseHTTPServer.BaseHTTPRequestHandler):
        
    temperature = "Undefined"
    
    def do_HEAD(self):
        
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
    def do_GET(self):
        """Respond to a GET request."""
        if (self.path == "/temperature"):
            self.wfile.write(MyHandler.temperature)
        else:
            if (self.path == "/"):
                self.send_response(200)
                self.send_header("Content-type", "text/html")
                self.end_headers()
                with open("show_temperature.html", "r") as htmlFile:
                    htmlContent = htmlFile.read()
                self.wfile.write(htmlContent)
                    