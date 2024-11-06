provider "aws" {

  region = "us-east-1"

}

resource "aws_budget" "aaaa" {

    name = "budget-for-class"
    budget_type = "COST"
    limit_amount = "25"
    limit_unit = "EUR"
    time_unit = "MONTHLY"

    notification {
        comparison_operator        = "GREATER_THAN"
        threshold                  = 20
        threshold_type             = "PERCENTAGE"
        notification_type          = "ACTUAL"
        subscriber_email_addresses = ["vars.email"]
    }

    notification {
        comparison_operator        = "GREATER_THAN"
        threshold                  = 40
        threshold_type             = "PERCENTAGE"
        notification_type          = "ACTUAL"
        subscriber_email_addresses = ["vars.email"]
    }

    notification {
        comparison_operator        = "GREATER_THAN"
        threshold                  = 60
        threshold_type             = "PERCENTAGE"
        notification_type          = "ACTUAL"
        subscriber_email_addresses = ["vars.email"]
    }

    notification {
        comparison_operator        = "GREATER_THAN"
        threshold                  = 80
        threshold_type             = "PERCENTAGE"
        notification_type          = "ACTUAL"
        subscriber_email_addresses = ["vars.email"]
    }

    notification {
        comparison_operator        = "GREATER_THAN"
        threshold                  = 100
        threshold_type             = "PERCENTAGE"
        notification_type          = "ACTUAL"
        subscriber_email_addresses = ["vars.email"]
    }

}

variable "email"{
    type = string
}