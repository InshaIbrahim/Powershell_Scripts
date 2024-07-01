

for ($i = 1; $i -lt 5; $i++) {

    for($j = $i; $j -lt 5; $j++){

        write-host " " -NoNewline 
    }
    for($j = 1; $j -lt $i; $j++){

        write-host "*" -noNewline
    }
     for($j = 1; $j -le $i; $j++){

        write-host "*" -noNewline
    }

    Write-Host "`n"
}