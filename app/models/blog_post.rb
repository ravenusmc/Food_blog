class BlogPost < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  default_scope { order('created_at DESC') }

  #I was using paginator on this site and may come back to it. For now it is not being used.
  #paginates_per 3
  
  belongs_to :user
  has_many :comments 
end
