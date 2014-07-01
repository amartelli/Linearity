if [ ! -d bin/ ]; then
mkdir bin
else
echo "bin/ already exists"
fi

if [ ! -d lib/ ]; then
mkdir lib
else
echo "lib/ already exists"
fi

if [ ! -d obj/ ]; then
mkdir obj
else
echo "obj/ already exists"
fi

if [ -n "${LINEARITY}" ]; then
echo "already set"
else

echo "qui5"
export THISDIR=`pwd`

export LD_LIBRARY_PATH=${THISDIR}/../CommonUtils/lib:${LD_LIBRARY_PATH}
#export DYLD_LIBRARY_PATH=${THISDIR}/../CommonUtils/lib:${DYLD_LIBRARY_PATH}
export PATH=${THISDIR}/../CommonUtils/bin:${PATH}

export LD_LIBRARY_PATH=${THISDIR}/lib:${LD_LIBRARY_PATH}
#export DYLD_LIBRARY_PATH=${THISDIR}/lib:${DYLD_LIBRARY_PATH}
export PATH=${THISDIR}/bin:${PATH}

export COMMONUTILS=${THISDIR}/../CommonUtils/
export COMMONUTILSINCLUDE=${THISDIR}/../CommonUtils/interface
export COMMONUTILSLIB=${THISDIR}/../CommonUtils/lib

export LINEARITY=${THISDIR}/
export LINEARITYINCLUDE=${THISDIR}/interface
export LINEARITYLIB=${THISDIR}/lib
fi
