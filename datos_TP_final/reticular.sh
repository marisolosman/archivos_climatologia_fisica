#declare -a dir=("mohc_final")
#cd /datos/datos_clim_fis/TP_final/daiana/
#
#for f in *2.5.nc; do
#	a="$(echo $f | sed s/2.5/lr_2.5/)"
#
#	cdo sellevel,100000,92500,85000,70000,60000,50000,40000,30000,20000,10000 "$f" "$a"
#done
#	a="$(echo $f | sed s/daiana//)"
#	mv "$f" "$a"
#done
#
#for f in hus*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#
#done
#
#for f in va*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#
#done
#
#for f in ua*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#
#done

#cd /datos/datos_clim_fis/TP_final/luciano/
#
#for f in p*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#cd /datos/datos_clim_fis/TP_final/luciano/
#for f in tas*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#for f in ua*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#for f in va*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#cd /datos/datos_clim_fis/TP_final/pablo/
#for f in mrsos*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#jesica
cd /datos/datos_clim_fis/TP_final/jesica
for f in huss*rcp85*.nc; do
	a="$(echo $f | sed s/.nc/_2.5.nc/)"
    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
done
#laura
#cd /datos/datos_clim_fis/TP_final/laura/
#for f in *850_Amon_*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#
#cd /datos/datos_clim_fis/TP_final/martin/
#for f in evsp*_*MIROC6_ssp*_r*_*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#for f in etp*_*MIROC6_ssp*_r*_*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#
#for f in etp*MIROC5_*r5.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#
#for f in evs*MIROC5_*r4.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#for f in evs*MIROC5_*r5.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#cd /datos/datos_clim_fis/TP_final/yudisabet/
#for f in etp_*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#for f in hus*.nc; do
#	a="$(echo $f | sed s/.nc/_2.5.nc/)"
#    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"
#done
#
#
