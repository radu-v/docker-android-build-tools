FROM library/ubuntu:20.04
LABEL Maintainer radu-v <glx33807@gmail.com>
RUN apt-get update -y
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y git git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip python bc liblz4-tool vboot-utils vim u-boot-tools device-tree-compiler wget tmux dos2unix mc libssl-dev
ENV ARCH=arm64
COPY mkbootimg /bin/mkbootimg
RUN chmod u+x /bin/mkbootimg
COPY .gitconfig /root/.gitconfig

ENTRYPOINT bash
