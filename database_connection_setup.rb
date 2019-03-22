require './lib/database_connection'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('ecs_digital_test')
else
  DatabaseConnection.setup('ecs_digital')
end
