/*
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 8);
/*<Modify for qcril_emergency_source_mcc_table start*/
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '199';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '166';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '525' AND NUMBER = '995';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '730' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '730' AND NUMBER = '131';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_table VALUES('202','911','','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '414';
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','191','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','192','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','199','','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '450';
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','119','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','122','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','113','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','125','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','111','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','117','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','118','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','911','','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '429' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '429' AND NUMBER = '101';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '470' AND NUMBER = '999';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202';
INSERT INTO qcril_emergency_source_mcc_table VALUES('202', '100', '','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('202', '166', '','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('202', '199', '','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '272' AND NUMBER = '999';
INSERT INTO qcril_emergency_source_mcc_table VALUES('272','999','','');

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '272' AND NUMBER = '1913';
INSERT INTO qcril_emergency_source_mcc_table VALUES('272','1913','','');

/*Modify for qcril_emergency_source_mcc_table end>*/

/*<Modify for qcril_emergency_source_voice_table start*/
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '414';
INSERT INTO qcril_emergency_source_voice_table VALUES('414','191','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('414','192','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('414','199','','full');
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '230';
INSERT INTO qcril_emergency_source_voice_table VALUES('230', '150', '','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('230', '155', '','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('230', '158', '','full');
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '255';
INSERT INTO qcril_emergency_source_voice_table VALUES('255','101','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('255','102','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('255','103','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('255','104','','full');

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '202';
INSERT INTO qcril_emergency_source_voice_table VALUES('202','100','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('202','166','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('202','199','','full');

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '456';
INSERT INTO qcril_emergency_source_voice_table VALUES('456','117','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('456','118','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('456','119','','full');

/*Modify for qcril_emergency_source_voice_table end>*/


/*<Modify for qcril_emergency_source_hard_mcc_table start*/
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '450';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','119','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','118','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','111','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','113','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','117','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','122','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','125','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','911','','');
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '730' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '730' AND NUMBER = '131';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '199';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '166';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '911';

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('202','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('202','100','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('202','166','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('202','199','','');

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '272' AND NUMBER = '1913';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('272','1913','','');

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '222' AND NUMBER = '000';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('222','000','','');

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '222' AND NUMBER = '110';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('222','110','','');

/*Modify for qcril_emergency_source_hard_mcc_table end>*/


/*<Modify for qcril_emergency_source_escv_nw_table start*/
DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '450';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','111',6);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','112',0);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','113',3);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','117',18);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','118',19);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','119',4);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','122',8);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','125',9);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','911',4);
DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '414';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','191',4);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','192',2);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','199',1);
/*Modify for qcril_emergency_source_escv_nw_table end>*/

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '466' AND MNC = '05' AND NUMBER = '110';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('466','05','110',1);

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '466' AND MNC = '05' AND NUMBER = '112';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('466','05','112',4);

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '466' AND MNC = '05' AND NUMBER = '119';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('466','05','119',2);

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '202' AND NUMBER = '112';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('202', '', '112','0');

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '202' AND NUMBER = '100';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('202', '', '100','1');

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '202' AND NUMBER = '199';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('202', '', '199','4');

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '202' AND NUMBER = '166';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('202', '', '166','2');


/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '999';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '08';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '118';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '155';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '158';
/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_voice_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '466' AND MNC = '92' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '466' AND MNC = '92' AND NUMBER = '110';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('466','92','119','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('466','92','110','','');
/*Modify for qcril_emergency_source_voice_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '09' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '09' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '09' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','09','133','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','09','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','09','911','','');
/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '03' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '03' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '03' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','03','133','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','03','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','03','911','','');
/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '23' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '23' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '23' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','23','133','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','23','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','23','911','','');
/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_voice_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '732' AND MNC = '101' AND NUMBER = '123';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('732','101','123','','');
/*Modify for qcril_emergency_source_voice_mcc_mnc_table end>*/



DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '722' AND MNC = '310' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '722' AND MNC = '310' AND NUMBER = '101';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '722' AND MNC = '310' AND NUMBER = '107';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '748' AND MNC = '10' AND NUMBER = '104';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '744' AND MNC = '02' AND NUMBER = '128';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('722','310','100','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('722','310','101','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('722','310','107','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('748','10','104','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('744','02','128','','');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '128';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '153';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '180';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '181';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '185';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '188';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '190';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '191';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '192';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '193';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '194';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '197';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '198';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '199';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','100','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','128','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','153','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','180','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','181','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','185','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','188','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','190','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','191','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','192','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','193','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','194','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','197','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','198','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('724','05','199','','');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '120';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '122';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '125';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '128';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','120','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','122','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','123','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','125','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','128','','');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '706' AND MNC = '01' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '706' AND MNC = '01' AND NUMBER = '122';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('706','01','133','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('706','01','122','','');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '714' AND MNC = '03' AND NUMBER = '103';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '714' AND MNC = '03' AND NUMBER = '104';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('714','03','103','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('714','03','104','','');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '708' AND MNC = '001' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '708' AND MNC = '001' AND NUMBER = '111';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '708' AND MNC = '001' AND NUMBER = '113';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '708' AND MNC = '001' AND NUMBER = '116';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '708' AND MNC = '001' AND NUMBER = '195';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '708' AND MNC = '001' AND NUMBER = '198';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '708' AND MNC = '001' AND NUMBER = '199';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('708','001','100','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('708','001','111','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('708','001','113','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('708','001','116','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('708','001','195','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('708','001','198','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('708','001','199','','');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '710' AND MNC = '21' AND NUMBER = '115';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '710' AND MNC = '21' AND NUMBER = '128';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('710','21','115','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('710','21','128','','');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '730' AND MNC = '03' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '730' AND MNC = '23' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '716' AND MNC = '10' AND NUMBER = '105';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('730','03','133','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('730','23','133','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('716','10','105','','');

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '208' AND NUMBER = '15';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '208' AND NUMBER = '17';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '208' AND NUMBER = '18';

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '208' AND NUMBER = '15';
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '208' AND NUMBER = '17';
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '208' AND NUMBER = '18';

/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','02','133','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','02','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','02','911','','');

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '722' AND MNC = '310' AND NUMBER = '911';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '748' AND MNC = '10' AND NUMBER = '911';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '744' AND MNC = '02' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('722','310','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('748','10','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('744','02','911','','');

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '110';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '706' AND MNC = '01' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('704','01','119','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('704','01','110','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('706','01','911','','');

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '714' AND MNC = '03' AND NUMBER = '911';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '714' AND MNC = '03' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '712' AND MNC = '03' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('714','03','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('714','03','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('712','03','911','','');

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '708' AND MNC = '001' AND NUMBER = '911';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '708' AND MNC = '001' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '708' AND MNC = '001' AND NUMBER = '118';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('708','001','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('708','001','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('708','001','118','','');

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '710' AND MNC = '21' AND NUMBER = '911';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '710' AND MNC = '21' AND NUMBER = '118';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('710','21','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('710','21','118','','');

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '03' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '23' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '03' AND NUMBER = '911';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '23' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','03','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','23','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','03','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','23','911','','');

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '732' AND MNC = '101' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '716' AND MNC = '10' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '740' AND MNC = '01' AND NUMBER = '911';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '330' AND MNC = '110' AND NUMBER = '911';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '370' AND MNC = '02' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','101','123','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('716','10','119','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('740','01','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('330','110','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('370','02','911','','');

/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

DELETE FROM qcril_emergency_source_mcc_table where MCC = '234' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '234' AND NUMBER = '158';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '234' AND NUMBER = '159';


DELETE FROM qcril_emergency_source_voice_table where MCC = '234' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_voice_table where MCC = '234' AND NUMBER = '158';
DELETE FROM qcril_emergency_source_voice_table where MCC = '234' AND NUMBER = '159';


DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '234' AND MNC = '15' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '234' AND MNC = '15' AND NUMBER = '158';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '234' AND MNC = '15' AND NUMBER = '159';

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '234' AND MNC = '15' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '234' AND MNC = '15' AND NUMBER = '158';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '234' AND MNC = '15' AND NUMBER = '159';

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '158';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '159';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('230','03','150','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('230','03','158','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('230','03','159','','');


DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '158';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '159';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('230','03','150','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('230','03','158','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('230','03','159','','');

COMMIT TRANSACTION;
