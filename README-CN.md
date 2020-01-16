### 步骤
#### 1. 安装docker-compose
参考  https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Docker-Compose/tree/master/install-docker

#### 2. github 下载 SenseCAP-DataVirt-SaaS-Docker-Compose

```
 git clone https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Docker-Compose.git
 
 cd SenseCAP-DataVirt-SaaS-Docker-Compose/
```


#### 3. 修改配置

>登录账号 https://sensecap.seeed.cc/portal/#/security 获取Access API keys 替换.env配置

```
 vi .env 

```  

#### 4. 部署

##### 1.直接部署（无离线镜像)
+ Mac/Linux

```
终端执行 ./comepose.sh
```
+ windows 

```
双击执行  windows-helper-compose.bat
```

##### 2.离线部署
>复制四个镜像文件到/images目录

+ Mac/Linux

```
终端执行 ./load.sh
```

+ windows

```
双击执行   windows-helper-load.bat
```

#### 5. 停止服务
+ Mac/Linux

```
终端执行 ./remove-all.sh
```
+ windows

```
双击执行   windows-remove-all.bat
```


####6. 其他说明

##### 替换logo
```
1.替换图片 logo_replace_me.png
2.Mac/Linux  执行 ./replace-logo.sh
3.windows  双击 windows-replace-logo.bat
```
##### 替换标题
```
1.Mac/Linux   执行 ./replace-title.sh
2.windows  双击 windows-replace-title.bat 
输入标题， 回车
```
