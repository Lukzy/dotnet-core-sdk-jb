# .NET Core SDK as base image (see https://hub.docker.com/_/microsoft-dotnet-core-sdk)
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build

# Install ReSharper CLTs (see https://www.jetbrains.com/help/resharper/ReSharper_Command_Line_Tools.html)
RUN dotnet tool install -g JetBrains.ReSharper.GlobalTools

# Set dotnet tools path (see https://stackoverflow.com/a/51984439)
ENV PATH="${PATH}:/root/.dotnet/tools" 
