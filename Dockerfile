# =============================================================================
# Dockerfile — CI/CD Pipeline Demo
# Author: Nerea Arce | github.com/arcenerea
# =============================================================================

FROM nginx:alpine

LABEL maintainer="Nerea Arce <arcenerea4@gmail.com>"
LABEL description="CI/CD Pipeline Demo — served with nginx"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
