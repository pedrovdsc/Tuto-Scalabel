for i in *.$1;
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -i "$i" "${name}.jpg";
done 
