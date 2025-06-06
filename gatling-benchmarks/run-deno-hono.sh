#!/bin/bash

ulimit -n 65535
sudo sysctl -w net.inet.ip.portrange.first=1025
sudo sysctl -w net.inet.ip.portrange.last=65535
echo 300000 | sudo tee /proc/sys/fs/nr_open
echo 300000 | sudo tee /proc/sys/fs/file-max

./mvnw gatling:test -Dgatling.simulation=DenoHonoSimulation