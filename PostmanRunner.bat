@echo off
newman run --disable-unicode "" -e "" -r htmlextra --reporter-htmlextra-export newman/results/newman-report.html 

