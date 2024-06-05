@echo off
set repo=opdmc/1.19.2-mariokart
set /p tag=" Tag to sync > "
docker pull %repo%:%tag%
docker tag %repo%:%tag% quay.io/%repo%:%tag%
docker push quay.io/%repo%:%tag%
pause