FROM phusion/passenger-nodejs:latest

# replace this with your application's default port
EXPOSE 8888

ENV LD_LIBRARY_PATH=/opt/oracle/instant_client
ENV OCI_LIB_DIR=/opt/oracle/instant_client
ENV OCI_INC_DIR=/opt/oracle/instant_client
ADD instant_client.tar.gz /opt/oracle
RUN ln -s /opt/oracle/instant_client/libclntsh.so.12.1 /opt/oracle/instant_client/libclntsh.so
RUN ln -s /opt/oracle/instant_client/libocci.so.12.1 /opt/oracle/instant_client/libocci.so
RUN apt-get update
RUN apt-get install libaio1

