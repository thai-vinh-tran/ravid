# Terraform GKE with GCS Backend

This project sets up a Google Kubernetes Engine (GKE) cluster using Terraform, with the backend state stored in Google Cloud Storage (GCS).

## Project Structure

```
.
├── modules
│   └── gke
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
└── resource
    ├── README.md
    ├── backend.tf
    ├── main.tf
    ├── outputs.tf
    └── variables.tf
```

## Prerequisites

- Google Cloud account
- Terraform installed
- Google Cloud SDK installed and configured

## Setup Instructions

1. **Configure Google Cloud Storage**:
   - Create a GCS bucket to store the Terraform state.
   - Ensure that your Google Cloud credentials are set up and have the necessary permissions.

2. **Update Variables**:
   - Modify the `variables.tf` file to set your desired cluster name, location, and node count.

3. **Initialize Terraform**:
   ```bash
   terraform init --reconfigure --upgrade 
   ```

4. **Plan the Deployment**:
   ```bash
   terraform validate --json 
   terraform plan --out temp
   ```

5. **Apply the Configuration**:
   ```bash
   terraform apply --auto-approve temp
   ```

6. **Access the GKE Cluster**:
   - After the deployment, use the output values to access your GKE cluster.

## Outputs

After applying the configuration, the following outputs will be available:
- Cluster endpoint
- Cluster credentials

## Cleanup

To destroy the resources created by Terraform, run:
```bash
terraform destroy --auto-approve
```

## License

This project is licensed under the MIT License.