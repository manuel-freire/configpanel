REM ensure output directory exists
mkdir bin

REM compile source-code
javac -cp src -d bin src\es\ucm\fdi\pe\*.java

REM run demo
java -classpath bin es.ucm.fdi.pe.Demo