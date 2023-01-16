# check-settlement
Kleines Script um Settlement Auszahlungen über mehrere Wochen hinweg nachzurechnen

# Installation
Sie benötigen
* *rechnesummen.ps1*: Ein kleines Script, dass alle CSV Dateien in ihrem Verzeichnis in eine Datei *allebuchungen.csv* zusammenkopiert und mittels *csvq* Summen für alle geplanten Auszahlungen berechnet
* *csvq.exe* Ein kleines Open Source Tool von [mithrandie](https://github.com/mithrandie) um CSV Daten auszuwerten. Sie können es entweder von [Github](https://mithrandie.github.io/csvq/) laden oder Version v1.17.11 mitsamt dem Script von diesen Releases downloaden.

# Download 

[Release v1 16.0.2023](https://github.com/shoepping-merchants-tools/check-settlement/blob/main/releases/1/rechnesummen.zip)

# Benutzung

* Kopieren Sie alle Settlement CSV Dateien die sie erhalten haben bzw. die Sie prüfen möchten in das Verzeichnis in dem auch *rechnesumme.ps1* und *csvq.exe* sind.
* Öffnen Sie das Verzeichnis im Explorer
* Klicken Sie mit der rechten Maustaste auf *rechnesumme.ps1* und wählen Sie *mit PowerShell ausführen*
  