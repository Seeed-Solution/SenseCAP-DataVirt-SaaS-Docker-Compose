# SenseCAP-DataVirt-SaaS-Docker-Compose
Docker Compose to setup your own SenseCAP Data Virtualization SaaS, with OpenAPI/OpenStream on Mac, Linux, and MacOS

Read this in other languages: [English](https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Docker-Compose/blob/master/README.md), [简体中文](https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Docker-Compose/blob/master/README-CN.md).


**Table of Contents**

- Requirements
  - CentOS, Ubuntu, MacOS, or Windows
  - Docker
  - Docker-compose

- Install Docker Environment
Refer to the folder `install-docker`

- One-Step Running
 ```
git clone https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Docker-Compose.git
cd SenseCAP-DataVirt-SaaS-Docker-Compose
chmod +x compose.sh
```

- Configuration
You can update the `.env` file.By changing `orgId`, `apiId`, `apiKey` to your own account connection information on the SenseCAP platform, you can easily build your own SaaS Page.
(env is a hidden file）
then
```
./compose.sh
```

- Uninstall
```
chmod +x remove-all.sh
./remove-all.sh
```
