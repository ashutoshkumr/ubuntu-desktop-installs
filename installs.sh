#!/bin/sh

# Avoid warnings for non-interactive apt-get install
export DEBIAN_FRONTEND=noninteractive

CMAKE_VERSION=3.17.0

install_deps() {
  # basic dev tools and other utilities
  apt-get update && apt-get install -y  \
    autoconf                            \
    build-essential                     \
    git                                 \
    curl                                \
    vim                                 \
    openssh-server			\
    openconnect				\
    network-manager-openconnect		\
    network-manager-openconnect-gnome	\
    nfs-common				\
    cppcheck                            \
    python3-dev                         \
    libtool                             \
    valgrind                            \
    vim
}

enable_i686() {
	# To build and run 32-bit apps
	dpkg --add-architecture i386            \
	&& apt-get update                       \
	&& apt-get install -y                   \
	  libc6:i386                            \
	  libncurses5:i386                      \
	  libstdc++6:i386
}

get_cmake() {
    curl -L -o ./cmake.sh https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}-Linux-x86_64.sh \
    && chmod +x ./cmake.sh && ./cmake.sh -- --skip-license --prefix=/usr/local && rm ./cmake.sh
}

main() {
  if [ "$(id -u)" != "0" ]; then
    echo "this script needs be executed using 'sudo'"
    exit 1
  fi
  
  install_deps
  enable_i686
  get_cmake
}

main
