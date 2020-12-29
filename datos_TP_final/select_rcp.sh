#concatenate files
#RUTAOUT="/datos/datos_clim_fis/TP_final/maxi/"
#declare -a RCP=( ssp585 ssp126)
#declare -a MODELOS=( HadGEM3-GC31-LL)
#declare -a VARS=("psl") #"tas" "pr" "evspsbl")
#declare -a MEMB=( 3)
#for r in "${RCP[@]}" ; do
#	RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {0..0} ; do
#		limit=${MEMB[$m]}
#		echo ${limit}
#		for mm in $(eval echo "{1..${limit}}") ; do
#			echo ${mm}
#			#!!! Cambiar Amon o Emon segun corresponda
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
#RUTA="/datos/CMIP6/Download/Format/Data_used/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/daiana"
#declare -a MODELOS=( CESM2)
#declare -a VARS=("hus")
#declare -a MEMBERS=( 4 10 11)
#declare -a RCP=( ssp126 ssp585)
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in "${MEMBERS[@]}" ; do
#		cdo -L mergetime ${v}_Amon_CESM2_${r}_r${m}i*.nc aux.nc
#		a=${RUTAOUT}${v}_Amon_CESM2_${r}_r${m}_2020-2049.nc
#		cdo seldate,2020-01-01,2049-12-31  aux.nc "$a"
#		a=${RUTAOUT}${v}_Amon_CESM2_${r}_r${m}_2070-2099.nc
#		cdo seldate,2070-01-01,2099-12-31  aux.nc "$a"
#
#		rm aux.nc
#	done
#done
#done
#RUTA="/pikachu//datos3/CMIP6/Download/Format/Data_used/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/daiana"
#declare -a MODELOS=( CESM2)
#declare -a VARS=("ua" "va")
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in "${MEMBERS[@]}" ; do
#		cdo -L mergetime ${v}_Amon_CESM2_${r}_r${m}i*.nc aux.nc
#		a=${RUTAOUT}${v}_Amon_CESM2_${r}_r${m}_2020-2049.nc
#		cdo seldate,2020-01-01,2049-12-31  aux.nc "$a"
#		a=${RUTAOUT}${v}_Amon_CESM2_${r}_r${m}_2070-2099.nc
#		cdo seldate,2070-01-01,2099-12-31  aux.nc "$a"
#		rm aux.nc
#	done
#done
#done

#RUTAOUT="/datos/datos_clim_fis/TP_final/daiana/"
#declare -a MODELOS=( CESM1-CAM5)
#declare -a VARS=("hus" "ua" "va")
#declare -a RCP=( rcp26 rcp85)
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP5/${r}/CESM1-CAM5/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#	for m in {1..3} ; do
#		cdo -L mergetime ${v}_Amon_CESM1-CAM5_${r}_r${m}i*.nc aux.nc
#		a=${RUTAOUT}${v}_Amon_CESM1-CAM5_${r}_r${m}_2020-2049.nc
#		cdo seldate,2020-01-01,2049-12-31  aux.nc "$a"
#		a=${RUTAOUT}${v}_Amon_CESM1-CAM5_${r}_r${m}_2070-2099.nc
#		cdo seldate,2070-01-01,2099-12-31  aux.nc "$a"
#		rm aux.nc
#	done
#done
#done

