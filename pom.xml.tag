<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
 <modelVersion>4.0.0</modelVersion>    
    <!-- R E P O S I T O R I E S  F O R  D E P E N D E N C I E S              -->
    <repositories>
        <repository> 
            <id>maven-central</id> 
            <name>maven-central</name> 
            <url>http://repo1.maven.org/maven2</url> 
        </repository>
    </repositories>
    
  <groupId>test</groupId>
  <artifactId>hello</artifactId>
  <version>1.0</version>
  <packaging>jar</packaging>

  <scm>
    <connection>scm:git:git@github.com:eemaric/test.git</connection>
    <developerConnection>scm:git:git@github.com:eemaric/test.git</developerConnection>
    <url>scm:git:git@github.com:eemaric/test.git</url>
    <tag>hello-1.0</tag>
  </scm>



  <name>Maven Quick Start Archetype</name>
  <url>http://maven.apache.org</url>

  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>4.8.2</version>
      <scope>test</scope>
    </dependency>
  </dependencies>    
    
    <!-- B U I L D  S E C T I O N                                             -->
    <build>
        <pluginManagement>
            <plugins>
                <plugin>
                    <artifactId>maven-compiler-plugin</artifactId>
                    <version>2.0.2</version>
                    <configuration>
                        <encoding>${project.build.sourceEncoding}</encoding>
                        <source>1.5</source>
                        <target>1.5</target>
                        <debug>true</debug>
                        <optimize>false</optimize>
                    </configuration>
                </plugin>
                <plugin>
                    <groupId>org.codehaus.mojo</groupId>
                    <artifactId>build-helper-maven-plugin</artifactId>
                    <version>1.5</version>
                    <executions>
                        <execution>
                            <phase>validate</phase>
                            <goals>
                                <goal>maven-version</goal>
                            </goals>
                        </execution>
                    </executions>
                </plugin>
                <!-- *************************************************************** -->
                <!-- PLUGIN TO MANAGE RELAEASES                                      -->
                <!-- *************************************************************** -->
                <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-release-plugin</artifactId>
                    <version>2.3.2</version>
                
                    <configuration>
                        <!-- <password>inizio</password> -->
                        <preparationGoals>clean verify</preparationGoals>
                        <goals>install</goals>
                    </configuration>
                </plugin>
                
            </plugins>
        </pluginManagement>
    </build>
    
</project>
