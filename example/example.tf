variable "api_key" { }

# Configure the Dynadot provider
provider "dynadot" {
    api_key = "${var.api_key}"
}

resource "dynadot_domain_nameservers" "example_com" {
    domain = "example.com"
    nameservers = [
        "ns1.example.com",
        "ns2.example.com"
    ]
}
