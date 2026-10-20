function Invoke-PingSweep {
    param(
        [string[]]$Cibles
    )

    foreach ($Cible in $Cibles) {
        Test-Connection -ComputerName $Cible -Count 1 -Quiet
    }
}
