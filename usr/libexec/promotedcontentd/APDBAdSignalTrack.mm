@interface APDBAdSignalTrack
- (BOOL)removeDataOlderThan:(id)than;
- (id)insertSignalTrackForTriggerRowId:(id)id impressionId:(id)impressionId;
- (id)signalTracksForTriggerRowId:(id)id limit:(unint64_t)limit offset:(unint64_t)offset;
@end

@implementation APDBAdSignalTrack

- (id)insertSignalTrackForTriggerRowId:(id)id impressionId:(id)impressionId
{
  idCopy = id;
  impressionIdCopy = impressionId;
  manager = [(APDBAdSignalTrack *)self manager];

  if (!manager)
  {
    v11 = APLogForCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v18 = 138477827;
    v19 = objc_opt_class();
    v13 = v19;
    v14 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v14, &v18, 0xCu);

    goto LABEL_14;
  }

  if (!idCopy || !impressionIdCopy)
  {
    v11 = APLogForCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v18 = 138477827;
    v19 = objc_opt_class();
    v13 = v19;
    v14 = "[%{private}@]: Error storing Signal Track, NONNULL params are NULL";
    goto LABEL_10;
  }

  v9 = [APDBAdSignalTrackRow alloc];
  v10 = +[NSDate date];
  v11 = [(APDBAdSignalTrackRow *)v9 initWithTriggerRowId:idCopy impressionId:impressionIdCopy updateTimestamp:v10 table:self];

  if ([v11 save])
  {
    v11 = v11;
    v12 = v11;
    goto LABEL_15;
  }

  v15 = APLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v18 = 138477827;
    v19 = objc_opt_class();
    v16 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{private}@]: Error storing Signal Track, could not create row.", &v18, 0xCu);
  }

LABEL_14:
  v12 = 0;
LABEL_15:

  return v12;
}

- (id)signalTracksForTriggerRowId:(id)id limit:(unint64_t)limit offset:(unint64_t)offset
{
  idCopy = id;
  manager = [(APDBAdSignalTrack *)self manager];
  if (manager)
  {
    if (idCopy)
    {
      v10 = [[APDatabaseColumn alloc] initWithName:@"triggerRowId" forColumnType:0 withValue:idCopy];
      offset = [NSString stringWithFormat:@"SELECT rowid, * FROM APDBAdSignalTrack WHERE triggerRowId = ? LIMIT %ld OFFSET %ld", limit, offset];
      v17 = v10;
      v12 = [NSArray arrayWithObjects:&v17 count:1];
      v13 = [manager executeSelectQuery:offset forTable:self withParameters:v12];

      goto LABEL_10;
    }

    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v19 = objc_opt_class();
      v14 = v19;
      v15 = "[%{private}@]: Error getting Signal Tracks, NONNULL params are NULL";
      goto LABEL_8;
    }
  }

  else
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v19 = objc_opt_class();
      v14 = v19;
      v15 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    }
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (BOOL)removeDataOlderThan:(id)than
{
  thanCopy = than;
  manager = [(APDBAdSignalTrack *)self manager];
  if (!manager)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v15 = objc_opt_class();
      v10 = v15;
      v11 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (!thanCopy)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v15 = objc_opt_class();
      v10 = v15;
      v11 = "[%{private}@]: Error remove data, NONNULL params are NULL";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = [[APDatabaseColumn alloc] initWithName:@"updateTimestamp" forColumnType:4 withValue:thanCopy];
  manager2 = [(APDBAdSignalTrack *)self manager];
  v13 = v6;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [manager2 executeQuery:@"DELETE FROM APDBAdSignalTrack WHERE updateTimestamp < ?" withParameters:v8];

LABEL_10:
  return v9;
}

@end