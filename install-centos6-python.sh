# 如果需要在centos6上装python2.7
$ wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
$ tar zxvf Python-2.7.13.tgz
$ cd Python-2.7.13
$ ./configure --prefix=/usr/local/python27
$ make
$ make install

# centos6 安装pip，需要epel源
$ yum install python-pip


# 安装 virtualenv
$ pip install virtualenv

# 新建python虚拟环境
$ mkdir mypyenv
$ cd mypyenv
$ virtualenv venv --no-site-packages
# 或者使用python2.7
$ virtualenv -p /usr/local/python27/bin/python2.7 /data/mypyenv/venv --no-site-packages


# 激活该环境
$ . venv/bin/activate  或  $ source venv/bin/activate

# 在激活的环境下使用deactivate命令来结束激活
(venv)$ deactivate

# 安装Scrapy 基于python2.7
# 在激活的环境(python2.7)下手动安装Twisted
$ wget https://pypi.python.org/packages/d2/5d/ed5071740be94da625535f4333793d6fd238f9012f0fee189d0c5d00bd74/Twisted-17.1.0.tar.bz2
$ tar jxvf Twisted-17.1.0.tar.bz2
$ cd Twisted-17.1.0
$ python setup.py install
$ pip install Scrapy

# 安装Flask
$ pip install Flask


#使用virtualenvwrapper管理多个虚拟环境


