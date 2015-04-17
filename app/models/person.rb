class Person
  include Neo4j::ActiveNode

  property :name, type: String, index: :exact
  property :house, type: String, index: :exact

  validates :name,
    presence: true
end
