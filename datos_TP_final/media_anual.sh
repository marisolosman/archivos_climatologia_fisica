#codigo para obtener la media anual de las variables usadas en las clases de clima dinamico y las variables mensuales necesarias
#cd /datos/datos_clim_fis/
for f in pr_Amon_*_2.5_mes.nc; do
	b="$(echo $f | sed s/2.5_mes.nc/2.5_anu.nc/)"
	#calculo acumulado anual
	cdo yearsum "$f" "$b"
done
for f in evspsbl_Amon_*_2.5_mes.nc; do
	b="$(echo $f | sed s/2.5_mes.nc/2.5_anu.nc/)"
	#calculo acumulado anual
	cdo yearsum "$f" "$b"
done


  #calculo promedio tas
 
for f in tas_Amon_*_2.5.nc; do
	c="$(echo $f | sed s/2.5.nc/2.5_anu.nc/)"
  	cdo yearmean "$f" "$c"
             
done

