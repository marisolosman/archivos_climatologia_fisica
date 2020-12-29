#concatenate files
RUTA="/datos/CMIP6/Download/Format/Data_used/historical/mon/"
RUTAOUT="/datos/datos_clim_fis/"
declare -a MODELOS=( MIROC6 )
declare -a VARS=( "rlds" "rsds" "rsus" "rlus")
#declare -a VARS=("huss" "ua" "va")
declare -a VARS=("ua" )
declare -a MEMB=( 10)
#codigo para seleccionar el periodo Jan1976-Dec2005 

for v in "${VARS[@]}" ; do
	cd "${RUTA}${v}/"
	for m in {0..0} ; do
		limit=${MEMB[$m]}
		echo ${limit}
		for mm in $(eval echo "{1..${limit}}") ; do
			echo ${mm}
			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_historical_r${mm}.nc
			cdo -L mergetime ${v}_Amon_${MODELOS[$m]}_historical_r${mm}i*.nc aux.nc
		    	cdo seldate,1976-01-01,2005-12-31  aux.nc "$a"
			rm aux.nc
		done
	done
done
#declare -a MODELOS=( CNRM-CM6-1 IPSL-CM6A-LR )
#declare -a MEMB=( 30 32)
##declare -a VARS=( "evspsblpot")
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..1} ; do
#		limit=${MEMB[$m]}
#		for mm in $(eval echo "{1..${limit}}") ; do
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_historical_r${mm}.nc
#		    	cdo seldate,1976-01-01,2005-12-31  ${v}_Amon_${MODELOS[$m]}_historical_r${mm}i*.nc "$a"
#			
#		done
#	done
#done
declare -a MODELOS=( CanESM5 )
declare -a MEMB=( 25)
#codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..0} ; do
#		limit=${MEMB[$m]}
#		for mm in $(eval echo "{1..${limit}}") ; do
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_historical_r${mm}i1p1f1.nc
#		    	cdo seldate,1976-01-01,2005-12-31  ${v}_Amon_${MODELOS[$m]}_historical_r${mm}i1p1f1*.nc "$a"
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_historical_r${mm}i1p2f1.nc
#		    	cdo seldate,1976-01-01,2005-12-31  ${v}_Amon_${MODELOS[$m]}_historical_r${mm}i1p2f1*.nc "$a"
#	
#			
#		done
#	done
#done


RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/historical/mon/"
RUTAOUT="/datos/datos_clim_fis/"
declare -a MODELOS=( MIROC6 )
declare -a VARS=( "tas" "pr")
declare -a MEMB=( 10)
#codigo para seleccionar el periodo Jan1976-Dec2005 
#
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..1} ; do
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
declare -a MODELOS=( CNRM-CM6-1 IPSL-CM6A-LR )
declare -a MEMB=( 30 32)
#codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..1} ; do
#		limit=${MEMB[$m]}
#		for mm in $(eval echo "{1..${limit}}") ; do
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_historical_r${mm}.nc
#		    	cdo seldate,1976-01-01,2005-12-31  ${v}_Amon_${MODELOS[$m]}_historical_r${mm}i*.nc "$a"
			
#		done
#	done
#done

declare -a MODELOS=( CanESM5 )
declare -a MEMB=( 25)
#codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..0} ; do
#		limit=${MEMB[$m]}
#		for mm in $(eval echo "{1..${limit}}") ; do
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_historical_r${mm}i1p1f1.nc
#		    	cdo seldate,1976-01-01,2005-12-31  ${v}_Amon_${MODELOS[$m]}_historical_r${mm}i1p1f1*.nc "$a"
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_historical_r${mm}i1p2f1.nc
#		    	cdo seldate,1976-01-01,2005-12-31  ${v}_Amon_${MODELOS[$m]}_historical_r${mm}i1p2f1*.nc "$a"
#	
#			
#		done
#	done
#done
#
#
