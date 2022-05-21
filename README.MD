# V + Docker

This repo contains a simple vweb API that can be containerized
Feel free to fork it / edit it in any way you see fit

## Dependencies

Docker
IDE of choice (VS Code, Atom, Notepad++, (n)vim)

## To deploy your own

### Clone this repo

```bash
#!/bin/bash
git clone 
```

### To Run the code locally

```bash
#!/bin/bash
v v-with-docker.v
```

### Build an image

```bash
#!/bin/bash
docker build . -t your-container-name:sometag
```

### Run the image locally

```bash
#!/bin/bash
docker run --rm -d -p 8080:8080 your-container-name:sometag
```

After the container starts, run the following command

```bash
#!/bin/bash
curl http://localhost:8080
```

You should get the response
`` Hello world from vweb running within a container! ``

### Push that image to your preferred container registry

We will use this image to run in AWS Lambda, so this needs to be pushed to an image registry.

To push it to hub.docker.com, run

```bash
#!/bin/bash
docker push
```
