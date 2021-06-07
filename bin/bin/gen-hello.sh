TEMPLATE=~/projects/hello-template/hello-template
TAR=${1:-.}
[ ! -d $TAR ] && mkdir $TAR
cp ${TEMPLATE}/LICENSE $TAR
cp ${TEMPLATE}/README.md $TAR
cp ${TEMPLATE}/.gitignore $TAR
