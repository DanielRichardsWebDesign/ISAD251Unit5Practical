<?php

const DB_HOST = 'xserve.uopnet.plymouth.ac.uk';
const DB_USER = 'ISAD251_User';
const DB_PASSWORD = 'ISAD251_Password';
const DB_DATABASE = 'ISAD251_DB';


function getConnection()
{
    $conn = new PDO('mysql:host='.DB_HOST.';dbname='.DB_DATABASE, DB_USER, DB_PASSWORD);
    return $conn;
}

function getAll($tablename)
{
    $resultSet = getConnection()->query("SELECT * FROM ".$tablename);
    return $resultSet;
}

function insert($tablename, $parameters)
{
    
}

function edit($object)
{
    
}
function delete($id)
{
    
}




