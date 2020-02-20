INSERT INTO SALES_ORDER (ORDER_ID, CUSTOMER_ID, STATUS, CREATED_ON, UPDATED_ON)
VALUES (1, 1, 'CREATED', now(), now()),
       (2, 1, 'CREATED', now(), now()),
       (3, 1, 'CREATED', now(), now()),
       (4, 2, 'CREATED', now(), now()),
       (5, 2, 'CREATED', now(), now()),
       (6, 3, 'CREATED', now(), now()),
       (7, 4, 'CREATED', now(), now()),
       (8, 4, 'CREATED', now(), now()),
       (9, 5, 'CREATED', now(), now()),
       (10, 6, 'CREATED', now(), now()),
       (11, 7, 'CREATED', now(), now()),
       (12, 8, 'CREATED', now(), now()),
       (13, 8, 'CREATED', now(), now()),
       (14, 9, 'CREATED', now(), now()),
       (15, 9, 'CREATED', now(), now()),
       (16, 10, 'CREATED', now(), now())
;

INSERT INTO SALES_ORDER_LINE (ORDER_ID, LINE_NUMBER, ITEM_ID, QUANTITY, PRICE)
VALUES (1, 1, 'A', 2, (SELECT PRICE FROM ITEM WHERE ID = 'A') * 2),
       (1, 2, 'J', 2, (SELECT PRICE FROM ITEM WHERE ID = 'D') * 2),
       (1, 3, 'G', 1, (SELECT PRICE FROM ITEM WHERE ID = 'G') * 1),
       (2, 1, 'J', 1, (SELECT PRICE FROM ITEM WHERE ID = 'J') * 1),
       (2, 2, 'A', 2, (SELECT PRICE FROM ITEM WHERE ID = 'A') * 2),
       (3, 1, 'B', 1, (SELECT PRICE FROM ITEM WHERE ID = 'B') * 1),
       (4, 1, 'C', 2, (SELECT PRICE FROM ITEM WHERE ID = 'C') * 2),
       (5, 1, 'D', 3, (SELECT PRICE FROM ITEM WHERE ID = 'D') * 3),
       (6, 1, 'E', 4, (SELECT PRICE FROM ITEM WHERE ID = 'E') * 4),
       (6, 2, 'F', 5, (SELECT PRICE FROM ITEM WHERE ID = 'F') * 5),
       (6, 3, 'G', 7, (SELECT PRICE FROM ITEM WHERE ID = 'G') * 7),
       (6, 4, 'H', 9, (SELECT PRICE FROM ITEM WHERE ID = 'H') * 9),
       (6, 5, 'I', 8, (SELECT PRICE FROM ITEM WHERE ID = 'I') * 8),
       (7, 1, 'J', 1, (SELECT PRICE FROM ITEM WHERE ID = 'J') * 1),
       (8, 1, 'K', 3, (SELECT PRICE FROM ITEM WHERE ID = 'K') * 3),
       (9, 1, 'L', 1, (SELECT PRICE FROM ITEM WHERE ID = 'L') * 1),
       (10, 1, 'K', 10, (SELECT PRICE FROM ITEM WHERE ID = 'K') * 10),
       (11, 1, 'J', 9, (SELECT PRICE FROM ITEM WHERE ID = 'J') * 9),
       (12, 1, 'I', 8, (SELECT PRICE FROM ITEM WHERE ID = 'I') * 8),
       (12, 2, 'H', 7, (SELECT PRICE FROM ITEM WHERE ID = 'H') * 7),
       (13, 1, 'G', 6, (SELECT PRICE FROM ITEM WHERE ID = 'G') * 6),
       (14, 1, 'E', 5, (SELECT PRICE FROM ITEM WHERE ID = 'E') * 5),
       (14, 2, 'D', 12, (SELECT PRICE FROM ITEM WHERE ID = 'D') * 12),
       (15, 1, 'C', 13, (SELECT PRICE FROM ITEM WHERE ID = 'C') * 13),
       (15, 2, 'B', 1, (SELECT PRICE FROM ITEM WHERE ID = 'B') * 1),
       (16, 1, 'A', 3, (SELECT PRICE FROM ITEM WHERE ID = 'A') * 3),
       (16, 2, 'L', 5, (SELECT PRICE FROM ITEM WHERE ID = 'L') * 5),
       (16, 3, 'B', 7, (SELECT PRICE FROM ITEM WHERE ID = 'B') * 7)
;