#!/bin/bash

# Bagian 1: Melihat isi file /etc/passwd
echo "Isi dari /etc/passwd:"
cat /etc/passwd
echo ""

# Bagian 2: Filter user yang punya home directory dan ambil nama usernya
echo "Filter user dengan home directory dan nama user:"
grep "/home/" /etc/passwd | awk -F: '{print $1}'
echo ""

echo "Selesai."
