<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="challenge.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
  <h1 class="display-4">Hello, world!</h1>
  <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
  <hr class="my-4">
  <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
  <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
</div>
<ul class="nav">
  <li class="nav-item">
    <a class="nav-link active" href="#">Active</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
  </li>
</ul>
<div class="cards">
	<?php 

	$vehicles = array(
		"trucks" => array(
			"man" => array("model" => "TGS", "picture" => "https://www.hartwigs.com.au/wp-content/uploads/2017/06/HEAD_TGX-2.jpg"), 	
			"scania" => array("model" => "TXS", "picture" => "https://www.hartwigs.com.au/wp-content/uploads/2017/06/D38-front-corner-contour.jpg")),
		"vans" => array(
			"vw" => array("model" => "T1", "picture" => "https://cdn.motor1.com/images/mgl/Vo0Yl/s3/vw-camper-lead.jpg"),
			"mercedes" => array("model" => "AMG", "picture" => "https://cdn.motor1.com/images/mgl/BoB2M/s1/2020-mercedes-amg-gt-black-series-rendering.jpg"))
	);

foreach ($vehicles as $types) {
	foreach ($types as $brands) {
		echo "<div class=\"card\" style=\"width: 18rem;\">
	  	<img src=\"". $brands["picture"]."\" class=\"card-img-top\" alt=\"...\">
	  	<div class=\"card-body\">
	    <h5 class=\"card-title\"></h5>
	    <p class=\"card-text\"></p>
	    <a href=\"#\" class=\"btn btn-primary\">More about ".$brands["model"]."</a>
	  	</div>
		</div>"; 
		}
	}

echo "<div class=\"card\" style=\"width: 18rem;\">
	  	<img src=\"".$vehicles['vans']['vw']['picture']."\" class=\"card-img-top\" alt=\"...\">
	  	<div class=\"card-body\">
	    <h5 class=\"card-title\"></h5>
	    <p class=\"card-text\">model ".$vehicles['vans']['mercedes']['model']."</p>
	    <a href=\"#\" class=\"btn btn-primary\">More about ".$vehicles['trucks']['man']['model']."</a>
	  	</div>
		</div>"; 

	?>
	</div>

	</div>
</body>
</html>