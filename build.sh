# Build script for Galaxy Tab P1000L/N
# Created by Ronan aka Ronis_BR
# Adapted from Overcome build scripts written
# by Frank aka AlterBridge86

# For some reason, the Kernel doesn't boot if
# there is a .git directory with commits by the
# time it was built.
# So it moves .git to .gitold, builds the kernel
# and then move it back to .git.
if [ -d ".git" ];
then
	mv .git .gitold
fi

cd drivers/misc/samsung_modemctl
make
cd ../../..

make

if [ -d ".gitold" ];
then
	mv .gitold .git
fi