# ✨ BlogPostApp

A simple blog post app built with Ruby on Rails 7 and TailwindCSS.

## 🧰 Requirements

- ✅ WSL (Windows Subsystem for Linux)
- 💎 Ruby 3.4.1  
- 🚂 Rails 7.1.3  
- 🐘 SQLite3  

---

## 🛠️ Getting Started

1. **Clone the repo**

```bash
git clone https://github.com/JayroGT/blog_post_app.git
cd blog_post_app
```

2. **Install gems**

```bash
bundle install
```

3. **Set up the database**

```bash
bin/rails db:setup
```

> Or if you already have some data:

```bash
bin/rails db:create db:migrate
```

4. **Start the server**

```bash
bin/rails server
```

📍 Visit: [http://localhost:3000](http://localhost:3000)

---

## ✅ Running Tests

Run tests with:

```bash
bundle exec rspec
```

---

## 🔧 Useful Dev Tools

- 🎨 TailwindCSS for styling
- ⚡ Turbo and Stimulus (Hotwire) for interactivity
- 📬 `letter_opener_web` to preview sent emails (`/letter_opener`)

---

## 📝 Notes

- Built and tested in **WSL** — make sure Ruby, Node, and Yarn are installed if needed.
- If you add new gems, don’t forget to run `bundle install` again.

---

That’s it! 🚀




## 📄 License

This project is licensed under the [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) — no commercial use allowed.

