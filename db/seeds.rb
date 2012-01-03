Dir["#{Rails.root}/db/upload_pic/*/*"].each do |pic|
  cat = Category.find_or_create_by_title(pic.split('/')[-2])
  Picture.create(:category => cat , :image => File.open(pic))
  puts "Create #{pic}"
end

