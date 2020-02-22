## Getting Started

```
cd D:\docker\pynb_dpl
docker rmi pynb_dpl
docker build -t pynb_dpl .
docker-compose -d up
docker-compose down
```
<!-- docker network create -d bridge --gateway=10.188.124.1 --subnet=10.188.124.1/28 mybridge -->

## Resources

* https://github.com/jupyter/docker-stacks/blob/master/base-notebook/Dockerfile
* https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html
* https://tryolabs.com/blog/2012/06/25/connecting-sql-server-database-python-under-ubuntu/
* https://blog.thomastoye.be/python-ldap-authentication-with-microsoft-active-directory-46661bebc483
* https://jupyter-notebook.readthedocs.io/en/stable/public_server.html
* https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-active-directory-authentication?view=sql-server-2017
* https://stackoverflow.com/questions/46651328/login-to-windows-domain-on-linux-container/47329385
* https://stackoverflow.com/questions/52943722/jupyter-datascience-docker-connecting-to-mssql-server

