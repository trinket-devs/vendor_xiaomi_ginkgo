/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 14);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '452';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '452';
DELETE FROM qcril_emergency_source_voice_table where MCC = '452';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','112','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','113','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','114','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','115','','full');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '110';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '120';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '122';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '125';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '128';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','110','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','119','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','120','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','122','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','123','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','125','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('704','01','128','','');
DELETE FROM qcril_emergency_source_mcc_table where MCC = '704' AND NUMBER = '122';
INSERT INTO qcril_emergency_source_mcc_table VALUES('704','110','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('704','119','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('704','120','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('704','122','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('704','123','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('704','125','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('704','128','','');


/*HTH-131714*/
DELETE FROM qcril_emergency_source_mcc_table where MCC = '732' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '732' AND MNC = '101' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '732' AND MNC = '101' AND NUMBER = '123';

COMMIT TRANSACTION;
