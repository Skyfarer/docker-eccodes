# docker-eccodes
Docker image with ECMWF ECCODES for processing GRIB files

I needed the ECMWF CLI Grib utilities to extract data from model output for
a weather project. So I made this Alpine based docker image that installs the
build suite, downloads the ECCODES source, and compiles it.

ECCODES is distributed under the Apache 2.0 license.
