require 'version_table'
require 'database_helper'

describe VersionTable do
  describe 'Create' do
    it 'creates a new update' do
      versionTable = VersionTable.create(version_no: 045, version: '045.createtable.sql')

      persisted_data = persisted_data(table: :versionTable, id: version.id)

      expect(version).to be_a VersionTable

    end
  end
end
