<?php
/**
 * Created by PhpStorm.
 * User: s1atkinson
 * Date: 10/11/2016
 * Time: 16:11
 */
const DB_SERVER = 'localhost';
const DB_USER = 'drichards8';
const DB_PASSWORD = 'Allegiance99';
const DB_DATABASE = 'ISAD251_DB';

function getConnection()
{
    $dataSourceName = 'mysql:dbname='.DB_DATABASE.';host='.DB_SERVER;
    $dbConnection = null;
    try
    {
        $dbConnection = new PDO($dataSourceName, DB_USER, DB_PASSWORD);

    }  catch (PDOException $err)
    {
        echo 'Connection failed: ', $err->getMessage();
    }
    return $dbConnection;
}

function getAll($tablename)
{
    $statement = getConnection()->prepare("SELECT * FROM ".$tablename);
    $statement->execute();
    $resultSet = $statement->fetchAll(PDO::FETCH_ASSOC);

    return $resultSet;
}


function insert(array $values, $tablename)
{
    //Extract from the array the column names and the values.
    //The keys in the incoming key value pairs will form the field names.
    $fields = array_keys($values);
    $vals = array_values($values);
    
    
    //Start the SQL statement off.
    $sql = "INSERT INTO ".<enter the appropriate variable here>;
    
    //Output the fields array into a string separated by commas
    $sql .= ' ('.implode(',', $fields).') ';
    
    //for each of the fields, create a placeholder for the incoming values.  
    $arr = array();
    foreach($fields as $f)
    {
        $arr[] = ' ? ';
    }
    $sql .= ' VALUES ('.implode(',', $arr).') ';
    

    try
    {

        $statement = getConnection()->prepare($sql);
        foreach ($vals as $i=>$v)
        {
            $statement->bindValue($i+1,$v);
        }

        $count = $statement->execute();
        
    }catch (PDOException $err)
    {
        echo 'Connection failed: ', $err->getMessage();
    }
    return $count;
}

