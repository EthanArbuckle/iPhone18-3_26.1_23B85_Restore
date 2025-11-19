@interface NEKRecordMap
- (BOOL)isIdentifierPresent:(id)a3 forRecordID:(id)a4;
- (BOOL)recordChanged:(id)a3;
- (NEKRecordMap)initWithDatabaseManager:(id)a3;
- (id)identifierForRecordID:(id)a3;
- (int)_schemaVersion;
- (unint64_t)count;
- (void)_setSchemaVersion:(int64_t)a3;
- (void)createTables;
- (void)deleteIdentifierForRecordID:(id)a3;
- (void)dumpToLog;
- (void)removeAllRecords;
- (void)setIdentifier:(id)a3 masterRowID:(int64_t)a4 summary:(id)a5 location:(id)a6 startTime:(double)a7 forRecordID:(id)a8;
@end

@implementation NEKRecordMap

- (NEKRecordMap)initWithDatabaseManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NEKRecordMap;
  v5 = [(NEKRecordMap *)&v11 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.eventkitsync", "recordMap");
    log = v5->_log;
    v5->_log = v6;

    v8 = [v4 syncStateDBPathFor:@"RecordMap.db"];
    v5->_os_lock._os_unfair_lock_opaque = 0;
    v9 = [[NDTSQFile alloc] initWithPath:v8];
    [(NDTSQFile *)v9 addSchema:v5];
  }

  return v5;
}

- (void)createTables
{
  [(NDTSQSchema *)self executeSql:@"CREATE TABLE IF NOT EXISTS record(rowid INTEGER PRIMARY KEY ASC, entityType INT, entityRowID INT, UUID TEXT)"];
  [(NDTSQSchema *)self executeSql:@"CREATE UNIQUE INDEX IF NOT EXISTS entityIndex ON record (entityType, entityRowID)"];
  [(NDTSQSchema *)self executeSql:@"CREATE VIEW IF NOT EXISTS record_utc AS SELECT rowid, datetime(timestamp, 'unixepoch') stamp, entityType, entityRowID, masterRowID, uuid FROM record ORDER BY timestamp, entityType, uuid"];
  v3 = [(NEKRecordMap *)self _schemaVersion];
  if (v3 <= 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Migrating recordMap to version 1.", buf, 2u);
    }

    [(NDTSQSchema *)self begin];
    [(NDTSQSchema *)self executeSql:@"ALTER TABLE record ADD COLUMN timestamp INT DEFAULT NULL"];
    [(NEKRecordMap *)self _setSchemaVersion:1];
    [(NDTSQSchema *)self commit];
  }

  else if (v3 != 1)
  {
    if (v3 > 2)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = self->_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Migrating recordMap to version 2.", v8, 2u);
  }

  [(NDTSQSchema *)self begin];
  [(NDTSQSchema *)self executeSql:@"ALTER TABLE record ADD COLUMN masterRowID INT DEFAULT -1 NOT NULL"];
  [(NDTSQSchema *)self executeSql:@"ALTER TABLE record ADD COLUMN mark INT DEFAULT 1 NOT NULL"];
  [(NDTSQSchema *)self executeSql:@"ALTER TABLE record ADD COLUMN summary_hash TEXT DEFAULT NULL"];
  [(NDTSQSchema *)self executeSql:@"ALTER TABLE record ADD COLUMN location_hash TEXT DEFAULT NULL"];
  [(NDTSQSchema *)self executeSql:@"ALTER TABLE record ADD COLUMN start_time REAL DEFAULT NULL"];
  [(NEKRecordMap *)self _setSchemaVersion:2];
  [(NDTSQSchema *)self commit];
LABEL_10:
  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migrating recordMap to version 3.", v7, 2u);
  }

  [(NDTSQSchema *)self begin];
  [(NDTSQSchema *)self executeSql:@"ALTER TABLE record ADD COLUMN entityDatabaseID INT DEFAULT 0 NOT NULL"];
  [(NDTSQSchema *)self executeSql:@"DROP INDEX entityIndex"];
  [(NDTSQSchema *)self executeSql:@"CREATE UNIQUE INDEX entityIndex ON record (entityType, entityRowID, entityDatabaseID)"];
  [(NDTSQSchema *)self executeSql:@"DROP VIEW record_utc"];
  [(NDTSQSchema *)self executeSql:@"CREATE VIEW record_utc AS SELECT rowid, datetime(timestamp, 'unixepoch') stamp, entityType, entityRowID, entityDatabaseID, masterRowID, uuid FROM record ORDER BY timestamp, entityType, uuid"];
  [(NEKRecordMap *)self _setSchemaVersion:3];
  [(NDTSQSchema *)self commit];
}

