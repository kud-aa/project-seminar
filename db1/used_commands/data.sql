INSERT INTO books (title, author) VALUES
    ( 'when the books is a little bit sus',     (SELECT id from shelves WHERE id='1') ),
    ( 'AMOGUS', (SELECT id from shelves WHERE id='1' ) );

INSERT INTO books(title, author, shelve_id) VALUES ('when the books is a little bit sus', 'AMOGUS', 1);
INSERT INTO books(title, author, shelve_id) VALUES ('25,5', '9,2 ', 2 );
INSERT INTO books(title, author, shelve_id) VALUES ('25,5', '19,5', 3 );
INSERT INTO books(title, author, shelve_id) VALUES ('20,1', '45  ', 4 );
INSERT INTO books(title, author, shelve_id) VALUES ('40  ', '1,4 ', 5 );
INSERT INTO books(title, author, shelve_id) VALUES ('42,4', '22,3', 6 );
INSERT INTO books(title, author, shelve_id) VALUES ('28,9', '3,5 ', 7 );
INSERT INTO books(title, author, shelve_id) VALUES ('6,5 ', '6,6 ', 8 );
INSERT INTO books(title, author, shelve_id) VALUES ('25,7', '0,9 ', 9 );
INSERT INTO books(title, author, shelve_id) VALUES ('9   ', '37,1', 10);
INSERT INTO books(title, author, shelve_id) VALUES ('18,4', '5,5 ', 11);
INSERT INTO books(title, author, shelve_id) VALUES ('42,8', '12,4', 12);
INSERT INTO books(title, author, shelve_id) VALUES ('46,3', '18,9', 13);
INSERT INTO books(title, author, shelve_id) VALUES ('6,5 ', '19,9', 14);
INSERT INTO books(title, author, shelve_id) VALUES ('30,9', '35,5', 15);
INSERT INTO books(title, author, shelve_id) VALUES ('12,1', '30  ', 16);
INSERT INTO books(title, author, shelve_id) VALUES ('49,9', '2   ', 17);
INSERT INTO books(title, author, shelve_id) VALUES ('21,1', '13,3', 18);
INSERT INTO books(title, author, shelve_id) VALUES ('18,5', '47,9', 19);
INSERT INTO books(title, author, shelve_id) VALUES ('16,9', '26,4', 20);
INSERT INTO books(title, author, shelve_id) VALUES ('9,5 ', '23,8', 21);
INSERT INTO books(title, author, shelve_id) VALUES ('48,3', '18,4', 22);
INSERT INTO books(title, author, shelve_id) VALUES ('7,3 ', '1,9 ', 23);
INSERT INTO books(title, author, shelve_id) VALUES ('23,5', '7,2 ', 24);
INSERT INTO books(title, author, shelve_id) VALUES ('46  ', '25,6', 25);
INSERT INTO books(title, author, shelve_id) VALUES ('25,1', '43,6', 26);
INSERT INTO books(title, author, shelve_id) VALUES ('43,9', '45  ', 27);
INSERT INTO books(title, author, shelve_id) VALUES ('44,3', '13,6', 28);
INSERT INTO books(title, author, shelve_id) VALUES ('33,4', '11,5', 29);
INSERT INTO books(title, author, shelve_id) VALUES ('41,1', '25,7', 30);
INSERT INTO books(title, author, shelve_id) VALUES ('15,8', '45,4', 31);
INSERT INTO books(title, author, shelve_id) VALUES ('37,9', '12,2', 32);
INSERT INTO books(title, author, shelve_id) VALUES ('22,5', '48,6', 33);
INSERT INTO books(title, author, shelve_id) VALUES ('16,5', '44  ', 34);
INSERT INTO books(title, author, shelve_id) VALUES ('8,3 ', '10,4', 35);
INSERT INTO books(title, author, shelve_id) VALUES ('34,6', '27,2', 36);
INSERT INTO books(title, author, shelve_id) VALUES ('33,9', '36  ', 37);
INSERT INTO books(title, author, shelve_id) VALUES ('10,9', '30,9', 38);
INSERT INTO books(title, author, shelve_id) VALUES ('32,6', '5,8 ', 39);
INSERT INTO books(title, author, shelve_id) VALUES ('25,6', '19,1', 40);
INSERT INTO books(title, author, shelve_id) VALUES ('10,7', '18  ', 41);
INSERT INTO books(title, author, shelve_id) VALUES ('30,4', '12,7', 42);
INSERT INTO books(title, author, shelve_id) VALUES ('23,9', '46,1', 43);
INSERT INTO books(title, author, shelve_id) VALUES ('49,1', '41,5', 44);
INSERT INTO books(title, author, shelve_id) VALUES ('25,4', '19,3', 45);
INSERT INTO books(title, author, shelve_id) VALUES ('42,5', '9,2 ', 46);
INSERT INTO books(title, author, shelve_id) VALUES ('19,3', '42,6', 47);
INSERT INTO books(title, author, shelve_id) VALUES ('1   ', '27,8', 48);
INSERT INTO books(title, author, shelve_id) VALUES ('15,4', '32,2', 49);
INSERT INTO books(title, author, shelve_id) VALUES ('26,5', '22,2', 50);
INSERT INTO books(title, author, shelve_id) VALUES ('33,6', '42,3', 51);
INSERT INTO books(title, author, shelve_id) VALUES ('35,8', '27,2', 52);
INSERT INTO books(title, author, shelve_id) VALUES ('40,1', '12,5', 53);
INSERT INTO books(title, author, shelve_id) VALUES ('11,6', '22,7', 54);
INSERT INTO books(title, author, shelve_id) VALUES ('40,3', '7,7 ', 55);
INSERT INTO books(title, author, shelve_id) VALUES ('24,8', '40  ', 56);
INSERT INTO books(title, author, shelve_id) VALUES ('47,4', '13,3', 57);
INSERT INTO books(title, author, shelve_id) VALUES ('31,7', '1,2 ', 58);
INSERT INTO books(title, author, shelve_id) VALUES ('2,3 ', '40,9', 59);
INSERT INTO books(title, author, shelve_id) VALUES ('30,4', '9,6 ', 60);
INSERT INTO books(title, author, shelve_id) VALUES ('19,3', '31,1', 61);
INSERT INTO books(title, author, shelve_id) VALUES ('5,2 ', '36,9', 62);
INSERT INTO books(title, author, shelve_id) VALUES ('5,2 ', '23,9', 63);
INSERT INTO books(title, author, shelve_id) VALUES ('37  ', '36,1', 64);
INSERT INTO books(title, author, shelve_id) VALUES ('19,1', '22,6', 65);
INSERT INTO books(title, author, shelve_id) VALUES ('28,2', '21,9', 66);
INSERT INTO books(title, author, shelve_id) VALUES ('17,2', '20,2', 67);
INSERT INTO books(title, author, shelve_id) VALUES ('5,1 ', '34,4', 68);
INSERT INTO books(title, author, shelve_id) VALUES ('29,5', '16,1', 69);

