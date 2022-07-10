@SETLOCAL
@ECHO OFF
PUSHD %~dp0

docker run -it -v %~dp0/.ssh:/root/.ssh -v %~dp0/.kube:/root/.kube dahenr/homelabbase /scripts/%*