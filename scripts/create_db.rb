require 'mysql2'

@db_host = "localhost"
@db_user = "root"
@db_pass = "P@ssWord11!!"
@db_name = "db_test1"

client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass)
client.query("DROP DATABASE IF EXISTS #{@db_name}")
client.query("CREATE DATABASE #{@db_name}")
client.close