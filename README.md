# java-helloworld

To run project in develoopment mode
<br/>
<br/>``` mvn spring-boot:run```


To compile project jar file
<br/>
<br/>```mvn clean install```
<br/>```mvn test```
<br/>```java -jar target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar```
<br/>


To access project

<br/>```http://localhost:8080/hello```
<br/>```curl --request GET 'http://localhost:8080/hello'```


<br/>
To run a particular test class

<br/>```mvn -Dtest=HelloWorldControllerTest test```
<br/>```mvn -Dtest=HelloWorldApplicationTests test```
