# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test_demo_session',
  :secret      => '3e20055863f7ea88c7b54796681c61cc936d57167a43e39e5ba89aee233f16ea5e03414ab589380139d7297f613542f5d06cbdd8935882ba3a4c6c6ac34e6a21'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
