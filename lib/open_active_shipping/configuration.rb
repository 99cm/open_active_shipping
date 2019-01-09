module OpenActiveShipping
  class Configuration < Spree::Preferences::Configuration
    # UPS
    preference :ups_login, :string, default: 'aunt_judy'
    preference :ups_password, :string, default: 'secret'
    preference :ups_key, :string, default: 'developer_key'
    preference :shipper_number, :string, default: nil

    # Fedex
    preference :fedex_login, :string, default: 'meter_no'
    preference :fedex_password, :string, default: 'special_sha1_looking_thing_sent_via_email'
    preference :fedex_account, :string, default: 'account_no'
    preference :fedex_key, :string, default: 'authorization_key'

    # USPS
    preference :usps_login, :string, default: 'aunt_judy'
    preference :units, :string, default: 'imperial'
    preference :unit_multiplier, :decimal, default: 16 # 16 oz./lb - assumes variant weights are in lbs
    preference :default_weight, :integer, default: 0 # 16 oz./lb - assumes variant weights are in lbs
    preference :handling_fee, :integer
    preference :max_weight_per_package, :integer, default: 0 # 0 means no limit

    # General
    preference :test_mode, :boolean, default: false
  end
end
