#/bin/bash
sed -i 's/perl.exe/perl/g' *.pl  # Remove .exe extension
sed -i 's/\r//g' *.pl            # Remove windows carriage return from perl scripts
sed -i 's/m2cpp.bat/.\/m2cpp.pl/g'  Doxyfile
sed -i 's/m2srcm.bat/.\/m2srcm.pl/g'  Doxyfile
chmod +x m2cpp.pl
chmod +x m2srcm.pl
