<?php
include("includes/header.php");
include("includes/nav.php");
include("functions/db.php");

$std='';
if(isset($_GET['std'])){
	$std=$_GET['std'];
	$query_for_individual_sub="SELECT DISTINCT sub,sub_name from sub,files where sub_code=sub AND std=$std;";
	$query_for_shared_sub="SELECT std_code,std_name FROM std WHERE std_code>200;";
	$rsl1=query($query_for_individual_sub);
	$rsl2=query($query_for_shared_sub);
}
else{
	echo "UNABLE TO DETECT STANDARD";
}
?>
<body>
<div class="container">
<div class="row display-3 text-danger text-center">
<?php
$html="";
while($r=fetch_array($rsl1)){
	$html .=<<<DELIMITER
<div class="col-6"><a href="content.php?std_code=$std&sub_code=$r[0]">$r[1]</a></div>
DELIMITER;
}

while($r=fetch_array($rsl2)){
	$html .=<<<DELIMITER
<div class="col-6"><a href="content.php?std_code=$std&sub_code=$r[0]" style="color:green;">$r[1]</a></div>
DELIMITER;
}

echo "$html";
?>
</div>
</div>
</body>