#luciano
#RUTA="/datos/CMIP6/Download/Format/Data_used/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/luciano/"
#declare -a VARS=("psl" "pr")
##declare -a MEMBERS=( 4 10 11)
#declare -a RCP=( ssp126 ssp585)
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {1..6} ; do
##		cdo -L mergetime ${v}_Amon_CESM2_${r}_r${m}i*.nc aux.nc
#		a=${RUTAOUT}${v}_Amon_CNRM-CM6-1_${r}_r${m}_2020-2049.nc
#		cdo seldate,2020-01-01,2049-12-31  ${v}_Amon_CNRM-CM6-1_${r}_r${m}i*.nc "$a"
#		a=${RUTAOUT}${v}_Amon_CNRM-CM6-1_${r}_r${m}_2070-2099.nc
#		cdo seldate,2070-01-01,2099-12-31  ${v}_Amon_CNRM-CM6-1_${r}_r${m}i*.nc "$a"
#	done
#done
#done
#RUTAOUT="/datos/datos_clim_fis/TP_final/luciano/"
#declare -a VARS=("ua" "va")
##declare -a MEMBERS=( 4 10 11)
#declare -a RCP=( ssp126 ssp585)
#for r in "${RCP[@]}" ; do
#	RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {1..6} ; do
##		cdo -L mergetime ${v}_Amon_CESM2_${r}_r${m}i*.nc aux.nc
#		a=${RUTAOUT}${v}_Amon_CNRM-CM6-1_${r}_r${m}_2020-2049.nc
#		cdo sellevel,100000,92500,85000,70000,50000,40000,30000,20000,10000 -seldate,2020-01-01,2049-12-31  ${v}_Amon_CNRM-CM6-1_${r}_r${m}i*.nc "$a"
#		a=${RUTAOUT}${v}_Amon_CNRM-CM6-1_${r}_r${m}_2070-2099.nc
#		cdo sellevel,100000,92500,85000,70000,50000,40000,30000,20000,10000 -seldate,2070-01-01,2099-12-31  ${v}_Amon_CNRM-CM6-1_${r}_r${m}i*.nc "$a"
#	done
#done
#done
#RUTAOUT="/datos/datos_clim_fis/TP_final/luciano/"
#declare -a VARS=("ua" "va")
#declare -a RCP=( ssp585)
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {1..6} ; do
##		cdo -L mergetime ${v}_Amon_CESM2_${r}_r${m}i*.nc aux.nc
#		a=${RUTAOUT}${v}_Amon_CNRM-CM6-1_${r}_r${m}_2020-2049.nc
#		cdo sellevel,100000,92500,85000,70000,50000,40000,30000,20000,10000 -seldate,2020-01-01,2049-12-31  ${v}_Amon_CNRM-CM6-1_${r}_r${m}i*.nc "$a"
#		a=${RUTAOUT}${v}_Amon_CNRM-CM6-1_${r}_r${m}_2070-2099.nc
#		cdo sellevel,100000,92500,85000,70000,50000,40000,30000,20000,10000 -seldate,2070-01-01,2099-12-31  ${v}_Amon_CNRM-CM6-1_${r}_r${m}i*.nc "$a"
#	done
#done
#done
#Pablo
RUTA="/datos/CMIP6/Download/Format/Data_used/"
RUTAOUT="/datos/datos_clim_fis/TP_final/pablo/"
MODELO="NorESM2-LM"
declare -a VARS=("mrsos")
declare -a RCP=( ssp126 ssp585)
for r in "${RCP[@]}" ; do
	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
for v in "${VARS[@]}" ; do
	cd "${RUTA}${v}/"
		cdo -L mergetime ${v}_Lmon_${MODELO}_${r}_r1*.nc aux.nc
		a=${RUTAOUT}${v}_Lmon_${MODELO}_${r}_r1_2020-2049.nc
		cdo seldate,2020-01-01,2049-12-31  aux.nc "$a"
		a=${RUTAOUT}${v}_Lmon_${MODELO}_${r}_r1_2070-2099.nc
		cdo seldate,2070-01-01,2099-12-31  aux.nc "$a"
		rm aux.nc
done
done

RUTAOUT="/datos/datos_clim_fis/TP_final/pablo/"
MODELO="NorESM1-M"
declare -a VARS=("mrsos")
declare -a RCP=( rcp26 rcp85)
for r in "${RCP[@]}" ; do
	RUTA="/datos/CMIP5/${r}/${MODELO}/"
for v in "${VARS[@]}" ; do
	cd "${RUTA}"
		cdo -L mergetime ${v}_Lmon_${MODELO}_${r}_r1i*.nc aux.nc
		a=${RUTAOUT}${v}_Lmon_${MODELO}_${r}_r1_2020-2049.nc
		cdo seldate,2020-01-01,2049-12-31  aux.nc "$a"
		a=${RUTAOUT}${v}_Lmon_${MODELO}_${r}_r1_2070-2099.nc
		cdo seldate,2070-01-01,2099-12-31  aux.nc "$a"
		rm aux.nc
