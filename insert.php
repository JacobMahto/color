<?php
include("includes/header.php");
include("includes/nav.php");
include("functions/db.php");
$txt="SELECT * FROM std;";
$rsl=query($txt);
// while($r=fetch_array($rsl)){
//   echo $r["std_name"];
//   echo "<br>";
// }
if(isset($_POST['click'])){
//Null allowed for following fields :"head (integer)" , "topic (text)" , "start_vid(text)" ,"end_vid(text)"  	
$std=$_POST['std'];
$sub=$_POST['sub'];
$path=$_POST['path'];
$head=$_POST['head'];
$topic=$_POST['topic'];
$type=$_POST['type'];
$start_vid=$_POST['start_vid'];
$stop_vid=$_POST['stop_vid'];
//checking for null
$head=($head==''?'NULL':$head);
$topic=($topic==''?'NULL':"'".$topic."'");
$start_vid=($start_vid==''?'NULL':"'".$start_vid."'");
$stop_vid=($stop_vid==''?'NULL':"'".$stop_vid."'");

//Mysql query Command
$txt="INSERT INTO files(std_code,sub_code,head,topic,type,path,start_vid,stop_vid) VALUES($std,'$sub',$head,$topic,'$type','$path',$start_vid,$stop_vid);";
echo $txt;
$rsl=query($txt);
confirm($rsl);
$txt=<<<DELIMITER
<h2 class="text-center"><a href="insert.php" style="color:red;">Add More Record</a></h2>
DELIMITER;
echo $txt;
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<h3 class="display-4 bg-light text-primary text-center">Manual Asset Entry</h3>
		<form class="form col-8 mx-auto" method="post" action="insert.php">
			<input class="my-1 form-control" type="number" placeholder="Enter Class Code" name="std">
			<input class="my-1 form-control" type="text" placeholder="Enter Subject Code" name="sub">
			<input class="my-1 form-control" type="number" placeholder="Enter Head (Can be blank)" name="head">
			<input class="my-1 form-control" type="text" placeholder="Enter Topic (Can be blank)" name="topic">
			<input class="my-1 form-control" type="text" placeholder="Enter Asset Type (like video , audio , pdf ,etc.)" name="type">
			<input class="my-1 form-control" type="text" placeholder="Enter path (like /assets/202/start.mp4)" name="path">
			<input class="my-1 form-control" type="text" placeholder="Start(mmss) (Can be blank)" name="start_vid">
			<input class="my-1 form-control" type="text" placeholder="Stop(mmss) (Can be blank)" name="stop_vid">
			<button class="btn btn-outline-success w-100 "  type="submit" name="click">Add To Database</button>
		</form>

	</body>
</html>
