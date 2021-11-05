# Clio

Clio is an embryonic experiment in UI for Common Lisp programs.



## Building and running Clio

1. Make sure you have the prerequisites:
   1. Visual Studio 2019 with C and C++ tools
   2. Microsoft WebView2 runtime:
      https://developer.microsoft.com/en-us/microsoft-edge/webview2/
   3. Git for Windows
   4. sbcl and quicklisp
2. Clone clio:
   https://github.com/mikelevins/clio
3. Build stage:
   1. Open a Developer Powershell for VS 2019 window
      Find it in the Visual Studio 2019 group in the Start menu
   2. cd into clio\stage
   3. Run make.bat
4. Load clio\clio.asd in sbcl
5. Load the clio system:
   `(asdf:load-system :clio)`
6. Start clio's HTTP server:
   `(clio:start-http)`
7. Run stage:
   `(clio:start-stage)`

If all goes well, you should see a window appear containing the message:

> Stage
> clio's presentation process 

