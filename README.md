# OCI IPSec VPN setup Stack
OCI Resource manager stack for IPsec VPN deployment.

## Project description

The stack help you to provision an IPsec VPN with all advanced options available.

## Topology Diagram 

## Functionality of the Stack

Two Modes:

Deploy IPSec VPN with new resources : **Create New Network (Virtual Cloud Network) as well as new DRG (Dynamic Routing Gateway)**

Deploy IPSec VPN with existing resource in the tenancy : **You can use existing VCN (Virtual Cloud Network) and DRG (Dynamic Routing Gateway)**

## How to use code ?


### Deploy Using Oracle Resource Manager

1. Click [![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?region=home&zipUrl=https://github.com/mlinxfeld/terraform-oci-bastion-service/releases/latest/download/terraform-oci-bastion-service-stack-latest.zip)

    If you aren't already signed in, when prompted, enter the tenancy and user credentials.Cancel changes

2. Review and accept the terms and conditions.

3. Select the region where you want to deploy the stack.

4. Follow the on-screen prompts and instructions to create the stack. Supply the required values

5. After creating the stack, click **Terraform Actions**, and select **Plan**.

6. Wait for the job to be completed, and review the plan.

    To make any changes, return to the Stack Details page, click **Edit Stack**, and make the required changes. Then, run the **Plan** action again.

7. If no further changes are necessary, return to the Stack Details page, click **Terraform Actions**, and select **Apply**. 



### OCI Resource Manager Stack Output

Once the job finsihed sucessfully you will receive the **Public IP and Pre-shared-Key** for both the tunnels.



### I hope the VPN stack helps you :) Thank you !!!

