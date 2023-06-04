class CreateAuditions < ActiveRecord::Migration[6.1]

    belongs_to :role

    def change
      create_table :auditions do |t|
        t.string :actor
        t.string :location
        t.integer :phone
        t.boolean :hired, default: false
        t.references :role, foreign_key: true
  
        t.timestamps
      end
    end

    def role
        Role.find_by(id: role_id)
      end
      
      def call_back
        update(hired: true)
      end
      
  end
  