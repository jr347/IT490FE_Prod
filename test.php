#!/usr/bin/php
<?php
$deploy = new mysqli('localhost', 'root', 'godemper', 'deploy');

$package = "Select Max(ver) from fe";
$response = $deploy->query($package);
$count = $response->num_rows;
echo $count;
echo "test";
if($count >= 0){
	$result = $response->fetch_array(MYSQLI_ASSOC);
	echo $result['Max(ver)'];
}
else{
	$result = $res->fetch();
	echo $result;
}

?>
