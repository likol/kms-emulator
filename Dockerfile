FROM alpine
ENV MODE=vlmcsd
ENV PORT=1688
ENV ARGS="-eD -t5 -m10"
WORKDIR /opt
RUN wget https://github.com/Wind4/vlmcsd/releases/download/svn1111/binaries.tar.gz -O vlmcsd.tar.gz \
&& tar x -zf vlmcsd.tar.gz \
&& rm -f vlmcsd.tar.gz \
&& mv /opt/binaries/Linux/intel/static/vlmcsdmulti-x64-musl-static . \
&& rm -rf binaries/
EXPOSE $PORT
CMD ./vlmcsdmulti-x64-musl-static $MODE $ARGS
