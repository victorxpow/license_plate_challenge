# Desafio - Sistema de Placa de Carro
Projeto realizado com base no desafio proposto, foi feito usando Ruby on Rails e banco de dados Postgres e Docker.

## Como iniciar o projeto
Para executar esse projeto você deve ter um computador, preferencialmente com Linux, com a linguagem de programação Ruby na versão 2.7.2, e também:

- Postgres
- Nodejs
- Yarn

Dentro do diretório do projeto, você deve instalar as dependências definidas no arquivo Gemfile com o comando `ruby bin/setup`

Com todas dependências instaladas, execute rails server e use o comando `bundle exec rspec` para utilizar os testes elaborados para o desafio.

Ou pode usar o Docker, bastando ter o Docker e docker-compose instalado

## Rodando o projeto com docker

Você só precisa usar o comando `docker-compose up` para levantar o projeto e acesse localhost:3000 em seu navegador ou use o comando `docker-compose run --service-ports rails bash` e tenha acesso ao bash do container, dentro do diretório do projeto, você deve instalar as dependências definidas no arquivo Gemfile com o comando `ruby bin/setup` e rode o comando `bundle exec rspec` para utilizar o suite de teste.

## Heroku

https://safe-cliffs-66791.herokuapp.com/