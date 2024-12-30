# docker-example

## Giới thiệu
// Tài liệu dùng để training docker căn bản

## Yêu cầu
- Docker
- Docker Compose
- Laravel Framework

## Cài đặt
1. Clone repository:
    ```sh
    git clone <repository-url>
    cd docker-example
    ```

2. Xây dựng và chạy container:
    ```sh
    docker-compose up --build
    ```

3. Xoá docker image
    ```sh
    docker-compose down -v
    ```

## Sử dụng
- Muốn build nginx chuyển đổi proxy từ port 80 sang 8000 của laravel thì trong file docker-compose.yml mở comment dịch vụ nginx và đóng port của dịch vụ app
- Truy cập ứng dụng tại `http://localhost`
## Gỡ lỗi
- Để xem logs của container:
    ```sh
    docker-compose logs
    ```

- Để vào bên trong container:
    ```sh
    docker-compose exec -it <service-name> /bin/bash
    ```

## Đóng góp
- Fork repository
- Tạo nhánh mới (`git checkout -b feature/your-feature`)
- Commit thay đổi (`git commit -m 'Add some feature'`)
- Push lên nhánh (`git push origin feature/your-feature`)
- Tạo Pull Request

## Giấy phép
Dự án này được cấp phép theo giấy phép MIT.
