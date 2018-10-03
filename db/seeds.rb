User.destroy_all
Relationship.destroy_all

justin = User.create(name:"Justin",age:21,bio:"Copy & Paste!",location:"Long Island",email:"justin@aol.com", img_url:"https://pixel.nymag.com/imgs/daily/selectall/2016/11/17/17-trebuchet.w700.h700.jpg")
forrest = User.create(name:"Forrest",age:25,bio:"I hate pair programming",location:"Queens", email:"fireflamesforrest@gmail.com")
jesse = User.create(name:"Jesse",age:24,bio:"No Bio",location:"Queens",email:"jesse@hotmail.com")
parker = User.create(name:"Parker",age:27,bio:"Copy & Paste!",location:"Long Island",email:"parker@aol.com", img_url:"https://pixel.nymag.com/imgs/daily/selectall/2016/11/17/17-trebuchet.w700.h700.jpg")
garry = User.create(name:"Garry",age:27,bio:"Copy & Paste!",location:"Long Island",email:"garry@aol.com", img_url:"https://pixel.nymag.com/imgs/daily/selectall/2016/11/17/17-trebuchet.w700.h700.jpg")
jon = User.create(name:"Jon",age:27,bio:"Copy & Paste!",location:"Long Island",email:"jon@aol.com", img_url:"https://pixel.nymag.com/imgs/daily/selectall/2016/11/17/17-trebuchet.w700.h700.jpg")
andrew = User.create(name:"Andrew",age:27,bio:"Copy & Paste!",location:"Long Island",email:"andrew@aol.com", img_url:"https://pixel.nymag.com/imgs/daily/selectall/2016/11/17/17-trebuchet.w700.h700.jpg")

Relationship.create(liker_id: justin.id,likee_id:forrest.id, liked: true)
Relationship.create(liker_id: forrest.id,likee_id:justin.id, liked: true)
Relationship.create(liker_id: forrest.id,likee_id:jesse.id, liked: true)
Relationship.create(liker_id: jesse.id,likee_id:justin.id, liked: true)
Relationship.create(liker_id: justin.id,likee_id:parker.id, liked: false)
Relationship.create(liker_id: justin.id,likee_id:garry.id, liked: false)
