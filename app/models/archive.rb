class Archive < ApplicationRecord
  belongs_to :newspaper, optional: true
end
