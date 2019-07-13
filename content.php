<?php
include("includes/header.php");
include("includes/nav.php");
include("functions/db.php");
$compensanate="/color";
//get class list
if(isset($_GET['std_code']) && isset($_GET['sub_code'])){
	$std_code=$_GET['std_code'];
	$sub_code=$_GET['sub_code'];
	//Getting Side Pane items
	$query="SELECT DISTINCT files.head,heads.head FROM heads,files WHERE heads.sn=files.head AND std_code=$std_code AND sub_code=$sub_code;";	
	$rsl1=query($query);
	$html="";
	while($r1=fetch_array($rsl1)){
		$head_code=$r1[0];
		$head_name=$r1[1];
		$html.=<<<DELIMITER
<div class="row justify-content-center bg-danger text-light">$head_name</div>
DELIMITER;
		$query="SELECT DISTINCT topic FROM heads,files WHERE files.head=$head_code AND std_code=$std_code AND sub_code=$sub_code;";
		$rsl2=query($query);
		while($r2=fetch_array($rsl2)){
			$html.=<<<DELIMITER
<a href="$compensanate/content.php?std_code=$std_code&sub_code=$sub_code&head_code=$head_code&topic=$r2[0]" class="row">$r2[0]</a>
DELIMITER;
		}
	}


}
else{
	die("USEFUL PARAMETERS NOT SPECIFIED");
}
?>
<body>
<div class=" container-fluid">
<div class="row">
<div class="col-3 bg-light">
<!-- LEFT PANE --!>
<?php
echo $html;
?>
</div>
<div class="col bg-light">
<!-- RIGHT PANE --!>
<div class="row justify-content-around">
<?php
if(isset($_GET['std_code']) && isset($_GET['sub_code']) && isset($_GET['head_code']) && isset($_GET['topic'])){
	$head_code=$_GET['head_code'];
	$sub_code=$_GET['sub_code'];
	$std_code=$_GET['std_code'];
	$topic=$_GET['topic'];
	$query="SELECT path,name FROM files WHERE topic='$topic' AND head=$head_code AND std_code=$std_code AND sub_code=$sub_code;";
	$rsl3=query($query);
	while($r3=fetch_array($rsl3)){
		$name=$r3['name'];
		$html=<<<DELIMITER

<!-- IDEAL SETTING IF DATA INTIALISATION HAS TO BE DONE INSIDE THE VIDEO....IDEAL FOR PHP-->
<div class="mb-3 col-5 ">
<div class="row ">
<video-js id="vid2" width="450" style="border:0.2px solid blue;"  loop controls preload="metadata" data-setup='{"playbackRates":[0.5,1,1.5,2],"plugins":{"abLoopPlugin":{"start":50,"end":55,"enabled":false,"loopIfBeforeStart":false,"loopIfAfterEnd":true,"pauseAfterLooping":false,"pauseBeforeLooping":false,"createButtons":true}},"userActions":{"doubleClick":true},"loop":true}'>
<source src="/color$r3[0]" type="video/mp4">
</video-js>
</div>
<div class="row justify-content-center text-light font-weight-bold bg-success ">
$name
</div>
</div>
DELIMITER;
		echo $html;
	}
}
?>
<!--IDEAL FORMAT IF DATA INTIALISATION HAS TO BE DONE FROM OUTER TAGS (AT THE END OF THE PAGE)
<video-js id="kvid1" width="450" style="border:0.2px solid blue;" loop  controls preload="metadata" data-setup='{}'>
<source src="/color/assets/vid1.mp4" type="video/mp4">
</video-js>
--!>
<!-- IDEAL SETTING IF DATA INTIALISATION HAS TO BE DONE INSIDE THE VIDEO....IDEAL FOR PHP-->
<!--
<div class="col">
<div class="row">
<video-js id="vid2" width="450" style="border:0.2px solid blue;"  loop controls preload="metadata" data-setup='{"playbackRates":[0.5,1,1.5,2],"plugins":{"abLoopPlugin":{"start":50,"end":55,"enabled":false,"loopIfBeforeStart":false,"loopIfAfterEnd":true,"pauseAfterLooping":false,"pauseBeforeLooping":false,"createButtons":true}},"userActions":{"doubleClick":true},"loop":true}'>
<source src="/color/assets/vid1.mp4" type="video/mp4">
</video-js></div>
<div class="row">
Here I am
</div>
</div>
-->
</div>


</div>
</div>
</div>
</body>
<script>
//initialise the video with the plugin and initial settings
//NOT USED. BUT CAN BE USED IF VIDEOJS TAG INTIALISATION HAS TO BE DONE USING "ID" TAG , FROM OUTSIDE.
var video1 = videojs("vid1",{
playbackRates: [0.5, 1, 1.5, 2],userActions:{doubleClick:true},loop:true,
	plugins: {
	abLoopPlugin: {
	start:50    	//in seconds - defaults to 0
		,end:55    	//in seconds. Set to  false to loop to end of video. Defaults to false
		,enabled:false			//defaults to false
		,loopIfBeforeStart:false //allow video to play normally before the loop section? defaults to true
		,loopIfAfterEnd:true	// defaults to true
		,pauseAfterLooping: false     	//if true, after looping video will pause. Defaults to false
		,pauseBeforeLooping: false     	//if true, before looping video will pause. Defaults to false
		,createButtons: true		//defaults to true
}
}
});
video1.currentTime(120);
</script>
