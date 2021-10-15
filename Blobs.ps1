$ResourceGroupName= "myResourceGroup"
$AStorageAccountName = "arielstoragesccount1"
$BStorageAccountName = "arielstorageaccount2"
$AStorageAccountContext = (Get-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $AStorageAccountName).Context
$BStorageAccountContext = (Get-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $BStorageAccountName).Context
$AcontainerName = "acontainer"
$BcontainerName = "bcontainer"
$AStorageKey = Get-AzStorageAccountKey -Name $AStorageAccountName `
-ResourceGroupName $ResourceGroupName 
$AContext = New-AzStorageContext -StorageAccountName $AStorageAccountName `
-StorageAccountKey $AStorageKey.Value[0] 
Get-ChildItem -Path C:\Users\ariel\Microsoft Azure\Blobs | Set-AzStorageBlobContent -Container $AContainer `
-Context $AContext -Force
azcopy copy "https://arielstoragesccount1.blob.core.windows.net/?sv=2020-08-04&ss=bfqt&srt=sco&sp=rwdlacuptfx&se=2022-10-15T20:51:53Z&st=2021-10-15T12:51:53Z&spr=https&sig=MFe3La0BLrmjqE7DZaBoJnyh0eo5nnqpv1EeTpHzk7Q%3D" "https://arielstorageaccount2.blob.core.windows.net/?sv=2020-08-04&ss=bfqt&srt=sco&sp=rwdlacuptfx&se=2022-10-15T20:52:39Z&st=2021-10-15T12:52:39Z&spr=https&sig=lKd5139LYE%2FTN7q3vxXUF3x0jLKbOgZNDgA4UIRZa9w%3D" --recursive=true


