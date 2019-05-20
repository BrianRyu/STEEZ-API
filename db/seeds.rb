User.destroy_all
Product.destroy_all
Post.destroy_all
Part.destroy_all

# USERS
brian = User.create(username: "brian", password: "pw")
testuser = User.create(username: "test", password: "test")
# PRODUCTS
travi1 = Product.create(name: "Travis Scott x Air Jordan 1 Retro High OG 'Mocha'", img_url: "https://image.goat.com/crop/750/attachments/product_template_additional_pictures/images/018/783/118/original/488879_01.jpg.jpeg", description: "The Travis Scott x Air Jordan 1 Retro High features a new look on the iconic silhouette, thanks to an oversized backward-facing Swoosh on the lateral side. A traditionally oriented Swoosh graces the medial side of the upper, which is built with a blend of white leather and brown suede. Additional unique details include a double-layer construction on the collar and Scott’s crudely drawn face logo embossed on the heel.")
infrared6 = Product.create(name: "Air Jordan 6 Retro 'Infrared' 2019", img_url: "https://image.goat.com/crop/750/attachments/product_template_additional_pictures/images/018/675/318/original/464372_01.jpg.jpeg", description: "The 2019 edition of the Air Jordan 6 Retro ‘Infrared’ is true to the original colorway, which Michael Jordan wore when he captured his first NBA title. Dressed primarily in black nubuck with a reflective 3M layer underneath, the mid-top features Infrared accents on the midsole, heel tab and lace lock. Nike Air branding adorns the heel and sockliner, an OG detail last seen on the 2000 retro.")
camoFullZipBape = Product.create(name: "1ST CAMO FULL ZIP HOODIE MENS", img_url: "https://cdn.shopify.com/s/files/1/0214/3706/products/001ZPF301009_YEL_A_large.jpg?v=1553278169", description: "100% Cotton Full Zip Bape Hoodie - Yellow Camo")
apeHeadTrackShorts = Product.create(name: "BAPE Ape Head Track Shorts Black", img_url: "https://stockx.imgix.net/products/streetwear/BAPE-Ape-Head-Track-Shorts-Black.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1555366037&w=2200", description: "BAPE Ape head track shorts - black")
greenPastalBigLogoHoodie = Product.create(name: "Pastal Color Big Logo Wide Pullover Hoodie", img_url: "https://cdn.shopify.com/s/files/1/0214/3706/products/001PPF301008_GRN_A_1024x1024.jpg?v=1552680046" , description: "Green pastal colorway - Big Logo Wide Pullover Hoodie")
camoBeachPants = Product.create(name: "1st Camo Beach Pants", img_url: "https://cdn.shopify.com/s/files/1/0214/3706/products/001SPF301002_YEL_A_large.jpg?v=1558113419", description: "100% Polyester Beach Pants - Yellow Camo")

# POSTS 
post1 = Post.create(name: "First Outfit Of The Year", img_url: "/photos/img1.png", views: 0, likes: 0, user_id: brian.id)
post2 = Post.create(name: "Bred 4's The Return!", img_url: "https://sneakers-magazine.com/wp-content/uploads/2019/02/nike-air-jordan-4-bred-2019-retro-308497-060-on-feet-1.jpg", views: 0, likes: 0, user_id: brian.id)


# PARTS
part1 = Part.create(post_id: post1.id, product_id: travi1.id)
part2 = Part.create(post_id: post1.id, product_id: camoFullZipBape.id)
part3 = Part.create(post_id: post1.id, product_id: apeHeadTrackShorts.id)

part4 = Part.create(post_id: post2.id, product_id: infrared6.id)
part5 = Part.create(post_id: post2.id, product_id: greenPastalBigLogoHoodie.id)
part6 = Part.create(post_id: post2.id, product_id: camoBeachPants.id)