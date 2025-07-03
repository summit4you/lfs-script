#!/bin/bash

cat > /etc/adjtime << "EOF"
0.0 0 0.0
0
LOCAL
EOF

systemctl disable systemd-timesyncd




