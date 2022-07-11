class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
      #referencesでインデックスは自動付与される
      #利用されてるかどうかはSQLのexplainコマンドで調査する必要あり
    end
  end
end
