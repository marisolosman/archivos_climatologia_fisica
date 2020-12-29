#concatenate files
RUTAOUT="/datos/datos_clim_fis/"
declare -a RCP=( ssp126 ssp585)
declare -a MODELOS=( MIROC6)
#declare -a VARS=("tas" "pr" "evspsbl")
#declare -a VARS=("rlds" "rsds" "rsus" "rlus")
#declare -a VARS=("huss" "ua" "va")
declare -a VARS=("ua" "va")
declare -a MEMB=( 3)
#codigo para seleccionar el periodo Jan1976-Dec2005 

#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..0} ; do
#		limit=${MEMB[$m]}
#		echo ${limit}
#		for mm in $(eval echo "{1..${limit}}") ; do
#			echo ${mm}
#			cdo -L mergetime ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i*.nc aux.nc
#
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_${r}_r${mm}_2020-2049.nc
#			cdo seldate,2020-01-01,2049-12-31 aux.nc "$a"
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_${r}_r${mm}_2070-2099.nc
#			cdo seldate,2070-01-01,2099-12-31 aux.nc "$a"
#			rm aux.nc
#		done
#	done
#done
#done
declare -a RCP=( ssp126 ssp585)
declare -a MODELOS=( IPSL-CM6A-LR ) #CNRM-CM6-1 IPSL-CM6A-LR )
declare -a VARS=("evspsblpot")
declare -a MEMB=( 1 2 3 4 6 14 ) # 6)
##codigo para seleccionar el periodo Jan1976-Dec2005 
#
for r in "${RCP[@]}" ; do
	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
for v in "${VARS[@]}" ; do
	cd "${RUTA}${v}/"
	for m in "${MODELOS[@]}" ; do
		for mm in "${MEMB[@]}" ; do
			cdo -L mergetime ${v}_Emon_${m}_${r}_r${mm}i*210012.nc aux.nc

			a=${RUTAOUT}${v}_Emon_${m}_${r}_r${mm}_2020-2049.nc
			cdo seldate,2020-01-01,2049-12-31 ${v}_Emon_${m}_${r}_r${mm}i*.nc "$a"
			a=${RUTAOUT}${v}_Emon_${m}_${r}_r${mm}_2070-2099.nc
			cdo seldate,2070-01-01,2099-12-31 ${v}_Emon_${m}_${r}_r${mm}i*.nc "$a"
			rm aux.nc
		done
	done
done
done
#
#declare -a MODELOS=( CanESM5 )
##declare -a VARS=("rlds" "rsds" "rsus" "rlus" "tas" "pr" "evspsbl")
#declare -a MEMB=( 25)
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..0} ; do
#		limit=${MEMB[$m]}
#		echo ${limit}
#		for mm in {1..1} ; do #$(eval echo "{1..${limit}}") ; do
#			echo ${mm}
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i1p1f1_2020-2049.nc
#			cdo seldate,2020-01-01,2049-12-31 ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i1p1f1_gn_2015*.nc "$a"
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i1p1f1_2070-2099.nc
#			cdo seldate,2070-01-01,2099-12-31 ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i1p1f1_gn_2015*.nc "$a"
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i1p2f1_2020-2049.nc
#			cdo seldate,2020-01-01,2049-12-31 ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i1p2f1_gn_2015*.nc "$a"
#			a=${RUTAOUT}${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i1p2f1_2070-2099.nc
#			cdo seldate,2070-01-01,2099-12-31  ${v}_Amon_${MODELOS[$m]}_${r}_r${mm}i1p2f1_gn_2015*.nc "$a"
#
#		done
#	done
#done
#done
#
