#concatenate files
#daiana
#RUTA="/datos/CMIP5/historical/CESM1-CAM5/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/daiana/"
#declare -a MODELOS=( CESM1-CAM5)
#declare -a VARS=("hus" "ua" "va")
#declare -a MEMB=( 3)
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#	for m in {1..3} ; do
#		a=${RUTAOUT}${v}_Amon_CESM-CAM5_historical_r${m}.nc
#		cdo -L mergetime ${v}_Amon_CESM1-CAM5_historical_r${m}i*.nc aux.nc
#		cdo seldate,1976-01-01,2005-12-31  aux.nc "$a"
#		rm aux.nc
#	done
#done

#RUTA="/datos/CMIP6/Download/Format/Data_used/historical/mon/hus/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/daiana"
#declare -a MODELOS=( CESM2)
#declare -a VARS=("hus")
#declare -a MEMB=( 3)
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#	for m in {1..11} ; do
#		cdo -L mergetime ${v}_Amon_CESM2_historical_r${m}i*.nc aux.nc
#		a=${RUTAOUT}${v}_Amon_CESM2_historical_r${m}.nc
#		cdo seldate,1976-01-01,2005-12-31  aux.nc "$a"
#		rm aux.nc
#	done
#done
#RUTA="/pikachu//datos3/CMIP6/Download/Format/Data_used/historical/mon/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/daiana"
#declare -a MODELOS=( CESM2)
#declare -a VARS=("ua" "va")
#declare -a MEMB=( 3)
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}"
#	for m in {1..11} ; do
#		cdo -L mergetime ${v}_Amon_CESM2_historical_r${m}i*.nc aux.nc
#		a=${RUTAOUT}${v}_Amon_CESM2_historical_r${m}.nc
#		cdo seldate,1976-01-01,2005-12-31  aux.nc "$a"
#		rm aux.nc
#	done
#done
#
#jesica
RUTA="/datos/CMIP5/rcp85/MPI-ESM-LR/"
RUTAOUT="/datos/datos_clim_fis/TP_final/jesica/"
declare -a MODELOS=( MPI-ESM-LR)
declare -a VARS=("hus")
declare -a MEMB=( 3)
##codigo para seleccionar el periodo Jan1976-Dec2005 
for v in "${VARS[@]}" ; do
	cd "${RUTA}"
	for m in {1..3} ; do
		a=${RUTAOUT}huss_Amon_${MODELOS}_rcp85_r${m}_2020-2049.nc
		cdo -L mergetime ${v}_Amon_${MODELOS}_rcp85_r${m}i*.nc aux.nc
		cdo seldate,2020-01-01,2049-12-31 -sellevel,100000,92500,85000,70000 aux.nc "$a"
		a=${RUTAOUT}huss_Amon_${MODELOS}_rcp85_r${m}_2070-2099.nc
		cdo seldate,2070-01-01,2099-12-31 -sellevel,100000,92500,85000,70000  aux.nc "$a"
		rm aux.nc
	done
done


#
#
##maxi
#RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/historical/mon/psl/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/maxi/"
#declare -a MODELOS=( HadGEM3-GC31-LL )
#declare -a VARS=( "psl" )
#declare -a MEMB=( 3)
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#	for m in {1..3} ; do
#		a=${RUTAOUT}${v}_Amon_HadGEM3-GC31-LL_historical_r${m}.nc
#			cdo seldate,1976-01-01,2005-12-31  ${v}_Amon_HadGEM3-GC31-LL_historical_r${m}i1p1f3_gn_195001-201412.nc "$a"
#	done
#done
#luciano
#RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/historical/mon/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/luciano/"
#declare -a VARS=( "psl" )
#declare -a MEMB=( 22)
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}"
#	for m in {1..30} ; do
#		a=${RUTAOUT}${v}_Amon_CNRM-CM6-1_historical_r${m}.nc
#			cdo seldate,1976-01-01,2005-12-31  ${v}_Amon_CNRM-CM6-1_historical_r${m}i*_185001-201412.nc "$a"
#	done
#done
#RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/historical/mon/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/luciano/"
#declare -a VARS=( "tas" )
#declare -a MEMB=( 22)
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}"
#	for m in {1..30} ; do
#		a=${RUTAOUT}${v}_Amon_CNRM-CM6-1_historical_r${m}.nc
#		cdo seldate,1976-01-01,2005-12-31  ${v}_Amon_CNRM-CM6-1_historical_r${m}i*_195001-201412.nc "$a"
#	done
#done
#declare -a VARS=( "va" )
#declare -a MEMB=( 22)
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}"
#	for m in {1..30} ; do
#		a=${RUTAOUT}${v}_Amon_CNRM-CM6-1_historical_r${m}.nc
#		cdo sellevel,100000,92500,85000,70000,50000,40000,30000,20000,10000 -seldate,1976-01-01,2005-12-31  ${v}_Amon_CNRM-CM6-1_historical_r${m}i*_185001-201412.nc "$a"
#	done
#done
#declare -a VARS=( "ua" )
#declare -a MEMB=( 22)
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}"
#	for m in {1..30} ; do
#		a=${RUTAOUT}${v}_Amon_CNRM-CM6-1_historical_r${m}.nc
#		cdo sellevel,100000,92500,85000,70000,50000,40000,30000,20000,10000 -seldate,1976-01-01,2005-12-31  ${v}_Amon_CNRM-CM6-1_historical_r${m}i*_195001-201412.nc "$a"
#	done
#done
#
##Pablo
#RUTA="/datos/CMIP5/historical/NorESM1-M/"
#MODEL="NorESM1-M"
#RUTAOUT="/datos/datos_clim_fis/TP_final/pablo/"
#declare -a VARS=("mrsos" )
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#	for m in {1..3} ; do
#		a=${RUTAOUT}${v}_Lmon_${MODEL}_historical_r${m}.nc
#		cdo -L mergetime ${v}_Lmon_${MODEL}_historical_r${m}i*.nc aux.nc
#		cdo seldate,1976-01-01,2005-12-31  aux.nc "$a"
#		rm aux.nc
#	done
#done

