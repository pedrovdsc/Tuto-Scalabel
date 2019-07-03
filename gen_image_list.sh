for i in *.jpg;
  do name="- {url: 'http://localhost:$1/$i'}";
  echo $name >> $2;
done 
