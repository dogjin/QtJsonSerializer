:: builds

:: call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" x86_amd64

if "%APPVEYOR_BUILD_WORKER_IMAGE%" == "Visual Studio 2017" (	
	call .\tests\travis\win\build-msvc2017.bat
	call .\tests\travis\win\build-winrt_x64-msvc2017.bat
	call .\tests\travis\win\build-winrt_x86-msvc2017.bat
	call .\tests\travis\win\build-winrt_armv7-msvc2017.bat
)

if "%APPVEYOR_BUILD_WORKER_IMAGE%" == "Visual Studio 2015" (	
	.\tests\travis\win\build-msvc2015.bat
)
