Article.delete_all

user = User.first
text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam rhoncus sapien sit amet magna dignissim, in commodo nunc consequat. Phasellus sed tortor id velit malesuada malesuada dapibus quis nibh. Curabitur sit amet nunc suscipit nunc blandit eleifend. Donec sagittis mollis auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam eleifend turpis vel ligula condimentum, et pretium risus auctor. Proin eleifend sed sem mattis suscipit. Morbi sed facilisis nibh, a tristique arcu. Ut finibus augue non urna convallis viverra. Sed id elit id lorem hendrerit sodales. Suspendisse egestas scelerisque nibh, quis egestas metus fringilla sed. Donec condimentum tempor sem et ultricies."

p "Iniciando..."

Category.all.each do |category|
  30.times do
    Article.create!(
      title: "Article #{rand(10000)}",
      body: text,
      category_id: category.id,
      user_id: user.id,
      created_at: rand(365).days.ago,
    )
  end
end

p "Terminou!"
