<?php
include("includes/header.php");
include("includes/nav.php");
include("functions/db.php");
//get class list
$query="SELECT * FROM std WHERE std_code<200;";
$rsl=query($query);
?>
<body>
<div class=" container">
<div class="row display-4 text-primary justify-content-center bg-light font-weight-bold" style="border:1px solid navy">
<div class=""><i class="fas fa-cog fa-spin"></i></div>&nbsp;<span class="text-warning">C</span><span class="text-danger">O</span><span class="text-primary">L</span><span class="text-secondary">O</span><span class="text-danger">R</span><br>
</div>
<div class="row">
<?php 
while($r=fetch_array($rsl)){
	$std=$r['std_name'];
$html=<<<DELIMITER
<div class="col-6 mt-3 text-center bg-info rounded-circle" style="">
<span class="text-danger fa-3x fa fa-spinner fa-spin" ></span>
<a href="" class="fa fa-3x" style="color:white;">$std</a>
</div>
DELIMITER;
echo $html;
}
?>
</div>
<hr>
<div class="row ">
<div class="col p-3 bg-warning">
 <a href="" class="row justify-content-center " ><span class="fa fa-child text-danger" style="font-size:80px;"></span></a>
<h3 class="row justify-content-center" >RHYMES </h3>
</div>
<div class="col p-3 bg-success">
<a href="" class="row justify-content-center " ><span class="fa fa-book text-light" style="font-size:80px;"></span></a>
<h3 class="row justify-content-center">STORIES</h3>
</div>
</div>
<hr class="bg-primary">
<div class="row bg-light text-secondary">
<div class="col text-center"><span><span class="font-weight-bold">Minor Project for Dept. Of Electronics & Telecommunication , JECRC Foundation</span><br><span class="text-primary">Jacob V. Mahto</span> <br><span class="text-success"> Er. Mahesh Kumawat </span></span></div>
</div>
</div>

</div>
</body>
