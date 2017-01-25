#!/bin/bash

cd shopfront

mvn clean install

if docker build -t prasantk/djshopfront . ; then
  docker push prasantk/djshopfront
fi
cd ..

cd productcatalogue
mvn clean install
if docker build -t prasantk/djproductcatalogue . ; then
  docker push prasantk/djproductcatalogue
fi
cd ..

cd stockmanager
mvn clean install
if docker build -t prasantk/djstockmanager . ; then
  docker push prasantk/djstockmanager
fi
cd ..