INSERT INTO shelves(id, name) VALUES (1, 'AMOGUS');
INSERT INTO shelves(id, name) VALUES (2 , '19,6');
INSERT INTO shelves(id, name) VALUES (3 , '44,1');
INSERT INTO shelves(id, name) VALUES (4 , '1,4 ');
INSERT INTO shelves(id, name) VALUES (5 , '14  ');
INSERT INTO shelves(id, name) VALUES (6 , '9,7 ');
INSERT INTO shelves(id, name) VALUES (7 , '39,4');
INSERT INTO shelves(id, name) VALUES (8 , '6,7 ');
INSERT INTO shelves(id, name) VALUES (9 , '38,2');
INSERT INTO shelves(id, name) VALUES (10, '20,8');
INSERT INTO shelves(id, name) VALUES (11, '21,1');
INSERT INTO shelves(id, name) VALUES (12, '35,1');
INSERT INTO shelves(id, name) VALUES (13, '31,5');
INSERT INTO shelves(id, name) VALUES (14, '36,3');
INSERT INTO shelves(id, name) VALUES (15, '26  ');
INSERT INTO shelves(id, name) VALUES (16, '0,3 ');
INSERT INTO shelves(id, name) VALUES (17, '17,9');
INSERT INTO shelves(id, name) VALUES (18, '36,7');
INSERT INTO shelves(id, name) VALUES (19, '11,4');
INSERT INTO shelves(id, name) VALUES (20, '26,9');
INSERT INTO shelves(id, name) VALUES (21, '14,5');
INSERT INTO shelves(id, name) VALUES (22, '35,6');
INSERT INTO shelves(id, name) VALUES (23, '24,8');
INSERT INTO shelves(id, name) VALUES (24, '35,6');
INSERT INTO shelves(id, name) VALUES (25, '37,9');
INSERT INTO shelves(id, name) VALUES (26, '7,2 ');
INSERT INTO shelves(id, name) VALUES (27, '3,8 ');
INSERT INTO shelves(id, name) VALUES (28, '48  ');
INSERT INTO shelves(id, name) VALUES (29, '26,9');
INSERT INTO shelves(id, name) VALUES (30, '14,7');
INSERT INTO shelves(id, name) VALUES (31, '20,5');
INSERT INTO shelves(id, name) VALUES (32, '20,2');
INSERT INTO shelves(id, name) VALUES (33, '35,1');
INSERT INTO shelves(id, name) VALUES (34, '13,1');
INSERT INTO shelves(id, name) VALUES (35, '18,9');
INSERT INTO shelves(id, name) VALUES (36, '12,2');
INSERT INTO shelves(id, name) VALUES (37, '41,3');
INSERT INTO shelves(id, name) VALUES (38, '43,3');
INSERT INTO shelves(id, name) VALUES (39, '9,2 ');
INSERT INTO shelves(id, name) VALUES (40, '0,4 ');
INSERT INTO shelves(id, name) VALUES (41, '32,6');
INSERT INTO shelves(id, name) VALUES (42, '49,6');
INSERT INTO shelves(id, name) VALUES (43, '42,1');
INSERT INTO shelves(id, name) VALUES (44, '37,9');
INSERT INTO shelves(id, name) VALUES (45, '36,8');
INSERT INTO shelves(id, name) VALUES (46, '1,9 ');
INSERT INTO shelves(id, name) VALUES (47, '34  ');
INSERT INTO shelves(id, name) VALUES (48, '23,3');
INSERT INTO shelves(id, name) VALUES (49, '14,3');
INSERT INTO shelves(id, name) VALUES (50, '22,6');
INSERT INTO shelves(id, name) VALUES (51, '48,2');
INSERT INTO shelves(id, name) VALUES (52, '37,7');
INSERT INTO shelves(id, name) VALUES (53, '20,4');
INSERT INTO shelves(id, name) VALUES (54, '16,4');
INSERT INTO shelves(id, name) VALUES (55, '13  ');
INSERT INTO shelves(id, name) VALUES (56, '19,2');
INSERT INTO shelves(id, name) VALUES (57, '12,8');
INSERT INTO shelves(id, name) VALUES (58, '27,6');
INSERT INTO shelves(id, name) VALUES (59, '23,2');
INSERT INTO shelves(id, name) VALUES (60, '47,5');
INSERT INTO shelves(id, name) VALUES (61, '3,7 ');
INSERT INTO shelves(id, name) VALUES (62, '48,5');
INSERT INTO shelves(id, name) VALUES (63, '21  ');
INSERT INTO shelves(id, name) VALUES (64, '21,1');
INSERT INTO shelves(id, name) VALUES (65, '0,4 ');
INSERT INTO shelves(id, name) VALUES (66, '32,4');
INSERT INTO shelves(id, name) VALUES (67, '49,8');
INSERT INTO shelves(id, name) VALUES (68, '19,9');
INSERT INTO shelves(id, name) VALUES (69, '32,3');

