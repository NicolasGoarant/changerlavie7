class Library < ApplicationRecord
  belongs_to :article, optional: true
  belongs_to :user, optional: true

  # before_create :prevent_creating

  def prevent_creating
    if self.user_id != 5
      self.delete!
    end
  end

end
