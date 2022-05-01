FROM nginx
COPY dist /app
COPY conf.d /etc/nginx/conf.d
COPY jobs /jobs
COPY cron.d /etc/cron.d
RUN apt update && apt install -y cron
