FROM microsoft/aspnetcore-build

WORKDIR /netcore/app/

ADD . .

RUN dotnet restore

ENV ASPNETCORE_URLS=http://+:5000

ENTRYPOINT  ["dotnet", "run", "--project", "src/SampleWebApiAspNetCore/SampleWebApiAspNetCore.csproj"]



