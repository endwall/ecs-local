# localized-ecs
A Localised ECS Test Example

## Hello World Sample App
### Run without docker
```
npm install
npm start
```
App port can be overwritten, for example:
```
PORT=8080 npm start
```
It will expose 8080 locally via http://localhost:8080

## Test Container with AWS Credentails Locally
### Run locally
```
docker-compose up -d --build
```
### Test/Debug Locally
To get source code of amazon-ecs-local-container-endpoints
```
./local_build.sh
```
* go to directory ```amazon-ecs-local-container-endpoints```, run ```make bin/linux-amd64/local-container-endpoints```.
* in docker-compose.override.yaml, change image to build locally, run ```docker-compose up -d --build```
* run ```curl http://localhost:8081/creds```, you shall see aws credentials from profile

## Test Container with IAM Role
Set AWS_CONTAINER_CREDENTIALS_RELATIVE_URI: "/role/<name of your role>" and make sure that role can be assumed by previous user.