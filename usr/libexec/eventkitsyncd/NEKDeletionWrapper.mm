@interface NEKDeletionWrapper
+ (id)deletionWrapperForObjectID:(id)d deletedReminderAndListMapping:(id)mapping;
+ (id)deletionWrapperForRecordID:(id)d eventStore:(id)store;
+ (id)deletionWrapperForSourceID:(id)d;
- (NEKDeletionWrapper)initWithStoreType:(int64_t)type identifier:(id)identifier calendarIdentifier:(id)calendarIdentifier type:(int)a6;
- (id)description;
- (id)objectIdentifier;
@end

@implementation NEKDeletionWrapper

+ (id)deletionWrapperForRecordID:(id)d eventStore:(id)store
{
  dCopy = d;
  storeCopy = store;
  v8 = storeCopy;
  if (!dCopy || !storeCopy)
  {
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10006F4F0(v17);
    }

    goto LABEL_10;
  }

  v9 = [dCopy entityType] - 1;
  if (v9 > 5 || ((0x27u >> v9) & 1) == 0)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v10 = dword_1000A2640[v9];
  v11 = [v8 identifierInRowMappingForRecordIDRef:dCopy];
  v12 = [v8 calendarIdentifierInRowMappingForRecordIDRef:dCopy];
  if (v11)
  {
    v13 = [[self alloc] initWithStoreType:0 identifier:v11 calendarIdentifier:v12 type:v10];
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      stringRepresentation = [dCopy stringRepresentation];
      v19 = 138543618;
      v20 = stringRepresentation;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Event deletion wrapper: %{public}@ -> %{public}@", &v19, 0x16u);
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

  return v13;
}

+ (id)deletionWrapperForSourceID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initWithStoreType:0 identifier:dCopy calendarIdentifier:0 type:1];

  return v5;
}

- (NEKDeletionWrapper)initWithStoreType:(int64_t)type identifier:(id)identifier calendarIdentifier:(id)calendarIdentifier type:(int)a6
{
  identifierCopy = identifier;
  calendarIdentifierCopy = calendarIdentifier;
  v16.receiver = self;
  v16.super_class = NEKDeletionWrapper;
  v13 = [(NEKWrapper *)&v16 initWithStoreType:type nekChangeType:4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_calendarIdentifier, calendarIdentifier);
    v14->_type = a6;
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  type = self->_type;
  if (type > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(&off_1000B53C0 + type);
  }

  identifier = self->_identifier;
  v9 = [NSString stringWithFormat:@"<%@ %p type=%@; identifier=%@; calendarIdentifier=%@>", v4, self, v7, identifier, self->_calendarIdentifier];;

  return v9;
}

- (id)objectIdentifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    v3 = identifier;
  }

  else
  {
    v3 = +[NSUUID eks_garbageUUID];
  }

  return v3;
}

+ (id)deletionWrapperForObjectID:(id)d deletedReminderAndListMapping:(id)mapping
{
  dCopy = d;
  mappingCopy = mapping;
  if (dCopy)
  {
    entityName = [dCopy entityName];
    v9 = +[REMAccount cdEntityName];
    v10 = [entityName isEqualToString:v9];

    if (v10)
    {
      v11 = 0;
LABEL_20:
      v19 = 0;
      goto LABEL_21;
    }

    v14 = +[REMList cdEntityName];
    v15 = [entityName isEqualToString:v14];

    if (v15)
    {
      uuid = [dCopy uuid];
      uUIDString = [uuid UUIDString];

      v11 = 0;
      v18 = 2;
      if (!uUIDString)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = +[REMReminder cdEntityName];
      v21 = [entityName isEqualToString:v20];

      if ((v21 & 1) == 0)
      {
        v19 = 0;
LABEL_22:
        v13 = v19;

        goto LABEL_23;
      }

      v22 = +[REMStore eks_storeForSyncing];
      v23 = [v22 fetchReminderIncludingConcealedWithObjectID:dCopy error:0];
      v24 = v23;
      if (v23)
      {
        uUIDString = [v23 daCalendarItemUniqueIdentifier];
        v25 = [mappingCopy objectForKeyedSubscript:dCopy];
        if (v25)
        {
          v11 = v25;
        }

        else
        {
          v26 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100071848(v26, v24);
          }

          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
        uUIDString = 0;
      }

      v18 = 3;
      if (!uUIDString)
      {
        goto LABEL_20;
      }
    }

    v19 = [[self alloc] initWithStoreType:1 identifier:uUIDString calendarIdentifier:v11 type:v18];

LABEL_21:
    goto LABEL_22;
  }

  v12 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10006F4F0(v12);
  }

  v13 = 0;
LABEL_23:

  return v13;
}

@end