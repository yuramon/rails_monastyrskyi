# frozen_string_literal: true

json.extract! account, :id, :name, :age, :created_at, :updated_at
json.url account_url(account, format: :json)
