class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :library, dependent: :destroy
  has_many :articles, through: :libraries

  after_save :creating_library

  def creating_library
        @library = self.library
        if @library == nil
        @library = Library.new
        @library.save!
        self.update(library: @library)
        self.save!
    end
  end

end
