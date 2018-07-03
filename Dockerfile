FROM debian:9

ARG cloneURL="https://github.com/veracrypt/VeraCrypt.git"
ARG cloneBRANCH=master
ARG wxWidgetsURL=https://github.com/wxWidgets/wxWidgets.git
ARG wxWidgetsBranch=WX_3_0_BRANCH

RUN apt update && apt install -y git
RUN apt install -y make gcc g++
RUN apt install -y pkg-config 
RUN apt install -y gtk+2.0
RUN apt install -y libcppunit-dev
RUN apt install -y yasm
RUN apt install -y libfuse-dev
RUN apt install -y makeself

RUN git clone -b ${cloneBRANCH} ${cloneURL} vera
RUN git clone -b ${wxWidgetsBranch} ${wxWidgetsURL} wxWidgets-3.0.4

VOLUME /builded

ADD entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
