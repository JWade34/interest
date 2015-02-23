class Pin < ActiveRecord::Base

  mount_uploader :photo, PhotoUploader
  belongs_to :user

  include PgSearch
  pg_search_scope :search,
                  :against => [:name],
                  :using => {
                    :tsearch => {
                      :dictionary => "english"}
                  }

end