INSERT INTO faculty(id, name) VALUES (1 , 'DEEZNUTS');
INSERT INTO faculty(id, name) VALUES (2 , '17,2');
INSERT INTO faculty(id, name) VALUES (3 , '49,1');
INSERT INTO faculty(id, name) VALUES (4 , '4,6 ');
INSERT INTO faculty(id, name) VALUES (5 , '32,6');
INSERT INTO faculty(id, name) VALUES (6 , '48,2');
INSERT INTO faculty(id, name) VALUES (7 , '37  ');
INSERT INTO faculty(id, name) VALUES (8 , '21,2');
INSERT INTO faculty(id, name) VALUES (9 , '24,3');
INSERT INTO faculty(id, name) VALUES (10, '44,3');
INSERT INTO faculty(id, name) VALUES (11, '27,5');
INSERT INTO faculty(id, name) VALUES (12, '40,7');
INSERT INTO faculty(id, name) VALUES (13, '12  ');
INSERT INTO faculty(id, name) VALUES (14, '37,8');
INSERT INTO faculty(id, name) VALUES (15, '36,4');
INSERT INTO faculty(id, name) VALUES (16, '29,9');
INSERT INTO faculty(id, name) VALUES (17, '38,7');
INSERT INTO faculty(id, name) VALUES (18, '26,6');
INSERT INTO faculty(id, name) VALUES (19, '10,9');
INSERT INTO faculty(id, name) VALUES (20, '19,4');
INSERT INTO faculty(id, name) VALUES (21, '45,2');
INSERT INTO faculty(id, name) VALUES (22, '17,7');
INSERT INTO faculty(id, name) VALUES (23, '48,9');
INSERT INTO faculty(id, name) VALUES (24, '1,2 ');
INSERT INTO faculty(id, name) VALUES (25, '7,7 ');
INSERT INTO faculty(id, name) VALUES (26, '49,8');
INSERT INTO faculty(id, name) VALUES (27, '37  ');
INSERT INTO faculty(id, name) VALUES (28, '11,3');
INSERT INTO faculty(id, name) VALUES (29, '35,8');
INSERT INTO faculty(id, name) VALUES (30, '29  ');
INSERT INTO faculty(id, name) VALUES (31, '41,4');
INSERT INTO faculty(id, name) VALUES (32, '22,6');
INSERT INTO faculty(id, name) VALUES (33, '27,3');
INSERT INTO faculty(id, name) VALUES (34, '23,7');
INSERT INTO faculty(id, name) VALUES (35, '32,4');
INSERT INTO faculty(id, name) VALUES (36, '0,6 ');
INSERT INTO faculty(id, name) VALUES (37, '12,7');
INSERT INTO faculty(id, name) VALUES (38, '9,9 ');
INSERT INTO faculty(id, name) VALUES (39, '0,6 ');
INSERT INTO faculty(id, name) VALUES (40, '46,4');
INSERT INTO faculty(id, name) VALUES (41, '14,4');
INSERT INTO faculty(id, name) VALUES (42, '29,2');
INSERT INTO faculty(id, name) VALUES (43, '1,3 ');
INSERT INTO faculty(id, name) VALUES (44, '31,2');
INSERT INTO faculty(id, name) VALUES (45, '8,7 ');
INSERT INTO faculty(id, name) VALUES (46, '16,7');
INSERT INTO faculty(id, name) VALUES (47, '18,7');
INSERT INTO faculty(id, name) VALUES (48, '2,5 ');
INSERT INTO faculty(id, name) VALUES (49, '1,5 ');
INSERT INTO faculty(id, name) VALUES (50, '29,2');
INSERT INTO faculty(id, name) VALUES (51, '46,1');
INSERT INTO faculty(id, name) VALUES (52, '25,1');
INSERT INTO faculty(id, name) VALUES (53, '16,9');
INSERT INTO faculty(id, name) VALUES (54, '5   ');
INSERT INTO faculty(id, name) VALUES (55, '14,4');
INSERT INTO faculty(id, name) VALUES (56, '0,4 ');
INSERT INTO faculty(id, name) VALUES (57, '1,6 ');
INSERT INTO faculty(id, name) VALUES (58, '11,3');
INSERT INTO faculty(id, name) VALUES (59, '31  ');
INSERT INTO faculty(id, name) VALUES (60, '38,9');
INSERT INTO faculty(id, name) VALUES (61, '12,7');
INSERT INTO faculty(id, name) VALUES (62, '39,9');
INSERT INTO faculty(id, name) VALUES (63, '7,6 ');
INSERT INTO faculty(id, name) VALUES (64, '49,7');
INSERT INTO faculty(id, name) VALUES (65, '38,3');
INSERT INTO faculty(id, name) VALUES (66, '38,5');
INSERT INTO faculty(id, name) VALUES (67, '12,2');
INSERT INTO faculty(id, name) VALUES (68, '43  ');
INSERT INTO faculty(id, name) VALUES (69, '44,6');

