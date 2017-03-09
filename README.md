# Docker nvm base image

This image is built out of a base debian installation and provided with the basic tools to run a nodejs project with the main node binary provisioned through nvm

It looks for [.nvmrc](https://github.com/creationix/nvm#nvmrc) if present and install the specified node version

The project files will be copied in `/src`
