@interface NEKCalendarID
+ (id)calendarInStore:(id)store withNEKCalendarID:(id)d;
+ (id)listInStore:(id)store withNEKCalendarID:(id)d;
+ (void)resetLocalCalendarCache;
- (BOOL)isEqual:(id)equal;
- (NEKCalendarID)initWithCalendar:(id)calendar;
- (NEKCalendarID)initWithList:(id)list;
- (id)description;
- (id)initUniquelyWithKey:(id)key localFlag:(BOOL)flag;
- (unint64_t)hash;
@end

@implementation NEKCalendarID

- (id)initUniquelyWithKey:(id)key localFlag:(BOOL)flag
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = NEKCalendarID;
  v8 = [(NEKCalendarID *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, key);
    v9->_isDefaultLocalCalendar = flag;
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
    identifier = [(NEKCalendarID *)self identifier];
    v3 = [NSString stringWithFormat:@"UUID: %@", identifier];
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

  identifier = [(NEKCalendarID *)self identifier];
  v5 = [identifier hash];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_8;
    }

    if (![(NEKCalendarID *)self isDefaultLocalCalendar]|| ![(NEKCalendarID *)equalCopy isDefaultLocalCalendar])
    {
      identifier = [(NEKCalendarID *)self identifier];
      identifier2 = [(NEKCalendarID *)equalCopy identifier];
      v5 = [identifier isEqualToString:identifier2];

      goto LABEL_8;
    }
  }

  v5 = 1;
LABEL_8:

  return v5;
}

- (NEKCalendarID)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  eventStore = [calendarCopy eventStore];
  v6 = eventStore;
  selfCopy = 0;
  if (calendarCopy && eventStore)
  {
    objectID = [calendarCopy objectID];
    v9 = [objectID isEqual:qword_1000D1830];
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      calendarIdentifier = [calendarCopy calendarIdentifier];
      v10 = [calendarIdentifier copy];
    }

    self = [(NEKCalendarID *)self initWithIdentifier:v10 isDefaultLocalCalendar:v9];

    selfCopy = self;
  }

  return selfCopy;
}

+ (id)calendarInStore:(id)store withNEKCalendarID:(id)d
{
  storeCopy = store;
  dCopy = d;
  if ([dCopy isDefaultLocalCalendar])
  {
    defaultLocalCalendar = [storeCopy defaultLocalCalendar];
  }

  else
  {
    identifier = [dCopy identifier];
    defaultLocalCalendar = [storeCopy calendarWithIdentifier:identifier];
  }

  return defaultLocalCalendar;
}

+ (void)resetLocalCalendarCache
{
  v2 = NSStringFromSelector(a2);
  v6 = [EKEventStore eks_eventOnlyStoreFor:v2];

  defaultLocalCalendar = [v6 defaultLocalCalendar];
  objectID = [defaultLocalCalendar objectID];
  v5 = qword_1000D1830;
  qword_1000D1830 = objectID;
}

- (NEKCalendarID)initWithList:(id)list
{
  listCopy = list;
  store = [listCopy store];
  v6 = store;
  selfCopy = 0;
  if (listCopy && store)
  {
    objectID = [listCopy objectID];
    v9 = [objectID isEqual:0];
    uUIDString = 0;
    if ((v9 & 1) == 0)
    {
      objectID2 = [listCopy objectID];
      uuid = [objectID2 uuid];
      uUIDString = [uuid UUIDString];
    }

    self = [(NEKCalendarID *)self initWithIdentifier:uUIDString isDefaultLocalCalendar:v9];

    selfCopy = self;
  }

  return selfCopy;
}

+ (id)listInStore:(id)store withNEKCalendarID:(id)d
{
  storeCopy = store;
  dCopy = d;
  if ([dCopy isDefaultLocalCalendar])
  {
    eks_defaultLocalList = [storeCopy eks_defaultLocalList];
    if (!eks_defaultLocalList)
    {
      v8 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100073B6C(v8);
      }

      eks_defaultLocalList = 0;
    }
  }

  else
  {
    identifier = [dCopy identifier];
    v10 = [[NSUUID alloc] initWithUUIDString:identifier];
    if (!v10)
    {
      v11 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100073A38(identifier, v11);
      }
    }

    v12 = [REMList objectIDWithUUID:v10];
    v16 = 0;
    eks_defaultLocalList = [storeCopy fetchListWithObjectID:v12 error:&v16];
    v13 = v16;
    if (!eks_defaultLocalList)
    {
      v14 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100073AC4(v14, dCopy);
      }
    }
  }

  return eks_defaultLocalList;
}

@end