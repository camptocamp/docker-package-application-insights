# package-application-insights

The purpose of this image is to repackages the Microsoft application
insights JAR java agent, so that it is possible to reuse it easily in
an initContainer to setup application insight on Azure.

The versions of the repository follows the versions of application insights
java, see [the official MS documentation for more details](https://docs.microsoft.com/en-us/azure/azure-monitor/app/java-in-process-agent)

## build it locally

```bash
export APP_INSIGHTS_VERSION=3.2.11
docker build --build-arg APP_INSIGHTS_VERSION=${APP_INSIGHTS_VERSION}  . -t camptocamp/package-application-insights:${APP_INSIGHTS_VERSION}
```

## use it in an initContainer

```yaml

```
