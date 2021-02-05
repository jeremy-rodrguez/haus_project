class Agent < ApplicationRecord
    has_many :properties
    has_many :clients, through: :properties, :dependent => :delete_all
end
