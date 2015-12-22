class Corporation < ActiveRecord::Base
     mount_uploader :avatar, AvatarUploader
     has_many :billionaires
end
