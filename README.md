# Android Build Tools
A Docker image useful for building kernels (based on Ubuntu) 

## Compile
`docker build -t glx135/android-build-tools:latest .`

## Run
`docker run -it --privileged=true --volume $(pwd)/kernel:/kernel glx135/android-build-tools`

(Privileged for mounting operations)