INSERT INTO groups(id, name, faculty_id) VALUES (1 , 'BOYS_NEXT_DOOR', 1);
INSERT INTO groups(id, name, faculty_id) VALUES (2 , '17,2', 2 );
INSERT INTO groups(id, name, faculty_id) VALUES (3 , '49,1', 3 );
INSERT INTO groups(id, name, faculty_id) VALUES (4 , '4,6 ', 4 );
INSERT INTO groups(id, name, faculty_id) VALUES (5 , '32,6', 5 );
INSERT INTO groups(id, name, faculty_id) VALUES (6 , '48,2', 6 );
INSERT INTO groups(id, name, faculty_id) VALUES (7 , '37  ', 7 );
INSERT INTO groups(id, name, faculty_id) VALUES (8 , '21,2', 8 );
INSERT INTO groups(id, name, faculty_id) VALUES (9 , '24,3', 9 );
INSERT INTO groups(id, name, faculty_id) VALUES (10, '44,3', 10);
INSERT INTO groups(id, name, faculty_id) VALUES (11, '27,5', 11);
INSERT INTO groups(id, name, faculty_id) VALUES (12, '40,7', 12);
INSERT INTO groups(id, name, faculty_id) VALUES (13, '12  ', 13);
INSERT INTO groups(id, name, faculty_id) VALUES (14, '37,8', 14);
INSERT INTO groups(id, name, faculty_id) VALUES (15, '36,4', 15);
INSERT INTO groups(id, name, faculty_id) VALUES (16, '29,9', 16);
INSERT INTO groups(id, name, faculty_id) VALUES (17, '38,7', 17);
INSERT INTO groups(id, name, faculty_id) VALUES (18, '26,6', 18);
INSERT INTO groups(id, name, faculty_id) VALUES (19, '10,9', 19);
INSERT INTO groups(id, name, faculty_id) VALUES (20, '19,4', 20);
INSERT INTO groups(id, name, faculty_id) VALUES (21, '45,2', 21);
INSERT INTO groups(id, name, faculty_id) VALUES (22, '17,7', 22);
INSERT INTO groups(id, name, faculty_id) VALUES (23, '48,9', 23);
INSERT INTO groups(id, name, faculty_id) VALUES (24, '1,2 ', 24);
INSERT INTO groups(id, name, faculty_id) VALUES (25, '7,7 ', 25);
INSERT INTO groups(id, name, faculty_id) VALUES (26, '49,8', 26);
INSERT INTO groups(id, name, faculty_id) VALUES (27, '37  ', 27);
INSERT INTO groups(id, name, faculty_id) VALUES (28, '11,3', 28);
INSERT INTO groups(id, name, faculty_id) VALUES (29, '35,8', 29);
INSERT INTO groups(id, name, faculty_id) VALUES (30, '29  ', 30);
INSERT INTO groups(id, name, faculty_id) VALUES (31, '41,4', 31);
INSERT INTO groups(id, name, faculty_id) VALUES (32, '22,6', 32);
INSERT INTO groups(id, name, faculty_id) VALUES (33, '27,3', 33);
INSERT INTO groups(id, name, faculty_id) VALUES (34, '23,7', 34);
INSERT INTO groups(id, name, faculty_id) VALUES (35, '32,4', 35);
INSERT INTO groups(id, name, faculty_id) VALUES (36, '0,6 ', 36);
INSERT INTO groups(id, name, faculty_id) VALUES (37, '12,7', 37);
INSERT INTO groups(id, name, faculty_id) VALUES (38, '9,9 ', 38);
INSERT INTO groups(id, name, faculty_id) VALUES (39, '0,6 ', 39);
INSERT INTO groups(id, name, faculty_id) VALUES (40, '46,4', 40);
INSERT INTO groups(id, name, faculty_id) VALUES (41, '14,4', 41);
INSERT INTO groups(id, name, faculty_id) VALUES (42, '29,2', 42);
INSERT INTO groups(id, name, faculty_id) VALUES (43, '1,3 ', 43);
INSERT INTO groups(id, name, faculty_id) VALUES (44, '31,2', 44);
INSERT INTO groups(id, name, faculty_id) VALUES (45, '8,7 ', 45);
INSERT INTO groups(id, name, faculty_id) VALUES (46, '16,7', 46);
INSERT INTO groups(id, name, faculty_id) VALUES (47, '18,7', 47);
INSERT INTO groups(id, name, faculty_id) VALUES (48, '2,5 ', 48);
INSERT INTO groups(id, name, faculty_id) VALUES (49, '1,5 ', 49);
INSERT INTO groups(id, name, faculty_id) VALUES (50, '29,2', 50);
INSERT INTO groups(id, name, faculty_id) VALUES (51, '46,1', 51);
INSERT INTO groups(id, name, faculty_id) VALUES (52, '25,1', 52);
INSERT INTO groups(id, name, faculty_id) VALUES (53, '16,9', 53);
INSERT INTO groups(id, name, faculty_id) VALUES (54, '5   ', 54);
INSERT INTO groups(id, name, faculty_id) VALUES (55, '14,4', 55);
INSERT INTO groups(id, name, faculty_id) VALUES (56, '0,4 ', 56);
INSERT INTO groups(id, name, faculty_id) VALUES (57, '1,6 ', 57);
INSERT INTO groups(id, name, faculty_id) VALUES (58, '11,3', 58);
INSERT INTO groups(id, name, faculty_id) VALUES (59, '31  ', 59);
INSERT INTO groups(id, name, faculty_id) VALUES (60, '38,9', 60);
INSERT INTO groups(id, name, faculty_id) VALUES (61, '12,7', 61);
INSERT INTO groups(id, name, faculty_id) VALUES (62, '39,9', 62);
INSERT INTO groups(id, name, faculty_id) VALUES (63, '7,6 ', 63);
INSERT INTO groups(id, name, faculty_id) VALUES (64, '49,7', 64);
INSERT INTO groups(id, name, faculty_id) VALUES (65, '38,3', 65);
INSERT INTO groups(id, name, faculty_id) VALUES (66, '38,5', 66);
INSERT INTO groups(id, name, faculty_id) VALUES (67, '12,2', 67);
INSERT INTO groups(id, name, faculty_id) VALUES (68, '43  ', 68);
INSERT INTO groups(id, name, faculty_id) VALUES (69, '44,6', 69);

INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('Billy', 'Herringhton', '88005553535', 1, 1);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('38,4', '6,8 ', '6,1 ', 2 , 2 );
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('3,3 ', '41,3', '39,2', 3 , 3 );
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('41,7', '39  ', '1,2 ', 4 , 4 );
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('4,1 ', '31,1', '28,4', 5 , 5 );
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('41,4', '17,9', '11,7', 6 , 6 );
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('20  ', '49,1', '5,6 ', 7 , 7 );
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('31,1', '8,4 ', '33,6', 8 , 8 );
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('2,6 ', '43,6', '46,8', 9 , 9 );
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('31,2', '29  ', '1,2 ', 10, 10);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('7,3 ', '49,6', '21,4', 11, 11);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('10,8', '40,1', '25,3', 12, 12);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('13,5', '35,6', '28,2', 13, 13);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('22,5', '40,2', '33,8', 14, 14);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('32,2', '15,9', '29,4', 15, 15);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('40  ', '11,2', '22,9', 16, 16);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('21,8', '24,4', '33,7', 17, 17);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('13  ', '26,2', '46,5', 18, 18);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('14  ', '46,7', '22,2', 19, 19);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('23,7', '28,8', '22,9', 20, 20);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('14,4', '5,4 ', '18,2', 21, 21);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('3,4 ', '5,8 ', '28,8', 22, 22);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('10,8', '38  ', '34,7', 23, 23);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('5   ', '17,5', '29  ', 24, 24);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('10,5', '43  ', '41,1', 25, 25);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('1,8 ', '35,3', '38,1', 26, 26);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('18,6', '28,5', '11,1', 27, 27);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('28  ', '49,6', '36,3', 28, 28);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('35,3', '10,7', '28,9', 29, 29);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('30,7', '24,9', '33,8', 30, 30);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('37,4', '28,3', '25,8', 31, 31);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('28,1', '19,4', '9   ', 32, 32);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('35,5', '49,6', '34,6', 33, 33);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('14,7', '24,2', '35,1', 34, 34);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('32,3', '9,3 ', '24,1', 35, 35);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('12,8', '24,3', '32,8', 36, 36);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('14,2', '14,7', '23,4', 37, 37);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('45,9', '20,2', '25  ', 38, 38);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('16,5', '30,9', '40,5', 39, 39);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('41,3', '19,7', '47,5', 40, 40);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('40,4', '25,9', '14,4', 41, 41);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('48,7', '1,4 ', '17,9', 42, 42);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('48,4', '31,7', '30  ', 43, 43);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('27,6', '38,4', '48,9', 44, 44);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('5,2 ', '27,7', '33,1', 45, 45);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('49,6', '6,9 ', '37,8', 46, 46);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('22,6', '5,6 ', '25,6', 47, 47);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('4,7 ', '36,4', '36,4', 48, 48);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('16,1', '3,4 ', '19,5', 49, 49);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('48,5', '4,9 ', '17,4', 50, 50);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('41,1', '28  ', '7,7 ', 51, 51);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('20,7', '18,9', '31,4', 52, 52);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('29,6', '14,6', '4,8 ', 53, 53);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('37,4', '24,8', '22,1', 54, 54);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('29,1', '25,4', '38,4', 55, 55);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('14,3', '30,5', '48,1', 56, 56);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('30,4', '19,1', '48,8', 57, 57);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('19,7', '8,7 ', '32,3', 58, 58);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('8   ', '21,4', '26,2', 59, 59);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('17,3', '9   ', '8,2 ', 60, 60);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('16,8', '39,1', '38  ', 61, 61);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('45,7', '44,2', '28,1', 62, 62);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('6   ', '7,6 ', '45  ', 63, 63);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('22,5', '43  ', '15,9', 64, 64);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('47,5', '20,5', '15,8', 65, 65);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('6,9 ', '47  ', '12,1', 66, 66);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('24,9', '20,8', '34  ', 67, 67);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('24  ', '4,7 ', '34,5', 68, 68);
INSERT INTO students(first_name, last_name, home_phone, faculty_id, group_id) VALUES ('0,8 ', '35,8', '13,5', 69, 69);

