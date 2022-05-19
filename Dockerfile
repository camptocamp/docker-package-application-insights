FROM busybox:1.34

ARG APP_INSIGHTS_VERSION=3.2.11

RUN mkdir -p /stuff /entrypoint
COPY src/entrypoint.sh /entrypoint/
RUN wget -O /stuff/applicationinsights-agent-${APP_INSIGHTS_VERSION}.jar https://github.com/microsoft/ApplicationInsights-Java/releases/download/${APP_INSIGHTS_VERSION}/applicationinsights-agent-${APP_INSIGHTS_VERSION}.jar

ENTRYPOINT [ "/entrypoint/entrypoint.sh" ]
