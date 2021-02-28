FROM rasa/rasa:latest

COPY WeatherBot /WeatherBot
COPY server.sh /WeatherBot/server.sh

USER root
RUN chmod -R 777 /WeatherBot
USER 1001

RUN rasa train 

ENTRYPOINT ["/WeatherBot/server.sh"]
