svn st | grep '^!' | awk '{print $2}' | xargs svn delete --force
