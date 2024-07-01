
$ServiceInfo = Get-Service 
if ($ServiceInfo.Status -ne ‘Running’) {
write-host ‘service is not started, starting service’
#Start-Service -Name $ServiceName -verbose
$ServiceInfo.Refresh()
write-host $ServiceInfo.Status
}
write-host ‘all done’
