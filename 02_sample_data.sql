INSERT INTO users (user_id, signup_date, city, device) VALUES
(1, '2024-01-05', 'Hyderabad', 'Android'),
(2, '2024-01-07', 'Bengaluru', 'iOS'),
(3, '2024-01-10', 'Chennai', 'Web'),
(4, '2024-01-12', 'Delhi', 'Android'),
(5, '2024-01-15', 'Mumbai', 'iOS'),
(6, '2024-01-17', 'Hyderabad', 'Web'),
(7, '2024-01-18', 'Chennai', 'Android'),
(8, '2024-01-20', 'Delhi', 'iOS'),
(9, '2024-01-22', 'Mumbai', 'Android'),
(10, '2024-01-25', 'Bengaluru', 'Web'),
(11, '2024-01-28', 'Hyderabad', 'Android'),
(12, '2024-02-01', 'Delhi', 'iOS'),
(13, '2024-02-03', 'Mumbai', 'Web'),
(14, '2024-02-05', 'Chennai', 'Android'),
(15, '2024-02-07', 'Bengaluru', 'iOS'),
(16, '2024-02-10', 'Delhi', 'Android'),
(17, '2024-02-12', 'Hyderabad', 'Web'),
(18, '2024-02-15', 'Mumbai', 'iOS'),
(19, '2024-02-18', 'Chennai', 'Android'),
(20, '2024-02-20', 'Bengaluru', 'Web');


INSERT INTO feature_events (event_id, user_id, event_date, feature_name, event_type) VALUES
(101, 1, '2024-02-01 10:05', 'Search', 'click'),
(102, 1, '2024-02-01 10:06', 'Search', 'result_view'),
(103, 2, '2024-02-02 11:15', 'Wishlist', 'add'),
(104, 3, '2024-02-03 09:20', 'Search', 'click'),
(105, 3, '2024-02-03 09:21', 'Appointment Book', 'book'),
(106, 4, '2024-02-04 14:10', 'Notifications', 'view'),
(107, 4, '2024-02-04 14:12', 'Notifications', 'click'),
(108, 5, '2024-02-05 08:05', 'Buy', 'click'),
(109, 5, '2024-02-05 08:10', 'Buy', 'purchase'),
(110, 6, '2024-02-06 16:00', 'Subscribe', 'subscribe'),
(111, 7, '2024-02-07 12:00', 'Search', 'click'),
(112, 7, '2024-02-07 12:02', 'Search', 'result_view'),
(113, 8, '2024-02-08 09:30', 'Share', 'click'),
(114, 9, '2024-02-09 10:05', 'Wishlist', 'add'),
(115, 10, '2024-02-10 11:15', 'Profile Update', 'edit'),
(116, 11, '2024-02-11 15:20', 'Appointment Book', 'book'),
(117, 12, '2024-02-12 08:50', 'Notifications', 'click'),
(118, 13, '2024-02-13 09:10', 'Buy', 'click'),
(119, 13, '2024-02-13 09:15', 'Buy', 'purchase'),
(120, 14, '2024-02-14 14:00', 'Subscribe', 'subscribe');


INSERT INTO subscriptions (subscription_id, user_id, start_date, end_date, user_plan) VALUES
(201, 6, '2024-02-06', '2024-03-06', 'Basic'),
(202, 14, '2024-02-14', '2024-03-14', 'Premium'),
(203, 10, '2024-02-10', '2024-03-10', 'Basic');

INSERT INTO sessions (session_id, user_id, session_start, session_end) VALUES
(301, 1, '2024-02-01 10:00', '2024-02-01 10:20'),
(302, 2, '2024-02-02 11:00', '2024-02-02 11:25'),
(303, 3, '2024-02-03 09:15', '2024-02-03 09:35'),
(304, 4, '2024-02-04 14:05', '2024-02-04 14:30'),
(305, 5, '2024-02-05 08:00', '2024-02-05 08:15'),
(306, 6, '2024-02-06 16:00', '2024-02-06 16:30');