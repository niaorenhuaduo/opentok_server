:: Why? because windows can't do an OR within the conditional
IF NOT DEFINED API_KEY GOTO defkeysecret
IF NOT DEFINED API_SECRET GOTO defkeysecret
GOTO skipdef

:defkeysecret

SET API_KEY=45754972
SET API_SECRET=

:skipdef

RD /q /s storage

php.exe -S localhost:8080 -t web web/index.php
