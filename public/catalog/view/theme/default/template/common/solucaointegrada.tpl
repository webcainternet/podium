<?php
/* ------------------------------------------------------------------------------
Mуdulo:             Soluзгo Integrada - Cielo
Versгo:             1.00
Autor:              MSE Informбtica - www.msebrasil.com.br - Tel.: (18) 3841-1352
Compatibilidade:    Opencart 1.5.6.X
------------------------------------------------------------------------------ */

echo $header;
echo $column_left;
echo $column_right;
require_once(DIR_SYSTEM . 'library/solucaointegrada.php');
$mse = new MSE(MID);
eval($mse->show('_T9W-_tsfH0QFh9kJXUA251sEOMsZFoWKSjVZ7pvls6mZ_SeLI-3Uc3ZqNG1AKY1Yw_3UmZkG9eHIytG76iAVNri-LGwJHsWMvlfFohqnH8SpIkP0_kbzGzteMI3DPjy2Wu4avA7u6KAQbpDidtdDksmGDnewyaZIC36UTGa2AUi8tbIEPuQ7lWrSuDKJ1IWtrxLzP2v-8443qtQz53FoaOfFth__V0rlXiqb6gHtKZxYE-duy6W9ORMh_ES4OdAqqMEav-u-29If8DGvaSLxVfnqt8Lc0WiMZc0xtqLFJYiAYPy-O2tfzWHAihXdpWRC6hZnzQ7wvAI6LxsMlnRhAgjcOIcfLkNeGm9qwwvhSsl2a4X_sp3ySjuCB1TPP75vwobGzkh-NCPDimlb9AXlTkSnBj3omCA8ozfWWAEOXGyJJlVsHNTADrHI3g4as7biNL8oH96eqGguki4rcyD7pO0nfVC-WEFQZq69MnrzG3Ep7Xuu1mJzmHviSY3LTQCxtcDOmyU0cm6i6hdhbirNrRx-WmUPq6VdNHCzCzkJb0,'));
echo $footer;
?>