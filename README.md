# SenseCAP-DataVirt-SaaS-Docker-Compose
Docker Compose to setup your own SenseCAP Data Virtualization SaaS, with OpenAPI/OpenStream on Mac, Linux, and MacOS

Read this in other languages: [English](https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Docker-Compose/blob/master/README.md), [简体中文](https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Docker-Compose/blob/master/README-CN.md).


### Requirements
  - CentOS, Ubuntu, MacOS, or Windows
  - Docker
  - Docker-compose


### 1. Install Docker Environment
Refer to the folder `install-docker`

### 2. Pull code
 ```
git clone https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Docker-Compose.git

cd SenseCAP-DataVirt-SaaS-Docker-Compose

```

### 3. Configuration
You can update the `.env` file.By changing `orgId`, `apiId`, `apiKey` to your own account connection information on the [SenseCAP platform](https://sensecap.seeed.cc/), you can easily build your own SaaS Page.
(env is a hidden file）

### 4. Install
#### 1. One-click deployment
+ Mac/Linux

```
 ./comepose.sh
```

+ windows

```
  windows-helper-compose.bat
```
##### 2. Offline deployment
>Copy the four image files to   ` /images `

+ Mac/Linux

```
./load.sh
```

+ windows

```
exec   windows-helper-load.bat
```


### 5. Stop service


+ Mac/Linux

```
 ./remove-all.sh
```
+ windows

```
 windows-remove-all.bat
```

### 6. Other

##### replace logo
```
1.replace logo_replace_me.png
2.Mac/Linux   ./replace-logo.sh
3.windows   windows-replace-logo.bat
```
##### replace title
（Can only be replaced once，If you need to modify it again, modify replace-title.sh by yourself）
```
1.Mac/Linux    ./replace-title.sh
2.windows   windows-replace-title.bat 
Enter the title,  enter
```

