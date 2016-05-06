class BiggerNumbers < ActiveRecord::Migration
  def change
    change_table :users do |t|
  t.change :money_in_cents, :bigint
end
  end
end
