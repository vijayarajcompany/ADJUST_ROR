# frozen_string_literal: true
class LoginController < ApplicationController
  def global_parameters

    # Global
    @tracker = params[:tracker]
    @tracker_name = params[:tracker_name]
    @os_version = params[:os_version]
    @os_name = params[:os_name]
    @network_name = params[:network_name]
    @connection_type = params[:connection_type]
    @network_type = params[:network_type]
    @device_manufacturer= params[:device_manufacturer]
    @device_name = params[:device_name]
    @device_type = params[:device_type]
    @proxy_ip_address = params[:proxy_ip_address]
    @ip_address = params[:ip_address]
    @region = params[:region]
    @country = params[:country]
    @country_subdivision = params[:country_subdivision]
    @city = params[:city]
    @language = params[:language]
    @app_id = params[:app_id]
    @app_name = params[:app_name]
    @app_version = params[:app_version]
    @platform = params[:platform]
    @api_level = params[:api_level]
    @sdk_version = params[:sdk_version]
    @time_spent = params[:time_spent]
    @session_count = params[:session_count]
    @lifetime_session_count = params[:lifetime_session_count]
    @event = params[:event]
    @event_name = params[:event_name]
    @activity_kind = params[:activity_kind]
    @click_time = params[:click_time]
    @created_at = params[:created_at]
  end

  def signing
    @sigin_firstname = params[:email]
    # DbStoredProcedure.fetch_db_records("exec procedure_name 'args1', 'args2'
    # Testing.store_testing
    # DbStoredProcedure.fetch_db_records("exec sp_testing 'args1', 'args2'")
    # DatabaseHelper.execute('','mydddddd','hello','','hello')
    # ActiveRecord::Base.connection.execute("CALL sp_testing ('args1', 'args2')")
  end




  def signing111
    email       = params[:email]
    firstname   = params[:fname]
    lastname    = params[:lname]
    ern_number  = params[:lname]

    event_token = params[:event]
    adjust_created_at = params[:created_at]

    # redirect_to controller: :root, action: :index
    # check user available
    # event_found = Event.where(token: event_token).empty?
    event_id = Event.where(token: event_token).pick(:id)
    if event_id
      start_capture_login_event(event_id, email, firstname, lastname,ern_number,adjust_created_at)
    end
  end



  def start_capture_login_event(event_id, email, firstname, lastname, ern_number,adjust_created_at)
    # user_found = User.where(email: email).empty?
    user_id = User.where(email: email).pick(:id)
    unless user_id
      user = User.create(fname: firstname, lname: lastname, email: email, ern_number: ern_number)
    end
    capture_login_event(adjust_created_at, email, ern_number, event_id, firstname, lastname, user_id)
  end














  def signup
    @sigin_email = params[:email]
  end

  private

  def capture_login_event(adjust_created_at, email, ern_number, event_id, firstname, lastname, user_id)
    if user_id
      # add to login Table
      event = Login.create(user_id: user_id, event_id: event_id, firstname: firstname, lastname: lastname, email: email, ernnumber: ern_number, adjust_created_at: adjust_created_at)
      if event.id
        global_parameters
        # add global Table
      end
    end
  end





end
