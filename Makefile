test:
	mvn test

build:
	mvn compile

package:
	mvn package

run: package
	java -cp target/jlox-1.0-SNAPSHOT.jar com.omarjatoi.jlox.Main
