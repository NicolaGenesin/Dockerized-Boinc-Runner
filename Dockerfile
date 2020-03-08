FROM ubuntu:18.04

RUN apt-get update && apt-get install -y boinc-client

WORKDIR /var/lib/boinc-client

CMD /etc/init.d/boinc-client start; sleep 5; /usr/bin/boinccmd --project_attach ${boincurl} ${boinckey}; tail -f /var/lib/boinc-client/std*.txt
