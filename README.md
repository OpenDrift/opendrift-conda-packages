# OpenDrift conda packages

## Use

1. Set up [miniconda3](https://docs.conda.io/en/latest/miniconda.html).
2. Create environment:

```sh
$ conda create opendrift --name opendrift
$ conda activate opendrift
```

3. Add channels and install:

```sh
$ conda config --add channels OpenDrift NOAA-ORR-ERD conda-forge
$ conda install opendrift
```

## For maintainers

### Uploading new versions

1. Update version-numbers and make sure URLs point to new versions in `meta.yml` for each package.
2. Run `./build-all.sh` to build packages into `packages/`.
3. Activate conda environment: `conda activate opendrift_packages`.
4. Login using `anaconda login`
5. Upload each package using
```sh
$ anaconda upload -u OpenDrift -i packages/.../noarch/...tar.bz2
```

