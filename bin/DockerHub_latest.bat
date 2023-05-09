@echo off
set /p tag=" Tag to latest > "
docker tag opdmc/1.19.2-mariokart:%tag% opdmc/1.19.2-mariokart:latest
docker push opdmc/1.19.2-mariokart:latest
pause
