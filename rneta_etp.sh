#codigo para obtener la radiacion neta y la etp para cada modelo y escenario
#declare -a dir=("mohc_final")
cd /datos/datos_clim_fis/

for f in rsds_*.nc; do
	a="$(echo $f | sed s/rsds/rsus/)"
        b="$(echo $f | sed s/rsds/rlds/)"
        c="$(echo $f | sed s/rsds/rlus/)"
        d="$(echo $f | sed s/rsds/etp/)"
        
        cdo divc,2450000 -add -sub -selname,rsds "$f" -selname,rsus "$a" -sub -selname,rlds "$b" -selname,rlus "$c"  etp.nc
        ncrename -v rsds,etp etp.nc

	ncatted -a long_name,"etp",o,c,"Potential Evapotranspiration (Net Radiation / latent heat of vaporization)" -a standard_name,"etp",o,c,"Potential_Evapotranspiration" -a units,"etp",o,c,"kg s-1 m-2" -a original_units,"etp",o,c,"kg/m2/s" etp.nc "$d"

done





