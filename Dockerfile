FROM parity/parity:v2.2.7

WORKDIR /
COPY dev-key.json /home/parity/keys/DevChain/dev-key.json
COPY chain-spec.json /home/parity/chain-spec.json
COPY config.toml /home/parity/config.toml
RUN echo "" > /home/parity/password

ENTRYPOINT [ "/home/parity/bin/parity", "--config", "/home/parity/config.toml" ]

# docker image build --tag keydonix/parity-instant-seal .
# docker container run --rm -it -p 8000:8000 -p 8001:8001 -p 8545:8545 -p 8180:8180 --name parity-instant-seal keydonix/parity-instant-seal
