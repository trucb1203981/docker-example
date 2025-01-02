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
    docker-compose build --no-cache
    ```

    hoặc

    ```sh
    docker-compose up --build
    ```

3. Xoá docker image
    ```sh
    docker-compose down -v
    ```

## Sử dụng
- Không cần chạy php artisan serve --host=0.0.0.0 --port=8000 bởi vì trong docker image php:8.3-fpm-alpine đã có php-fpm và tự động khởi chạy php-fpm ở port 9000
- Truy cập ứng dụng tại `http://localhost` sẽ tự động chuyển sang `https://localhost`
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
