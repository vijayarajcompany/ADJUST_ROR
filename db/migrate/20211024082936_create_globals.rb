class CreateGlobals < ActiveRecord::Migration[6.1]
  def change
    create_table :globals do |t|
      t.integer :event_id
      t.string :tracker
      t.string :tracker_name
      t.string :os_version
      t.string :os_name
      t.string :network_name
      t.string :connection_type
      t.string :network_type
      t.string :device_manufacturer
      t.string :device_name
      t.string :device_type
      t.string :proxy_ip_address
      t.string :ip_address
      t.string :region
      t.string :country
      t.string :country_subdivision
      t.string :city
      t.string :language
      t.string :app_id
      t.string :app_name
      t.string :app_version
      t.string :platform
      t.string :api_level
      t.string :sdk_version
      t.string :att_status
      t.string :time_spent
      t.string :session_count
      t.string :lifetime_session_count
      t.string :event
      t.string :event_name
      t.string :activity_kind
      t.string :click_time
      t.string :adjust_created_at

      t.timestamps
    end
  end
end
