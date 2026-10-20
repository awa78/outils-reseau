function Export-ResultatsCsv {
    param(
        [Parameter(Mandatory = $true)]
        [object[]]$Resultats,

        [string]$Chemin = ".\resultats.csv"
    )

    $Resultats |
        Export-Csv -Path $Chemin -NoTypeInformation -Encoding UTF8
}
