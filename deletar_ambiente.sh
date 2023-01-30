#!/bin/bash

echo "Deletando ambiente.."

echo "Deletando grupos..."

groupdel GRP_ADM

groupdel GRP_VEN

groupdel GRP_SEC

echo "Deletando diretórios..."

rm -rf /publico

rm -rf /adm

rm -rf /ven

rm -rf /sec

userdel -r -f carlos

userdel -r -f maria

userdel -r -f joao

userdel -r -f debora

userdel -r -f sebastiana

userdel -r -f roberto

userdel -r -f josefina

userdel -r -f amanda

userdel -r -f rogerio

echo "Ambiente deletado."
