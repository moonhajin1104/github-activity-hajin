FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN chmod +x entrypoint.sh update_readme.sh
ENTRYPOINT ["bash", "entrypoint.sh"]