- (int)_schemaVersion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100030E30;
  v4[3] = &unk_1000B55B8;
  v4[4] = &v5;
  [(NDTSQSchema *)self parseSql:@"PRAGMA user_version" andRun:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_setSchemaVersion:(int64_t)a3
{
  v4 = [NSString stringWithFormat:@"PRAGMA user_version = %d", a3];
  [(NDTSQSchema *)self executeSql:v4];
}

- (id)identifierForRecordID:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100031134;
  v23 = sub_100031144;
  v24 = 0;
  [(NEKRecordMap *)self lock];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10003114C;
  v16 = &unk_1000B4EE0;
  v5 = v4;
  v17 = v5;
  v18 = &v19;
  [(NDTSQSchema *)self parseSql:@"SELECT UUID FROM record WHERE entityType = ? AND entityRowID = ? AND entityDatabaseID = ?" andRun:&v13];
  [(NEKRecordMap *)self unlock:v13];
  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = v20[5];
    v10 = [v5 entityType];
    v11 = [v5 rowID];
    v12 = [v5 databaseID];
    *buf = 138544130;
    v26 = v9;
    v27 = 1024;
    v28 = v10;
    v29 = 1024;
    v30 = v11;
    v31 = 1024;
    v32 = v12;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "read id:%{public}@ %d/%d/%d", buf, 0x1Eu);
  }

  v7 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v7;
}

- (void)setIdentifier:(id)a3 masterRowID:(int64_t)a4 summary:(id)a5 location:(id)a6 startTime:(double)a7 forRecordID:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  if (v14)
  {
    v18 = sub_1000313C8(v16);

    v19 = sub_1000313C8(v15);

    [(NEKRecordMap *)self lock];
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_1000314B8;
    v27 = &unk_1000B55E0;
    v20 = v17;
    v28 = v20;
    v21 = v14;
    v29 = v21;
    v32 = a4;
    v15 = v19;
    v30 = v15;
    v16 = v18;
    v31 = v16;
    v33 = a7;
    [(NDTSQSchema *)self parseSql:@"INSERT OR REPLACE INTO record(entityType andRun:entityRowID, entityDatabaseID, UUID, timestamp, masterRowID, summary_hash, location_hash, start_time, mark) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, 1)", &v24];
    [(NEKRecordMap *)self unlock:v24];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100071D28(v21, log, v20);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100071E0C(v23, v17);
    }
  }
}

- (BOOL)isIdentifierPresent:(id)a3 forRecordID:(id)a4
{
  v6 = a3;
  v7 = [(NEKRecordMap *)self identifierForRecordID:a4];
  LOBYTE(self) = [v7 isEqualToString:v6];

  return self;
}

- (BOOL)recordChanged:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v5 = [v4 location];
  v6 = sub_1000313C8(v5);

  v7 = [v4 title];
  v8 = sub_1000313C8(v7);

  v9 = [v4 startDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  [v4 objectID];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000317A0;
  v12 = v16[3] = &unk_1000B5608;
  v17 = v12;
  v20 = &v22;
  v13 = v8;
  v18 = v13;
  v14 = v6;
  v19 = v14;
  v21 = v11;
  [(NDTSQSchema *)self parseSql:@"SELECT summary_hash andRun:location_hash, start_time FROM record WHERE entityType = ? AND entityRowID = ? AND entityDatabaseID = ?", v16];
  LOBYTE(self) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return self;
}

- (void)deleteIdentifierForRecordID:(id)a3
{
  v4 = a3;
  [(NEKRecordMap *)self lock];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100031950;
  v6[3] = &unk_1000B4F80;
  v7 = v4;
  v5 = v4;
  [(NDTSQSchema *)self parseSql:@"DELETE FROM record WHERE entityType = ? and entityRowID = ? and entityDatabaseID = ?" andRun:v6];
  [(NEKRecordMap *)self unlock];
}

- (void)removeAllRecords
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Deleting everything from record map", v4, 2u);
  }

  [(NEKRecordMap *)self lock];
  [(NDTSQSchema *)self executeSql:@"DELETE FROM record"];
  [(NEKRecordMap *)self unlock];
}

- (void)dumpToLog
{
  v3 = self->_log;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100031B04;
  v5[3] = &unk_1000B4F80;
  v6 = v3;
  v4 = v3;
  [(NDTSQSchema *)self parseSql:@"SELECT entityType andRun:entityRowID, entityDatabaseID, UUID, mark FROM record ORDER BY mark, entityType, entityRowID, UUID", v5];
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  [(NEKRecordMap *)self lock];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100031D54;
  v5[3] = &unk_1000B55B8;
  v5[4] = &v6;
  [(NDTSQSchema *)self parseSql:@"SELECT count() FROM record" andRun:v5];
  [(NEKRecordMap *)self unlock];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end