FROM gcc:7.2

RUN apt-get -qq update; \
    apt-get -qq install -y --no-install-recommends \
      libboost-all-dev; \
    wget https://github.com/Kitware/CMake/releases/download/v3.13.3/cmake-3.13.3.tar.gz; \
    tar xvf ./cmake-3.13.3.tar.gz; \
    cd cmake-3.13.3 && ./bootstrap && make && make install; \
    cd .. && rm -rf cmake-3.13.3; \
    apt-get -qq purge --auto-remove -y git; \
    rm -rf /var/lib/apt/lists/*

ENV CC="gcc" \
    CXX="g++" \