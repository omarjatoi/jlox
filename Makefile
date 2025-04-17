TARGET_PATH = target/jlox-1.0-SNAPSHOT.jar
PACKAGE_MAIN = com.omarjatoi.jlox.Main

default = help

help:
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@echo ""
	@echo "  test        run all tests"
	@echo "  build       compile the project"
	@echo "  package     create a jar file"
	@echo "  run         run the main entrypoint"
	@echo "  all         do all of the above"
	@echo "  clean       remove all build outputs"

test:
	@mvn test

build:
	@mvn compile

package:
	@mvn package

run: package
	@java -cp $(TARGET_PATH) $(PACKAGE_MAIN)

all: test build package run

clean:
	@mvn clean
