class AddMoneyToUsers < ActiveRecord::Migration
  def change
    add_column :users,
    :money_in_cents,
    :integer,
    default: 0
  end
end
