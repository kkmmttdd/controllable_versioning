module Support
  module Schema
    def self.init_or_create_tables
      ActiveRecord::Schema.define do
        self.verbose = false

        create_table :originals, force: true do |t|
          t.string :name
          t.date :attendance_on
          t.timestamps null: true
        end
      end
    end
  end
end
