FROM alpine
ENV MODE=vlmcsd
ENV PORT=1688
ENV ARGS="-eD -t5 -m10"
ADD https://github.com/Wind4/vlmcsd/releases/download/svn1111/binaries.tar.gz /opt/vlmcsd.tar.gz
WORKDIR /opt
RUN tar x -zf vlmcsd.tar.gz
RUN rm -f vlmcsd.tar.gz
WORKDIR /opt/binaries/Linux/intel/static/
EXPOSE $PORT
CMD ./vlmcsdmulti-x64-musl-static $MODE $ARGS