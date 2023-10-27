**README.md**

## Welcome to the Restaurant Recommendation System Repository

This repository contains the Terraform code and web application code for the Restaurant Recommendation System, a Flask application hosted on Azure App Services with an Azure MySQL database for storing 
restaurant data.

The repository is structured as follows:

* **terraform/`: Contains the Terraform code for deploying the infrastructure necessary to run the web application.
* **web-app/`: Contains the web application code, including the Python source code and requirements file.

To deploy the infrastructure, you will need to have Terraform installed on your local machine or CI/CD environment. You will also need to have an Azure account and have the Azure CLI installed and configured.

Once you have the prerequisites in place, you can follow these steps to deploy the infrastructure and web application:

1. Clone this repository:
```bash
git clone https://github.com/<your-username>/restaurant-recommendation-system.git
```

2. Change your working directory to the root of the repository:
```bash
cd restaurant-recommendation-system/terraform/
```

3. Initialize the Terraform working directory:
```bash
terraform init
```

4. Apply the Terraform plan:
```bash
terraform apply
```

Once the web application is deployed, you can access it at the URL provided in the Terraform outputs.

To destroy the infrastructure, you can run the following command:

```bash
terraform destroy
```

This will remove all resources created by Terraform, including the Azure App Service, Azure MySQL database, and all associated resources.

## License

This project is licensed under the MIT License.

## Additional Notes

* This project is still under development, and new features are being added regularly.
* If you have any questions or feedback, please feel free to create an issue on GitHub.
* Thank you for contributing to the Restaurant Recommendation System!
