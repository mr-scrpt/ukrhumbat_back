PGPASSWORD=101601630 psql -f /db/install.sql -U postgres
PGPASSWORD=123ddd456 psql -d ukrhumbat -f /db/structure.sql -U ukrhumbat_user
PGPASSWORD=101601630 psql -d ukrhumbat -f data.sql -U postgres
