FROM busybox:1.34

ARG APP_INSIGHT_VERSION=3.2.11

RUN mkdir -p /stuff /entrypoint
COPY src/entrypoint.sh /entrypoint/
RUN wget -O /stuff/applicationinsights-agent-${APP_INSIGHT_VERSION}.jar https://github.com/microsoft/ApplicationInsights-Java/releases/download/${APP_INSIGHT_VERSION}/applicationinsights-agent-${APP_INSIGHT_VERSION}.jar

ENTRYPOINT [ "/entrypoint/entrypoint.sh" ]
