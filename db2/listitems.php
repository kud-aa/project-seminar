<?php
function arrayLinks($parent) {
  // Your SQL query for retrieving all links with $parent
  $query = query("SELECT * FROM link WHERE parent = ".$parent);

  // For each row, just return another arrayLinks function
  $arrayLinks = array();
  foreach($query as $row) {
    $arrayLinks[] = array(
       'row' => $row,
       'child' => arrayLinks($row['id'])
    );
  }
  return $arrayLinks;
}

$arrayLinks = arrayLinks(0);
?>

