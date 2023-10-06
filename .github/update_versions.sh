#!/bin/bash

SCRIPT=$(realpath -P $0)
DIRNAME=$(dirname ${SCRIPT})

VERSIONS=($(find -maxdepth 1  -mindepth 1 -type d) $(find -maxdepth 1 -mindepth 1 -type l))
declare -A versions
for folder in ${VERSIONS[*]#./}; do
  if [ -f $folder/footer.js ]; then
    version=$(grep "Version" $folder/footer.js | \
              sed -r "s/.*'Version ([^']+)'.*/\1/" | \
              sed -r "s/\+.*$//" | \
              sed -r "s/([^0-9])$/\10/")
    versions["$version"]="$folder"
  fi
done
fields=()
for version in $(IFS=$'\n'; sed -r 's/$/_/' <<< "${!versions[*]}" | sort -Vr | sed -r 's/_$//'); do
    fields+=( "\"${versions[$version]}\": \"$version\"" )
done

echo "//--- list of versions ---" > version.js
echo "const versions = {" >> version.js
echo -n "    " >> version.js
echo $(IFS=,; echo "${fields[*]}") | sed 's/,/,\n    /g'  >> version.js
echo "}" >> version.js
echo "//--- list of versions ---" >> version.js
cat ${DIRNAME}/version.js.in >> version.js

exit 0
