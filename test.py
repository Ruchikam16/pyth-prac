

import mysql.connector
import sys

def create_table(table_name):

	conn=mysql.connector.connect(host='mydb.cpew7k8mfhhi.ap-south-1.rds.amazonaws.com' , user='root' , password='rootroot' , database='mydb')
	c=conn.cursor()

	c.execute("drop table if exists " + table_name);
	sql_stmt = "create table "+ table_name +"  (id int(5) PRIMARY KEY AUTO_INCREMENT, name varchar(255) UNIQUE KEY, age int(3), gender varchar(1))" 
	c.execute(sql_stmt)
	c.close()


def drop_table(table_name):

        conn=mysql.connector.connect(host='mydb.cpew7k8mfhhi.ap-south-1.rds.amazonaws.com' , user='root' , password='rootroot' , database='mydb')
        c=conn.cursor()

        c.execute("drop table if exists " + table_name);
        c.close()


def insertOneRowInTable(table_name,name,age,gender):

        conn=mysql.connector.connect(host='mydb.cpew7k8mfhhi.ap-south-1.rds.amazonaws.com' , user='root' , password='rootroot' , database='mydb')
        c=conn.cursor()

	#Type the actual syntax and then try how you would substitute, example below statement should be
	#INSERT INTO employee(name,age,gender) VALUES ('prateek',25,'M') -- Now See you Just need to add "" and plus plus in between the variable name, so
	#    " + variable + "  -- Where ever you want to substitute, Do this for Upddate now

	sql_stmt ="INSERT INTO " + table_name + "(name,age,gender) VALUES ('" + name  + "' , " + str(age) + ", '" + gender + "')";
        c.execute(sql_stmt);
	print("One Row Inserted");
        c.close()


def updateDataById(table_name,id,name,age,gender):

def updateDataByName(table_name,name,age,gender):

def deleteDataByName(table_name,name):

def getDataByName(name):

def getAllData():


table='employee'
create_table(table)

insertOneRowInTable(table, "Prateek", 22, "M");


test.py
Displaying test.py.
