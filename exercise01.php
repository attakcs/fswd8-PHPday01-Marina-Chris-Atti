<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="exercise01.css">
</head>
<body>

 <?php /* 
EXERCISE 01

 	$name = "Marina";
	echo "<h1>Hello $name!</h1>"

EXERCISE02 

	$d=date("D");

	if($d == "Mon")
		echo "Today is Monday, first day of PHP :)";
	else 
		echo "Have a nice day!";

EXERCISE03

	$d=date("M");
	echo "$d <br>";

	if ($d == "Oct")
		echo "It's October.";
	elseif ($d == "Nov")
		echo "It's November.";
	else
		echo "Nobody knows.";

EXERCISE04
	
	FOR LOOP 

$name="";

	for($i=0; $i<50; $i++)
	{
	$name .="$i Your name: Marina<br>";}
		
		echo $name;

	WHILE LOOP

$i=0;
$name="";
	while($i<50) 
	{
	$i++;
	$name.="Chris is a Pokemon.<br>";}

		echo $name;

	DO WHILE LOOP


$i = 0;
$name = "";
	do {
		$i++;
		$name.="$i Brasilians speak portugiese.<br>";
		} while($i < 26);
		echo $name;

EXERCISE05

FOR EACH LOOP

$names = array("Chris","Marina","Pokemon","DreamTeam");

foreach($names as $value) {
	echo "Your name is: $value <br>";
}

EXERCISE05*/
$cartoon = array(
"Naruto" => array("profession" => "ninja","hokage"),
"Mickey" => array("Mouse","Runner"));

$game = array(
"CallOfDuty" => array("Price" => 50, "Amount" => 16),
"RedAlert" => array("Price" => 39, "Amount" => 8));

echo "Price of Call of Duty: ";
echo $game['CallOfDuty']['Price'] . "<br>";
echo "Naruto's profession: ".$cartoon["Naruto"]["profession"];


	 ?> 
	
	
</body>
</html>