# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blogcoders_session',
  :secret      => 'bf2fbecb60df590b0a77e0052248293ea9f035b493bea66f064e4110b6d405d8949ce7d3e0ab2954a5063383ca5ddb007a66b9104854193fd908cea929b887cf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
