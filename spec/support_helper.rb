class User < ActiveRecord::Base
  acts_as_avatarable
end

class Pet < ActiveRecord::Base; end

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

ActiveRecord::Base.logger
ActiveRecord::Schema.define do
  self.verbose = false
end

ActiveRecord::Schema.define(version: 1) do
  create_table :pets do |t|
    t.column :name, :string
    t.column :owner, :string
  end

  create_table :users do |t|
    t.column :name, :string
    t.column :email, :string
    t.column :age, :integer
  end

  create_table :avatars do |t|
    t.column :source_id, :integer
    t.column :source_type, :string
  end
end
