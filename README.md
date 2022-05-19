# package-application-insight

The purpose of this image is to repackages the Microsoft application
insight JAR java agent, so that it is possible to reuse it easily in
an initContainer to setup application insight on Azure.

The versions of the repository follows the versions of application insight
java, see [the official MS documentation for more details](https://docs.microsoft.com/en-us/azure/azure-monitor/app/java-in-process-agent)

## build it locally

```bash
export APP_INSIGHT_VERSION=3.2.9
docker build --build-arg APP_INSIGHT_VERSION=${APP_INSIGHT_VERSION}  . -t camptocamp/package-application-insight:${APP_INSIGHT_VERSION}
```

## use it in an initContainer

```yaml

```
