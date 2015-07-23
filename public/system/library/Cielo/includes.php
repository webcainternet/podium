<?php
/**
 * M�dulo Cielo para OpenCart 1.5.3.1 a 1.5.6
 * Integra��o direta com a Cielo,
 * sem utiliza��o de Gateways de pagamento
 * 
 * Este � um arquivo de requires.
 * Em vers�es futuras do m�dulo este arquivo
 * poder� sofrer adi��o de funcionalidades.
 * 
 * @author  Victor Schr�der <domains@egeeks.com.br>
 * @copyright  Copyright (c) 2012, Victor Schr�der. All rights reserved. Must buy a Commercial Licence (per store).
 * @link  http://www.opencart.com/index.php?route=extension/extension/info&extension_id=8855
 */
require_once('cielo.php');
require_once('logger.php');
if (version_compare(phpversion(), '5.3.0', '>=') == true) require_once('ga.php');
?>