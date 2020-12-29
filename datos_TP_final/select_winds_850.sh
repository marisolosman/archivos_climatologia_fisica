#obtengo pp mensual en mm y etp acumulada anual
cd /datos/datos_clim_fis/
for f in ua_Amon_*_2.5.nc; do
	a="$(echo $f | sed s/ua_Amon_/ua850_Amon_/)"
        cdo sellevel,85000 "$f" "$a"

done
for f in va_Amon_*_2.5.nc; do
	a="$(echo $f | sed s/va_Amon_/va850_Amon_/)"
        cdo sellevel,85000 "$f" "$a"

done
#for f in *.nca; do
#	a="$(echo $f | sed s/.nca/.nc/)"
#        mv "$f" "$a"
#
#done
#
