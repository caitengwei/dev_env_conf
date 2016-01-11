#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set option.emacsmode_controlD_nomodifiers 1
/bin/echo -n .
$cli set repeat.initial_wait 250
/bin/echo -n .
$cli set remap.optionrcommandr 1
/bin/echo -n .
$cli set option.emacsmode_controlPNBF_nomodifiers 1
/bin/echo -n .
$cli set option.emacsmode_optionD 1
/bin/echo -n .
$cli set option.emacsmode_controlK_ex 1
/bin/echo -n .
$cli set option.emacsmode_controlLeftbracket 1
/bin/echo -n .
$cli set option.emacsmode_optionBF 1
/bin/echo -n .
$cli set option.emacsmode_optionV 1
/bin/echo -n .
$cli set option.emacsmode_controlH 1
/bin/echo -n .
$cli set repeat.wait 33
/bin/echo -n .
$cli set option.emacsmode_controlI 1
/bin/echo -n .
/bin/echo
