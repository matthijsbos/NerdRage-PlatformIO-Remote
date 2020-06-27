FROM matthijsbos/nerdrage-base
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
   && apt-get -y upgrade \
   && apt-get -y install --no-install-recommends \
         build-essential \
         libssl-dev \
         libffi-dev \
         python-dev \
         openssl-dev \
   # Clean up
   && apt-get autoremove -y \
   && apt-get clean -y \
   && rm -rf /var/lib/apt/lists/*
RUN pip3 install -U platformio pyOpenSSL 
ENV DEBIAN_FRONTEND=dialog
