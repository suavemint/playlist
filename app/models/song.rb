class Song < ActiveRecord::Base
  belongs_to :playlist
  enum :source => [ :spotify, :pandora, :amazon ]

  after_create :update_created_at
  after_update :update_updated_at

  def created_at
    self.created_at = Time.now
  end

  def updated_at
    self.updated_at = Time.now
  end
end
