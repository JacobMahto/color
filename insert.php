<?php
include("functions/db.php");
$txt="SELECT * FROM std;";
$rsl=query($txt);
// while($r=fetch_array($rsl)){
//   echo $r["std_name"];
//   echo "<br>";
// }
if(isset($_POST['click'])){
  $std=$_POST['std'];
  $sub=$_POST['sub'];
  $path=$_POST['path'];
  $head=$_POST['head'];
  $topic=$_POST['topic'];
  $type=$_POST['type'];
  $txt="INSERT INTO files(std,sub,head,topic,type,path) VALUES($std,'$sub',$head,'$topic','$type','$path');";
echo $txt;
  query($txt);
}
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
<form method="post" action="insert.php">
  <input type="number" placeholder="Enter Class" name="std">
<input type="text" placeholder="Enter Subject" name="sub">
<input type="number" placeholder="Enter Head" name="head">
<input type="text" placeholder="Enter Topic" name="topic">
<input type="text" placeholder="Enter video" name="type">
<input type="text" placeholder="Enter path" name="path">
<button type="submit" name="click">Hello</button>
</form>

  </body>
</html>
