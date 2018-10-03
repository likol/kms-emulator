FROM alpine
ADD https://github.com/Wind4/vlmcsd/releases/download/svn1111/binaries.tar.gz /opt/vlmcsd.tar.gz
RUN tar -zxPf /opt/vlmcsd.tar.gz
EXPOSE 1668