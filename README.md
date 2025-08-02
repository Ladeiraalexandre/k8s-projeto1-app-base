# Projeto: Deploy de uma Aplicação com Docker e Kubernetes

Este projeto consiste em uma aplicação web simples composta por um frontend em HTML/CSS/JS e um backend em PHP, com persistência de dados em um banco MySQL. O objetivo é demonstrar o deploy utilizando Docker e Kubernetes.

## Estrutura do Projeto

- **frontend/**: Contém os arquivos estáticos (HTML, CSS, JS) do formulário.
- **backend/**: Código PHP responsável por receber e salvar os dados do formulário.
- **backend/database/**: Dockerfile e script SQL para inicialização do banco MySQL.
- **deployment.yml**: Configuração dos deployments e volumes no Kubernetes.
- **services.yml**: Configuração dos serviços para expor o backend e o banco de dados.
- **script.sh / script.bat**: Scripts para build, push das imagens Docker e aplicação dos manifests no Kubernetes.

## Como Executar

### 1. Build das Imagens Docker

Execute o script de build para criar as imagens do backend e do banco de dados:

No Linux:
```sh
./script.sh
```

No Windows:
```bat
script.bat
```

### 2. Push das Imagens

O script também realiza o push das imagens para o Docker Hub.

### 3. Deploy no Kubernetes

O script aplica os arquivos `services.yml` e `deployment.yml` para criar os serviços e deployments no cluster Kubernetes.

### 4. Acesso à Aplicação

- O serviço do backend será exposto na porta 80.
- O banco de dados MySQL será exposto na porta 3306.

## Observações

- Certifique-se de ter o Docker e o kubectl instalados e configurados.
- Altere os nomes das imagens no script conforme seu usuário do Docker Hub, se necessário.
- O banco de dados é inicializado com o script `sql.sql` e as credenciais definidas no Dockerfile.

## Conclusão

Este projeto demonstrou o processo de deploy de uma aplicação web simples utilizando Docker para containerização e Kubernetes para orquestração. A aplicação consiste em um frontend em HTML/CSS/JS e um backend em PHP, com um banco de dados MySQL. O código fonte da aplicação pode ser encontrado nos diretórios `frontend/` e `backend/`, enquanto os arquivos de configuração do Kubernetes estão em `deployment.yml` e `services.yml`. Para facilitar o processo de build e deploy, foram criados os scripts `script.sh` e `script.bat`. Certifique-se de ter as ferramentas necessárias instaladas e siga as instruções para executar a aplicação em seu ambiente.

## Autor
Alexandre Ladeira Silva 

## Disciplina
Criando um Deploy de uma Aplicação
Projeto BootCamp IA Java.