done
done
#jesica
#RUTAOUT="/datos/datos_clim_fis/TP_final/jesica/"
#MODELO="MPI-ESM-LR"
#declare -a VARS=("tas" "evspsbl" "rlds" "rsds" "rlus" "rsus")
#declare -a RCP=( rcp26 rcp85)
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP5/${r}/${MODELO}/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#		cdo -L mergetime ${v}_Amon_${MODELO}_${r}_r1i*.nc aux.nc
#		a=${RUTAOUT}${v}_Amon_${MODELO}_${r}_r1_2020-2049.nc
#		cdo seldate,2020-01-01,2049-12-31 aux.nc "$a"
#		a=${RUTAOUT}${v}_Amon_${MODELO}_${r}_r1_2070-2099.nc
#		cdo seldate,2070-01-01,2099-12-31 aux.nc "$a"
#		rm aux.nc
#done
#done
#
#RUTAOUT="/datos/datos_clim_fis/TP_final/laura/"
#declare -a VARS=("ua" ) # "va")
#declare -a RCP=( ssp585  ssp126)
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {1..1} ; do
#		cdo -L mergetime ${v}_Amon_BCC-CSM2-MR_${r}_r${m}i*.nc aux.nc
#		a=${RUTAOUT}${v}_Amon_BCC-CSM2-MR_${r}_r${m}_2020-2049.nc
#		cdo sellevel,20000 -seldate,2020-01-01,2049-12-31 aux.nc "$a"
#		a=${RUTAOUT}${v}_Amon_BCC-CSM2-MR_${r}_r${m}_2070-2099.nc
#		cdo sellevel,20000 -seldate,2070-01-01,2099-12-31  aux.nc "$a"
#	done
#done
#done
#RUTAOUT="/datos/datos_clim_fis/TP_final/laura/"
#declare -a VARS=("ua" "va")
#declare -a RCP=( rcp85  rcp26)
#MODELO="bcc-csm1-1"
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP5/${r}/${MODELO}/"
#	for v in "${VARS[@]}" ; do
#		cd "${RUTA}"
#		for m in {1..1} ; do
#			cdo -L mergetime ${v}_Amon_${MODELO}_${r}_r${m}i*.nc aux.nc
#			a=${RUTAOUT}${v}850_Amon_${MODELO}_${r}_r${m}_2020-2049.nc
#			cdo sellevel,85000 -seldate,2020-01-01,2049-12-31 aux.nc "$a"
#			a=${RUTAOUT}${v}850_Amon_${MODELO}_${r}_r${m}_2070-2099.nc
#			cdo sellevel,85000 -seldate,2070-01-01,2099-12-31  aux.nc "$a"
#		done
#	done
#done
#martin
#RUTAOUT="/datos/datos_clim_fis/TP_final/martin/"
#MODELO="MIROC5"
#declare -a VARS=("evspsbl" "rlds" "rsds" "rlus" "rsus")
#declare -a RCP=( rcp26 rcp85)
#for r in "${RCP[@]}" ; do
#	RUTA="/datos/CMIP5/${r}/${MODELO}/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#		for m in {1..3} ; do
#			a=${RUTAOUT}${v}_Amon_${MODELO}_${r}_r${m}_2020-2049.nc
#			cdo seldate,2020-01-01,2049-12-31 ${v}_Amon_${MODELO}_${r}_r${m}i*.nc "$a"
#			a=${RUTAOUT}${v}_Amon_${MODELO}_${r}_r${m}_2070-2099.nc
#			cdo seldate,2070-01-01,2099-12-31 ${v}_Amon_${MODELO}_${r}_r${m}i*.nc "$a"
#		done
#done
#done
#MODELO="MIROC6"
#declare -a RCP=( ssp126 ssp585)
#for r in "${RCP[@]}" ; do
#	RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/${r}/mon/"
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}/"
#	for m in {1..3} ; do
#		a=${RUTAOUT}${v}_Amon_${MODELO}_${r}_r${m}_2020-2049.nc
#		cdo seldate,2020-01-01,2049-12-31  ${v}_Amon_${MODELO}_${r}_r${m}i*.nc "$a"
#		a=${RUTAOUT}${v}_Amon_${MODELO}_${r}_r${m}_2070-2099.nc
#		cdo seldate,2070-01-01,2099-12-31  ${v}_Amon_${MODELO}_${r}_r${m}i*.nc "$a"
#	done
#done
#done

#RUTAOUT="/datos/datos_clim_fis/TP_final/yudisabet/"
#MODELO="MIROC-ES2L"
#declare -a VARS=("huss" "rlds" "rsds" "rlus" "rsus")
#declare -a RCP=( ssp126 ssp585)
#for r in "${RCP[@]}" ; do
#	RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/${r}/mon/"
#	for v in "${VARS[@]}" ; do
#		cd "${RUTA}${v}/"
#		for m in {1..1} ; do
#			a=${RUTAOUT}${v}_Amon_${MODELO}_${r}_r${m}_2020-2049.nc
#			cdo seldate,2020-01-01,2049-12-31  ${v}_Amon_${MODELO}_${r}_r${m}i*.nc "$a"
#			a=${RUTAOUT}${v}_Amon_${MODELO}_${r}_r${m}_2070-2099.nc
#			cdo seldate,2070-01-01,2099-12-31  ${v}_Amon_${MODELO}_${r}_r${m}i*.nc "$a"
#		done
#	done
#done
#
