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
<div class="row">
<div class="col-3">
<!-- LEFT PANE --!>

</div>
<div class="col bg-light">
<!-- RIGHT PANE --!>
<div class="row justify-content-around">

<video-js id="vid1" width="360" loop  style="border:1px solid navy;" controls preload="metadata" data-setup='{}'>
<source src="/color/assets/vid1.mp4" type="video/mp4">
</video-js>
<script>videojs('vid1', {
playbackRates: [0.5, 1, 1.5, 2],userActions:{doubleClick:true},loop:true
});
</script>
</div>


</div>
</div>
</div>
</body>
