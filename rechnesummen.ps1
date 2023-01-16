if (Test-Path allebuchungen.csv) {
  Remove-Item allebuchungen.csv
}
$getFirstLine = $true
get-childItem "adyen-settlement*.csv" | foreach {
    $filePath = $_

    $lines =  $lines = Get-Content $filePath  
    $linesToWrite = switch($getFirstLine) {
           $true  {$lines}
           $false {$lines | Select -Skip 1}
    }
    $linesToWrite = $linesToWrite.replace(',','.')
    $linesToWrite = $linesToWrite.replace('Booking.Date','Datum')
    $getFirstLine = $false
    Add-Content "allebuchungen.csv" $linesToWrite
    }
Write-Host "Summen der Buchungszeilen nach Auszahlungsdatum"
./csvq.exe --delimiter ";" "select Reserved1 as Auszahlungsdatum, round(sum(Amount),2) as Summe from allebuchungen where Reserved1 != ''  GROUP BY Reserved1 ORDER BY min(Datum)"
Write-Host ""
Write-Host ""
Write-Host "Auszahlungszeilen"
./csvq.exe --delimiter ";" "select Datum, Description, Amount from allebuchungen where Type = 'bankTransfer' ORDER BY Datum"
Write-Host ""
Write-Host ""
Write-Host "Druecken Sie ein Taste um dieses Script zu beenden."
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")