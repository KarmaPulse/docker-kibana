FROM ubuntu
MAINTAINER Marco Sanchez <marco@kamikazelab.com>

ENV REFRESHED_AT 2015-10-06
ENV KIBANA_VERSION 4.1.2
ENV KIBANA_PATH /opt/kibana-${KIBANA_VERSION}
ENV PATH $PATH:$KIBANA_PATH/bin


ADD https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz /kibana.tar.gz
RUN mkdir -p $KIBANA_PATH 
RUN tar -C $KIBANA_PATH -xzvf /kibana.tar.gz --strip-component 1 
RUN rm /kibana.tar.gz

VOLUME $KIBANA_PATH/config/

EXPOSE 5601

ENTRYPOINT ["kibana"]
