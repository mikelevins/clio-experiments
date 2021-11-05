setlocal
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\vsdevcmd.bat" -arch=x64 -host_arch=x64

cl /I . "WebView2Loader.dll.lib" /std:c++17 /EHsc stage.cc /link "/OUT:stage.exe"
endlocal
