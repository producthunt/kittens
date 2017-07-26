require 'active_support/core_ext/numeric'

module Kittens::FlushDb
  extend self

  def call
    DB[:router_errors].where('emitted_at < ?', 72.hours.ago).delete
    DB[:postgres_events].where('emitted_at < ?', 72.hours.ago).delete
  end
end
