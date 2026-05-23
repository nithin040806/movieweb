# Open Night 🎬

<div align="center">

<img src="https://img.shields.io/badge/PHP-8.0+-777BB4?style=for-the-badge&logo=php" />
<img src="https://img.shields.io/badge/MySQL-Database-blue?style=for-the-badge&logo=mysql" />
<img src="https://img.shields.io/badge/XAMPP-Local%20Server-orange?style=for-the-badge&logo=xampp" />
<img src="https://img.shields.io/badge/Apache-Web%20Server-red?style=for-the-badge&logo=apache" />
<img src="https://img.shields.io/badge/LAMP-Stack-black?style=for-the-badge" />

### A Full-Stack Movie Streaming Web Application

Open Night is a movie streaming web application that allows authenticated users to discover, browse, and stream movies directly in the browser. Users can explore content by Language, Genre, and Latest releases, and manage personal collections including a Watchlist and Favourites list.

</div>

---

# ✨ Features

## 🔐 User Authentication
- User Registration and Login
- Session-based authentication system
- Protected routes using PHP sessions
- Secure Logout functionality

---

## 🎥 Movie Streaming
- Stream trailers directly in-browser
- Watch full-length movies using video modal popups
- Dedicated movie detail pages for each title

---

## 🏠 Movie Discovery
- Browse movies by:
  - Language
  - Genre
  - Latest Releases
- Hero carousel for featured content
- Dynamic movie sliders using Owl Carousel

---

## ❤️ Personal Collections
- Add movies to Watchlist
- Add movies to Favourites
- User-specific collections stored in database

---

## 🔍 Search Functionality
- Search movies quickly
- Find content across the entire catalogue

---

# 🛠️ Technology Stack

| Component | Technology |
|---|---|
| **Backend** | PHP 8.0+ |
| **Database** | MySQL / MariaDB |
| **Frontend** | HTML5, CSS3 |
| **Libraries** | jQuery, Owl Carousel |
| **Local Server** | XAMPP (Apache + MySQL) |

---

# 📁 Project Structure

```bash
movieweb/
├── programs/
│   ├── connection.php
│   ├── function.php
│   ├── login.php
│   ├── signup.php
│   ├── logout.php
│   ├── hom.php
│   ├── searchpage.php
│   ├── watchlist.php
│   ├── watchlistpage.php
│   ├── favourite.php
│   ├── favouritepage.php
│   ├── hom.css
│   ├── moviepages.css
│   └── [MovieName].php
│
├── project (1).sql
├── trailers/
└── movies/
```

---

# 🚀 Getting Started

## ✅ Prerequisites

Before setting up the project, install the following:

- XAMPP (Apache + MySQL + PHP)
- PHP 8.0.28 or higher
- MySQL / MariaDB 10.4.28+
- Composer (optional)
- Git

---

# ⚙️ Installation & Local Setup

## 1️⃣ Clone or Download the Project

Place the project folder inside your XAMPP `htdocs` directory:

```bash
C:\xampp\htdocs\movieweb\
```

Or clone using Git:

```bash
git clone https://github.com/nithin040806/movieweb.git
```

---

## 2️⃣ Start XAMPP

Open the XAMPP Control Panel and start:

- Apache
- MySQL

---

## 3️⃣ Create the Database

Open your browser:

```bash
http://localhost/phpmyadmin
```

Then:

1. Create a database named:

```sql
project
```

2. Import:

```bash
project (1).sql
```

This will create all required tables.

---

# 🗄️ Database Tables

| Table | Purpose |
|---|---|
| movies | Stores movie metadata and paths |
| users | Stores user credentials |
| genre | Genre categories |
| genrebridge | Links movies to genres |
| language | Language categories |
| languagebridge | Links movies to languages |
| watchlist | User watchlist entries |
| favourite | User favourite entries |

---

## 4️⃣ Configure Database Connection

Open:

```bash
programs/connection.php
```

Update credentials if needed:

```php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "project";

$con = new mysqli($servername, $username, $password, $dbname);
```

---

## 5️⃣ Add Media Assets

Create the following folders:

```bash
C:\xampp\htdocs\movieweb\trailers\Telugu trailers\
C:\xampp\htdocs\movieweb\movies\Telugu\
```

---

## 🎞️ Media Structure

### Trailers

```bash
/project/trailers/Telugu trailers/MovieName.mp4
```

### Full Movies

```bash
http://localhost/project/movies/Telugu/MovieName.mkv
```

### Posters
- External image URLs
- Local image paths stored in database

---

## 6️⃣ Run the Application

Open:

```bash
http://localhost/movieweb/programs/signup.php
```

Create an account and log in.

---

# 🧑‍💻 Usage

## 📌 Application Flow

### 1️⃣ Sign Up
Create a new account:

```bash
signup.php
```

---

### 2️⃣ Login

```bash
login.php
```

After successful login, users are redirected to:

```bash
hom.php
```

---

### 3️⃣ Browse Movies
Explore content by:
- Language
- Genre
- Latest Releases

---

### 4️⃣ Search Movies
Use the search bar to find specific titles.

---

### 5️⃣ Watch Movies
Open movie detail pages to:
- Play trailers
- Stream movies
- Add to Watchlist
- Add to Favourites

---

### 6️⃣ Logout
End the session securely using:

```bash
logout.php
```

---

# 🔐 Authentication System

Every protected page uses:

```php
check_login($con)
```

from:

```bash
function.php
```

---

## ⚡ Authentication Flow

- Validates active user session
- Redirects unauthorized users to `login.php`
- Stores session in:

```php
$_SESSION['userid']
```

- Clears session on logout

---

## 🆔 User ID Generation

Unique user IDs are generated using:

```php
random_num()
```

---

# 🔧 Database Connection Details

| Parameter | Value |
|---|---|
| Host | localhost |
| Username | root |
| Password | (empty) |
| Database | project |

---

# ⚠️ Known Limitations

- Video paths are hardcoded in the database
- Local folder structure must match exactly
- Uses combined Controller-View architecture
- No password hashing implemented
- Not production-ready without security improvements

---

# 🌟 Future Improvements

- Password hashing using bcrypt
- Responsive mobile UI
- MVC Architecture
- REST API backend
- User reviews and ratings
- Admin dashboard
- Docker support
- Cloud video hosting

---

# 🤝 Contributing

Contributions are welcome.

1. Fork the repository
2. Create a feature branch
3. Commit changes
4. Push the branch
5. Open a Pull Request

---

# 📄 License

This project is intended for educational and personal use only.

---

<div align="center">

## ⭐ If you like this project, consider giving it a star on GitHub!

</div>
