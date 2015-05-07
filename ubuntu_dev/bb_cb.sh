#! /bin/sh


chmod +x build-target.sh build-xgcc.sh clone-repo.sh set-target.sh xgcc-seabios-make.sh -R
chmod +x coreboot/util/crossgcc/buildgcc
chmod +x seabios/scripts/acpi_extract_preprocess.py seabios/scripts/acpi_extract.py seabios/scripts/buildrom.py seabios/scripts/buildrom.pyc seabios/scripts/buildversion.sh seabios/scripts/checkrom.py seabios/scripts/checkstack.py seabios/scripts/checksum.py seabios/scripts/encodeint.py seabios/scripts/gen-offsets.sh seabios/scripts/kconfig seabios/scripts/layoutrom.py seabios/scripts/layoutrom.pyc seabios/scripts/python23compat.py seabios/scripts/python23compat.pyc seabios/scripts/readserial.py seabios/scripts/test-build.sh seabios/scripts/transdump.py seabios/scripts/vgafixup.py
./build-xgcc.sh
./set-target.sh target/86duino-0.9beta-oss.opt
chmod +x write-crossbar.py
make 

