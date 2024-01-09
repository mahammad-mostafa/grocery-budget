<a name="title"></a>

<!-- TITLE -->

# 🏷️ Grocery Budget

This is the capstone project of the fifth module in the **Microverse** program.
<br/>
Check the below contents for further details about this project.

<!-- CONTENTS -->

# 📗 Contents

- [Description](#description)
- [Instructions](#instructions)
- [Authors](#authors)
- [Future](#future)
- [Contributions](#contributions)
- [Support](#support)
- [Acknowledgements](#acknowledgements)
- [License](#license)

<!-- DESCRIPTION -->

<a name="description"></a>

# 📖 Description

This repository is about a budget management app for grocery items.
Porject is built using `Rails` framework with `Ruby`.
It is configured to use `PostgreSQL` database.
Integration tests using `Capybara` gem.
Authentication using `Devise` gem.
Authorization using `CanCanCan` gem.
Optimized queries with `bullet` gem.

📌 **Tech Stack:**
- Programming language is `Ruby`
- Database used is `PostgreSQL`
- Framework used is `Rails`
- Tests done with `RSpec`

📌 **Key Features:**
- Responsive layout with all screen sizes
- Splash welcome page for new visitors
- User authentication is required first (`email` / `password`)
- Registeration requires (`name` / `email` / `password`)
- Navigation side menu with links (`Home` / `Account` / `Logout`)
- Only registered users can access pages
- Each group displays (`name` / `icon` / `total`)
- Every group can contain several grocery items
- Any grocery item can belong to multiple groups
- Each grocery item displays (`name` / `amount`)
- Users can create new groups and new grocery items
- Back navigation to the previous page

<p align="right"><a href="#title">back to top</a></p>

<!-- INSTRUCTIONS -->

<a name="instructions"></a>

# 🛠️ Instructions

You can easily download or fork this repository and work on it immadiately!

📌 **Prerequisites:**
- You need `Ruby` language & `PostgreSQL` database installed

📌 **Installation:**
- To get all required gem dependencies run
```
bundle install
```
- Create all required databases with
```
rails db:create
```
- Create all table schemas with
```
rails db:migrate
```

📌 **Development:**
- Run live server using
```
rails server
```
- Manipulate & process models data through
```
rails console
```

📌 **Tests:**
- Run all tests with
```
bundle exec rspec -f d
```

<p align="right"><a href="#title">back to top</a></p>

<!-- AUTHORS -->

<a name="authors"></a>

# 👥 Authors

📌 **Mahammad:**
- [GitHub](https://github.com/mahammad-mostafa)
- [Twitter](https://twitter.com/mahammad_mostfa)
- [LinkedIn](https://linkedin.com/in/mahammad-mostafa)

<p align="right"><a href="#title">back to top</a></p>

<!-- FUTURE -->

<a name="future"></a>

# 🔭 Future

Some additional features I may implement in the project:
- [ ] Integrate `React` framework in frontend
- [ ] Implement (dark / light) theme switch

<p align="right"><a href="#title">back to top</a></p>

<!-- CONTRIBUTIONS -->

<a name="contributions"></a>

# 🤝🏻 Contributions

Wish to contribute to this project?
<br/>
Contributions, issues, and feature requests are more than welcome!
<br/>
Feel free to check the [issues](../../issues) page too.

<p align="right"><a href="#title">back to top</a></p>

<!-- SUPPORT -->

<a name="support"></a>

# ⭐️ Support

Like this project? Show your support by starring!

<p align="right"><a href="#title">back to top</a></p>

<!-- ACKNOWLEDGEMENTS -->

<a name="acknowledgements"></a>

# 🙏🏻 Acknowledgements

I thank everyone at **Microverse** for guiding me through this project.

<p align="right"><a href="#title">back to top</a></p>

<!-- LICENSE -->

<a name="license"></a>

# 📝 License

This project is [MIT](LICENSE.md) licensed.

<p align="right"><a href="#title">back to top</a></p>