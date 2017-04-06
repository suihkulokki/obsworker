# obsworker
OBS worker instance running in docker container. Obsworker comes with 
rather complicated init script, which is hereby replaced with a script,
./start-obsworker that does the most simple case - chroot builds.

## Configuration 
.. is done via environment variables (or file), e.g.:

obsworker.env
> OBS_SERVER="obs"
> OBS_IP="192.168.1.6"
> OBS_JOBS=8
> OBS_PORT=12345

Note, that OBS master must be able to connect to the worker instance on given
OBS_PORT, and the OBS_PORT must match what is given in -p 

## Starting OBS worker
docker run --privileged -d -h workername --env-file obsworker.env -p 12345:12345 suihkulokki/obsworker
