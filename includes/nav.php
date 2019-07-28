<?php
$compensation= "/color";
?>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark mb3" style="border-bottom:2px solid blue;">
<div class="container">
  <a href="<?php echo $compensation;?>/class_sel.php" class="navbar-brand"><b>COLOR - SCHOOL TERMINAL</b></a>
  <button class="navbar-toggler" data-toggle="collapse" data-target="#menu"><span class="navbar-toggler-icon"></span></button>
  <div class="navbar-collapse collapse" id="menu">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
      <a href="<?php echo $compensation;?>/class_sel.php" class="nav-link">Home</a>
      </li>
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Math
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="/journal">Research</a>
        <a class="dropdown-item" href="#">Resources</a>
      </div>
    </li>

      <li class="nav-item">
        <a href="#" class="nav-link">Music</a>
      </li>
      <li class="nav-item">
        <a href="#" class="nav-link">Technology</a>
      </li>
	  <li class="nav-item">
        <a href="#" class="nav-link">About</a>
      </li>
    </ul>
  </div>
</div>
</nav>
