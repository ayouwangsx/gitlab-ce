#!/bin/bash

SEARCH_PAGES='16'

if [ -f ./version_list ]; then
    rm version_list
fi

for i in $(seq 1 ${SEARCH_PAGES}); do
    curl -s "https://packages.gitlab.com/app/gitlab/gitlab-ce/search?dist=&filter=debs&page=${i}&q=" | grep "_arm64.deb" | grep -v '\-rc' | sed 's/.*>\(.*\)<.*/\1/' | sort -u | sed 's/gitlab-ce_\(.*\)_arm64.deb/\1/' >> version_list;
done
sort -Vu version_list -o version_list

echo "Latest versions:"
cat version_list
