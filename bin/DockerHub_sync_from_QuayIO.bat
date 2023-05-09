@echo off
set /p tag=" Tag to sync > "
docker pull quay.io/opdmc/1.19.2-mariokart:%tag%
docker tag quay.io/opdmc/1.19.2-mariokart:%tag% opdmc/1.19.2-mariokart:%tag%
docker push opdmc/1.19.2-mariokart:%tag%
pause
