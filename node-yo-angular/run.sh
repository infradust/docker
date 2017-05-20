#!/bin/bash
docker run -it --rm --name yo-dev -v `pwd`:/app -p 9000:9000 -p 35729:35729 infradust/node-yo-angular:0.1