FROM openjdk:8-alpine

RUN addgroup -g 1001 -S appuser && adduser -u 1001 -S appuser -G appuser

USER appuser

ENV APP_HOME /usr/src/app

COPY ./*/berkeley-*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar