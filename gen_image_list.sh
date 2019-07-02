for i in *.jpg;
  do name="- {url: 'localhost:$1/$i'}";
  
  echo $name >> $2;
done 
