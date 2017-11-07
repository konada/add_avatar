class Avatar < ActiveRecord::Base
  belongs_to :source

  has_attached_file :image, default_url: 'images/avatar.png'
  validates_attachment :image,
                       content_type:
                        {
                          content_type: [
                            'image/jpeg',
                            'image/jpg',
                            'image/png'
                          ]
                        }
end
