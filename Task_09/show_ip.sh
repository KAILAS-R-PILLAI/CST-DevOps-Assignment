#!/bin/bash

Public_IP=$(curl -s ifconfig.me)
echo "Public IP: $Public_IP"