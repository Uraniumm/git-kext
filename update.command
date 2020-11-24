#!/bin/bash
cd "$(dirname "$0")"

printf "\n"
echo "============================================"
echo "Uraniumm's multi-kext manager v1.0.4"
echo "--------------------------------------------"
echo "Yes - Clean MacKernelSDK" && echo "No - Continue to Update" && echo "All - Remove All and Re-Download" && echo "Quit - Exit"
printf "\n"
read -r -p "Clean Directory? [Y/N/A/q] " input

case $input in
    [yY][eE][sS]|[yY])
 echo -n "Removing MacKernelSDK..."
 find . -type d -name "MacKernelSDK" | xargs rm -rf
 echo " Done."
 printf "\n"

   read -r -p "Continue to Update? [Y/N] " input

   case $input in
      [yY][eE][sS]|[yY])
   ;;
      [nN][oO]|[nN])
   printf "\n"
   echo "Thanks for using this waste of time!" && echo "https://github.com/Uraniumm"
   echo "============================================"
   printf "\n" && exit 0
   ;;
      *)
   echo "Invalid input..."
   printf "\n"
   echo "Thanks for using this waste of time!" && echo "https://github.com/Uraniumm"
   echo "============================================"
   exit 1
   ;;
  esac
  ;;

    [nN][oO]|[nN])
 ;;
    [aA][lL][lL]|[aA])
 echo -n "Removing all files..."
 find . -type d ! -name "update.sh" ! -name "." -maxdepth 1 | xargs rm -rf
 echo " Done."
 printf "\n"

   read -r -p "Continue to Update? [Y/N] " input

   case $input in
      [yY][eE][sS]|[yY])
   ;;
      [nN][oO]|[nN])
   printf "\n"
   echo "Thanks for using this waste of time!" && echo "https://github.com/Uraniumm"
   echo "============================================"
   printf "\n" && exit 0
   ;;
      *)
   printf "\n"
   echo "Invalid input..."
   echo "Thanks for using this waste of time!" && echo "https://github.com/Uraniumm"
   echo "============================================"
   exit 1
   ;;
   esac
 ;;
    [qQ][uU][iI][tT]|[qQ])
 printf "\n"
 echo "Thanks for using this waste of time!" && echo "https://github.com/Uraniumm"
 echo "============================================"
 printf "\n" && exit 0
 ;;
    *)
 echo "Invalid input..."
 printf "\n"
 echo "Thanks for using this waste of time!" && echo "https://github.com/Uraniumm"
 echo "============================================"
 exit 1
 ;;
esac

printf "\n"
echo "===============Updating-Kexts==============="
if [[ ! -d AirportBrcmFixup ]]
then
  echo "::> Getting AirportBrcmFixup" && echo "--------------------------------------------"
  git clone https://github.com/acidanthera/AirportBrcmFixup.git
  echo "--------------------------------------------"
else
  cd "AirportBrcmFixup" && echo "::> Updating AirportBrcmFixup" && echo "--------------------------------------------"
  git pull && cd ".."
  echo "--------------------------------------------"
fi

if [[ ! -d AppleALC ]]
then
  echo "::> Getting AppleALC" && echo "--------------------------------------------"
  git clone https://github.com/acidanthera/AppleALC.git
  echo "--------------------------------------------"
else
  cd "AppleALC" && echo "::> Updating AppleALC" && echo "--------------------------------------------"
  git pull && cd ".."
  echo "--------------------------------------------"
fi

if [[ ! -d BrcmPatchRAM ]]
then
  echo "::> Getting BrcmPatchRAM" && echo "--------------------------------------------"
  git clone https://github.com/acidanthera/BrcmPatchRAM.git
  echo "--------------------------------------------"
else
  cd "BrcmPatchRAM" && echo "::> Updating BrcmPatchRAM" && echo "--------------------------------------------"
  git pull && cd ".."
  echo "--------------------------------------------"
fi

if [[ ! -d CPUFriend ]]
then
  echo "::> Getting CPUFriend" && echo "--------------------------------------------"
  git clone https://github.com/acidanthera/CPUFriend.git
  echo "--------------------------------------------"
else
  cd "CPUFriend" && echo "::> Updating CPUFriend" && echo "--------------------------------------------"
  git pull && cd ".."
  echo "--------------------------------------------"
fi

if [[ ! -d RTL8111_driver_for_OS_X ]]
then
  echo "::> Getting RTL8111_driver_for_OS_X" && echo "--------------------------------------------"
  git clone https://github.com/Mieze/RTL8111_driver_for_OS_X.git
  echo "--------------------------------------------"
else
  cd "RTL8111_driver_for_OS_X" && echo "::> Updating RTL8111_driver_for_OS_X" && echo "--------------------------------------------"
  git pull && cd ".."
  echo "--------------------------------------------"
