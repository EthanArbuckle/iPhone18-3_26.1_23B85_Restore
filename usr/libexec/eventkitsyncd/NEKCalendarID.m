@interface NEKCalendarID
+ (id)calendarInStore:(id)a3 withNEKCalendarID:(id)a4;
+ (id)listInStore:(id)a3 withNEKCalendarID:(id)a4;
+ (void)resetLocalCalendarCache;
- (BOOL)isEqual:(id)a3;
- (NEKCalendarID)initWithCalendar:(id)a3;
- (NEKCalendarID)initWithList:(id)a3;
- (id)description;
- (id)initUniquelyWithKey:(id)a3 localFlag:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation NEKCalendarID

- (id)initUniquelyWithKey:(id)a3 localFlag:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NEKCalendarID;
  v8 = [(NEKCalendarID *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_isDefaultLocalCalendar = a4;
  }

  return v9;
}

- (id)description
{
  if ([(NEKCalendarID *)self isDefaultLocalCalendar])
  {
    v3 = @"Default local calendar";
  }

  else
  {
    v4 = [(NEKCalendarID *)self identifier];
    v3 = [NSString stringWithFormat:@"UUID: %@", v4];
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [NSString stringWithFormat:@"<%@ %p %@>", v6, self, v3];;

  return v7;
}

- (unint64_t)hash
{
  if ([(NEKCalendarID *)self isDefaultLocalCalendar])
  {
    return 1;
  }

  v4 = [(NEKCalendarID *)self identifier];
  v5 = [v4 hash];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_8;
    }

    if (![(NEKCalendarID *)self isDefaultLocalCalendar]|| ![(NEKCalendarID *)v4 isDefaultLocalCalendar])
    {
      v6 = [(NEKCalendarID *)self identifier];
      v7 = [(NEKCalendarID *)v4 identifier];
      v5 = [v6 isEqualToString:v7];

      goto LABEL_8;
    }
  }

  v5 = 1;
LABEL_8:

  return v5;
}

- (NEKCalendarID)initWithCalendar:(id)a3
{
  v4 = a3;
  v5 = [v4 eventStore];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [v4 objectID];
    v9 = [v8 isEqual:qword_1000D1830];
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v11 = [v4 calendarIdentifier];
      v10 = [v11 copy];
    }

    self = [(NEKCalendarID *)self initWithIdentifier:v10 isDefaultLocalCalendar:v9];

    v7 = self;
  }

  return v7;
}

+ (id)calendarInStore:(id)a3 withNEKCalendarID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isDefaultLocalCalendar])
  {
    v7 = [v5 defaultLocalCalendar];
  }

  else
  {
    v8 = [v6 identifier];
    v7 = [v5 calendarWithIdentifier:v8];
  }

  return v7;
}

+ (void)resetLocalCalendarCache
{
  v2 = NSStringFromSelector(a2);
  v6 = [EKEventStore eks_eventOnlyStoreFor:v2];

  v3 = [v6 defaultLocalCalendar];
  v4 = [v3 objectID];
  v5 = qword_1000D1830;
  qword_1000D1830 = v4;
}

- (NEKCalendarID)initWithList:(id)a3
{
  v4 = a3;
  v5 = [v4 store];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [v4 objectID];
    v9 = [v8 isEqual:0];
    v10 = 0;
    if ((v9 & 1) == 0)
    {
      v11 = [v4 objectID];
      v12 = [v11 uuid];
      v10 = [v12 UUIDString];
    }

    self = [(NEKCalendarID *)self initWithIdentifier:v10 isDefaultLocalCalendar:v9];

    v7 = self;
  }

  return v7;
}

+ (id)listInStore:(id)a3 withNEKCalendarID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isDefaultLocalCalendar])
  {
    v7 = [v5 eks_defaultLocalList];
    if (!v7)
    {
      v8 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100073B6C(v8);
      }

      v7 = 0;
    }
  }

  else
  {
    v9 = [v6 identifier];
    v10 = [[NSUUID alloc] initWithUUIDString:v9];
    if (!v10)
    {
      v11 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100073A38(v9, v11);
      }
    }

    v12 = [REMList objectIDWithUUID:v10];
    v16 = 0;
    v7 = [v5 fetchListWithObjectID:v12 error:&v16];
    v13 = v16;
    if (!v7)
    {
      v14 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100073AC4(v14, v6);
      }
    }
  }

  return v7;
}

@end