FROM node:18.12.1
CMD ["sh", "/docker-entrypoint.d/docker-init.sh"]
COPY ./ /var/strapi-serve
COPY docker-init.sh /docker-entrypoint.d/docker-init.sh

RUN npm install \
    && cd /var/strapi-serve && npm install \
    && npm run build