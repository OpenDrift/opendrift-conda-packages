# /usr/bin/env bash

set -e

# set up environment
if ! conda env list | grep opendrift_packages > /dev/null 2>&1; then
  echo "creating environment.."
  conda env create --file opendrift_packages.yml
else
  echo "environment exists.."
fi

eval "$(conda shell.bash hook)"
conda activate opendrift_packages

for package in opendrift-landmask-data opendrift; do
  echo "building ${package}.."

  conda build --no-anaconda-upload "${package}"

done

echo "The newly built packages, if successful, should now be in miniconda3/conda-bld/... See the log above for details."

