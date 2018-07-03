FROM debian:9
ARG cloneURL="https://github.com/veracrypt/VeraCrypt.git"
RUN apt update && apt install -y git
RUN git clone ${cloneURL} vera

ARG wxWidgetsURL=https://github.com/wxWidgets/wxWidgets.git
ARG wxWidgetsBranch=WX_3_0_BRANCH

RUN git clone -b ${wxWidgetsBranch} ${wxWidgetsURL} wxWidgets-3.0.4
RUN apt install -y make gcc g++
RUN apt install -y pkg-config 
RUN apt install -y gtk+2.0
RUN apt install -y libcppunit-dev
RUN apt install -y yasm
RUN apt install -y libfuse-dev
RUN apt install -y makeself

ADD entrypoint.sh /entrypoint.sh
VOLUME /builded

CMD ["/bin/bash", "/entrypoint.sh"]
