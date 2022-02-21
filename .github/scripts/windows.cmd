REM ############################## windows cmd
REM Test

set branch=%1
echo %branch%

set rtt=%1

for /F %%i in ('git rev-parse --short HEAD') do ( set commitid=%%i)
set rc=%commitid%

for /F %%i in ('git rev-parse --abbrev-ref HEAD') do ( set commitid=%%i)
set rb=%commitid%

for /F %%i in ('git describe --tags --match "v[0-9]*" --abbrev=0 HEAD') do ( set commitid=%%i)
set currtag=%commitid%

set currbra=%rb%

echo 000---%currtag%
echo 111---%rtt%
echo 222---%rc%
echo 333---%rb%


for /F %%i in ('call echo https://%%GIT_ACCESS_TOKEN%%@github.com/tencentyun/iot-p2p.git') do ( set commitid=%%i)
set url=%commitid%

Rem git clone %url%
Rem cd iot-p2p

if  %1==main (
    echo  %1==main
)  else  (
    echo  %1!=main
)

set sed="C:\Program Files\Git\usr\bin\sed.exe"

%sed% -i s/iot-p2p/iot-p2pppppppppppppppp/g windows.cmd

cat .\windows.cmd

.\C:\Program Files\Git\usr\bin\sed.exe -i "s/.*VIDEOSDKVERSION.*/static const char * VIDEOSDKVERSION = \"$VIDEOSDKVERSION\";/g" ../iot/link/app_common/app_p2p/appWrapper.h

.\C:\Program Files (x86)\Git\usr\bin\sed.exe -i "s/.*VIDEOSDKVERSION.*/static const char * VIDEOSDKVERSION = \"$VIDEOSDKVERSION\";/g" ../iot/link/app_common/app_p2p/appWrapper.h
