@interface APDBReportEventCountRow
- (NSArray)branch;
- (NSString)value;
- (void)setValue:(id)value;
@end

@implementation APDBReportEventCountRow

- (NSString)value
{
  v2 = [(APDBReportEventCountRow *)self valueForColumnName:@"value"];
  if ([v2 isEqualToString:@"valueNullPlaceholder"])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (void)setValue:(id)value
{
  if (!value)
  {
    value = @"valueNullPlaceholder";
  }

  [(APDBReportEventCountRow *)self setValue:value forColumnName:@"value"];
}

- (NSArray)branch
{
  manager = [(APDBReportEventCountRow *)self manager];
  if (manager)
  {
    v4 = [APDatabaseColumn alloc];
    rowid = [(APDBReportEventCountRow *)self rowid];
    v6 = [v4 initWithName:@"rowid" forColumnType:0 withValue:rowid];

    v11 = v6;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = [manager executeSelectStringsQuery:@"SELECT branch FROM APDBEventBranch WHERE eventId = ?" withParameters:v7];
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v13 = objc_opt_class();
      v9 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

@end