require 'mysql2'

def persisted_data(table:, id:)
  connection = Mysql2.connect(dbname: 'test_versionTable')
  connection.query("SELECT * FROM #{table} WHERE id = '#{id}';")
end
