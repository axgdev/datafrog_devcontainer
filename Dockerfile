FROM ubuntu:24.04

WORKDIR /scripts

RUN apt-get update && apt-get install -y wget tar

# Download toolchain in its own layer for better caching
RUN wget https://cloud.maschath.de/s/dDrZN4DSgJ33E3w/download/Codescape.GNU.Tools.Package.2019.09-03-2.for.MIPS32.MTI.Bare.Metal.Ubuntu-18.04.5.x86_64.tar.gz

RUN tar -xzf Codescape.GNU.Tools.Package.2019.09-03-2.for.MIPS32.MTI.Bare.Metal.Ubuntu-18.04.5.x86_64.tar.gz -C /opt && \
    rm Codescape.GNU.Tools.Package.2019.09-03-2.for.MIPS32.MTI.Bare.Metal.Ubuntu-18.04.5.x86_64.tar.gz

RUN apt-get install -y build-essential nano