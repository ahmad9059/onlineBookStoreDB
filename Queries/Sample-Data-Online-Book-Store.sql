
USE onlineBookStore;

INSERT INTO Users (Name, Email, Password, Phone, Address, Role)
VALUES 
('Ahmed Khan', 'ahmed.khan@example.pk', 'hashedpass1', '03001234567', 'Model Town, Lahore', 'Customer'),
('Fatima Raza', 'fatima.raza@example.pk', 'hashedpass2', '03211234567', 'Clifton, Karachi', 'Customer'),
('Ali Zafar', 'ali.zafar@example.pk', 'hashedpass3', '03331234567', 'Satellite Town, Rawalpindi', 'Customer'),
('Hina Malik', 'hina.malik@example.pk', 'hashedpass4', '03451234567', 'Gulberg, Lahore', 'Customer'),
('Tariq Mehmood', 'tariq.mehmood@example.pk', 'hashedpass5', '03121234567', 'University Road, Peshawar', 'Admin'),
('Rabia Sadiq', 'rabia.sadiq@example.pk', 'hashedpass6', '03091234567', 'F-11, Islamabad', 'Customer'),
('Junaid Akram', 'junaid.akram@example.pk', 'hashedpass7', '03011234567', 'North Nazimabad, Karachi', 'Customer'),
('Mehwish Tariq', 'mehwish.tariq@example.pk', 'hashedpass8', '03461234567', 'Shalimar Town, Lahore', 'Customer'),
('Usman Ali', 'usman.ali@example.pk', 'hashedpass9', '03061234567', 'Faisal Town, Lahore', 'Customer'),
('Sana Shahid', 'sana.shahid@example.pk', 'hashedpass10', '03341234567', 'Bahadurabad, Karachi', 'Customer'),
('Bilal Asif', 'bilal.asif@example.pk', 'hashedpass11', '03151234567', 'DHA Phase 5, Lahore', 'Customer'),
('Amna Sohail', 'amna.sohail@example.pk', 'hashedpass12', '03241234567', 'Johar Town, Lahore', 'Customer'),
('Hamza Bashir', 'hamza.bashir@example.pk', 'hashedpass13', '03021234567', 'G-9 Markaz, Islamabad', 'Customer'),
('Mariam Qazi', 'mariam.qazi@example.pk', 'hashedpass14', '03501234567', 'Cantt, Multan', 'Customer'),
('Zeeshan Haider', 'zeeshan.haider@example.pk', 'hashedpass15', '03601234567', 'Saddar, Karachi', 'Admin');

INSERT INTO Authors (Name, Bio)
VALUES 
('Bano Qudsia', 'Renowned Urdu novelist and playwright.'),
('Ashfaq Ahmed', 'Legendary Pakistani writer and broadcaster.'),
('Umera Ahmed', 'Popular for contemporary novels and dramas.'),
('Mustansar Hussain Tarar', 'Travelogue and fiction writer.'),
('Anwar Maqsood', 'Satirist and television playwright.'),
('Ishtiaq Ahmed', 'Famous for children and spy novels.'),
('Mumtaz Mufti', 'Known for introspective Urdu literature.'),
('Paulo Coelho', 'Brazilian author of The Alchemist.'),
('John Green', 'American author of young adult fiction.'),
('Elif Shafak', 'Turkish-British novelist.'),
('Khaled Hosseini', 'Afghan-American author of The Kite Runner.'),
('Nadeem Aslam', 'British-Pakistani novelist.'),
('Mohsin Hamid', 'Author of The Reluctant Fundamentalist.'),
('Kamila Shamsie', 'Pakistani-British award-winning novelist.'),
('Imran Khan', 'Wrote his biography and political books.');


