# TextView trongp trình Android hiển thị Text, HTML, SpannableString
- Hiển thị nội dung văn bản thiết lập `màu sắc, cỡ chữ, hiện thị HTML, trang trí với các Span, SpannableString`
## 1. TextView trong Android
- Cho phép hiển thị các text trên màn hình
## 2. Khai báo trong HTML
![image](https://user-images.githubusercontent.com/88178841/199749562-c04b912a-7154-405a-861b-2d5dae30d149.png)

## 3. Lấy TextView trong Java
- Từ file `Activity hoặc ViewGroup` lấy đối tượng TextView bằng `findViewById(id)`

![image](https://user-images.githubusercontent.com/88178841/199751740-2b33a27c-ac83-47cc-a10a-9338264ddab8.png)

## 4. Một số thuộc tính khác
### a. Id của TextView
- `android: id` thiết lập id của TextView
- `android:id = "@+id/mytextview"`
### b. Kích thước TextView
- `android:layout_width`: thiết lập chiều rộng
- `android:layout_height`: chiều cao
- đơn vị: dp, mm, px,..
- Gán chúng bằng `wrap_content` để kich thước vừa nội dung; `match_parent` căn vừa phần tử cha
### c. Vị trí chữ
- `android:gravity`: thiết lập vị trí tương đối, sắp xếp nội dung bên trong khung nhìn
![image](https://user-images.githubusercontent.com/88178841/199757886-185be8e2-4034-48cc-b721-d01628251b78.png)

- `android:layout_gravity`: sắp xếp vị trí chế độ xem bên ngoài chính nó
![image](https://user-images.githubusercontent.com/88178841/199759132-c940f3f9-bcf6-4eff-9da6-55d3b89e86db.png)
