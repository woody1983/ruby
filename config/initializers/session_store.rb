# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railscoders_session',
  :secret      => 'e4ebd1b23ba62311905fc0474df21df374549869d135e2b2e15da959b7d22d0638e29603fe87211d6ab598b770bac2a847dbfe043935d311c4c0c9117cee7cb6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