INSERT INTO Publishers (Name, Website, ContactInfo)
VALUES 
('Oxford University Press Pakistan', 'https://oup.com.pk', 'Karachi, +922134521234'),
('Ferozsons Publishers', 'https://ferozsons.com.pk', 'Lahore, +924235672100'),
('Liberty Books', 'https://libertybooks.com', 'Karachi, +922135682345'),
('Sang-e-Meel Publications', 'https://sangemeel.com', 'Lahore, +924235660101'),
('BookBerry Pakistan', 'https://bookberry.pk', 'Islamabad, +92512233221'),
('Ilm-o-Irfan Publishers', NULL, 'Lahore, +924235990777'),
('Paramount Books', 'https://paramountbooks.com.pk', 'Karachi, +922134568989'),
('Readings Lahore', 'https://readings.com.pk', 'Lahore, +924235676789'),
('Kitab Ghar', 'https://kitabghar.org', 'Multan, +92619233112'),
('National Book Foundation', 'https://nbf.org.pk', 'Islamabad, +92512222000'),
('Pak Book Corporation', NULL, 'Lahore, +924235660000'),
('Urdu Bazar Publishers', NULL, 'Karachi, +922134569999'),
('Nigarishat Publishers', NULL, 'Peshawar, +92915876010'),
('Ilmi Kitab Khana', NULL, 'Lahore, +924235666789'),
('Maktaba Al-Falah', NULL, 'Rawalpindi, +92515121212');


INSERT INTO Categories (CategoryName)
VALUES 
('Fiction'),
('Non-Fiction'),
('Biography'),
('Self Help'),
('Science'),
('Islamic'),
('Children'),
('History'),
('Romance'),
('Fantasy'),
('Mystery'),
('Politics'),
('Education'),
('Adventure'),
('Poetry');

INSERT INTO Books (Title, AuthorID, PublisherID, Description, ISBN, Price, Stock, CategoryID, ImageURL)
VALUES
('Raja Gidh', 1, 2, 'A novel exploring moral and social boundaries.', '9789690012345', 850.00, 20, 1, NULL),
('Zavia', 2, 1, 'Collection of thought-provoking reflections.', '9789690012352', 900.00, 15, 6, NULL),
('Peer-e-Kamil', 3, 3, 'A story of spiritual journey.', '9789690012361', 780.00, 10, 1, NULL),
('Bahao', 4, 4, 'Historical fiction by Mustansar Hussain Tarar.', '9789690012370', 950.00, 12, 8, NULL),
('Aangan', 5, 5, 'Classic Urdu novel turned drama.', '9789690012389', 820.00, 18, 1, NULL),
('Inspector Jamshed Series', 6, 6, 'Famous spy series for kids.', '9789690012396', 500.00, 25, 7, NULL),
('Alakh Nagri', 7, 7, 'Autobiography of Mumtaz Mufti.', '9789690012402', 870.00, 14, 3, NULL),
('The Alchemist', 8, 1, 'World-famous philosophical novel.', '9780061122415', 1200.00, 22, 4, NULL),
('The Fault in Our Stars', 9, 2, 'YA romance novel.', '9780525478812', 950.00, 19, 9, NULL),
('Forty Rules of Love', 10, 3, 'A novel revolving around Rumi.', '9780241972939', 1100.00, 13, 9, NULL),
('The Kite Runner', 11, 4, 'Famous Afghan novel.', '9781594631931', 980.00, 15, 1, NULL),
('Maps for Lost Lovers', 12, 5, 'Novel exploring life of immigrants.', '9781400076972', 870.00, 16, 1, NULL),
('Exit West', 13, 6, 'Story of migration and magical realism.', '9780735212206', 920.00, 18, 1, NULL),
('Home Fire', 14, 7, 'Contemporary twist on Antigone.', '9780735217683', 890.00, 10, 1, NULL),
('Pakistan: A Personal History', 15, 8, 'Autobiography of Imran Khan.', '9780857500647', 1050.00, 12, 12, NULL);



INSERT INTO Cart (UserID, BookID, Quantity)
VALUES 
(1, 2, 1),
(2, 5, 2),
(3, 7, 1),
(4, 3, 3),
(5, 8, 1),
(6, 1, 2),
(7, 4, 1),
(8, 9, 2),
(9, 6, 1),
(10, 10, 1),
(11, 12, 1),
(12, 11, 1),
(13, 13, 2),
(14, 15, 1),
(15, 14, 3);

