# Don't Remove Credit @KrishnaTG_Botz
# Ask Doubt on telegram @Krishna00P

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /LazyKrishna
WORKDIR /LazyKrishna
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
