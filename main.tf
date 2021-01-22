provider azurerm {
    features{}
}
resource "azurerm_resource_group" "rg1" {
    name = "${var.resource-group-name}"
    location = "${var.location}"
}
resource "azurerm_app_service_plan" "app1" {
    name = "example-appservice-plan"
    location = azurerm_resource_group.rg1.location
    resource_group_name = azurerm_resource_group.rg1.name
    sku {
        tier = "Standard"
        size = "S1"
    }
}