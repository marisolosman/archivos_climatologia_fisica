#concatenate files
RUTA="/datos/CMIP6/Download/Format/Data_used/historical/mon/"
RUTAOUT="/datos/datos_clim_fis/"
#declare -a MODELOS=( CESM2 MPI-ESM1-2-HR MPI-ESM1-2-LR NorESM2-LM )
#declare -a VARS=("tas" "pr" "evspsbl" "rlds" "rsds" "rsus" "rlus")
declare -a VARS=("huss" "ua" "va")
#declare -a MEMB=( 11  10 10 3)
#codigo para seleccionar el periodo Jan1976-Dec2005 

#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..5} ; do
#		limit=${MEMB[$m]}
#		echo ${limit}
#		for mm in $(eval echo "{1..${limit}}") ; do
#			echo ${mm}
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_historical_r${mm}.nc
#			cdo -L mergetime ${v}_Amon_${MODELOS[$m]}_historical_r${mm}i*.nc aux.nc
#		    	cdo seldate,1976-01-01,2005-12-31  aux.nc "$a"
#			rm aux.nc
#		done
#	done
#done
#
#declare -a MODELOS=( HadGEM3-GC31-LL)
#declare -a VARS=("tas" "pr" "evspsbl")
#declare -a MEMB=( 4)
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..0} ; do
#		limit=${MEMB[$m]}
#		echo ${limit}
#		for mm in $(eval echo "{1..${limit}}") ; do
#			echo ${mm}
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_historical_r${mm}.nc
#			cdo -L mergetime ${v}_Amon_${MODELOS[$m]}_historical_r${mm}i*.nc aux.nc
#		    	cdo seldate,1976-01-01,2005-12-31  aux.nc "$a"
#			rm aux.nc
#		done
#	done
#done


#cd "${RUTA}evspsblpot/"
#for m in {0..0} ; do
#	limit=${MEMB[$m]}
#	for mm in $(eval echo "{1..${limit}}") ; do
#		echo ${mm}
#		a=${RUTAOUT}evspsblpot_Emon_${MODELOS[$m]}_historical_r${mm}.nc
#		cdo -L mergetime evspsblpot_Emon_${MODELOS[$m]}_historical_r${mm}i*.nc aux.nc
#		cdo seldate,1976-01-01,2005-12-31  aux.nc "$a"
#		rm aux.nc
#	done
#done
#
declare -a MODELOS=( BCC-CSM2-MR ) #MIROC-ES2L )
declare -a MEMB=( 3) # 3)
#codigo para seleccionar el periodo Jan1976-Dec2005 
for v in "${VARS[@]}" ; do
	cd "${RUTA}${v}/"
	for m in {0..1} ; do
		limit=${MEMB[$m]}
		for mm in $(eval echo "{1..${limit}}") ; do
			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_historical_r${mm}.nc
			cdo -L mergetime ${v}_Amon_${MODELOS[$m]}_historical_r${mm}i*.nc aux.nc
			cdo seldate,1976-01-01,2005-12-31  aux.nc "$a"
		done
	done
done

