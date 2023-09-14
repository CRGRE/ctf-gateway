#!/usr/bin/env bash

cat > /etc/sysctl.d/42-elk.conf <<EOF
vm.max_map_count=262144
EOF
sysctl --system
sysctl vm.max_map_count