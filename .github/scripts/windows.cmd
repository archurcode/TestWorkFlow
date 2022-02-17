REM ############################## windows cmd
REM Test

set branch=%1
echo %branch%

set rtt=%1
set rc=$(git rev-parse --short HEAD)
set rb=$(git rev-parse --abbrev-ref HEAD)
set currtag=$(git describe --tags --match "v[0-9]*" --abbrev=0 HEAD)
set currbra=%rb%
echo 000---%currtag%
echo 111---%rtt%
echo 222---%rc%
echo 333---%rb%

