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

set GIT_ACCESS_TOKEN=call echo %%GIT_ACCESS_TOKEN%%

git clone https://%GIT_ACCESS_TOKEN%@github.com/tencentyun/iot-p2p.git
cd iot-p2p

