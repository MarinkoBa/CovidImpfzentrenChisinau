# CovidImpfzentrenChisinau


**Datenbeschaffung**

- neuen Ordner anlegen, indem alle Daten dieses Projekts gespeichert werden

- alle gegebenen Daten herunterladen und in diesem Ordner speichern:
- Heibox: https://heibox.uni-heidelberg.de/d/c20625a91efc4cada197/
- GitHub Respository: "QGISModelPart1", Batch-Script: "calculate_distances_grassgis" und "QGISModelPart2"
##

**QGIS**

- die Layer "Chisinau_Maske" und "original_buildings" in QGIS laden

- den herundergeadenen "QGISModelPart1" öffnen und ausführen

- das Enderergebnis des Modelbuilders, "buildings_final" im richtigen Ordner speichern

**GRASS GIS**

- GASS GIS öffnen und mit "cd" zum richtigen Ordner navigieren 

- Batch-Script in die GRASS GIS Konsole reinladen und ausführen 

- Nach der Ausführung sollte sich folgende Shape-Datei im Ordner befinden: "buildings_final_med_pub.shp"

**QGIS**

- QGIS öffnen und "buildings_final_med_pub.shp" reinladen


- den heruntergeladenen "QGISModelPart2" öffnen und ausführen

- in den QGIS Erweiterungen "vectorMCDA" installieren
- zur Anwendung verwenden wir ausschließlich folgende implementations: "geoTOPSIS" und "geoWeightedSum"
