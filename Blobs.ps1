$ResourceGroupName= "myResourceGroup"
$AStorageAccountName = "arielstoragesccount1"
$BStorageAccountName = "arielstoragesccount2"
$srcStorageAccountContext = (Get-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $AStorageAccountName).Context



