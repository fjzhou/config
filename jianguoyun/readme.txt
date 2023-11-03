# 安装 WebDav
sudo apt-get install davfs2
# 当前用户必须属于 davfs2 用户组才有权限挂载
usermod -a -G davfs2 fjzhou

# 挂载点
mkdir ~/jianguoyun
# 配置目录
mkdir ~/.davfs2

# 配置文件模板
cp /etc/davfs2/secrets ~/.davfs2/secrets

chown fjzhou:fjzhou ~/.davfs2/secrets
chmod 600 ~/.davfs2/secrets

# 
mount ~/jianguoyun
