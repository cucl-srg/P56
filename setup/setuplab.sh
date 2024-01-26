if [ -z $1 ]; then
        echo crsid argument is empty
        exit 1
fi
export CRSID=$1
if [ -d /home/l51/ ]; then
  if [ ! -d /home/l51/$CRSID ]; then
    echo creating crsid direcory in l51 home directory
    mkdir /home/l51/$CRSID/
  fi
  if [ ! -d /home/l51/$CRSID ]; then
    echo something went wrong - cant create directory?
    exit 1
  fi
  cd /home/l51/$CRSID/
  mkdir P56
  cd /home/l51/$CRSID/P56
  echo "now get the zip file from www.cl.cam.ac.uk/teaching/current/P56/ucamonly/book-user-code.zip, and unpacking it in "
  pwd
  wget www.cl.cam.ac.uk/teaching/current/P56/ucamonly/book-user-code.zip
  unzip book-user-code.zip
  echo 
  echo " Once unpacked, then build the code using the compile_all_user.sh script"
  echo
  echo " An incomplete prototype Makefile is also available, copy it from the setup directory if you feel adventerous "
  exit 0
else
  echo are you on the right machine - no /home/l51 directory found
  exit 1
fi
