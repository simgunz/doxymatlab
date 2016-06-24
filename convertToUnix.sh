#/bin/bash
sed -i 's/perl.exe/perl/g' *.pl  # Remove .exe extension
sed -i 's/\r//g' *.pl            # Remove windows carriage return from perl scripts
