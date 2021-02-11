# CovidImpfzentrenChisinau


**Datenbeschaffung**

- neuen Ordner anlegen, indem alle Daten dieses Projekts gespeichert werden

- alle gegebenen Daten herunterladen und in diesem (gleichen) Ordner speichern:
- Heibox: https://heibox.uni-heidelberg.de/d/c20625a91efc4cada197/
- GitHub Respository: "QGISModelPart1", Batch-Script: "calculate_distances_grassgis" und "QGISModelPart2"
##

**QGIS**

- die Layer "chisinau_maske.shp" und "original_buildings.shp" in QGIS laden

- den herundergeadenen "QGISModelPart1" öffnen und ausführen

- das Enderergebnis des Modelbuilders, "buildings_final.shp" im richtigen Ordner speichern

**GRASS GIS**

- erzeuge eine neue Location mit dem Koordinatensystem ESPG: 32635

- GRASS GIS öffnen und mit "cd" zum richtigen Ordner (in dem alle heruntegeladenen Daten sind) navigieren 

- Batch-Script in die GRASS GIS Konsole reinladen und ausführen 

- Nach der Ausführung sollte sich folgende Shape-Datei im Ordner befinden: "buildings_final_med_pub.shp"

**QGIS**

- QGIS öffnen und "buildings_final_med_pub.shp" reinladen


- den heruntergeladenen "QGISModelPart2" öffnen und ausführen
- Nach der Ausführung sollte folgender temporärer Layer erzeugt werden: "buildings_final_med_pub_norrm.shp",
der als GeoPackage im Ordner mit den restlichen Daten permanent gespeichert werden soll
- im nächsten Schritt muss man den gerade gespeicherten GeoPackage Layer in QGIS reinladen, da dieser für die MCDA Analyse verwendet wird

- in den QGIS Erweiterungen "vectorMCDA" installieren
- zur Anwendung verwenden wir ausschließlich folgende Implementations: "geoTOPSIS" und "geoWeightedSum"
- durchprobieren verschiedene Werte für die Gewichte bei den Faktoren der Algorithmen (nur normalisierte "norm" Spalten als Faktoren nutzen, alle anderen Spalten mit Rechtsklick aus der Tabelle entfernen)
- anschließend auf Apply drücken 
- unten links auf Analysis klicken
- Anzahl der Klassen auswählen (z.B. 20)
- auf Load maps klicken
- neuer Layer wurde erstellt (geoWSM) mit der Spalte geoWSM 
- absteigend Sortieren nach der Spalte geoWSM 
- top Ergebnisse sind am besten geeignet
