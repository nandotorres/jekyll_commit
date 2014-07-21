#!/bin/bash

git add .
git commit -am "$1"

echo "Fazer push do codigo fonte para o GitHub?"
select yn in "Sim" "Nao"; do
    case $yn in
       Sim ) git push origin $2; break;;
       Nao ) break;;
    esac
done

echo "Gerar o site (jekyll build)?"
select yn in "Sim" "Nao"; do
    case $yn in
       Sim ) jekyll build; break;;
       Nao ) break;;
    esac
done

echo "Atualizar sua GitHub page com o site gerado?"
select yn in "Sim" "Nao"; do
  case $yn in 
    Sim ) cd _site; git add .; git commit -am "$1"; git push origin master; cd ..;break;;
    Nao ) break;;
  esac
done