INSERT INTO Orders (UserID, OrderDate, TotalAmount, Status)
VALUES 
(1, '2025-05-01 10:30:00', 1800.00, 'Shipped'),
(2, '2025-05-02 14:20:00', 950.00, 'Delivered'),
(3, '2025-05-03 09:10:00', 2340.00, 'Pending'),
(4, '2025-05-04 12:45:00', 1560.00, 'Delivered'),
(5, '2025-05-04 18:30:00', 1200.00, 'Shipped'),
(6, '2025-05-05 10:00:00', 1050.00, 'Pending'),
(7, '2025-05-05 14:00:00', 860.00, 'Pending'),
(8, '2025-05-06 09:20:00', 1790.00, 'Delivered'),
(9, '2025-05-06 15:50:00', 1950.00, 'Pending'),
(10, '2025-05-07 11:40:00', 980.00, 'Shipped'),
(11, '2025-05-08 13:15:00', 1300.00, 'Delivered'),
(12, '2025-05-08 17:00:00', 920.00, 'Delivered'),
(13, '2025-05-09 08:55:00', 1780.00, 'Pending'),
(14, '2025-05-10 12:30:00', 890.00, 'Delivered'),
(15, '2025-05-11 10:45:00', 1050.00, 'Pending');

INSERT INTO OrderItems (OrderID, BookID, Quantity, PriceAtPurchase)
VALUES 
(1, 2, 2, 900.00),
(2, 5, 1, 950.00),
(3, 7, 3, 780.00),
(3, 1, 1, 850.00),
(4, 3, 2, 780.00),
(5, 8, 1, 1200.00),
(6, 15, 1, 1050.00),
(7, 6, 1, 500.00),
(8, 4, 2, 950.00),
(9, 12, 2, 870.00),
(10, 11, 1, 980.00),
(11, 10, 1, 1100.00),
(11, 13, 1, 920.00),
(12, 14, 1, 890.00),
(13, 9, 2, 950.00),
(14, 7, 1, 780.00),
(15, 15, 1, 1050.00);

INSERT INTO Payments (OrderID, PaymentDate, Amount, PaymentMethod, PaymentStatus)
VALUES 
(1, '2025-05-01 11:00:00', 1800.00, 'Card', 'Paid'),
(2, '2025-05-02 14:30:00', 950.00, 'Cash on Delivery', 'Paid'),
(3, '2025-05-03 09:30:00', 2340.00, 'Card', 'Pending'),
(4, '2025-05-04 13:00:00', 1560.00, 'JazzCash', 'Paid'),
(5, '2025-05-04 19:00:00', 1200.00, 'Card', 'Paid'),
(6, '2025-05-05 10:10:00', 1050.00, 'EasyPaisa', 'Pending'),
(7, '2025-05-05 14:10:00', 860.00, 'Cash on Delivery', 'Pending'),
(8, '2025-05-06 10:00:00', 1790.00, 'Card', 'Paid'),
(9, '2025-05-06 16:00:00', 1950.00, 'JazzCash', 'Pending'),
(10, '2025-05-07 12:00:00', 980.00, 'Card', 'Paid'),
(11, '2025-05-08 13:30:00', 1300.00, 'EasyPaisa', 'Paid'),
(12, '2025-05-08 17:30:00', 920.00, 'Cash on Delivery', 'Paid'),
(13, '2025-05-09 09:10:00', 1780.00, 'Card', 'Pending'),
(14, '2025-05-10 13:00:00', 890.00, 'EasyPaisa', 'Paid'),
(15, '2025-05-11 11:00:00', 1050.00, 'Card', 'Pending');


INSERT INTO Reviews (UserID, BookID, Rating, Comment)
VALUES 
(1, 2, 5, 'Excellent read, very inspiring.'),
(2, 5, 4, 'Loved the writing style.'),
(3, 7, 5, 'Great storyline, kept me hooked.'),
(4, 3, 3, 'Good but a bit slow.'),
(5, 8, 4, 'A masterpiece.'),
(6, 1, 5, 'Classic! Must read.'),
(7, 4, 4, 'Interesting themes.'),
(8, 9, 3, 'Not as good as expected.'),
(9, 6, 4, 'Perfect for kids.'),
(10, 10, 5, 'Magical and meaningful.'),
(11, 12, 5, 'Deep and emotional.'),
(12, 11, 4, 'Powerful message.'),
(13, 13, 5, 'Very creative.'),
(14, 15, 4, 'Patriotic and personal.'),
(15, 14, 3, 'Could be better.');





