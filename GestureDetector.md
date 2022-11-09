# GestureDetector trong Android
## 1. Giới thiệu
- `Touch Gestures` xảy ra khi người dùng chạm tay lên màn hình
- Tương ứng với 2 giai đoạn nhận diện `Guesture`"
  - Thu thập dữ liệu về các sự kiện chạm `(Touch)`
  - Phân tích dữ liệu xem đáp  tiêu chí nào mà ứng dụng hỗ trợ
 ## 2. Các thư viện hỗ trợ
 - SỬ dụng các Class trong thư viện hỗ trợ của Android
 - Class `MotionEventCompat` cung cấp thêm các tiện ích & không thay thế cho class `MontionEvetn`,
 ## 3. Thu thập dữ liệu về các sự kiện
 - Người dùng chạn tay lên màn hình -> Trên View nhận về 1 callback (`onTouchEvent`)
 - -> Người dùng bắt đầu tương tác -> hệ thống theo dõi các vị trí chạm -> kết thúc bằng việnc bắt vị tí chạm cuối cùng
 - Trong quá trình tương tác `MontionEvent` chuyển giao mọi chi tiết tương tác cho `onTouchEvent`
 ## 4. Bắt sự kiện touch tại Activity hợc View
 ### a. Bắt sự kiện tại Activity
 - Để bắt sự kiện ghi đè lên callback `onTouchEvent()`
 - Sử dụng hàm `getActionMasked()` trích xuất các hành động của user thực hiện, cung cấp dữ liệu thô, bạn cần xác định 1 cử chỉ bạn quan tâm sẽ xảy ra
 
 ![image](https://user-images.githubusercontent.com/88178841/200169676-88170ee8-9d2d-405f-b712-c5a4c34acb7d.png)

- Sau khi bắt `onTouchEvent` như trên bạn có thể customize sự kiện riêng bạn mong muốn khi sự kiện diễn ra
- Nếu sử dụng cử chỉ thông thường như `double tap, long press, fling` -> tận dụng class `GestureDetector`
### b. Bắt sự kiện touch tại một View
- Thay thế cho `onTouchEvent` mặc định của 1 view, bạn có thể set 1 đối tượng  `View.OnTouchListener`

![image](https://user-images.githubusercontent.com/88178841/200170712-af4d6d6d-b363-4d11-bd31-5253394d9bcb.png)

- Nếu bạn tạo ra 1 Custom view, bạn có thể ghi đè lên `onTouchEvent()` như hình trên
## 5. Phát hiện Gesture
- Android cung cấp class `GestureDetector` để detect một số hành động thông thường, bao gồm `onDown(), onLongPress(), onFling()`, có thể kết hợp với `onTouchEvent`
### a. Deteching tất cả những cử chỉ được hỗ trợ
- Tạo 1 đối tượng `GestureCompat` -> đầu tiên tại `View` hoặc `Activity` bạn phải `implement GestureDetector.OnGestureListener` interface
- `GestureDetecto.OnGestureListener` thông báo cho user khi `Touch event` xảy ra
- Để nhận các sự kiện -> `Override` hàm `onTouchEvent()` lên các `View` hoặc `Activity`

![image](https://user-images.githubusercontent.com/88178841/200171867-5432bdd2-3887-4c6f-a352-5cc99b901abe.png)

![image](https://user-images.githubusercontent.com/88178841/200171890-31cad4cf-8ea5-4375-845b-9d76c4e61159.png)

![image](https://user-images.githubusercontent.com/88178841/200171903-a4889ab5-9fe8-487e-9533-28a1f8d28a85.png)

![image](https://user-images.githubusercontent.com/88178841/200171918-3c1b1594-0ed3-4ede-a5ea-b313aff7acad.png)

### b. Dêtching một tập con hỗ trợ Gestures
- Nếu bạn chỉ muốn xử lí một vài cử chỉ, bạn có thể extend `GestureDetector.SimpleOnGestureListener` thay vì implement cả interface
- `GestureDetector.OnGestureListener` có rất nhiều hàm
- `GestureDetector.SimpleOnGestureListener` đã implement tất cả các hàm có trong `GestureDetector.OnGestureListener`
- Bạn muốn custom sự kiệ gì bạn có thể override hàm đó và custom.. Ví dụ đoạn code đã override 2 hàm là `onDown` và `onFling`

![image](https://user-images.githubusercontent.com/88178841/200172351-37f216b6-6a25-4b7a-a595-93df74bddb30.png)
