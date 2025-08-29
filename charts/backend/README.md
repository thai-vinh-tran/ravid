# Backend Helm Chart

## Installation

To install the backend Helm chart, run:

```sh
helm install <release-name> .
```

## Configuration

You can set the Docker image repository and tag in `values.yaml`:

```yaml
image:
  repository: "<your-dockerhub-username>/ravid"
  tag: "v1.2.3" # Must match semantic versioning: v1.2.3
```

Or override them on install:

```sh
helm install <release-name> . \
  --set image.repository=<your-dockerhub-username>/ravid \
  --set image.tag=v1.2.3
```

## Features

- Health check at `/healthz` on port `6699`
- Horizontal Pod Autoscaler (HPA) scales based on the number of requests (custom metric)