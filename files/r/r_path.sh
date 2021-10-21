if [ -n $R_LIBS ]; then
   export R_LIBS=/usr/local/lib/R/:$R_LIBS
else
   export R_LIBS=/usr/local/lib/R/
fi