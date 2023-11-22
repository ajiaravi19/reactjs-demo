#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then 
	./build.sh
        docker login -u ajithselvam -p dckr_pat_zpnY-4BY5Z0suXXM1vWHOi-vNsQ
       
        docker tag myreactimg ajithselvam/dev
        docker push ajithselvam/dev

elif [[ $GIT_BRANCH ==  "origin/main" ]]; then
	./build.sh
        docker login -u ajithselvam -p dckr_pat_zpnY-4BY5Z0suXXM1vWHOi-vNsQ
      
        docker tag myreactimg ajithselvam/prod 
        docker push ajithselvam/dev 
else
	echo " deployment error "
fi
