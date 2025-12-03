@interface NEKOccurrenceCacheDumper
- (NEKOccurrenceCacheDumper)initWithDatabaseFile:(id)file;
- (id)runForNow;
- (id)runFrom:(id)from to:(id)to;
@end

@implementation NEKOccurrenceCacheDumper

- (NEKOccurrenceCacheDumper)initWithDatabaseFile:(id)file
{
  fileCopy = file;
  v9.receiver = self;
  v9.super_class = NEKOccurrenceCacheDumper;
  v6 = [(NEKOccurrenceCacheDumper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dbFile, file);
  }

  return v7;
}

- (id)runFrom:(id)from to:(id)to
{
  toCopy = to;
  fromCopy = from;
  v8 = objc_alloc_init(NEKPBOccurrenceCache);
  [fromCopy timeIntervalSinceReferenceDate];
  v10 = v9;

  [(NEKPBOccurrenceCache *)v8 setStart:v10];
  [toCopy timeIntervalSinceReferenceDate];
  v12 = v11;

  [(NEKPBOccurrenceCache *)v8 setEnd:v12];
  dbFile = self->_dbFile;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100036A78;
  v16[3] = &unk_1000B4F80;
  v14 = v8;
  v17 = v14;
  [(NDTSQFile *)dbFile parseSql:@"select I.unique_identifier andRun:C.external_id calendar, O.occurrence_date occurrence_date from occurrencecache O left join calendar C on C.rowid = O.calendar_id left join calendaritem I on I.rowid = O.event_id where I.entity_type = 2 and O.occurrence_date >= ?  and O.occurrence_date <= ? and C.flags & 786432 == 0 order by occurrence_date, I.unique_identifier", v16];

  return v14;
}

- (id)runForNow
{
  v3 = +[NSDate date];
  v4 = [v3 dateByAddingTimeInterval:-21600.0];
  v5 = [v3 dateByAddingTimeInterval:864000.0];
  v6 = [(NEKOccurrenceCacheDumper *)self runFrom:v4 to:v5];

  return v6;
}

@end