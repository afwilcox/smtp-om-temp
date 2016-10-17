Camel Router Project for Spring-DM (OSGi)
=========================================

To build this project use

    mvn install

You can run this project using he following Maven goal:

    mvn camel:run

To deploy the project in OSGi. For example using Apache ServiceMix
or Apache Karaf. You will run the following command from its shell:

    osgi:install -s mvn:com.smtp.webservice/glcodecombinations/1.0.0-SNAPSHOT

For more help see the Apache Camel documentation

    http://camel.apache.org/
    
 Test from Advanced REST client  
 http://127.0.0.1:9090/api/v1/glCodecombinations?glcc=010.000.000.000.000 

 This line is added to test git integration