# Use official n8n image
FROM n8nio/n8n:latest

# Set environment variables
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_CONNECTION_STRING=postgresql://neondb_owner:npg_rWU32qYIZkwj@ep-frosty-smoke-ahr47zsh-pooler.c-3.us-east-1.aws.neon.tech/neondb?sslmode=require&channel_binding=require
ENV N8N_ENCRYPTION_KEY=mySuperSecretKey12345
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_BLOCK_ENV_ACCESS_IN_NODE=false
ENV N8N_GIT_NODE_DISABLE_BARE_REPOS=true

# Expose default port
EXPOSE 5678

# Run n8n
CMD ["n8n"]
