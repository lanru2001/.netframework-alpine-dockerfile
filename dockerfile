FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine

RUN dotnet --version

RUN apk update

RUN apk upgrade

RUN apk add py3-pip

RUN pip3 install --upgrade pip

RUN pip install awscli

RUN rm -rf /var/cache/apk*

CMD [ "bin/sh"]
