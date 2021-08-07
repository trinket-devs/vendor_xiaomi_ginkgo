/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 10);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '602';
DELETE FROM qcril_emergency_source_voice_table where MCC = '602';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('602','121','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('602','122','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('602','123','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('602','126','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('602','128','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('602','129','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('602','150','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('602','180','','full');
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '602' AND NUMBER = '120';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '602' AND NUMBER = '128';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '602' AND NUMBER = '150';
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('602','128','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('602','150','','');

COMMIT TRANSACTION;
