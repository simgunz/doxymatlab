#/bin/bash
sed -i 's/perl.exe/perl/g' m2cpp.pl  # Remove .exe extension
sed -i 's/\r//g' m2cpp.pl            # Remove windows carriage return from perl scripts
