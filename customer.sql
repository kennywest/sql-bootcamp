CREATE TABLE CUSTOMER
(
    ID         INT4        NOT NULL,
    NAME       VARCHAR(50) NOT NULL,
    ACTIVE     BOOL        NOT NULL,
    GRADE      INT4        NOT NULL,
    CREATED_ON TIMESTAMP   NOT NULL,
    UPDATED_ON TIMESTAMP   NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE ADDRESS
(
    ID          INT4         NOT NULL,
    CUSTOMER_ID INT4         NOT NULL,
    STREET      VARCHAR(100) NOT NULL,
    NUMBER      VARCHAR(10),
    BOX         VARCHAR(10),
    CITY        VARCHAR(50),
    COUNTRY     VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE COUNTRY
(
    NAME     VARCHAR(50) NOT NULL,
    ISO_CODE VARCHAR(2)  NOT NULL,
    PRIMARY KEY (NAME)
);

ALTER TABLE IF EXISTS ADDRESS
    ADD CONSTRAINT FK_ADDRESS_CUSTOMER_ID FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER (ID);

ALTER TABLE IF EXISTS ADDRESS
    ADD CONSTRAINT FK_ADDRESS_COUNTRY FOREIGN KEY (COUNTRY) REFERENCES COUNTRY (NAME);

INSERT INTO CUSTOMER
VALUES (99, 'CNH', TRUE, 99, '2020-03-19 13:51:31', '2020-03-19 13:51:31'),
       (2, 'The Ponderosa', TRUE, 80, '2001-01-01 13:51:31', '2018-03-19 13:51:31'),
       (3, 'LMB Buysse', TRUE, 70, '2001-01-01 13:51:31', '2018-03-19 13:51:31'),
       (4, 'Firma Beel', TRUE, 70, '2002-01-01 13:51:31', '2018-03-19 13:51:31'),
       (5, 'Van Haute', TRUE, 70, '2003-01-01 13:51:31', '2018-03-19 13:51:31'),
       (6, 'De Muynck', TRUE, 70, '2004-01-01 13:51:31', '2018-03-19 13:51:31'),
       (7, 'Quintyn', TRUE, 70, '2005-01-01 13:51:31', '2018-03-19 13:51:31'),
       (8, 'Vanthuyne Bvba', TRUE, 70, '2005-01-01 13:51:31', '2018-03-19 13:51:31'),
       (9, 'IKEA', TRUE, 70, '2010-01-01 13:51:31', '2018-03-19 13:51:31'),
       (10, 'WEBA', TRUE, 70, '2018-01-01 13:51:31', '2018-03-19 13:51:31')
;

INSERT INTO COUNTRY (NAME, ISO_CODE)
VALUES ('Belgium', 'BE'),
       ('The Netherlands', 'NL')
;

INSERT INTO ADDRESS (ID, CUSTOMER_ID, STREET, NUMBER, BOX, CITY, COUNTRY)
VALUES (1, 1, 'Léon Claeysstraat', '3a', NULL, 'Zedelgem', 'Belgium'),
       (2, 2, 'Steenweg Deinze', '108', NULL, 'Nazareth', 'Belgium'),
       (3, 3, 'Cocquytpolderdijk', '2', NULL, 'Sint-Jan-In-Eremo', 'Belgium'),
       (4, 4, 'Waregemsesteenweg', '75', NULL, 'Wortegem-Petegem', 'Belgium'),
       (5, 5, 'Zwaarveld', '27', NULL, 'Hamme', 'Belgium'),
       (6, 6, 'Latemdreef', '43', NULL, 'Munkzwalm', 'Belgium'),
       (7, 7, 'Hilsesteenweg', '63', NULL, 'Wingene', 'Belgium'),
       (8, 8, 'Olsensesteenweg', '67', NULL, 'Kruisem', 'Belgium'),
       (9, 9, 'Maaltekouter', '2', NULL, 'Gent', 'Belgium'),
       (10, 9, 'Weiveldlaan', '19', NULL, 'Zaventem', 'Belgium'),
       (11, 9, 'Boomsesteenweg', '755', NULL, 'Willebroek', 'Belgium'),
       (12, 9, 'Olof Palmestraat', '1', NULL, 'Delft', 'The Netherlands'),
       (13, 10, 'Vliegtuiglaan', '10', NULL, 'Gent', 'Belgium'),
       (14, 10, 'Gentsesteenweg', '42', NULL, 'Deinze', 'Belgium')
;
