<?php
/**
 * @var string $_EXTKEY
 */
defined('TYPO3_MODE') or die();


\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig(
    "<INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:{$_EXTKEY}/Configuration/PageTSConfig/Default.t3s\">"
);


$GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets'][$_EXTKEY . '_default'] = "EXT:{$_EXTKEY}/Configuration/RTE/Default.yaml";