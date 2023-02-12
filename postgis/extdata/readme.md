This folder is the place for database or schema dump file

Backup your schema using the following script

$ pg_dump -U postgres -Fc -n {schema_name} -d {database_name} > {file_name}.dump

Do not include the {} 


Restore any schema backup using the following script

$ pg_restore -U postgres -d {database_name} {file_name}.dump
