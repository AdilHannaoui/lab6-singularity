#!/bin/bash

echo "Comando hostname en ibsen"
hostname

echo "Comando hostname en el contenedor"
singularity exec ./singularity/my-python.sif hostname

echo "Comando cat en ibsen"
cat /etc/os-release

echo "Comando cat en el contenedor"
singularity exec ./singularity/my-python.sif cat /etc/os-release

echo "Comando pwd en ibsen"
pwd

echo "Comando pwd en el contenedor"
singularity exec ./singularity/my-python.sif pwd

echo "Comando --version en ibsen"
python --version

echo "Comando --version en el contenedor"
singularity exec ./singularity/my-python.sif python --version

echo "pi.ipynb en source"
singularity exec ./singularity/my-python.sif ipython ./source/pi.ipynb 10**5

echo "pi.ipynb en el contenedor"
singularity exec ./singularity/my-python.sif ipython /app/pi.ipynb 10**5

