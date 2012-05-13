Spree::Image.class_eval do
  validates :alt, :presence => true, :length => {:minimum => 3 }
  validates :slug, :uniqueness => true

  if Spree::Config[:use_s3]
    Spree::Image.attachment_definitions[:attachment][:path] = "images/:style/:slug.:extension"
  else
    Spree::Image.attachment_definitions[:attachment][:path] = ":rails_root/public/images/:style/:slug.:extension"
  end
  
  before_validation do
    self.slug = alt.to_s.to_url(:limit => 64) unless slug
  end
end