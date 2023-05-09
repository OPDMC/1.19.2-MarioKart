@echo off
set repo=opdmc/1.19.2-mariokart
set /p tag=" Tag to sync > "
docker pull quay.io/%repo%:%tag%
docker tag quay.io/%repo%:%tag% %repo%:%tag%
docker push %repo%:%tag%
pause
