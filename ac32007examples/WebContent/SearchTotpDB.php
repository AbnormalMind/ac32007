<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
<title>Totp database search</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  <link rel="stylesheet" href="http://yui.yahooapis.com/2.7.0/build/reset-fonts-grids/reset-fonts-grids.css" type="text/css"> 

<link rel="stylesheet" href="css/PHPDemos.css" type="text/css">
</head>

<body>
<div id="doc" class="yui-t1"> 
	   <div id="hd" ><h1>Search results from the Top of the Pops database</h1>
	   </div> 
	   <div id="bd" > 
	    <div id="yui-main"> 
	    <div class="yui-b"><div class="yui-g"> 


<p class="whitetext">Your Seach term is:<br>
<?php
echo $_POST['SearchTerm'];
?>
</p>
<?php
// Connecting, selecting database
$link = mysql_connect('arlia.computing.dundee.ac.uk', 'totpdbuser', 'totpdbpassword')
   or die('Could not connect: ' . mysql_error());

mysql_select_db('totpdb') or die('Could not select database');

// Performing SQL query
$query = 'SELECT track_name, artist_name FROM episode_slots where artist_name like \'%'.$_POST['SearchTerm'].'%\'';
?>
<p class="whitetext">Query is :
<?php
echo $query;
?>
</p>
<hr>
<?php
$result = mysql_query($query) or die('Query failed: ' . mysql_error());


echo "<table>\n";
echo "<Tr><th  class=\"whitetext\">Track Name</th><Th class=\"whitetext\">Artist</th></tr>";
while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
   echo "\t<tr >\n";
   foreach ($line as $col_value) {
       echo "\t\t<td class=\"whitetext\">$col_value</td>\n";}
   echo "\t</tr>\n";}
echo "</table>\n";

// Free resultset
mysql_free_result($result);

// Closing connection
mysql_close($link);


?>
</div> 
	</div> 
	    </div> 
	    <div class="yui-b">
	    
	    <p class="whitetext">
	    The Search results on the right
	    </p>
	    </div> 
	     
	    </div> 
	   <div id="ft" ></div> 
	     <p>
    <a href="http://validator.w3.org/check?uri=referer"><img
        src="http://www.w3.org/Icons/valid-html401-blue"
        alt="Valid HTML 4.01 Transitional" height="31" width="88"></a>
  </p>

	</div> 
</body>
</html>
