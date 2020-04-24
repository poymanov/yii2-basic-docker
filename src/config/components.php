<?php

use yii\helpers\ArrayHelper;

$params = ArrayHelper::merge(
    require __DIR__ . '/params/params.php',
    require __DIR__ . '/params/params-local.php'
);
$db = ArrayHelper::merge(
    require __DIR__ . '/db/db.php',
    require __DIR__ . '/db/db-local.php'
);
