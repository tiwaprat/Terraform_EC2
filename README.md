**Here are steps to follow**

In this simple project we will connect our git local repo to AWScodecommit repo. 

1. I am using my IAM User pt which has administrative permission that includes AWScodeCommit permissions as well. These permissions required to perform git operations on remote repo that is in this case AWScodecommit. 

2. Create HTTPScodecommit user credentials. I could have used ssh keys but these keys are not supported by Linux based os. 

3. Create codecommit repo from AWS console. 

4. From local system use <git clone https url of repo>

Codecommit is deprecated now so I am going back to GitHub 
_________________________________________________________________________________________________________________________________

STEPS[GITHUB as code repo] : In this project we will push .tf code for ec2 provisioning , github and as soon as we repo get updated. an AWS code pipeline will get executed and EC2 will get creared. All statefile will be saved to s3 bucket.

1. Create a GitHub repo names "Terraform_ec2" with one file README. This files will have this same content. 
2. Clone this repo to local. 
3. Create s3 bucket ex "tf-state-backend-2025" in region us-east-1. We will use this bucket to store state file. 
4. On local git repo create ec2.tf file 
5. Test ec2.tf file. If seems good, push to GitHub.  
6. create buildspec.yaml and push this file to main repo where .tf file exist.
7. For Ref : https://www.youtube.com/watch?v=jU7goU-TBII&t=678s
8. Note: For simplicity I have given codebuild service role, administrator access. Check the exact name of this service role in role section of IAM 
9. githiub repo for this project https://github.com/tiwaprat/Terraform_EC2/

Codepipeline: TerraformDeployToAWS
Codebuild: TF-EC2 

Ref: https://achinthabandaranaike.medium.com/how-to-automate-terraform-deployments-with-aws-codepipeline-569044313b60







