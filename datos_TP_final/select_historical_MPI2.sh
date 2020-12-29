#concatenate files
RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/historical/mon/"
RUTAOUT="/datos/datos_clim_fis/"
declare -a MODELOS=( MPI-ESM1-2-LR )
declare -a VARS=("rlds" "rsds" "rsus" "rlus")
#declare -a VARS=("huss" "ua" "va")
declare -a MEMB=( 10 )
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

