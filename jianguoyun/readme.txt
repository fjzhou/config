sudo apt-get install davfs2
usermod -a -G davfs2 fjzhou

mkdir ~/jianguoyun
mkdir ~/.davfs2

cp /etc/davfs2/secrets ~/.davfs2/secrets

chown fjzhou:fjzhou ~/.davfs2/secrets
chmod 600 ~/.davfs2/secrets

mount ~/jianguoyun
