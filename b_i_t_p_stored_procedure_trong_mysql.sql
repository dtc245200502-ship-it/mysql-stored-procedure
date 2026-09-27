-- ========================================================
-- BÀI THỰC HÀNH: STORED PROCEDURE TRONG MYSQL
-- Cơ sở dữ liệu mẫu: classicmodels
-- ========================================================

USE classicmodels;

-- --------------------------------------------------------
-- BƯỚC 1: TẠO STORED PROCEDURE ĐẦU TIÊN
-- Thủ tục lấy toàn bộ danh sách khách hàng từ bảng customers
-- --------------------------------------------------------

DELIMITER //

DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers;
END //

DELIMITER ;


-- --------------------------------------------------------
-- BƯỚC 2: GỌI STORED PROCEDURE
-- --------------------------------------------------------

CALL findAllCustomers();


-- --------------------------------------------------------
-- BƯỚC 3: SỬA STORED PROCEDURE (DROP VÀ TẠO LẠI)
-- Cập nhật thủ tục chỉ lấy thông tin khách hàng có customerNumber = 175
-- --------------------------------------------------------

DELIMITER //

DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 175;
END //

DELIMITER ;


-- --------------------------------------------------------
-- BƯỚC 4: GỌI LẠI STORED PROCEDURE SAU KHI SỬA
-- --------------------------------------------------------

CALL findAllCustomers();