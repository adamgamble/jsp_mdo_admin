class Page < ActiveRecord::Base
  set_table_name "Pages"
  set_primary_key "ID_Page"
  belongs_to :volume, :foreign_key => "id_Volume"
  belongs_to :school, :foreign_key => "id_School"

  def page_number
    self.PageNumber
  end

  def thumbnail_url size = :small
    case size
    when :small
      "http://mydesignonline.jsprinting.com/Images/User Images/Pages/#{id}_small.jpg"
    when :large
      "http://mydesignonline.jsprinting.com/Images/User Images/Pages/#{id}_big.jpg"
    end
  end

  def render_url
    "http://mydesignonline.jsprinting.com/render.php?action=prepresspdf&ID_Page=#{id}"
  end

  def debug_url
    "http://mydesignonline.jsprinting.com/render/debug.php?action=prepresspdf&ID_Page=#{id}"
  end
end
