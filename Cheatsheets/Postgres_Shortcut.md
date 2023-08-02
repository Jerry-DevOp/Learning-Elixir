# **Postgres Shortcuts**
<!-- vscode-markdown-toc -->
* 1. [**$ Terminal**](#Terminal)
  * 1.1. [**Switch** and **Connect** to Postgres](#SwitchandConnecttoPostgres)
  * 1.2. [To become a **postgres user**](#Tobecomeapostgresuser)
  * 1.3. [To check the location of the **config file**](#Tocheckthelocationoftheconfigfile)
  * 1.4. [To create User](#TocreateUser)
  * 1.5. [To create user password](#Tocreateuserpassword)
  * 1.6. [**To Switch Users**](#ToSwitchUsers)
  * 1.7. [**To grant user all privileges on database**](#Tograntuserallprivilegesondatabase)
* 2. [**Postgres Terminal**](#PostgresTerminal)
  * 2.1. [**Disconnect**](#Disconnect)
  * 2.2. [List all **users**](#Listallusers)
  * 2.3. [Change **password**](#Changepassword)
  * 2.4. [List all **default privileges**](#Listalldefaultprivileges)
* 3. [**Database commands**](#Databasecommands)
  * 3.1. [**List** all databases](#Listalldatabases)
  * 3.2. [**Create** a new database](#Createanewdatabase)
  * 3.3. [**Delete** database](#Deletedatabase)
  * 3.4. [List all **schemas**](#Listallschemas)
  * 3.5. [Create **schema**](#Createschema)
  * 3.6. [Delete **schema**](#Deleteschema)
* 4. [**Access commands**](#Accesscommands)
  * 4.1. [Grant **all permissions** on database](#Grantallpermissionsondatabase)
  * 4.2. [**Grant permissions** on **schema**](#Grantpermissionsonschema)
  * 4.3. [**Grant permissions** to _select, update, insert, delete_,on a **all tables**](#Grantpermissionsto_selectupdateinsertdelete_onaalltables)
  * 4.4. [**Grant permissions**, on a **table**](#Grantpermissionsonatable)
* 5. [**Table commands**](#Tablecommands)
  * 5.1. [**List** all stored **procedures**](#Listallstoredprocedures)
  * 5.2. [**List tables** from current directory](#Listtablesfromcurrentdirectory)
  * 5.3. [**List** table **access privileges**](#Listtableaccessprivileges)
  * 5.4. [**List** tables from all **schema**](#Listtablesfromallschema)
  * 5.5. [**Delete** specific data](#Deletespecificdata)
  * 5.6. [**Update** data](#Updatedata)
  * 5.7. [**Delete** column](#Deletecolumn)
  * 5.8. [**Add** column](#Addcolumn)
  * 5.9. [**Update** column](#Updatecolumn)
* 6. [**Links to other shortcuts**](#Linkstoothershortcuts)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

---

## 1. <a name='Terminal'></a>**$ Terminal**

---

### 1.1. <a name='SwitchandConnecttoPostgres'></a>**Switch** and **Connect** to Postgres

   ```sh
   sudo -u postgres psql
   ```

### 1.2. <a name='Tobecomeapostgresuser'></a>To become a **postgres user**

   ```sh
   sudo su - postgres
   psql
   ```

### 1.3. <a name='Tocheckthelocationoftheconfigfile'></a>To check the location of the **config file**

   ```sh
   sudo -u postgres psql -c 'SHOW config_file
   ```

### 1.4. <a name='TocreateUser'></a>To create User

```sh
sudo -u postgres createuser <username>
```

### 1.5. <a name='Tocreateuserpassword'></a>To create user password

```sh
sudo -u postgres psql
psql=# alter user <username> with encrypted password '<password>'
```

### 1.6. <a name='ToSwitchUsers'></a>**To Switch Users**

   ```sh
   sudo su - postgres  
   ```

### 1.7. <a name='Tograntuserallprivilegesondatabase'></a>**To grant user all privileges on database**

```sql
psql=# grant all privileges on database <dbname> to <username>
```

---

## 2. <a name='PostgresTerminal'></a>**Postgres Terminal**

---

### 2.1. <a name='Disconnect'></a>**Disconnect**

   ```sh
    postgres=# \q
    postgres=# \!
```

### 2.2. <a name='Listallusers'></a>List all **users**

```sh
    postgres=# \du
```

### 2.3. <a name='Changepassword'></a>Change **password**

   ```sh
   postgres=# \password [USER]
   ```

### 2.4. <a name='Listalldefaultprivileges'></a>List all **default privileges**

   ```sh
   postgres=# \ddp
   ```

---

## 3. <a name='Databasecommands'></a>**Database commands**

 ---

### 3.1. <a name='Listalldatabases'></a>**List** all databases

   ```sh
   postgres=# \l
   ```

### 3.2. <a name='Createanewdatabase'></a>**Create** a new database

   ```sql
   CREATE DATABASE [IF NOT EXISTS] db_name;
   ```

### 3.3. <a name='Deletedatabase'></a>**Delete** database

   ```sql
   DROP DATABASE [IF EXISTS] db_name;
   ```

### 3.4. <a name='Listallschemas'></a>List all **schemas**

   ```sh
   postgres=# \dn
   ```

### 3.5. <a name='Createschema'></a>Create **schema**

   ```sql
   CREATE SCHEMA IF NOT EXISTS <schema_name>;
   ```

### 3.6. <a name='Deleteschema'></a>Delete **schema**

   ```sql
   DROP SCHEMA IF EXISTS <schema_name> CASCADE;
   ```

---

## 4. <a name='Accesscommands'></a>**Access commands**

 ---

### 4.1. <a name='Grantallpermissionsondatabase'></a>Grant **all permissions** on database

   ```sql
   GRANT ALL PRIVILEGES ON DATABASE <db_name> TO <user_name>;
   ```

### 4.2. <a name='Grantpermissionsonschema'></a>**Grant permissions** on **schema**

   ```sql
   GRANT USAGE ON SCHEMA public TO <user_name>;
   ```

### 4.3. <a name='Grantpermissionsto_selectupdateinsertdelete_onaalltables'></a>**Grant permissions** to _select, update, insert, delete_,on a **all tables**

   ```sql
   GRANT SELECT, UPDATE, INSERT ON ALL TABLES IN SCHEMA public TO <user_name>;
   ```

### 4.4. <a name='Grantpermissionsonatable'></a>**Grant permissions**, on a **table**

   ```sql
   GRANT SELECT, UPDATE, INSERT ON ```<table_name> TO <user_name>;
   ```

---

## 5. <a name='Tablecommands'></a>**Table commands**

 ---

### 5.1. <a name='Listallstoredprocedures'></a>**List** all stored **procedures**

   ```sh
   postgres=# \df
   ```

### 5.2. <a name='Listtablesfromcurrentdirectory'></a>**List tables** from current directory

   ```sh
   postgres=# \dt
   ```

### 5.3. <a name='Listtableaccessprivileges'></a>**List** table **access privileges**

   ```sh
   postgres=# \dp
   ```

### 5.4. <a name='Listtablesfromallschema'></a>**List** tables from all **schema**

   ```sh
   postgres=# \dt <schema>.*
   ```

### 5.5. <a name='Deletespecificdata'></a>**Delete** specific data

   ```sql
   DELETE FROM <table_name>
   WHERE <column_name> = <value>;
   ```

### 5.6. <a name='Updatedata'></a>**Update** data

   ```sql
   UPDATE <table_name>
   SET <column_1> = <value_1>, <column_2> = <value_2>
   WHERE <column_1> = <value>;
   ```

### 5.7. <a name='Deletecolumn'></a>**Delete** column

   ```sql
   ALTER TABLE <table_name> IF EXISTS
   DROP <column_name>;
   ```

### 5.8. <a name='Addcolumn'></a>**Add** column

   ```sql
   ALTER TABLE <table_name> IF EXISTS
   ADD <column_name> <data_type> [<constraints>];
   ```

### 5.9. <a name='Updatecolumn'></a>**Update** column

   ```sql
   ALTER TABLE <table_name> IF EXISTS
   ALTER <column_name> TYPE <data_type> [<constraints>];
   ```

---

## 6. <a name='Linkstoothershortcuts'></a>**Links to other shortcuts**

---

  1. <https://quickref.me/postgres.html>
  2. <https://www.postgresqltutorial.com/postgresql-cheat-sheet/>
