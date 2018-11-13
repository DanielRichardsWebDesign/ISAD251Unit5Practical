<?php
/**
 * Created by PhpStorm.
 * User: s1atkinson
 * Date: 10/11/2016
 * Time: 16:11
 */


ini_set('display_errors', 1);

if(isset($_POST['table']))
{
    $tablename = $_POST['table'];
}
    
if(isset($_POST['insert']))
{
    $values = array();
    $tablename = $_POST['tablename'];

    foreach($_POST as $key => $value)
    {
        if(!empty($value) && ($value != "Submit") && ($key != "insert") && ($key != "table") && ($key != "tablename"))
        {
            $values[$key] = $value;
        }
    }
    $count = insert($values, $tablename);
}

?>
<html>
<head>
    <title>PHP Demo : Read</title>
</head>
<body>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
    <h1>Select Table</h1>

    <select name="table" id="ddTable">
        <option value="books">Books</option>
        <option value="Customers">Customers</option>
        <option value="Orders">Orders</option>
        <option value="Order_Lines">Order Lines</option>
    </select>

    <input type="submit" value="Submit">



<p>
   <?php

   $results = getAll($tablename);
   if ($results)
   {
       //Hopefully if the results have been the right PDO type we should be able
       //to extract the column names with ease.
       $columns = empty($results) ? array() : array_keys($results[0]);
       $idColumn = $columns[0];

       $tableString = '<table border="1"><tr>';
       $inputString = '';
       $insertString = '';

       foreach($columns as $column)
       {
           $tableString .= '<th>'.$column.'</th>';
           $inputString .= '<th>'.$column.'</th>';
           $insertString .= '<td><input type=\'text\' name=\''.$column.'\'/></td>';

       }
       $tableString .= '<th>Edit</th><th>Delete</th></tr>';

       echo $tableString;

       foreach($results as $row)
       {
           echo '<tr>';

           foreach($row as $cell)
           {
               echo '<td>'.$cell.'</td>';
           }

           echo '<td><a href=edit.php?tablename='.$tablename.'&id='.$row[$idColumn].'&idColumn='.$idColumn.'>edit</a></td><td><a href=delete.php?tablename='.$tablename.'&id='.$row[$idColumn].'&idColumn='.$idColumn.'>delete</a></td></tr>';
       }

       echo '<tr>'.$inputString.'<th colspan=2>New</th></tr><tr>'.$insertString.'<td colspan=2><input type=\'Submit\' name=\'insert\' value=\'Insert\'></td></tr>';

       echo '</table>';
       echo '<input type=\'hidden\' name=\'tablename\' value=\''.$tablename.'\'>';
   }
?>
</p>
</form>
    </body>
    </html>
