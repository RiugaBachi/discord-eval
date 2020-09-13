FROM haskell:8.8.4
RUN mkdir /app
COPY . /app
RUN cd /app && cabal update && cabal build
ENTRYPOINT ["cd /app", "cabal run"]
