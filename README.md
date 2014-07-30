# Java Quick Start Guide

## Usage


### Compile your app
```
$ mvn install
.
.
.
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 16.841s
[INFO] Finished at: Wed Jul 30 10:04:00 BST 2014
[INFO] Final Memory: 16M/73M
[INFO] ------------------------------------------------------------------------
```

### Test application starts with forman
```
$ foreman start
$ curl http://localhost:5000
Powered by inside-docker
$ curl http://localhost:5100
Powered by webb
```

### Build the Dockerfile and produce an image
```
$ docker build -t username/mynewdockerimage:1.0 .
.
.
.
successfully built b2a2820549c0
```

### Test the Docker image
```
$ docker run -ti -p 5000:5000 -p 5100:5100 username/mynewdockerimage:1.0
$ curl http://localhost:5000
Powered by inside-docker
$ curl http://localhost:5100
Powered by webb
```

### Save your Docker image
```
$ docker push username/mynewdockerimage:1.0
```

### Run your saved Docker image in the background
```
$ docker run -d -p 5000:5000 -p 5100:5100 username/mynewdockerimage:1.0
0a2c30557e027e2c937842c2d1ead41741ffb3fd56d358971495f9a811ea6096
# check that it is still running
$ docker logs -f 0a2c3055
```
