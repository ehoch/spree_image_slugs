Deface::Override.new(:virtual_path => "spree/admin/images/_form",
                     :name => "product_images_form",
                     :replace => "[data-hook='alt_text']",
                     :partial => "spree/admin/images/alt_tag")