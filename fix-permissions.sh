#!/usr/bin/env bash

echo "Fix directory permissions"
find . -type d -exec chmod 2755 {} \;

echo "Fix file permissions"
find . -type f -exec chmod 0644 {} \;

DIR_BIN=./vendor/bin
if [ -d ${DIR_BIN} ]
then
    echo "Set executions rights to all scripts in vendor/bin directory"
    find ${DIR_BIN} -type l -exec chmod +x {} \;
fi

FILE_CLI_DISPATCH=./html/typo3/cli_dispatch.phpsh
if [ -f ${FILE_CLI_DISPATCH} ]
then
    echo "Make web/typo3/cli_dispatch.phpsh executable"
    chmod +x ${FILE_CLI_DISPATCH}
fi

FILE_TYPO3=./vendor/typo3/cms/typo3/sysext/core/bin/typo3
if [ -f ${FILE_TYPO3} ]
then
    echo "Make vendor/typo3/cms/typo3/sysext/core/bin/typo3 executable"
    chmod +x ${FILE_TYPO3}
fi

FILE_FIX_PERMISSIONS=./fix-permissions.sh
if [ -f ${FILE_FIX_PERMISSIONS} ]
then
    echo "Make fix-permissions.sh executable"
    chmod +x ./fix-permissions.sh
fi