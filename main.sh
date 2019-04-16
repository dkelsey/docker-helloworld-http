#!/bin/bash

echo '<html><head><title>HTTP Hello World</title></head><body><h1>Hello from '$(hostname)'</h1></body></html' > /www/index.html

PORT=80
if [ "$1" != "" ]; then
    PORT=$1
fi

python -m SimpleHTTPServer ${PORT}
