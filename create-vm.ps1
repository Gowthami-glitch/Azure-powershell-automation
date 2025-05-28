$resourceGroup = "AutoRG"
$location = "CanadaCentral"
$vmName = "AutoVM"

# Create Resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Ask for credentials
$cred = Get-Credential

# Create VM
New-AzVM `
  -ResourceGroupName $resourceGroup `
  -Name $vmName `
  -Location $location `
  -VirtualNetworkName "autoVNet" `
  -SubnetName "autoSubnet" `
  -SecurityGroupName "autoNSG" `
  -PublicIpAddressName "autoPublicIP" `
  -Credential $cred
