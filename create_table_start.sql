
CREATE SCHEMA IF NOT EXISTS dm_desafio_spec
  OPTIONS (
    default_partition_expiration_days = 2,
    default_table_expiration_days = 2,
    description = 'Dataset temporario'
  );

CREATE OR REPLACE EXTERNAL TABLE dm_desafio_spec.base_customer_reclamacao
(
  protocolo	STRING,
  dt_reclamacao	TIMESTAMP	,
  canal	STRING	,
  motivo	STRING,	
  submotivo	STRING	,
  Telefone_Principal	INT64	,
  Telefone_Contato_1	INT64	,
  Telefone_Contato_2	INT64	,
  customerID	STRING	
)
  OPTIONS (
    format = 'CSV'
    , uris = ['https://drive.google.com/open?id=1g8wXrBODzRZ5dvxRpxFLEdw5tb4jN854']
    , skip_leading_rows = 1
    , field_delimiter = ","
    , allow_quoted_newlines = true
    , encoding= "UTF-8"
    , max_bad_records=0
  );

CREATE OR REPLACE EXTERNAL TABLE dm_desafio_spec.base_customer_churn 
  OPTIONS (
    format = 'CSV'
    , uris = ['https://drive.google.com/open?id=1h9Bfb9FIwpOqNWkha60NMNqjl5VTDRba']
    , skip_leading_rows = 1
    , field_delimiter = ","
    , allow_quoted_newlines = true
    , encoding= "UTF-8"
    , max_bad_records=0
  );