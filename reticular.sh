#declare -a dir=("mohc_final")
cd /datos/datos_clim_fis/
for f in evspsblpot_Emon*.nc; do
	a="$(echo $f | sed s/.nc/_2.5.nc/)"
    	cdo remapdis,~/archivos_clim_fis/reticula  "$f" "$a"

done

