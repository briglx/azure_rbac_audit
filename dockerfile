FROM mcr.microsoft.com/azure-powershell

ARG REPOSITORY=PSGallery
ARG MODULE=azureadpreview

# Install Azure Module
# RUN pwsh -Command "install-module az -force"
# RUN pwsh -Command "install-module azureadpreview -force"

RUN pwsh -Command Set-PSRepository -Name ${REPOSITORY} -InstallationPolicy Trusted && \
    pwsh -Command Install-Module -Name ${MODULE} -Scope AllUsers -Repository ${REPOSITORY} && \
    pwsh -Command Set-PSRepository -Name ${REPOSITORY} -InstallationPolicy Untrusted

ENTRYPOINT [ "/bin/bash" ]