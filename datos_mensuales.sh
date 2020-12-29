#obtengo pp mensual en mm y etp acumulada anual
cd /datos/datos_clim_fis/
#for f in pr_Amon_*_2.5.nc; do
#	a="$(echo $f | sed s/2.5.nc/2.5_mes.nc/)"
#        cdo mulc,2628002.88 "$f" aux.nc
#        ncatted -a units,"pr",o,c,"mm" -a original_units,"pr",o,c,"kg/m2/s" aux.nc "$a"
#
#done
#for f in etp_Amon_*_2.5.nc; do
#	a="$(echo $f | sed s/2.5.nc/2.5_anu.nc/)"
#	cdo yearsum -mulc,2628802.88 "$f" aux.nc
#        ncatted -a units,"etp",o,c,"mm" -a original_units,"etp",o,c,"kg/m2/s" aux.nc "$a"
#done
#
for f in evspsblpot_Emon_*_2.5.nc; do
	a="$(echo $f | sed s/2.5.nc/2.5_anu.nc/)"
	cdo yearsum -mulc,2628802.88 "$f" aux.nc
        ncatted -a units,"evspsblpot",o,c,"mm" -a original_units,"evspsblpot",o,c,"kg/m2/s" aux.nc "$a"
done

#for f in evspsbl_Amon_*_2.5.nc; do
#	a="$(echo $f | sed s/2.5.nc/2.5_mes.nc/)"
#        cdo mulc,2628002.88 "$f" aux.nc
#        ncatted -a units,"evspsbl",o,c,"mm" -a original_units,"evspsbl",o,c,"kg/m2/s" aux.nc "$a"
#
#done
#
#
#
#
#
