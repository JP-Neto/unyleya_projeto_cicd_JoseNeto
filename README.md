# Projeto CI/CD - Unyleya

Este repositório contém o código e a configuração de uma pipeline de CI/CD criada para o projeto de integração e entrega contínuas (CI/CD). A pipeline foi desenvolvida utilizando o Azure DevOps e GitHub, com o objetivo de automatizar o build e deployment de imagens Docker.

## Descrição do Projeto

Este projeto visa automatizar o processo de integração contínua e entrega contínua (CI/CD) de uma aplicação utilizando as ferramentas do Azure DevOps, GitHub e Docker. A pipeline foi configurada para realizar o build de uma imagem Docker e armazená-la no Docker Hub. 

Através deste repositório, você verá como integrar as ferramentas de controle de versão e automação, tornando o processo de desenvolvimento mais eficiente e seguro.

### Tecnologias Usadas:
- **GitHub**: Controle de versão do código e repositório de código-fonte.
- **Azure DevOps**: Plataforma de CI/CD para automação do build, testes e deploy.
- **Docker**: Criação de containers para facilitar o deployment e a portabilidade da aplicação.
- **Docker Hub**: Armazenamento público da imagem Docker construída pela pipeline.

## Objetivos da Atividade

- **Fork** do repositório [MobEAD](https://github.com/osanam-giordane/MobEAD).
- **Clonagem** do repositório para meu PC local.
- **Criação de repositório no GitHub** para armazenar o código.
- **Commit** das alterações no repositório recém-criado.
- **Criação de projeto no Azure DevOps** para configurar a pipeline de CI/CD.
- **Integração com Docker Hub** para armazenar a imagem Docker gerada pela pipeline.

## Passos Realizados

1. **Fork do repositório original**: O repositório original foi forkeado para minha conta no GitHub.
2. **Clonagem do repositório para o PC local**: Clonamos o repositório do GitHub para minha máquina local.
3. **Criação de repositório no GitHub**: Criamos um novo repositório chamado `unyleya_projeto_cicd_JoseNeto` e comitei o código.
4. **Criação da pipeline de CI/CD no Azure DevOps**:
    - Criamos um projeto no Azure DevOps chamado **Unyleya_Projeto_DevOps**.
    - Configuramos a pipeline para realizar o build da imagem Docker e armazená-la no Docker Hub.
5. **Armazenamento da imagem Docker no Docker Hub**: A imagem gerada pela pipeline é armazenada em um repositório público no Docker Hub, permitindo o uso da imagem em qualquer máquina que tenha o Docker instalado.

## Como Configurar e Usar

### 1. Clonar o Repositório:
Clone este repositório para sua máquina local utilizando o comando:

```bash
git clone https://github.com/JP-Neto/unyleya_projeto_cicd_JoseNeto.git
```

### 2. Configurar a Pipeline no Azure DevOps:
Acesse o Azure DevOps e crie um projeto com o nome Unyleya_Projeto_DevOps.
Crie uma nova pipeline, conectando seu repositório do GitHub.
No arquivo de configuração da pipeline, adicione um Dockerfile para gerar a imagem e envie-a para o Docker Hub.
### 3. Build da Imagem Docker:
A pipeline no Azure DevOps realiza o build da imagem Docker automaticamente. Para ver os detalhes da execução, acesse a pipeline no Azure DevOps.

### 4. Acessando a Imagem Docker:
Após o build ser concluído, a imagem Docker estará disponível no Docker Hub. Você pode puxá-la utilizando o seguinte comando:
```bash
docker pull <seu-usuario>/<nome-do-repositorio>:<tag>
Substitua <seu-usuario> e <nome-do-repositorio> pelos seus dados do Docker Hub.
```
## Resultados Esperados
Após a execução da pipeline, a imagem Docker será gerada e armazenada no Docker Hub. Você poderá acessar a imagem e usá-la conforme necessário em qualquer ambiente de desenvolvimento ou produção.


