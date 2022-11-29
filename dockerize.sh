#!/bin/bash

docker build -t santoshdts/bookstore:0.1.0 . -f Doekrfile.multistage --push
