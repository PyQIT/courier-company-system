INSERT INTO public.address (id, buildingnumber, city, flatnumber, postalcode, street) VALUES (1, '4', 'Kielce', '-', '25-555', 'Wesoła');
INSERT INTO public.address (id, buildingnumber, city, flatnumber, postalcode, street) VALUES (4, '4', 'Kielce', '3', '25-555', 'Modra');
INSERT INTO public.address (id, buildingnumber, city, flatnumber, postalcode, street) VALUES (5, '3', 'Kielce', '1', '25-431', 'Stara');
INSERT INTO public.address (id, buildingnumber, city, flatnumber, postalcode, street) VALUES (6, 'string', 'string', 'string', 'string', 'string');
INSERT INTO public.address (id, buildingnumber, city, flatnumber, postalcode, street) VALUES (8, '21', 'Kielce', '-', '21-321', 'ulica');
INSERT INTO public.address (id, buildingnumber, city, flatnumber, postalcode, street) VALUES (9, '22', 'Kielce', '1', '21-321', 'Ulica');
INSERT INTO public.address (id, buildingnumber, city, flatnumber, postalcode, street) VALUES (7, '11', 'Kielce', '-', '21-123', 'Paczkowska');
INSERT INTO public.companyuser (id, active, password, username) VALUES (1, true, '$2a$12$QOpC9AXqeKDBcNMWHFr/oOEjcJqxD1IkbZsvshHsTRvsIsLpVbji6', 'admin');
INSERT INTO public.companyuser (id, active, password, username) VALUES (2, true, '$2a$12$QOpC9AXqeKDBcNMWHFr/oOEjcJqxD1IkbZsvshHsTRvsIsLpVbji6', 'company');
INSERT INTO public.companyuser (id, active, password, username) VALUES (3, true, '$2a$12$QOpC9AXqeKDBcNMWHFr/oOEjcJqxD1IkbZsvshHsTRvsIsLpVbji6', 'indivudal');
INSERT INTO public.companyuser (id, active, password, username) VALUES (4, true, '$2a$12$QOpC9AXqeKDBcNMWHFr/oOEjcJqxD1IkbZsvshHsTRvsIsLpVbji6', 'courier');
INSERT INTO public.companyuser (id, active, password, username) VALUES (5, true, '$2a$12$QOpC9AXqeKDBcNMWHFr/oOEjcJqxD1IkbZsvshHsTRvsIsLpVbji6', 'logistician');
INSERT INTO public.client (clienttype, emailaddress, phonenumber, userid) VALUES (1, 'company@company.com', '123456789', 2);
INSERT INTO public.client (clienttype, emailaddress, phonenumber, userid) VALUES (0, 'indi@wp.pl', '123423', 3);
INSERT INTO public.clientcompany (companyname, nip, representativeemailaddress, representativename, representativephonenumber, representativesurname, clientid) VALUES ('Company', '123456789111', 'a.mocko@company.com', 'Anna', '69696969', 'Moćki', 2);
INSERT INTO public.clientindividual (name, pesel, surname, clientid) VALUES ('Andże', '98020228861', 'Siemienić', 3);
INSERT INTO public.employee (name, pesel, phonenumber, surname, userid) VALUES ('Courier', '82041824463', '2341312', 'Courierovsky', 4);
INSERT INTO public.employee (name, pesel, phonenumber, surname, userid) VALUES ('Loghistician', '65040427899', '2341312', 'Loghistick', 5);
INSERT INTO public.courier (employeeid) VALUES (4);
INSERT INTO public.magazine (id, active, address_id) VALUES (1, true, 7);
INSERT INTO public.logistician (employeeid, magazineid) VALUES (5, 1);
INSERT INTO public.parceltype (id, isactive, description, name, price) VALUES (1, true, 'A standard(ISO PN-EN-329839) parcel with standard(ISO PN-EN-329839) dimensions', 'Standard', 7.50);
INSERT INTO public.receiverinfo (id, emailaddress, name, phonenumber, surname) VALUES (2, 'olo@wp.pl', 'Andże', '123124412', 'Siemienić');
INSERT INTO public.receiverinfo (id, emailaddress, name, phonenumber, surname) VALUES (3, 'company@company.com', 'Company', '123456789', '-');
INSERT INTO public.receiverinfo (id, emailaddress, name, phonenumber, surname) VALUES (4, 'o@o.pl', 'To je imie', '123456', 'to je naziwsko');
INSERT INTO public.parcel (id, isdatemoved, expectedcourierarrivaldate, ispaid, parcelfee, pin, priority, istoreturn, deliveryaddressid, parceltypeid, receivercontactdataid, clientid, senderaddressid) VALUES (5, false, '2019-12-26', true, 15.00, '2980', false, true, 5, 1, 3, 2, 5);
INSERT INTO public.parcel (id, isdatemoved, expectedcourierarrivaldate, ispaid, parcelfee, pin, priority, istoreturn, deliveryaddressid, parceltypeid, receivercontactdataid, clientid, senderaddressid) VALUES (7, false, '2020-01-28', false, 1.00, '     ', false, false, 8, 1, 4, 3, 9);
INSERT INTO public.parcel (id, isdatemoved, expectedcourierarrivaldate, ispaid, parcelfee, pin, priority, istoreturn, deliveryaddressid, parceltypeid, receivercontactdataid, clientid, senderaddressid) VALUES (8, true, '2019-12-27', true, 1.00, '3724', false, false, 8, 1, 4, 3, 9);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (4, '2019-12-26 10:41:40.272553', 3, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (5, '2019-12-26 15:06:15.420902', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (6, '2019-12-26 15:09:20.499102', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (7, '2019-12-26 15:37:33.644057', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (8, '2019-12-26 15:38:42.019697', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (9, '2019-12-26 15:39:46.575148', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (10, '2019-12-26 15:42:24.712542', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (11, '2019-12-26 15:43:13.162360', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (12, '2019-12-26 15:43:19.046165', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (13, '2019-12-26 15:43:29.648513', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (14, '2019-12-26 15:48:16.148220', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (15, '2019-12-26 15:48:20.625750', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (16, '2019-12-26 15:48:29.418067', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (17, '2019-12-26 15:49:35.422650', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (18, '2019-12-26 15:57:25.989531', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (19, '2019-12-26 15:58:16.675504', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (20, '2019-12-26 15:58:26.010615', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (21, '2019-12-26 16:08:56.383366', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (22, '2019-12-26 16:09:21.509031', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (23, '2019-12-26 16:09:50.837070', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (24, '2019-12-26 16:12:49.696184', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (25, '2019-12-26 16:12:59.765894', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (26, '2019-12-26 16:14:15.462214', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (27, '2019-12-26 16:22:11.331090', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (28, '2019-12-26 16:22:52.578310', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (29, '2019-12-26 16:36:58.667432', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (30, '2019-12-26 16:37:02.295625', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (32, '2019-12-26 16:37:53.603756', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (33, '2019-12-26 16:46:48.246476', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (34, '2019-12-26 16:47:11.951910', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (35, '2019-12-26 17:16:43.465008', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (36, '2019-12-26 17:17:10.589632', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (37, '2019-12-26 17:18:14.147097', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (38, '2019-12-26 17:18:35.582246', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (39, '2019-12-26 17:18:54.111310', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (40, '2019-12-26 17:19:48.326957', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (41, '2019-12-26 17:22:50.713307', 1, null, 1, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (42, '2019-12-26 17:24:22.231066', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (43, '2019-12-26 17:24:29.937703', 2, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (44, '2019-12-26 17:24:40.629520', 4, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (45, '2019-12-26 17:25:26.352842', 5, 4, null, 5);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (47, '2019-12-27 16:28:17.766428', 3, null, 1, 7);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (48, '2019-12-27 16:42:49.689065', 3, null, 1, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (50, '2019-12-27 16:43:33.188074', 2, 4, null, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (51, '2019-12-27 16:45:07.753404', 4, 4, null, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (52, '2019-12-27 16:47:57.887195', 1, null, 1, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (53, '2019-12-27 16:50:45.984743', 2, 4, null, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (54, '2019-12-27 17:04:47.341894', 4, 4, null, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (55, '2019-12-27 17:10:35.266274', 1, null, 1, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (56, '2019-12-27 17:10:41.931402', 2, 4, null, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (57, '2019-12-27 17:10:58.510396', 4, 4, null, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (58, '2019-12-27 17:14:38.211372', 1, null ,1, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (59, '2019-12-27 17:15:38.211372', 2, 4 ,null, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (60, '2019-12-27 17:16:38.211372', 4, 4 ,null, 8);
INSERT INTO public.parcelstaterecord (id, changedate, state, courierid, magazineid, parcelid) VALUES (61, '2019-12-27 17:17:38.211372', 1, null ,1, 8);
INSERT INTO public.estimateddeliverytime (id, expectedcourierarrivalafteradd, expectedcourierarrivalafteraddtomagazine, timesatmagazinetoreturn, maxmovedayafter) VALUES (1, 4, 3, 3, 5);
