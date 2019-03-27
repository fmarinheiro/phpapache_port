#!/bin/bash

cp /etc/apache2/sites-available/000-default.conf / && \
cat /000-default.conf | sed  's/80/'$PORT'/g' > /etc/apache2/sites-available/000-default.conf && \
rm /000-default.conf && \
cp /etc/apache2/ports.conf / && \
cat /ports.conf | sed  's/80/'$PORT'/g' > /etc/apache2/ports.conf && \
rm /ports.conf

apache2-foreground