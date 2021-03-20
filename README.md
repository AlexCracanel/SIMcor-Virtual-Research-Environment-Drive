# SIMcor Virtual Research Environment Drive

## To install SIMcor Virtual Research Environment Drive complete the following steps:

1. Add db.env file in /docker-compose. This file is used for Postgres database configuration. File content:
    
    POSTGRES_PASSWORD=\<password\>
    
    POSTGRES_DB=\<database\>
    
    POSTGRES_USER=\<username\>
2. Run docker-compose build --pull to pull docker base images and build the custom dockerfiles
3. Start nextcloud with docker-compose up -d

#### Note: If you want to update docker base images you should edit the docker-compose.yml
