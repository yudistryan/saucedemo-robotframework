*** Variables ***
# URLs
${base_url}    https://www.saucedemo.com/
${productList_sub_url}    /inventory.html
${about_url}    https://saucelabs.com/
${linkedin_url}    https://www.linkedin.com/company/sauce-labs/
${twitter_url}    https://twitter.com/saucelabs
${facebook_url}    https://www.facebook.com/saucelabs

# Usernames
${standard_user}    standard_user
${locked_out_user}    locked_out_user
${problem_user}    problem_user
${performance_glitch_user}    performance_glitch_user
${error_user}    error_user
${visual_user}    visual_user
${invalid_username1}    invalid_user1
${invalid_username2}    invalid_user2
${invalid_username3}    invalid_user3
${invalid_username4}    invalid_user4
${invalid_username5}    invalid_user5
${invalid_username6}    invalid_user6

# Passwords
${valid_password}    secret_sauce
${invalid_password}    justinvalid

# Image Sources
${dogPicture}    https://www.saucedemo.com/static/media/sl-404.168b1cce.jpg
${backpackPicture}    https://www.saucedemo.com/static/media/sauce-backpack-1200x1500.0a0b85a3.jpg
${bikeLightPicture}    https://www.saucedemo.com/static/media/bike-light-1200x1500.37c843b0.jpg
${boltTshirtPicture}    https://www.saucedemo.com/static/media/bolt-shirt-1200x1500.c2599ac5.jpg
${fleeceJacketPicture}    https://www.saucedemo.com/static/media/sauce-pullover-1200x1500.51d7ffaf.jpg
${onesiePicture}    https://www.saucedemo.com/static/media/red-onesie-1200x1500.2ec615b2.jpg
${redTshirtPicture}    https://www.saucedemo.com/static/media/red-tatt-1200x1500.30dadef4.jpg

# Element Position
${cart_x}    1289
${cart_y}    10
${addToCartRedT_x}    1063.5
${addToCartRedT_y}    176

# Product Details
&{details_backpack}    name=Sauce Labs Backpack    price=$29.99
&{details_bikeLight}    name=Sauce Labs Bike Light    price=$9.99
&{details_boltTshirt}    name=Sauce Labs Bolt T-Shirt    price=$15.99
&{details_fleeceJacket}    name=Sauce Labs Fleece Jacket    price=$49.99
&{details_onesie}    name=Sauce Labs Onesie    price=$7.99
&{details_redTshirt}    name=Test.allTheThings() T-Shirt (Red)    price=$15.99