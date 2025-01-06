# DesafioSpec

## Objetivo

A missão geral é fazer algumas análises com as bases fornecidas e montar um Storytelling, em (PowerPoint/Google Apresentações), contando suas conclusões sobre os resultados encontrados.

## Entregas esperadas

1. Storytelling (PowerPoint/Google Apresentações)
    1. Precisamos apresentar uma análise dos clientes que sofreram Churn versos os Canais de Reclamação
        1. Direcionar a análise mostrando os clientes que sofreram churn em grupos "Com reclamação" e "Sem Reclamação"
        2. Dos clientes "Com Reclamação" apresentar por motivo e submotivo

    1. Perguntas que nossa diretora fez:
        1. Principais motivos das reclamações dos clientes com Churn
        2. Como está a distribuição dos clientes por canal de reclamação
        3. Qual percentual de clientes com reincidência na Anatel em 30 dias. R=(Clientes com Reincidência 30D / Total de Clientes)

2. Códigos SQL
    1. Tratamentos dos dados (Se for necessário aplicar Higienização, Remoção de duplicidades ou outros processos.)
    2. Cruzamento entre as bases para cálculos
    3. Processo de Reincidência (Todas as queries para conseguir chegar no resultado)

## Sobre as bases

### 1. Base Customer Churn

**Contexto**

Temos dados de **7.043 clientes únicos** nesta base que sairam da empresa.

**Conteúdo**

Cada linha representa um cliente.

O conjunto de dados inclui informações sobre:

- Clientes que saíram no último mês – a coluna é chamada de Churn

- Serviços nos quais cada cliente se inscreveu – telefone, múltiplas linhas, internet, segurança online, backup online, proteção de dispositivos, suporte técnico e streaming de TV e filmes

- Informações da conta do cliente – há quanto tempo ele é cliente, contrato, forma de pagamento, faturamento sem papel, cobranças mensais e cobranças totais

- Informações demográficas sobre clientes – sexo, faixa etária e se possuem companheiros e dependentes


<span style="color:rgb(151, 74, 104); font-weight:bold">@source</span> [kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)

### 2. Base Customer Reclamação

**Contexto**

Temos dados de **1.125.612 reclamações** nesta base dos últimos 180 dias.

**Conteúdo**

Cada linha representa uma reclamação de um cliente.

O conjunto de dados inclui informações sobre:

- Clientes que reclamaram nos canais recursais como Anatel, Ouvidoria, Procon e Reclame Aqui nos últimos 180 dias 
 – **protocolo, dt_reclamacao e canal**.

- Movitos nos quais cada cliente registrou a reclamação – **motivo, submotivo, descricao e causa_raiz**

- Informações da conta do cliente – **customerId, telefone_principal, telefone_contato_1 e telefone_contato_2**

## Vamos começar?

1. Habilite o Sandbox Google Cloud BigQuery **gratuitamente** (~3 min)

    [Passo a Passo Google, clique aqui](https://cloud.google.com/bigquery/docs/sandbox?sjid=4447945526086845272-SA&hl=pt-br#limits)

2. Execute os códigos abaixo para carregar as bases (~2 min)
    1. Abra o arquivo **create_table_start.sql**
    2. Copie e Cole em uma nova aba no Google BigQuery e clique em "Executar/Run"
    
3. Após execução você conseguirá acessar as 2 tabelas:
    1. **Base Customer Churn**
        
        `select * from dm_desafio_spec.base_customer_churn;`

    2. **Base Customer Reclamação de Jun-Dez/24**
     
        `select * from dm_desafio_spec.base_customer_reclamacao;`
