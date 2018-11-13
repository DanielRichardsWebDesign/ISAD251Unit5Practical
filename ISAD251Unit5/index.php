<!DOCTYPE html>
<?php
    require_once 'functions.php';
    if(isset($_POST['table']))
    {
        $tableName = $_POST['table'];
    }
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <select name="table" id="ddTable">
            <option value="Customers">Customers</option>
            <option value="Orders">Orders</option>
            <option value="Order-Lines">Order Lines</option>
        </select>
        
        <h1>CREATE</h1>
        <p>
            
        </p>
        
        <h1>READ</h1>
        <p>
            <?php
                if(isset($tableName))
                {
                    $results = getAll($tablename);
                    if($results)
                    {
                        foreach($results as $row)
                        {
                            
                        }
                    }
                }
            ?>
        </p>
        <h1>UPDATE</h1>
        
        <h1>DELETE</h1>
        
    </body>
</html>
