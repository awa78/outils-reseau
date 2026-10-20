function Invoke-PingSweep {
    param(
        [string[]]$Cibles
    )

    if ($null -eq $Cibles -or $Cibles.Count -eq 0) {
        Write-Warning "La liste des cibles est vide."
        return
    }

    foreach ($Cible in $Cibles) {
        [pscustomobject]@{
            Cible = $Cible
            Accessible = Test-Connection -ComputerName $Cible -Count 1 -Quiet
        }
    }
}
