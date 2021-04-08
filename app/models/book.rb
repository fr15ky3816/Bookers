class Book < ApplicationRecord
  validates :title, presence: {message: "error!! title cant be blank"}
  validates :body, presence: {message: "error!! body cant be blank"}

end
