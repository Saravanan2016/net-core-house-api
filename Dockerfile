FROM microsoft/aspnetcore-build:1.1.2

WORKDIR /netcore/app/

ADD . .

RUN dotnet restore

ENV ASPNETCORE_URLS=http://+:80

ENTRYPOINT  ["dotnet", "run", "--project", "src/SampleWebApiAspNetCore/SampleWebApiAspNetCore.csproj"]



