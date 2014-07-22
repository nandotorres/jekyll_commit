Este é um script simples para ajudar no gerenciamento de blogs com Jekyll, GitHub e GitHub Pages.

* Baixe o script
* Copie para o seu diretório home `cp jekyll_commit.sh ~/`
* Altere as permissões do script: `chmod 755 ~/jekyll_commit.sh`
* Inclua a seguinte linha no seu `~/.bash_profile`: `alias jekyll_commit="~/jekyll_commit.sh"`
* Recarregue seu profile: `source ~/.bash_profile`

Utilizando:

<code>
$ cd /meu/blog/dir

$ jekyll_commit "Descricao do commit" master
</code>

`master` é o branch no qual quer commitar seu código fonte. Entretanto, por padrão, o seu site gerado será sempre enviado para o branch master no GitHub Pages.

Responda `1` para `Sim` ou `2` para `Nao` às seguintes perguntas que serão feitas em ordem:

`Fazer push do codigo fonte para o GitHub?`
- Sim: Atualiza seu código fonte no repositório do GitHub
- Nao: Não faz nada e vai para a próxima pergunta

`Gerar o site (jekyll build)?`
- Sim: Gera uma nova versão do seu site com o comando `jekyll build`
- Nao: Não faz nada e vai para a próxima pergunta

`Atualizar sua GitHub page com o site gerado?`
- Sim: Envia o conteúdo do seu site para seu GitHub Page. Isso atualiza imediatamente o conteúdo do seu site
- Nao: Não faz nada e termina o script

