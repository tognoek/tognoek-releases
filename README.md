# tognoek-releases

Repository này chứa **các bản build (release)** đã được biên dịch sẵn của dự án.

Người dùng có thể **tải trực tiếp file `.exe` hoặc `.jar`** để sử dụng mà **không cần tự build source code**.

---

## 📦 Nội dung

Mỗi bản phát hành có thể bao gồm:

* `.exe` – chương trình chạy trên Windows
* `.jar` – ứng dụng Java
* các file build khác được tạo trong quá trình đóng gói

Tất cả các file sẽ được **tự động đóng gói và đăng lên GitHub Releases**.

---

## ⬇️ Tải phiên bản mới nhất

Trang tải tất cả các bản phát hành:

```
https://github.com/tognoek/tognoek-releases/releases
```

Tải trực tiếp bản mới nhất:

```
https://github.com/tognoek/tognoek-releases/releases/latest/download/release.zip
```

---

## ⚙️ Hệ thống phát hành tự động

Repository này sử dụng **GitHub Actions** để tự động tạo release.

Khi có file build mới được push lên:

1. Các file trong thư mục `build/` sẽ được chuẩn bị
2. Một số file sẽ được **đổi tên theo ngày push**
3. Hệ thống sẽ **tạo release mới**
4. File sẽ được **đóng gói thành `.zip` và upload**

---

## 🌐 Website

Trang web chính thức của dự án:

**Website:**
https://tognoekdownload.pages.dev/

---

## ▶️ YouTube

Video hướng dẫn và cập nhật dự án:

**YouTube:**
https://www.youtube.com/@tognoek

---

⭐ Nếu dự án hữu ích, hãy ghé thăm website hoặc theo dõi kênh YouTube để ủng hộ nhé!