#RUTA="/datos/CMIP6/Download/Format/Data_used/historical/mon/mrsos/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/pablo/"
#declare -a VARS=("mrsos")
#MODELO="NorESM2-LM"
#codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#	for m in {1..3} ; do
#		cdo -L mergetime ${v}_Lmon_${MODELO}_historical_r${m}i*197*.nc ${v}_Lmon_${MODELO}_historical_r${m}i*198*.nc ${v}_Lmon_${MODELO}_historical_r${m}i*199*.nc ${v}_Lmon_${MODELO}_historical_r${m}i*200*.nc aux.nc
#		a=${RUTAOUT}${v}_Lmon_${MODELO}_historical_r${m}.nc
#		cdo seldate,1976-01-01,2005-12-31  aux.nc "$a"
#		rm aux.nc
#	done
#done
#
#
#Jesica
#RUTA="/datos/CMIP5/historical/MPI-ESM-LR/"
#MODEL="MPI-ESM-LR"
#RUTAOUT="/datos/datos_clim_fis/TP_final/pablo/"
#declare -a VARS=("tas" "evspsbl" "rlus" "rsus" "rlds" "rsds" )
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#	for m in {1..3} ; do
#		a=${RUTAOUT}${v}_Amon_${MODEL}_historical_r${m}.nc
#		#cdo -L mergetime ${v}_Amon_${MODEL}_historical_r${m}i*.nc aux.nc
#		cdo seldate,1976-01-01,2005-12-31 ${v}_Amon_${MODEL}_historical_r${m}i*.nc "$a"
#		#rm aux.nc
#	done
#done
#
#done
#LAURA
#RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/historical/mon/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/laura/"
#declare -a VARS=( "ua" )
#MODELO="BCC-CSM2-MR"
###codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}"
#	for m in {1..3} ; do
#		a=${RUTAOUT}${v}200_Amon_${MODELO}_historical_r${m}.nc
#		cdo sellevel,20000 -seldate,1976-01-01,2005-12-31  ${v}_Amon_${MODELO}_historical_r${m}i*_195001-201412.nc "$a"
#	done
#done
#declare -a VARS=( "va" )
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}"
#	for m in {1..3} ; do
#		a=${RUTAOUT}${v}_Amon_${MODELO}_historical_r${m}.nc
#		cdo -L mergetime ${v}_Amon_${MODELO}_historical_r${m}i*.nc aux.nc
#		cdo sellevel,20000 -seldate,1976-01-01,2005-12-31  aux.nc "$a"
#		rm aux.nc
#	done
#done
#RUTA="/datos/CMIP5/historical/bcc-csm1-1/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/laura/"
#declare -a VARS=( "ua" "va" )
#MODELO="bcc-csm1-1"
###codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#	for m in {1..1} ; do
#		a=${RUTAOUT}${v}850_Amon_${MODELO}_historical_r${m}.nc
#		cdo sellevel,85000 -seldate,1976-01-01,2005-12-31  ${v}_Amon_${MODELO}_historical_r${m}i*.nc "$a"
#	done
#done
#
##Martin
##RUTA="/datos/CMIP5/historical/MIROC5/"
##MODEL="MIROC5"
##RUTAOUT="/datos/datos_clim_fis/TP_final/martin/"
#declare -a VARS=("evspsbl" "rlus" "rsus" "rlds" "rsds" )
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}"
#	for m in {4..5} ; do
#		a=${RUTAOUT}${v}_Amon_${MODEL}_historical_r${m}.nc
#		#cdo -L mergetime ${v}_Amon_${MODEL}_historical_r${m}i*.nc aux.nc
#		cdo seldate,1976-01-01,2005-12-31 ${v}_Amon_${MODEL}_historical_r${m}i*.nc "$a"
#		#rm aux.nc
#	done
#done
#RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/historical/mon/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/martin/"
####codigo para seleccionar el periodo Jan1976-Dec2005 
#MODEL="MIROC6"
#declare -a VARS=("evspsbl" "rlus" "rsus" "rlds" "rsds" )
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}"
#	for m in {1..10} ; do
#		a=${RUTAOUT}${v}_Amon_${MODEL}_historical_r${m}.nc
#		cdo -L mergetime ${v}_Amon_${MODEL}_historical_r${m}i*.nc aux.nc
#		cdo seldate,1976-01-01,2005-12-31 aux.nc "$a"
#		rm aux.nc
#	done
#done
#Yudisabet
#RUTA="/pikachu/datos3/CMIP6/Download/Format/Data_used/historical/mon/"
#RUTAOUT="/datos/datos_clim_fis/TP_final/yudisabet/"
#####codigo para seleccionar el periodo Jan1976-Dec2005 
#MODEL="MIROC-ES2L"
#declare -a VARS=("huss" "rlus" "rsus" "rlds" "rsds" )
##codigo para seleccionar el periodo Jan1976-Dec2005 
#for v in "${VARS[@]}" ; do
#	cd "${RUTA}${v}"
#	for m in {1..3} ; do
#		a=${RUTAOUT}${v}_Amon_${MODEL}_historical_r${m}.nc
#		#cdo -L mergetime ${v}_Amon_${MODEL}_historical_r${m}i*.nc aux.nc
#		cdo seldate,1976-01-01,2005-12-31 ${v}_Amon_${MODEL}_historical_r${m}i*.nc "$a"
#		#rm aux.nc
#	done
#done
#
