#!/bin/bash

id_current=$(cat ~/.conky/current/current.txt)
id_new=`~/.conky/scripts/id.sh`
cover=
imgurl=

if [ "$id_new" != "$id_current" ]; then

	cover=`ls ~/.conky/covers | grep $id_new`

	if [ "$cover" == "" ]; then

	    imgurl=`~/.conky/scripts/imgurl.sh $id_new`
	    wget -q -O ~/.conky//covers/$id_new.jpeg $imgurl &> /dev/null
	    # sets last modified date to current time
	    touch ~/.conky//covers/$id_new.jpeg
		# clean up covers folder, keeping only the latest X amount
	    rm -f `ls -t ~/.conky/covers/* | awk 'NR>10'`
	    # rm wget-log #wget-logs are accumulated otherwise
	    # rm `ls -t | awk 'NR>5'`
	    cover=`ls ~/.conky/covers | grep $id_new`
	fi

	if [ "$cover" != "" ]; then
		cp ~/.conky/covers/$cover ~/.conky/current/current.jpeg
	else
		cp ~/.conky/empty.jpg ~/.conky/current/current.jpeg
	fi

	echo $id_new > ~/.conky/current/current.txt
fi
