<?php
$targetFolder = $_SERVER['DOCUMENT_ROOT'].'/watchshop/storage/app/public';
$linkFolder = $_SERVER['DOCUMENT_ROOT'].'/watchshop/public/storage';
symlink($targetFolder,$linkFolder);
echo 'Success';
?>