FROM fengzeroz/ubuntu:latest

RUN sh -c "$(curl -sSL https://get.haskellstack.org/)"
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:hvr/ghc && apt-get update && apt-get install -y ghc-8.10.4
ENV PATH /opt/ghc/bin:$PATH