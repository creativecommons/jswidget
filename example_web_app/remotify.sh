#!/bin/bash
for y in `ls *`; do
   yX=`echo $y|awk -F . '{print$NF}'`
   yX_want='html'
   if [ "$yX" = "$yX_want" ]; then
      sed "s/..\/complete.js/http:\/\/api.creativecommons.org\/jswidget\/trunk\/complete.js/" $y > temp; mv temp $y;
   fi
done
