cd Notes
docker build -t notes .

cd ../authmicroservice
gradlew bootJar
docker build --build-arg JAR_FILE=build/libs/*.jar -t authmicroservice .

