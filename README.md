<p align="center">
    <a href="https://cloud.ibm.com">
        <img src="https://cloud.ibm.com/media/docs/developer-appservice/resources/ibm-cloud.svg" height="100" alt="IBM Cloud">
    </a>
</p>


<p align="center">
    <a href="https://cloud.ibm.com">
    <img src="https://img.shields.io/badge/IBM%20Cloud-powered-blue.svg" alt="IBM Cloud">
    </a>
    <a href="https://www.ibm.com/developerworks/learn/java/">
    <img src="https://img.shields.io/badge/platform-java-lightgrey.svg?style=flat" alt="platform">
    </a>
    <img src="https://img.shields.io/badge/license-Apache2-blue.svg?style=flat" alt="Apache 2">
</p>


# Create and deploy a basic Java Spring application

In this sample application, you will create a basic Java cloud application using Spring. This provides a good starting point for creating Java microservice applications running on [Spring](https://spring.io/). It contains no default application code, but comes with standard best practices, including a health check.

Capabilities are provided through dependencies in the `pom.xml` file. The ports are set to the defaults of `8080` for http is exposed. The ports are set in the `pom.xml` file.

The application exposes the following endpoints:
* Health endpoint: `<host>:<port>/health` e.g. http://localhost:8080/health
* Web content: `<host>:<port>`

## Steps

You can [deploy this application to IBM Cloud](https://cloud.ibm.com/devops/setup/deploy?repository=https://github.com/open-toolchain/simple-vsi-toolchain.git&env_id=ibm:yp:us-south&pipeline_type=tekton) or [build it locally](#building-locally) by cloning this repo first. Once your app is live, you can access the `/health` endpoint to build out your cloud native application.

### Deploying to IBM Cloud

<p align="center">
    <a href="https://cloud.ibm.com/devops/setup/deploy?repository=https://github.com/open-toolchain/simple-vsi-toolchain.git&env_id=ibm:yp:us-south&pipeline_type=tekton">
    <img src="https://cloud.ibm.com/devops/setup/deploy/button_x2.png" alt="Deploy to IBM Cloud">
    </a>
</p>

Click **Deploy to IBM Cloud** to deploy this same application to IBM Cloud. This option creates a deployment pipeline, complete with a hosted GitLab project and a DevOps toolchain. You can deploy your app to Virtual Server (Virtual Machine).
[ Cleick here for More Details](https://github.com/open-toolchain/simple-vsi-toolchain/blob/master/README.md)

### Building Locally

To get started building this application locally, you can either run the application natively or use the [IBM Cloud Developer Tools](https://cloud.ibm.com/docs/cli?topic=cloud-cli-getting-started) for building the application to IBM Cloud.

#### Native Application Development

* [Maven](https://maven.apache.org/install.html)
* Java 8: Any compliant JVM should work.
  * [Java 8 JDK from Oracle](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
  * [Java 8 JDK from IBM (AIX, Linux, z/OS, IBM i)](http://www.ibm.com/developerworks/java/jdk/),
    or [Download a Liberty server package](https://developer.ibm.com/assets/wasdev/#filter/assetTypeFilters=PRODUCT)
    that contains the IBM JDK (Windows, Linux)

To build and run an application:

1. `mvn install`
2. `java -jar ./target/javaspringapp-1.0-SNAPSHOT.jar`

You can verify the state of your locally running application using the Selenium UI test script included in the `scripts` directory.

## Next Steps
* Learn more about augmenting your Java applications on IBM Cloud with the [Java Programming Guide](https://cloud.ibm.com/docs/java?topic=java-getting-started).
* Explore other [sample applications](https://cloud.ibm.com/developer/appservice/starter-kits) on IBM Cloud.

## License

This sample application is licensed under the Apache License, Version 2. Separate third-party code objects invoked within this code pattern are licensed by their respective providers pursuant to their own separate licenses. Contributions are subject to the [Developer Certificate of Origin, Version 1.1](https://developercertificate.org/) and the [Apache License, Version 2](https://www.apache.org/licenses/LICENSE-2.0.txt).

[Apache License FAQ](https://www.apache.org/foundation/license-faq.html#WhatDoesItMEAN)