INSERT INTO students_owe_books(id, student_id, book_id) VALUES (1, 2, 61);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (2 , 3 , 62 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (3 , 4 , 63 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (4 , 5 , 64 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (5 , 6 , 65 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (6 , 7 , 66 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (7 , 8 , 67 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (8 , 9 , 68 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (9 , 10, 69 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (10, 11, 70 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (11, 12, 71 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (12, 13, 72 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (13, 14, 73 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (14, 15, 74 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (15, 16, 75 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (16, 17, 76 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (17, 18, 77 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (18, 19, 78 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (19, 20, 79 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (20, 21, 80 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (21, 22, 81 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (22, 23, 82 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (23, 24, 83 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (24, 25, 84 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (25, 26, 85 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (26, 27, 86 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (27, 28, 87 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (28, 29, 88 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (29, 30, 89 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (30, 31, 90 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (31, 32, 91 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (32, 33, 92 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (33, 34, 93 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (34, 35, 94 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (35, 36, 95 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (36, 37, 96 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (37, 38, 97 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (38, 39, 98 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (39, 40, 99 );
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (40, 41, 100);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (41, 42, 101);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (42, 43, 102);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (43, 44, 103);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (44, 45, 104);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (45, 46, 105);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (46, 47, 106);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (47, 48, 107);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (48, 49, 108);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (49, 50, 109);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (50, 51, 110);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (51, 52, 111);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (52, 53, 112);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (53, 54, 113);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (54, 55, 114);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (55, 56, 115);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (56, 57, 116);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (57, 58, 117);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (58, 59, 118);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (59, 60, 119);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (60, 61, 120);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (61, 62, 121);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (62, 63, 122);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (63, 64, 123);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (64, 65, 124);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (65, 66, 125);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (66, 67, 126);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (67, 68, 127);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (68, 69, 128);
INSERT INTO students_owe_books(id, student_id, book_id) VALUES (69, 70, 129);
