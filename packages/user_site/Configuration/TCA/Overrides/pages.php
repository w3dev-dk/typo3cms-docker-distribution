<?php
defined('TYPO3_MODE') or die();

if (!isset($_EXTKEY)) {
    $_EXTKEY = 'user_site';
}

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::registerPageTSConfigFile(
    $_EXTKEY,
    'Configuration/PageTSConfig/TemplatesAndLayout.t3s',
    'Templates and layout'
);