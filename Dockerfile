FROM debian:9

ARG cloneURL="https://github.com/veracrypt/VeraCrypt.git"
ARG cloneBRANCH=master
ARG wxWidgetsURL=https://github.com/wxWidgets/wxWidgets.git
ARG wxWidgetsBranch=WX_3_0_BRANCH

RUN apt update && apt install -y git gcc g++ pkg-config gtk+2.0 libcppunit-dev yasm libfuse-dev makeself libwxgtk3.0-dev

RUN git clone -b ${cloneBRANCH} ${cloneURL} vera
RUN git clone -b ${wxWidgetsBranch} ${wxWidgetsURL} wxWidgets-3.0.5

VOLUME /builded

ADD entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
