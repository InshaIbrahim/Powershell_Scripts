$service = Get-Service

for ($i = 0; $i -lt $service.length; $i++){
 ($service[$i].status).name


 }