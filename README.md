![](https://img.shields.io/badge/ROR-Template-blueviolet)

# Blog App

> A typical example of a blog website is the Blog app. I built a completely working website that displays a list of topics and allows visitors to engage with them by leaving comments and like them.


## Built With

- Ruby
- Ruby on rails
- 💓

# Get Started
To get a local copy up and running follow these simple steps.

```bash
$ git clone https://github.com/farouqdaif1/blogapp.git
$ cd blogapp
$ bundle install 
```

## Authors

👤 **Farouq Daif**

- GitHub: [@farouqdaif1](https://github.com/farouqdaif1)
- LinkedIn: [@Farouq Daif ](https://www.linkedin.com/in/farouqdaif/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc


first_user = User.create(name: 'Tom', photo: 'https://www.shareicon.net/data/512x512/2015/09/18/103160_man_512x512.png',bio:'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://image.shutterstock.com/image-vector/face-happy-girl-avatar-laughing-260nw-1459862774.jpg', bio: 'Teacher from Poland.')
first_post = Post.create(author: first_user, title: 'Hello1', text: 'This is first post')
second_post = Post.create(author: first_user, title: 'Hello2', text: 'This is second post')
third_post = Post.create(author: second_user, title: 'Hello3', text: 'This is third post')
fourth_post = Post.create(author: second_user, title: 'Hello4', text: 'This is fourth post')
Comment.create(post: first_post, author: second_user, text: 'Hi Tom1!' )
Comment.create(post: first_post, author: second_user, text: 'Hi Tom2!' )
Comment.create(post: first_post, author: second_user, text: 'Hi Tom3!' )
Comment.create(post: first_post, author: second_user, text: 'Hi Tom4!' )
Comment.create(post: first_post, author: second_user, text: 'Hi Tom5!' )
Comment.create(post: first_post, author: second_user, text: 'Hi Tom6!' )
