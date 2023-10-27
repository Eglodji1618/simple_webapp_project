**README.md**

# Terraform Infrastructure for Restaurant Recommendation System

This Terraform code deploys the infrastructure necessary to run the Restaurant Recommendation System, a Flask application hosted on Azure App Services with an Azure MySQL database for storing restaurant data.

## Prerequisites

Before using this Terraform code, ensure you have the following prerequisites in place:

1. **Terraform**: Install Terraform on your local machine or CI/CD environment. You can download it from the official website: https://www.terraform.io/downloads.html.

2. **Azure Account**: You should have an active Azure account. If you don't have one, you can create a free account on the Azure Portal: https://azure.com.

3. **Azure CLI**: Install and configure the Azure Command-Line Interface (Azure CLI) to authenticate and manage your Azure resources. You can download it from the official website: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli.

4. **Git**: Ensure you have Git installed to clone this repository and manage your code.

## Getting Started

Follow these steps to set up your environment, authenticate with Azure, and deploy the infrastructure using Terraform.

### 1. Clone this repository:

```bash
git clone https://github.com/<your-username>/restaurant-recommendation-system/.git
```

### 2. Change your working directory to the Terraform code directory:

```bash
cd assignment/
cd terraform/
```

### 3. Azure Login and Subscription Selection

Use the following Azure CLI commands to log in to Azure, list available subscriptions, and set your desired subscription:

```bash
az login
az account show
az account list --query "[?user.name=='<microsoft_account_email>'].{Name:name, ID:id, Default:isDefault}" --output Table
az account set --subscription "<subscription-Id>"
```

### 4. Initialize the Terraform working directory:

```bash
terraform init
```

### 5. Review and Customize

Review the `variables.tf` file to configure your deployment by setting appropriate values for variables like `resource_group_name`, `location`, and other variables. Customize the `main.tf` and `variables.tf` files to suit your specific needs.

### 6. Terraform Plan

Use `terraform plan` to review the execution plan and make sure everything is configured correctly:

```bash
terraform plan
```

### 7. Apply the Terraform Plan

Apply the Terraform plan to create the infrastructure:

```bash
terraform apply
```

Confirm the action by typing `yes`.

Terraform will provision the Azure App Service, Azure MySQL database, and other necessary resources as specified in the Terraform configuration.

### 8. Access the Application

After the deployment is complete, Terraform will provide the outputs that include the App Service URL and other relevant information. Note these values for accessing the application.

## Destroying Resources

If you need to tear down the infrastructure, you can use Terraform to destroy the created resources:

```bash
terraform destroy
```

This will destroy all resources created by Terraform. Be cautious when running this command, as it will remove the Azure App Service, Azure MySQL database, and all associated resources.
