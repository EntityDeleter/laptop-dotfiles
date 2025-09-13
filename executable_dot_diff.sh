#!/bin/bash

sort -o /home/sudar/.packages/packages.txt /home/sudar/.packages/packages.txt
sort -o /home/sudar/.packages/pkglist.txt /home/sudar/.packages/pkglist.txt
pacman -Qqe > /etc/pkglist.txt
cat /home/sudar/.packages/packages.txt | awk -F "\t" '{print $1}' > /home/sudar/.packages/pkglist.txt
diff -rs <(sort /etc/pkglist.txt) <(sort /home/sudar/.packages/pkglist.txt) | grep -i "<" | awk -F " " '{print $2}' >> /home/sudar/.packages/packages.txt
sort -o /home/sudar/.packages/packages.txt /home/sudar/.packages/packages.txt
sort -o /home/sudar/.packages/pkglist.txt /home/sudar/.packages/pkglist.txt
