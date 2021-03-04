#!/bin/bash

# ensure output directory exists
mkdir bin
# compile source-code
javac -cp src -d bin src/es/ucm/fdi/pe/*.java
# run demo
java -classpath bin es.ucm.fdi.pe.Demo
