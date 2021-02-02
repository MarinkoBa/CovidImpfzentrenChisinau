CALL v.import buildings_final.shp
CALL v.db.addcolumn map=buildings_final@PERMANENT columns="med_name VARCHAR, med_dist DOUBLE PRECISION, pubt_name DOUBLE PRECISION, pubt_dist DOUBLE PRECISION"
CALL v.import medicine.shp
CALL v.distance from=buildings_final@PERMANENT to=medicine@PERMANENT upload=to_attr column=med_name to_column=name
CALL v.distance from=buildings_final@PERMANENT to=medicine@PERMANENT upload=dist column=med_dist
CALL v.import public_transport.shp
CALL v.distance from=buildings_final@PERMANENT to=public_transport@PERMANENT upload=to_attr column=pubt_name to_column=name
CALL v.distance from=buildings_final@PERMANENT to=public_transport@PERMANENT upload=dist column=pubt_dist
CALL v.out.ogr --overwrite input=buildings_final@PERMANENT format=ESRI_Shapefile output=buildings_final_med_pub.shp