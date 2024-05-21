# Running Streamlit apps inside ShinyProxy

This repository describes how to add a Streamlit (version 1.10.0 or higher) app inside ShinyProxy (at least version 2.5.0).

# Build the Docker image

To pull the image made in this repository from Docker Hub, use

```
sudo docker pull openanalytics/shinyproxy-streamlit-demo
```

the relevant Docker Hub repository can be found at https://hub.docker.com/r/openanalytics/shinyproxy-streamlit-demo

To build the image from the Dockerfile, clone this repository, then navigate to its root directory and run

```
sudo docker build -t openanalytics/shinyproxy-streamlit-demo .
```

# ShinyProxy Configuration

To add the streamlit application to ShinyProxy add the following lines to its configuration file (see [application.yml](./application.yml) for a complete file):

```yaml
proxy:
  specs:
    - id: streamlit-demo
      display-name: Streamlit Demo Application
      port: 8501
      container-image: openanalytics/shinyproxy-streamlit-demo
```

## References
* https://docs.streamlit.io/library/get-started/create-an-app


**(c) Copyright Open Analytics NV, 2023.**
