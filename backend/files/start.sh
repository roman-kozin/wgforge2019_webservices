#!/usr/bin/env bash

cat << EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>Example</title>
<style media="screen">
    body {
        background-color: $BACKGROUND_COLOR;
        text-align: center;
        margin-top: 100px;
    }

    h1 {
        color: $TEXT_COLOR;
    }

    .hostname {
        position: absolute;
	    bottom: 5px;
	    right: 20px;
    }
</style>
</head>
<body>
    <h1>Hello WG Forge2019!</h1>
    <div class="hostname">Backend: $HOSTNAME</div>
</body>
</html>
EOF

nginx -g "daemon off;"
