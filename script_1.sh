#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /gerencia
mkdir /vendas
mkdir /secretaria

echo "Criando usuários, senha padrão e vinculando ao grupo"

useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd matheus -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd dayanne -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd rafael -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd nathannael -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd bhayron -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd nykael -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd hugo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Especificando permissões de diretório"

chown root:GRP_ADM /gerencia
chown root:GRP_VEN /vendas
chown root:GRP_SEC /secretaria

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Criação de Diretórios, Usuários, Grupos e Permissões Finalizado com Sucesso"
