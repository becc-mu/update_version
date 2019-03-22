require 'mysql2'

def setup_test_database
  p "Setting up test database..."
  connection = Mysql2::Client.new(:host => "localhost", :username => "root", database: 'test_versionTable')

  results = connection.query("TRUNCATE update;")
end
