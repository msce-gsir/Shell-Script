#!/bin/bash
LOCATION="/pfs/nobackup/home/q/qwgao/gmx/ChCl_Urea/contact_angle"

for i in 3 4 5
	do 
		echo $i | gmx density -f $LOCATION/0.0e/0e/300K/80ns/nvt.trr -s $LOCATION/0.0e/0e/300K/80ns/nvt.tpr -n $LOCATION/0.0e/0e/300K/index.ndx -b 70000 -e 80000 -d Z -dens number -sl 300 -o density_Z_0.0e_$i.xvg 
	done
	
	
for CHARGE in 0.2e 0.4e 0.6e 0.8e 1.0e
	do
		for i in 3 4 5
			do 
				echo $i | gmx density -f ${LOCATION}/${CHARGE}/80ns/nvt.trr -s ${LOCATION}/${CHARGE}/80ns/nvt.tpr -n ${LOCATION}/${CHARGE}/index.ndx -b 70000 -e 80000 -d Z -dens number -sl 300 -o density_Z_${CHARGE}_${i}.xvg 
			done
	done

echo "job is done"	>> state.txt
