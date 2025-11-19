@interface NEKDeletionWrapper
+ (id)deletionWrapperForObjectID:(id)a3 deletedReminderAndListMapping:(id)a4;
+ (id)deletionWrapperForRecordID:(id)a3 eventStore:(id)a4;
+ (id)deletionWrapperForSourceID:(id)a3;
- (NEKDeletionWrapper)initWithStoreType:(int64_t)a3 identifier:(id)a4 calendarIdentifier:(id)a5 type:(int)a6;
- (id)description;
- (id)objectIdentifier;
@end

@implementation NEKDeletionWrapper

+ (id)deletionWrapperForRecordID:(id)a3 eventStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10006F4F0(v17);
    }

    goto LABEL_10;
  }

  v9 = [v6 entityType] - 1;
  if (v9 > 5 || ((0x27u >> v9) & 1) == 0)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v10 = dword_1000A2640[v9];
  v11 = [v8 identifierInRowMappingForRecordIDRef:v6];
  v12 = [v8 calendarIdentifierInRowMappingForRecordIDRef:v6];
  if (v11)
  {
    v13 = [[a1 alloc] initWithStoreType:0 identifier:v11 calendarIdentifier:v12 type:v10];
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v6 stringRepresentation];
      v19 = 138543618;
      v20 = v16;
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

+ (id)deletionWrapperForSourceID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithStoreType:0 identifier:v4 calendarIdentifier:0 type:1];

  return v5;
}

- (NEKDeletionWrapper)initWithStoreType:(int64_t)a3 identifier:(id)a4 calendarIdentifier:(id)a5 type:(int)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = NEKDeletionWrapper;
  v13 = [(NEKWrapper *)&v16 initWithStoreType:a3 nekChangeType:4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a4);
    objc_storeStrong(&v14->_calendarIdentifier, a5);
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

+ (id)deletionWrapperForObjectID:(id)a3 deletedReminderAndListMapping:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 entityName];
    v9 = +[REMAccount cdEntityName];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = 0;
LABEL_20:
      v19 = 0;
      goto LABEL_21;
    }

    v14 = +[REMList cdEntityName];
    v15 = [v8 isEqualToString:v14];

    if (v15)
    {
      v16 = [v6 uuid];
      v17 = [v16 UUIDString];

      v11 = 0;
      v18 = 2;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = +[REMReminder cdEntityName];
      v21 = [v8 isEqualToString:v20];

      if ((v21 & 1) == 0)
      {
        v19 = 0;
LABEL_22:
        v13 = v19;

        goto LABEL_23;
      }

      v22 = +[REMStore eks_storeForSyncing];
      v23 = [v22 fetchReminderIncludingConcealedWithObjectID:v6 error:0];
      v24 = v23;
      if (v23)
      {
        v17 = [v23 daCalendarItemUniqueIdentifier];
        v25 = [v7 objectForKeyedSubscript:v6];
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
        v17 = 0;
      }

      v18 = 3;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    v19 = [[a1 alloc] initWithStoreType:1 identifier:v17 calendarIdentifier:v11 type:v18];

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