module Orealm
  class Application < Rails::Application
    # config.neo4j.session_options = {
    #   basic_auth: {
    #     username: 'foo',
    #     password: 'bar',
    #   }
    # }
    config.neo4j.session_type = :server_db
    config.neo4j.session_path = ENV["GRAPHENEDB_URL"] || 'http://localhost:7474'
  end
end
