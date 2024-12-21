# Downloading an image from the web

FROM path:verison-os 

# Transfering data to the machine

COPY app_from_outside /path_to_put_it

# commands to run before machine goes up (in the build process)

RUN command_to_run

# commands to run while the machine goes up

CMD command_to_run

