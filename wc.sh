#!/bin/bash
pdftotext Main.pdf -enc UTF-8 - | wc --chars && (printf "%s" $(bc <<< $(echo -n "scale=4; " && printf "%s" $(pdftotext Main.pdf -enc UTF-8 - | wc --chars) && echo -n "/24000*100"))) && echo "%"
