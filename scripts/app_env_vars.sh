#!/bin/bash

cat > /pipeline/source/.env <<EOF
  export GIT_COMMIT=${WERCKER_GIT_COMMIT}
  export MS_NAME=${MS_NAME}
  export RAILS_ENV=${RAILS_ENV}
  export BC_OAUTH_CLIENT_ID="${BC_OAUTH_CLIENT_ID}"
  export BC_OAUTH_CLIENT_SECRET="${BC_OAUTH_CLIENT_SECRET}"
  export MYSQL_ENV_MYSQL_DATABASE="${MS_NAME}_${RAILS_ENV}db"
  export MYSQL_PORT_3306_TCP_PORT=3306
  export MYSQL_ENV_MYSQL_USER="${STAGE_MYSQL_USERNAME}"
  export MYSQL_ENV_MYSQL_PASSWORD="${STAGE_MYSQL_PASSWORD}"
  export MYSQL_PORT_3306_TCP_ADDR=127.0.0.1
EOF
