FROM node
# replace this with your application's default port
EXPOSE 8888

ENV LD_LIBRARY_PATH=/opt/oracle/instantclient:$LD_LIBRARY_PATH

ADD instant_client.tar.gz /opt/oracle
RUN cd /opt/oracle
RUN ln -s libclntsh.so.12.1 libclntsh.so
RUN ln -s libocci.so.12.1 libocci.so

