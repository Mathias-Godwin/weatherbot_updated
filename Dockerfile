FROM ubuntu:20.04
ENTRYPOINT []
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip && pip3 install --no-cache rasa==2.3.4 && pip3 install spacy && python3 -m spacy download en_core_wen_md
ADD . /app/
RUN chmod +x /app/server.sh
CMD /app/server.sh
