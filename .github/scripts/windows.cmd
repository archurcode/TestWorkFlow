REM ############################## windows cmd
REM Test

$branch="${{ github.ref }}"
$branch=$branch.Split("/")[2]
echo $branch
$GIT_BRANCH_IMAGE_VERSION=$branch
echo $GIT_BRANCH_IMAGE_VERSION
$test=${{ secrets.IOT_WECOM_CID_ROBOT_KEY }}
echo $test
