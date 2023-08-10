<?php
require 'D:\ospanel\vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\IOFactory;

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Upload";

$connection = new mysqli($servername, $username, $password, $dbname);

if ($connection->connect_error) {
    die("Ошибка подключения к базе данных: " . $connection->connect_error);
}

$file_path = 'D:\ospanel\domains\Upload\Data.xlsx';

$spreadsheet = IOFactory::load($file_path);
$worksheet = $spreadsheet->getActiveSheet();

$data = [];
foreach ($worksheet->getRowIterator(2) as $row) {
    $rowData = [];
    $cellIterator = $row->getCellIterator();
    foreach ($cellIterator as $cell) {
        $rowData[] = $cell->getValue();
    }
    $data[] = $rowData;
}

function validateTag($tag) {
    $validTags = [1, 2, 3, 4, 'Пять'];
    return in_array($tag, $validTags);
}

$filteredData = array_filter($data, function ($row) {
    return validateTag($row[1]);
});



foreach ($filteredData as $row) {
    $iin = $row[0];
    $tag = $row[1];
    $sql = "INSERT INTO Data (IIn, Tag) VALUES ('$iin', '$tag')";
    if ($connection->query($sql) !== true) {
        echo "Ошибка при выполнении запроса: " . $sql . "<br>" . $conn->error;
    }
}
$connection->close();

echo "Данные успешно загружены и сохранены в таблицу.";

?>