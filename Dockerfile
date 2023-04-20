FROM alpine:latest
RUN apk add --no-cache bash
RUN echo "root: /bin/bash" >> /etc/passwd
RUN echo "#!/bin/bash" >> /usr/local/bin/bonjour.sh
RUN echo "echo bonjour" >> /usr/local/bin/bonjour.sh
RUN chmod +x /usr/local/bin/bonjour.sh
CMD ["bonjour.sh"]