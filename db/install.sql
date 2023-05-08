DROP DATABASE IF EXISTS ukrhumbat;
DROP USER IF EXISTS ukrhumbat_user;
CREATE USER ukrhumbat_user WITH PASSWORD '123ddd456';
CREATE DATABASE ukrhumbat OWNER ukrhumbat_user;
