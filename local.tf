locals{
    # merge 2 list and then turn it into a set so we can loop over it with module creation
    storageaccounttocreate = toset(concat(var.storageaccounttocreate, ["roycloudchamps"]))
}