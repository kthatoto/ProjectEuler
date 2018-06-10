<?php
$sum = 0;
$n = 1000;
for ($i = 1; $i < $n; $i++) if ($i % 3 == 0 || $i % 5 == 0) $sum += $i;
echo $sum;
