#!/bin/bash

echo '<html><head><title>HTTP Hello World</title></head><body><h1>Hello from '$(hostname)'</h1></body></html' > /www/index.html

PORT=80
if [ "${HELLOWORLD_PORT}" != "" ]; then
    PORT=${HELLOWORLD_PORT}
fi

python -m SimpleHTTPServer ${PORT}
