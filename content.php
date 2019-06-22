<?php
include("includes/header.php");
include("includes/nav.php");
include("functions/db.php");
//get class list
if(isset($_GET['std_code']) && isset($_GET['sub_code'])){
	$std_code=$_GET['std_code'];
	$sub_code=$_GET['sub_code'];
	//Getting Side Pane items
	$query="SELECT heads.head,topic,path FROM files,heads WHERE sub_code=$std_code AND sub_code=$sub_code AND heads.sn=files.head GROUP BY topic;";	
	$rsl1=query($query);
	$now='';
	$prev='';
	for($now='';$now!="BREAK";$now){
		$while($r=fetch_array($rsl1)){
		$now=$r['heads'];
	}}

}
else{
	die("USEFUL PARAMETERS NOT SPECIFIED");
}
?>
<body>
<div class=" container">
<div class="row">
<div class="col-3">
<!-- LEFT PANE --!>

</div>
<div class="col bg-light">
<!-- RIGHT PANE --!>
<div class="row justify-content-around">
<!--IDEAL FORMAT IF DATA INTIALISATION HAS TO BE DONE FROM OUTER TAGS (AT THE END OF THE PAGE)
<video-js id="kvid1" width="450" style="border:0.2px solid blue;" loop  controls preload="metadata" data-setup='{}'>
<source src="/color/assets/vid1.mp4" type="video/mp4">
</video-js>
--!>
<!-- IDEAL SETTING IF DATA INTIALISATION HAS TO BE DONE INSIDE THE VIDEO....IDEAL FOR PHP-->
<video-js id="vid2" width="450" style="border:0.2px solid blue;"  loop controls preload="metadata" data-setup='{"playbackRates":[0.5,1,1.5,2],"plugins":{"abLoopPlugin":{"start":50,"end":55,"enabled":false,"loopIfBeforeStart":false,"loopIfAfterEnd":true,"pauseAfterLooping":false,"pauseBeforeLooping":false,"createButtons":true}},"userActions":{"doubleClick":true},"loop":true}'>
<source src="/color/assets/vid1.mp4" type="video/mp4">
</video-js>
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
