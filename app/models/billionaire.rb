class Billionaire < ActiveRecord::Base
    
    belongs_to :corporation
    mount_uploader :avatar, AvatarUploader
  
end
