﻿$file = "\\sccm\SCCM client update path\CS AGENT\WindowsSensor.MaverickGyr.exe"
$computers = @(
"FL11-1980",
"FL11-3150",
"FL11-4219",
"FL11-8068",
"FL11-8601",
"FL11-9111",
"FL11-9880",
"FL12-1166",
"FL13-1993",
"FL13-9305",
"FL13-9904",
"FL1-8586",
"FL1-9262",
"FL2-1349",
"FL2-1431",
"FL2-4150",
"FL3-1100",
"FL3-5431",
"FL3-8073",
"FL4-4217",
"FL4-6547",
"FL4-ABEERCSC",
"FL5-2951",
"FL6-2206",
"FL7-1220",
"FL7-1325",
"FL7-2454",
"FL7-3333",
"FL7-9894",
"FL7-9963",
"FL8-1044",
"FL8-12323",
"FL8-1267",
"FL8-1441",
"FL8-2800",
"FL8-3330",
"FL8-8046",
"FL8-9191",
"FL8-9955",
"FL8-ABEERT",
"FL9-1000",
"FL9-1225",
"FL9-2278",
"FL9-2577",
"FL9-9339",
"FL9-9707",
"FL9-9910",
"FLOOR12-2728",
"FLOOR12-5551",
"FLOOR12-8079",
"FLOOR12-SARA",
"FLOOR13PC",
"FLOOR8-7788",
"FLOOR9-WADHA",
"MANAYER-PC",
"MEETING-ROOM",
"MODI",
"OSAMA-PC",
"RABAH-W10F2",
"RAWAN-FL11",
"TALALPC",
"WALEED-PC",
"WINDOWS-RBCF2F3"
)
$computers
foreach ($computer in $computers){
	Copy-Item -Path $file -Destination "\\$computer\c$\windows\Temp\WindowsSensor.MaverickGyr.exe"
    Invoke-command -ComputerName $computer -ScriptBlock {
       (powershell.exe c:\windows\Temp\WindowsSensor.MaverickGyr.exe /install /quiet /norestart CID=B77AAAF18EB04B2CB0F653C6322B4E4F-C6) 
       Write-Host "The app has been installed on $(hostname)."
       }
}