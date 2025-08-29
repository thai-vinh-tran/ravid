# Helm Charts for Ravid

## Deploying the Backend

To install the backend Helm chart, run:

```sh
helm install <release-name> ./backend
```

To specify the Docker image repository and tag:

```sh
helm install <release-name> ./backend \
  --set image.repository=<your-dockerhub-username>/ravid \
  --set image.tag=latest
```

Replace `<release-name>` with your desired release name and `<your-dockerhub-username>` with your DockerHub