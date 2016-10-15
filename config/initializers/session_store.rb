# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_disposeMe_session',
  :secret      => '8c845a2b3eff1ae9b2021a7b7c404bc501d011ea4033231237258a0743fc13915cc36b6fb74fa4a7ac6cd3a880b1ae56426166639ab17fb6bf14a1c28c2f7cf2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
