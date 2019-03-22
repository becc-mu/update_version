require 'database_connection'

describe DatabaseConnection do
  describe '.setup' do
    it 'sets up a connection to a database through Mysql2' do
      expect(Mysql2).to receive(:setup).with(dbname: 'test_versionTable')
      DatabaseConnection.setup('test_versionTable')
    end
  end
end
