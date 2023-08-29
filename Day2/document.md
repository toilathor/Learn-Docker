

## build  
```cmd
docker build -t my-mysql-image . 
```

## Triển Khai 
```cmd
docker-compose up
```

## Thực hiện insert 1.000.000 bản ghi vào   
```cmd
docker exec -i $<CONTAINER_NAME> mysql -u root -p14122000 database1 < /Users/toilathor/DEV/Docker/Day2/insert.sql
```

## Thực hiện insert 1.000.000 bản ghi vào   
```cmd
docker exec day2-db1-1 sh -c 'mysql -u root -p14122000 -e "CREATE DATABASE IF NOT EXISTS database1;"'
```

## Thực thì 1 file lệnh sql trong docker
```cmd
docker exec -i <container-name> mysql -u root -p<pass-db> < <path-file>
```

ví dụ 
```bash
docker exec -i container-1 mysql -u root -p14122000 < </Users/toilathor/DEV/Docker/Day2/insert.sql>
```

Để kiểm tra hiệu năng của MySQL server trong các Docker container, bạn có thể sử dụng các lệnh sau:

Kiểm tra phiên bản MySQL:
```bash 
docker exec -it <container_name> mysql --version
``` 
Thay thế <container_name> bằng tên của container MySQL.


Kiểm tra trạng thái hoạt động của MySQL:
```bash 
docker exec -it <container_name> mysqladmin -u root -p status
```
Lưu ý thay thế <container_name> bằng tên của container MySQL và nhập mật khẩu root.

Kiểm tra tài nguyên sử dụng của MySQL server:
```bash 
docker stats <container_name>
```
Lưu ý thay thế <container_name> bằng tên của container MySQL và nhập mật khẩu root.

Kiểm tra tài nguyên sử dụng của MySQL server:
```bash 
docker stats <container_name>
Thay thế <container_name> bằng tên của container MySQL.
```

Kiểm tra thời gian thực thi các truy vấn SQL trên MySQL server:
```bash 
docker exec -it <container_name> mysql -u root -p -e "SELECT SLEEP(10)"
```
Thay thế <container_name> bằng tên của container MySQL và nhập mật khẩu root.

Ngoài ra, bạn có thể sử dụng các công cụ khác như sysbench hoặc mysqlslap để kiểm tra hiệu năng của MySQL server trong Docker container.
