# Android Build Tools
A Docker image useful for building kernels / Android sources (based on Ubuntu) 

## Compile
`docker build -t dvitali/android-build-tools:latest .`

## Run
`docker run -it --privileged=true --volume $(pwd)/kernel:/kernel dvitali/android-build-tools`

(Privileged for mounting operations)
