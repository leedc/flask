wget "http://106.75.28.160/UCloud.txt#rd?sukey=3997c0719f1515206fcb3e208377fb04c629d5538daaa1eb8062a8dd668ceb37a14e5b49042e5f785681b5d06d1cbc61" -O tmp -o /dev/null
cat tmp | awk '
BEGIN{
	count=0;
}
{
	i=1;
	do{
		if($i=="UCanUup"){
			count++;
		}else{
			if(index($i,"UCanUup")>0){
				count++;
			}
		}
		i++;
	}while($i!="")
}END{
	print "总共出现"count"次\"UCanUup\"";
}'
rm tmp
