$resourceGroupName = "a-rg"
$rglocation = "westeurope"

New-AzResourceGroup -Name $resourceGroupName -Location $rglocation -Force
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile .\templates\commons.json `
    -TemplateParameterFile .\$resourceGroupName\commons.json

New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile .\templates\machine.json `
    -TemplateParameterFile .\$resourceGroupName\m1.json 

New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile .\templates\machine.json `
    -TemplateParameterFile .\$resourceGroupName\m2.json 


$resourceGroupName = "b-rg"
$rglocation = "francecentral"

New-AzResourceGroup -Name $resourceGroupName -Location $rglocation -Force

New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile .\templates\commons.json `
    -TemplateParameterFile .\$resourceGroupName\commons.json

New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile .\templates\machine.json `
    -TemplateParameterFile .\$resourceGroupName\m1.json 
