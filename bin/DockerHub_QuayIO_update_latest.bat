@echo off
set repo=opdmc/1.19.2-mariokart
set /p tag=" Tag to latest > "
docker tag %repo%:%tag% %repo%:latest
docker push %repo%:latest
docker tag %repo%:latest quay.io/%repo%:latest
docker push quay.io/%repo%:latest
docker tag quay.io/%repo%:latest tag %repo%:%tag%
pause