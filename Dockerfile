FROM ubuntu:24.10

LABEL author="guanorwell@gmail.com"

WORKDIR /rasp-cloud

ADD resouce/rasp-cloud.tar.gz /

RUN mv /rasp-cloud* /rasp-cloud

EXPOSE 8086

CMD [ "./rasp-cloud -d" ]