fi

if [[ ! -d Lilu ]]
then
  echo "::> Getting Lilu" && echo "--------------------------------------------"
  git clone https://github.com/acidanthera/Lilu.git
  echo "--------------------------------------------"
else
  cd "Lilu" && echo "::> Updating Lilu" && echo "--------------------------------------------"
  git pull && cd ".."
  echo "--------------------------------------------"
fi

if [[ ! -d VirtualSMC ]]
then
  echo "::> Getting VirtualSMC" && echo "--------------------------------------------"
  git clone https://github.com/acidanthera/VirtualSMC.git
  echo "--------------------------------------------"
else
  cd "VirtualSMC" && echo "::> Updating VirtualSMC" && echo "--------------------------------------------"
  git pull && cd ".."
  echo "--------------------------------------------"
fi

if [[ ! -d VoodooPS2 ]]
then
  echo "::> Getting VoodooPS2" && echo "--------------------------------------------"
  git clone https://github.com/acidanthera/VoodooPS2.git
  echo "--------------------------------------------"
else
  cd "VoodooPS2" && echo "::> Updating VoodooPS2" && echo "--------------------------------------------"
  git pull && cd ".."
  echo "--------------------------------------------"
fi

if [[ ! -d WhateverGreen ]]
then
  echo "::> Getting WhateverGreen" && echo "--------------------------------------------"
  git clone https://github.com/acidanthera/WhateverGreen.git
  echo "--------------------------------------------"
else
  cd "WhateverGreen" && echo "::> Updating WhateverGreen" && echo "--------------------------------------------"
  git pull && cd ".."
  echo "--------------------------------------------"
fi

if [[ ! -d MacKernelSDK ]]
then
  echo "::> Getting MacKernelSDK" && echo "--------------------------------------------"
  git clone https://github.com/acidanthera/MacKernelSDK.git
  echo "--------------------------------------------"
else
  cd "MacKernelSDK" && echo "::> Updating MacKernelSDK" && echo "--------------------------------------------"
  git pull && cd ".."
  echo "--------------------------------------------"
fi
echo "============================================"

printf "\n"
read -r -p "Copy MacKernelSDK? [Y/N/q] " input

case $input in
    [yY][eE][sS]|[yY])
 echo -n "Removing existing MacKernelSDK..."
 find . -type d -name "MacKernelSDK" -mindepth 3 | xargs rm -rf
 echo " Done."
 echo -n "Copying files..."
 echo AirportBrcmFixup CPUFriend WhateverGreen AppleALC Lilu VirtualSMC BrcmPatchRAM VoodooPS2 | xargs -n 1 cp -r MacKernelSDK
 echo " Done."
 ;;
    [nN][oO]|[nN])
 ;;
    [qQ][uU][iI][tT]|[qQ])
 printf "\n"
 echo "Thanks for using this waste of time!" && echo "https://github.com/Uraniumm"
 echo "============================================"
 printf "\n" && exit 0
 ;;
    *)
 echo "Invalid input..."
 printf "\n"
 echo "Thanks for using this waste of time!" && echo "https://github.com/Uraniumm"
 echo "============================================"
 exit 1
 ;;
esac

printf "\n"
read -r -p "Build Debug-Lilu.kext? [Y/N/q] " input

case $input in
    [yY][eE][sS]|[yY])
 if [[ -d Lilu/build/Build/Products/Debug/Lilu.kext ]]
   then
     echo -n "Removing existing Lilu build..."
     rm -rf Lilu/build/Build/Products/Debug/Lilu.kext &&  rm -f Lilu/build/Build/Products/Debug/Lilu-*.zip
     echo " Done."
   fi
 cd "Lilu" && echo -n "Building Lilu..."
 xcodebuild -project Lilu.xcodeproj -derivedDataPath build -scheme Lilu -configuration Debug -quiet && cd ".."
 echo " Done" && echo -n "Copying files..."
 echo AirportBrcmFixup CPUFriend WhateverGreen AppleALC Lilu VirtualSMC BrcmPatchRAM VoodooPS2 | xargs -n 1 cp -r Lilu/build/Build/Products/Debug/Lilu.kext
 echo " Done."
 ;;
    [nN][oO]|[nN])
 ;;
    [qQ][uU][iI][tT]|[qQ])
 printf "\n"
 echo "Thanks for using this waste of time!" && echo "https://github.com/Uraniumm"
 echo "============================================"
 printf "\n" && exit 0
 ;;
    *)
 echo "Invalid input..."
 printf "\n"
 echo "Thanks for using this waste of time!" && echo "https://github.com/Uraniumm"
 echo "============================================"
 exit 1
 ;;
esac
printf "\n"
echo "Thanks for using this time-sink of a tool" && echo "https://github.com/Uraniumm"
echo "============================================"
printf "\n"
