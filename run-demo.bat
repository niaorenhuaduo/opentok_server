:: Why? because windows can't do an OR within the conditional
IF NOT DEFINED API_KEY GOTO defkeysecret
IF NOT DEFINED API_SECRET GOTO defkeysecret
GOTO skipdef

:defkeysecret

SET API_KEY=45754972
SET API_SECRET=2d03fec4df058a6a8e4c7f13c781477bdff96a14

:skipdef

RD /q /s storage

php.exe -S localhost:8080 -t web web/index.php
