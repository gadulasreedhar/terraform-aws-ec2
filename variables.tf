# mandatory,user should supply
variable "ami_id" {
    type = string
    # default = "ami-09c813fb71547fc4f"
}

#Optional,default value is t3.micro,user can always override this
variable "instance_type" {

    default = "t3.micro"
    type = string
    validation {
        condition = contains(["t3.micro","t3.small","t3.medium"],var.instance_type)
        error_message = "instance type can only be one of t3.micro,t3.small,t3.medium"
            
        
    }
}
#mandatory,user should supply
variable "security_group_ids" {
    type = list(string)
    # default = ["sg-0ba961b434a9ad408"]
}