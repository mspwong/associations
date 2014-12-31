class CreateModelsForAssociations < ActiveRecord::Migration
  def change
    create_table :shop_events do |t|
      t.string :name
      t.timestamp
    end

    create_table :missing_donations, id: false do |t|
      t.primary_key :mor_id
      t.string :name
      t.timestamp
    end

    create_table :xref_missing_donation_shop_events do |t|
      t.integer :missing_donation_id, null: false
      t.integer :shop_event_id, null: false
      t.timestamp
    end

    add_index :xref_missing_donation_shop_events, :missing_donation_id
    add_index :xref_missing_donation_shop_events, :shop_event_id

    create_table :wives do |t|
      t.string :name
      t.timestamp
    end

    create_table :husbands do |t|
      t.string :name
      t.timestamp
    end

    create_table :xref_wife_husbands do |t|
      t.integer :wife_id
      t.integer :husband_id
      t.timestamp
    end

    create_table :girlfriends do |t|
      t.string :name
      t.timestamp
    end

    create_table :boyfriends do |t|
      t.string :name
      t.timestamp
    end

    create_table :xref_girlfriend_boyfriends do |t|
      t.integer :galfriend_id
      t.integer :guyfriend_id
      t.timestamp
    end

    create_table :kings, id: false do |t|
      t.primary_key :k_id
      t.string :country
      t.timestamp
    end

    create_table :queens, id: false do |t|
      t.primary_key :q_id
      t.string :country
      t.timestamp
    end

    create_table :xref_queen_kings do |t|
      t.integer :q_id
      t.integer :k_id
      t.timestamp
    end
  end
end
