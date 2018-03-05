#!/bin/bash



gmx density -f ./pfs/nobackup/home/q/qwgao/gmx/ChCl_Urea/contact_angle/0.0e/0e/300K/80ns/nvt.trr -s ./pfs/nobackup/home/q/qwgao/gmx/ChCl_Urea/contact_angle/0.0e/0e/300K/80ns/nvt.tpr -n ./pfs/nobackup/home/q/qwgao/gmx/ChCl_Urea/contact_angle/0.0e/0e/300K/index.ndx -b 70000 -e 80000 -d Z -dens number -sl 300 -o density_Z_0.0e.xvg 

echo "3"
