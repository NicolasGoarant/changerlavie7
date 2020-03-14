class Newspaper < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_one :archive, dependent: :destroy

  after_save :creating_archive

  def creating_archive
    archive = self.archive
    if archive == nil
      @archive = Archive.new
      @archive.newspaper_id = self
      @archive.save!
      self.update(archive: @archive)
      self.save!
    end
  end
end
