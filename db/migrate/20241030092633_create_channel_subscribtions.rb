class CreateChannelSubscribtions < ActiveRecord::Migration[7.1]
  def change
    create_table :channel_subscribtions do |t|
      t.references :subscriber, null: false, foreign_key: true
      t.references :video_channel, null: false, foreign_key: true
      t.datetime :subscribed_yet

      t.timestamps
    end
  end
end
