######################
# Build a test netCDF file from a raster stack using gdaltools
# from: https://gis.stackexchange.com/questions/70458/convert-timeseries-stack-of-gtiff-raster-to-single-netcdf
# Theodore Barnhart | tbarnhart@usgs.gov | August 24, 2017
####################################################
cd ../UOG/data/haines_tiffs/
gdalbuildvrt -separate test.vrt *Float64.tiff
gdal_translate -of netcdf test.vrt test.nc
