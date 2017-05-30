FROM node:7.10
# clone and install skeleton
RUN git clone https://github.com/hybris/docpad-skeleton-apidocs.git
WORKDIR /docpad-skeleton-apidocs
RUN npm run prepare
# volume name
VOLUME /docpad-skeleton-apidocs
EXPOSE 9778
