#concatenate files
RUTAOUT="/datos/datos_clim_fis/"
declare -a RCP=( ssp585)
#declare -a MODELOS=( CESM2 MPI-ESM1-2-HR MPI-ESM1-2-LR NorESM2-LM )
#declare -a VARS=("tas" "pr" "evspsbl" "rlds" "rsds" "rsus" "rlus")
#declare -a VARS=("huss" "ua" "va")
#declare -a MEMB=( 2  10 2 1)
#codigo para seleccionar el periodo Jan1976-Dec2005 

#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..3} ; do
#		limit=${MEMB[$m]}
#		echo ${limit}
#		for mm in $(eval echo "{1..${limit}}") ; do
#			echo ${mm}
#			cdo -L mergetime ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i*.nc aux.nc
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_${r}_r${mm}_2020-2049.nc
#			cdo seldate,2020-01-01,2049-12-31  aux.nc "$a"
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_${r}_r${mm}_2070-2099.nc
#			cdo seldate,2070-01-01,2099-12-31  aux.nc "$a"
#			rm aux.nc
#		done
#	done
#done
#done
#declare -a MODELOS=( HadGEM3-GC31-LL)
#declare -a VARS=("evspsblpot") #"tas" "pr" "evspsbl")
#declare -a MEMB=( 3)
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..0} ; do
#		limit=${MEMB[$m]}
#		echo ${limit}
#		for mm in $(eval echo "{1..${limit}}") ; do
#			echo ${mm}
#			#!!! Cambiar Amon o Emon segun corresponda
#			cdo -L mergetime ${v}_Emon_${MODELOS[$m]}_${r}_r${mm}i*.nc aux.nc
#			a=${RUTAOUT}${v}_Emon_${MODELOS[$m]}_${r}_r${mm}_2020-2049.nc
#			cdo seldate,2020-01-01,2049-12-31  aux.nc "$a"
#			a=${RUTAOUT}${v}_Emon_${MODELOS[$m]}_${r}_r${mm}_2070-2099.nc
#			cdo seldate,2070-01-01,2099-12-31  aux.nc "$a"
#			rm aux.nc
#		done
#	done
#done
#done
declare -a MODELOS=( BCC-CSM2-MR ) #MIROC-ES2L )
#declare -a VARS=("tas" "pr" "evspsbl" "rlds" "rsds" "rsus" "rlus")
declare -a MEMB=(1 ) #1)
declare -a VARS=("huss")
#codigo para seleccionar el periodo Jan1976-Dec2005 
for r in "${RCP[@]}" ; do
	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
for v in "${VARS[@]}" ; do
	cd "${RUTA}${v}/"
	for m in {0..0} ; do
		limit=${MEMB[$m]}
		echo ${limit}
		for mm in $(eval echo "{1..${limit}}") ; do
			echo ${mm}
			cdo -L mergetime ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i*.nc aux.nc
			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_${r}_r${mm}_2020-2049.nc
			cdo seldate,2020-01-01,2049-12-31  ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i*.nc "$a"
			#cdo seldate,2020-01-01,2049-12-31  ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}*.nc "$a"
			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_${r}_r${mm}_2070-2099.nc
			cdo seldate,2070-01-01,2099-12-31 ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i*.nc "$a"
			rm aux.nc
			#cdo seldate,2070-01-01,2099-12-31  ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}*.nc "$a"
		done
	done
done
done

