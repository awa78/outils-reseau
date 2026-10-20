function Invoke-PingSweep {
    param(
        [string[]]$Cibles
    )

    foreach ($Cible in $Cibles) {
        [pscustomobject]@{
            Cible = $Cible
            Accessible = Test-Connection -ComputerName $Cible -Count 1 -Quiet
        }
    }
}
