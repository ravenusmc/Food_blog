class AddAttachmentAvatarToBlogPosts < ActiveRecord::Migration
  def self.up
    change_table :blog_posts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :blog_posts, :avatar
  end
end
