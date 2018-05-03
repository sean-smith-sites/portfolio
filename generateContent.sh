#!/bin/bash

cat content.csv | while read a ;
do 

url=$(echo "$a" | awk '{print $1}'); 
description=$(echo "$a" | awk -F ',' '{print $2}' | sed -e 's/"//g');

echo -e "
	<!--$description-->
	<div class=\"w3-third\">
	  	<div class=\"seanCell w3-mobile w3-card w3-display-container\">
	  		<div class=\"card\">
			    <img class=\"cardImg display-middle\" src=$url style=\"cursor:pointer\"  onclick=\"onClick(this)\" class=\"w3-hover-opacity\">
			
				<div class=\"display-bottommiddle descriptionContainer\">
					<span class=\"description\">$description</span>
				</div>
			</div>
		</div>
	  </div>
	  ";

done;
