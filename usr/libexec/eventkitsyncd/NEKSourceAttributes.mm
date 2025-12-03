@interface NEKSourceAttributes
+ (BOOL)configureAccount:(id)account accountChangeItemProvider:(id)provider withAttributes:(id)attributes;
+ (BOOL)configureAccount:(id)account withSaveRequest:(id)request withAttributes:(id)attributes;
+ (BOOL)configureSource:(id)source inStore:(id)store withAttributes:(id)attributes;
+ (void)createAccountWithSaveRequest:(id)request withAttributes:(id)attributes;
+ (void)deleteWhatever:(unint64_t)whatever calendarsInSource:(id)source inStore:(id)store;
- (NEKSourceAttributes)initWithAccount:(id)account;
- (NEKSourceAttributes)initWithSource:(id)source;
- (id)description;
@end

@implementation NEKSourceAttributes

- (NEKSourceAttributes)initWithSource:(id)source
{
  sourceCopy = source;
  v5 = sourceCopy;
  if (sourceCopy)
  {
    sourceIdentifier = [sourceCopy sourceIdentifier];
    if ([v5 sourceType])
    {
      if ([v5 sourceType] == 5)
      {

        sourceIdentifier = @"F519C070-44C7-467D-B560-7FEABDF9D3AC";
        v7 = [[NSUUID alloc] initWithUUIDString:@"F519C070-44C7-467D-B560-7FEABDF9D3AC"];
        v8 = [REMAccount objectIDWithUUID:v7];

        v9 = 1;
        goto LABEL_12;
      }

      sourceIdentifier2 = [v5 sourceIdentifier];
      v12 = [[NSUUID alloc] initWithUUIDString:sourceIdentifier2];
      if (!v12)
      {
        v13 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_1000718F0(sourceIdentifier2, v13);
        }
      }

      v8 = [REMAccount objectIDWithUUID:v12];
    }

    else
    {
      v8 = +[REMAccount localAccountID];
    }

    v9 = 0;
LABEL_12:
    v14 = +[REMStore eks_storeForSyncing];
    v39 = 0;
    v15 = [v14 fetchAccountWithObjectID:v8 error:&v39];
    v16 = v39;

    if (v15)
    {
      v17 = [v15 inactive] ^ 1;
LABEL_21:
      if (!sub_10000A57C() && [v15 type] == 2)
      {
        allowsEvents = [v5 allowsEvents];
        v21 = *(qword_1000D18A8 + 8);
        if (!allowsEvents)
        {
          if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEFAULT))
          {
            v36 = v21;
            objectID = [v15 objectID];
            *buf = 138543362;
            v41 = objectID;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Attempting to send source wrapper for CloudKit reminders account %{public}@ with allowsEvents=NO but the other side does not support CloudKit. Dropping this source wrapper and it will not be sent.", buf, 0xCu);
          }

          v10 = 0;
          goto LABEL_38;
        }

        if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
        {
          sub_1000719F0(v21, v15);
        }

        v17 = 0;
      }

      if ([v5 allowsEvents])
      {
        v38.receiver = self;
        v38.super_class = NEKSourceAttributes;
        v22 = [(NEKSourceAttributes *)&v38 init];
        if (v22)
        {
          title = [v5 title];
          [(NEKSourceAttributes *)v22 setName:title];

          defaultAlarmOffset = [v5 defaultAlarmOffset];
          [(NEKSourceAttributes *)v22 setDefaultAlarmOffset:defaultAlarmOffset];

          -[NEKSourceAttributes setType:](v22, "setType:", [v5 sourceType]);
          -[NEKSourceAttributes setIsEnabled:](v22, "setIsEnabled:", [v5 isEnabled]);
          -[NEKSourceAttributes setIsFacebook:](v22, "setIsFacebook:", [v5 isFacebookSource]);
          -[NEKSourceAttributes setUsesSelfAttendee:](v22, "setUsesSelfAttendee:", [v5 usesSelfAttendee]);
          constraintsDescriptionPath = [v5 constraintsDescriptionPath];
          [(NEKSourceAttributes *)v22 setConstraintsDescriptionPath:constraintsDescriptionPath];

          externalID = [v5 externalID];
          [(NEKSourceAttributes *)v22 setExternalID:externalID];

          externalModificationTag = [v5 externalModificationTag];
          [(NEKSourceAttributes *)v22 setExternalModificationTag:externalModificationTag];

          creatorBundleID = [v5 creatorBundleID];
          [(NEKSourceAttributes *)v22 setCreatorBundleID:creatorBundleID];

          creatorCodeSigningIdentity = [v5 creatorCodeSigningIdentity];
          [(NEKSourceAttributes *)v22 setCreatorCodeSigningIdentity:creatorCodeSigningIdentity];

          [(NEKSourceAttributes *)v22 setAccountPersistentID:sourceIdentifier];
          -[NEKSourceAttributes setSupportsSharedCalendars:](v22, "setSupportsSharedCalendars:", [v5 supportsSharedCalendars]);
          [(NEKSourceAttributes *)v22 setAllowsTasks:v17];
          -[NEKSourceAttributes setAllowsEvents:](v22, "setAllowsEvents:", [v5 allowsEvents] & (v9 ^ 1));
          -[NEKSourceAttributes setAllowsCalendarAddDeleteModify:](v22, "setAllowsCalendarAddDeleteModify:", [v5 allowsCalendarAddDeleteModify]);
          -[NEKSourceAttributes setOnlyCreatorCanModify:](v22, "setOnlyCreatorCanModify:", [v5 onlyCreatorCanModify]);
          -[NEKSourceAttributes setSnoozeAlarmRequiresDetach:](v22, "setSnoozeAlarmRequiresDetach:", [v5 snoozeAlarmRequiresDetach]);
          -[NEKSourceAttributes setSupportsAlarmAcknowledgedDate:](v22, "setSupportsAlarmAcknowledgedDate:", [v5 supportsAlarmAcknowledgedDate]);
          -[NEKSourceAttributes setIsLocalStore:](v22, "setIsLocalStore:", [v5 sourceType] == 0);
          [(NEKSourceAttributes *)v22 setIsBirthdayStore:v9];
        }

        v30 = v22;
      }

      else
      {
        v31 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          if ([v15 type] == 2)
          {
            v33 = @"CloudKit";
          }

          else
          {
            v33 = @"non-CloudKit";
          }

          sourceIdentifier3 = [v5 sourceIdentifier];
          *buf = 138543874;
          v41 = v33;
          v42 = 2114;
          v43 = sourceIdentifier3;
          v44 = 2114;
          v45 = v8;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending %{public}@ reminder-only EKSource %{public}@ with REMAccount %{public}@", buf, 0x20u);
        }

        v30 = [(NEKSourceAttributes *)self initWithAccount:v15];
      }

      self = v30;
      v10 = v30;
LABEL_38:

      goto LABEL_39;
    }

    domain = [v16 domain];
    if ([domain isEqualToString:REMErrorDomain])
    {
      code = [v16 code];

      if (code == -3000)
      {
LABEL_20:
        v17 = 0;
        goto LABEL_21;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10007197C();
    }

    goto LABEL_20;
  }

  v10 = 0;
LABEL_39:

  return v10;
}

+ (void)deleteWhatever:(unint64_t)whatever calendarsInSource:(id)source inStore:(id)store
{
  sourceCopy = source;
  storeCopy = store;
  [sourceCopy calendarsForEntityType:whatever];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        v14 = v11;
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        calendarIdentifier = [v15 calendarIdentifier];
        v17 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v30 = calendarIdentifier;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Performing a priori deletion of calendar %{public}@", buf, 0xCu);
        }

        [v15 setImmutable:0];
        v24 = v14;
        [storeCopy removeCalendar:v15 commit:0 error:&v24];
        v11 = v24;

        if (v11)
        {
          v18 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v30 = calendarIdentifier;
            v31 = 2114;
            v32 = v11;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Deletion of calendar %{public}@ didn't go so well: %{public}@", buf, 0x16u);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v19 = objc_autoreleasePoolPush();
  v23 = v11;
  [storeCopy commit:&v23];
  v20 = v23;

  objc_autoreleasePoolPop(v19);
  v21 = *(qword_1000D18A8 + 8);
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100071A98();
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Successful save after deleting very suspicious calendars.", buf, 2u);
  }
}

+ (BOOL)configureSource:(id)source inStore:(id)store withAttributes:(id)attributes
{
  sourceCopy = source;
  storeCopy = store;
  attributesCopy = attributes;
  v10 = attributesCopy;
  v11 = 0;
  if (!sourceCopy || !storeCopy || !attributesCopy)
  {
    goto LABEL_173;
  }

  v135 = storeCopy;
  accountPersistentID = [attributesCopy accountPersistentID];
  v13 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v141 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting configuration of source with persistent ID: [%{public}@].", buf, 0xCu);
  }

  title = [sourceCopy title];
  name = [v10 name];
  v16 = name;
  v133 = name;
  v134 = title;
  if (title)
  {
    if (([(__CFString *)title isEqualToString:name]& 1) != 0)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_13;
    }
  }

  else if (!name)
  {
    goto LABEL_8;
  }

  [sourceCopy setTitle:v16];
  v17 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = title;
    v142 = 2112;
    v143 = v16;
    v144 = 2114;
    v145 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Source's 'name' has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

  v11 = 1;
LABEL_13:
  defaultAlarmOffset = [sourceCopy defaultAlarmOffset];
  defaultAlarmOffset2 = [v10 defaultAlarmOffset];
  v20 = defaultAlarmOffset2;
  if (defaultAlarmOffset)
  {
    if (([(__CFString *)defaultAlarmOffset isEqual:defaultAlarmOffset2]& 1) != 0)
    {
      goto LABEL_20;
    }
  }

  else if (!defaultAlarmOffset2)
  {
    goto LABEL_20;
  }

  [sourceCopy setDefaultAlarmOffset:v20];
  v21 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = defaultAlarmOffset;
    v142 = 2112;
    v143 = v20;
    v144 = 2114;
    v145 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Source's 'defaultAlarmOffset' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

  v11 = 1;
LABEL_20:
  v131 = v20;
  v132 = defaultAlarmOffset;
  sourceType = [sourceCopy sourceType];
  type = [v10 type];
  if (sourceType != type)
  {
    v24 = type;
    [sourceCopy setSourceType:type];
    v25 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [NSNumber numberWithInteger:sourceType];
      v27 = [NSNumber numberWithInteger:v24];
      *buf = 138412802;
      v141 = v26;
      v142 = 2112;
      v143 = v27;
      v144 = 2114;
      v145 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Source's 'type' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  isEnabled = [sourceCopy isEnabled];
  isEnabled2 = [v10 isEnabled];
  if (isEnabled != isEnabled2)
  {
    v30 = isEnabled2;
    [sourceCopy setEnabled:isEnabled2];
    v31 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if (isEnabled)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v33 = v32;
      if (v30)
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      v35 = v34;
      *buf = 138412802;
      v141 = v33;
      v142 = 2112;
      v143 = v35;
      v144 = 2114;
      v145 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Source's 'enabled' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  isFacebook = [sourceCopy isFacebook];
  isFacebook2 = [v10 isFacebook];
  if (isFacebook != isFacebook2)
  {
    v38 = isFacebook2;
    [sourceCopy setIsFacebook:isFacebook2];
    v39 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      if (isFacebook)
      {
        v40 = @"YES";
      }

      else
      {
        v40 = @"NO";
      }

      v41 = v40;
      if (v38)
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      v43 = v42;
      *buf = 138413058;
      v141 = @"isFacebook";
      v142 = 2112;
      v143 = v41;
      v144 = 2112;
      v145 = v43;
      v146 = 2114;
      v147 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Source's '%@' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x2Au);
    }

    v11 = 1;
  }

  usesSelfAttendee = [sourceCopy usesSelfAttendee];
  usesSelfAttendee2 = [v10 usesSelfAttendee];
  if (usesSelfAttendee != usesSelfAttendee2)
  {
    v46 = usesSelfAttendee2;
    [sourceCopy setUsesSelfAttendee:usesSelfAttendee2];
    v47 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      if (usesSelfAttendee)
      {
        v48 = @"YES";
      }

      else
      {
        v48 = @"NO";
      }

      v49 = v48;
      if (v46)
      {
        v50 = @"YES";
      }

      else
      {
        v50 = @"NO";
      }

      v51 = v50;
      *buf = 138412802;
      v141 = v49;
      v142 = 2112;
      v143 = v51;
      v144 = 2114;
      v145 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Source's 'usesSelfAttendee' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  constraintsDescriptionPath = [sourceCopy constraintsDescriptionPath];
  constraintsDescriptionPath2 = [v10 constraintsDescriptionPath];
  v54 = constraintsDescriptionPath2;
  if (constraintsDescriptionPath)
  {
    if (([(__CFString *)constraintsDescriptionPath isEqualToString:constraintsDescriptionPath2]& 1) != 0)
    {
      goto LABEL_61;
    }
  }

  else if (!constraintsDescriptionPath2)
  {
    goto LABEL_61;
  }

  v55 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = constraintsDescriptionPath;
    v142 = 2112;
    v143 = v54;
    v144 = 2114;
    v145 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'constraintsDescriptionPath' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

LABEL_61:
  externalID = [sourceCopy externalID];
  externalID2 = [v10 externalID];
  v58 = externalID2;
  if (externalID)
  {
    if (([(__CFString *)externalID isEqualToString:externalID2]& 1) != 0)
    {
      goto LABEL_68;
    }
  }

  else if (!externalID2)
  {
    goto LABEL_68;
  }

  [sourceCopy setExternalID:v58];
  v59 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = externalID;
    v142 = 2112;
    v143 = v58;
    v144 = 2114;
    v145 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Source's 'externalID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

  v11 = 1;
LABEL_68:
  creatorBundleID = [sourceCopy creatorBundleID];
  creatorBundleID2 = [v10 creatorBundleID];
  v137 = creatorBundleID;
  v138 = creatorBundleID2;
  if (creatorBundleID)
  {
    if (([(__CFString *)creatorBundleID isEqualToString:creatorBundleID2]& 1) != 0)
    {
      goto LABEL_75;
    }
  }

  else if (!creatorBundleID2)
  {
    goto LABEL_75;
  }

  [sourceCopy setCreatorBundleID:v138];
  v62 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = v137;
    v142 = 2112;
    v143 = v138;
    v144 = 2114;
    v145 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Source's 'creatorBundleID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

  v11 = 1;
LABEL_75:
  v127 = v58;
  v128 = externalID;
  creatorCodeSigningIdentity = [sourceCopy creatorCodeSigningIdentity];
  creatorCodeSigningIdentity2 = [v10 creatorCodeSigningIdentity];
  v65 = creatorCodeSigningIdentity2;
  if (creatorCodeSigningIdentity)
  {
    if (([(__CFString *)creatorCodeSigningIdentity isEqualToString:creatorCodeSigningIdentity2]& 1) != 0)
    {
      goto LABEL_82;
    }
  }

  else if (!creatorCodeSigningIdentity2)
  {
    goto LABEL_82;
  }

  [sourceCopy setCreatorCodeSigningIdentity:v65];
  v66 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = creatorCodeSigningIdentity;
    v142 = 2112;
    v143 = v65;
    v144 = 2114;
    v145 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Source's 'creatorCodeSigningIdentity' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

  v11 = 1;
LABEL_82:
  sourceIdentifier = [sourceCopy sourceIdentifier];
  accountPersistentID2 = [v10 accountPersistentID];
  v136 = sourceIdentifier;
  if (([v10 isBirthdayStore] & 1) == 0)
  {
    if (sourceIdentifier)
    {
      if (([(__CFString *)sourceIdentifier isEqualToString:accountPersistentID2]& 1) != 0)
      {
        goto LABEL_90;
      }

LABEL_87:
      [sourceCopy setSourceIdentifier:accountPersistentID2];
      v68 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v141 = v136;
        v142 = 2112;
        v143 = accountPersistentID2;
        v144 = 2114;
        v145 = accountPersistentID;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Source's 'accountPersistentID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
      }

      v11 = 1;
      goto LABEL_90;
    }

    if (accountPersistentID2)
    {
      goto LABEL_87;
    }
  }

LABEL_90:
  v129 = v54;
  v130 = constraintsDescriptionPath;
  supportsSharedCalendars = [sourceCopy supportsSharedCalendars];
  supportsSharedCalendars2 = [v10 supportsSharedCalendars];
  if (supportsSharedCalendars != supportsSharedCalendars2)
  {
    v71 = supportsSharedCalendars2;
    [sourceCopy setSupportsSharedCalendars:supportsSharedCalendars2];
    v72 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      if (supportsSharedCalendars)
      {
        v73 = @"YES";
      }

      else
      {
        v73 = @"NO";
      }

      v74 = v73;
      if (v71)
      {
        v75 = @"YES";
      }

      else
      {
        v75 = @"NO";
      }

      v76 = v75;
      *buf = 138412802;
      v141 = v74;
      v142 = 2112;
      v143 = v76;
      v144 = 2114;
      v145 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Source's 'supportsSharedCalendars' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  allowsTasks = [sourceCopy allowsTasks];
  allowsTasks2 = [v10 allowsTasks];
  if (![v10 isBirthdayStore] && allowsTasks != allowsTasks2)
  {
    v79 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      if (allowsTasks)
      {
        v80 = @"YES";
      }

      else
      {
        v80 = @"NO";
      }

      v81 = v80;
      if (allowsTasks2)
      {
        v82 = @"YES";
      }

      else
      {
        v82 = @"NO";
      }

      v83 = v82;
      *buf = 138412802;
      v141 = v81;
      v142 = 2112;
      v143 = v83;
      v144 = 2114;
      v145 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Source's 'allowsTasks' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    if ((allowsTasks2 & 1) == 0)
    {
      v84 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        sub_100071B0C();
      }
    }

    [sourceCopy setAllowsTasks:allowsTasks2];
    v11 = 1;
  }

  allowsEvents = [sourceCopy allowsEvents];
  allowsEvents2 = [v10 allowsEvents];
  if (![v10 isBirthdayStore] && allowsEvents != allowsEvents2)
  {
    v87 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      if (allowsEvents)
      {
        v88 = @"YES";
      }

      else
      {
        v88 = @"NO";
      }

      v89 = v88;
      if (allowsEvents2)
      {
        v90 = @"YES";
      }

      else
      {
        v90 = @"NO";
      }

      v91 = v90;
      *buf = 138412802;
      v141 = v89;
      v142 = 2112;
      v143 = v91;
      v144 = 2114;
      v145 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Source's 'allowsEvents' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    if ((allowsEvents2 & 1) == 0)
    {
      v92 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        sub_100071B4C();
      }
    }

    [sourceCopy setAllowsEvents:allowsEvents2];
    v11 = 1;
  }

  allowsCalendarAddDeleteModify = [sourceCopy allowsCalendarAddDeleteModify];
  allowsCalendarAddDeleteModify2 = [v10 allowsCalendarAddDeleteModify];
  if (allowsCalendarAddDeleteModify != allowsCalendarAddDeleteModify2)
  {
    v95 = allowsCalendarAddDeleteModify2;
    [sourceCopy setAllowsCalendarAddDeleteModify:allowsCalendarAddDeleteModify2];
    v96 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      if (allowsCalendarAddDeleteModify)
      {
        v97 = @"YES";
      }

      else
      {
        v97 = @"NO";
      }

      v98 = v97;
      if (v95)
      {
        v99 = @"YES";
      }

      else
      {
        v99 = @"NO";
      }

      v100 = v99;
      *buf = 138412802;
      v141 = v98;
      v142 = 2112;
      v143 = v100;
      v144 = 2114;
      v145 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Source's 'allowsCalendarAddDeleteModify' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  onlyCreatorCanModify = [sourceCopy onlyCreatorCanModify];
  onlyCreatorCanModify2 = [v10 onlyCreatorCanModify];
  if (onlyCreatorCanModify != onlyCreatorCanModify2)
  {
    v103 = onlyCreatorCanModify2;
    [sourceCopy setOnlyCreatorCanModify:onlyCreatorCanModify2];
    v104 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      if (onlyCreatorCanModify)
      {
        v105 = @"YES";
      }

      else
      {
        v105 = @"NO";
      }

      v106 = v105;
      if (v103)
      {
        v107 = @"YES";
      }

      else
      {
        v107 = @"NO";
      }

      v108 = v107;
      *buf = 138412802;
      v141 = v106;
      v142 = 2112;
      v143 = v108;
      v144 = 2114;
      v145 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Source's 'onlyCreatorCanModify' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  snoozeAlarmRequiresDetach = [sourceCopy snoozeAlarmRequiresDetach];
  snoozeAlarmRequiresDetach2 = [v10 snoozeAlarmRequiresDetach];
  if (snoozeAlarmRequiresDetach != snoozeAlarmRequiresDetach2)
  {
    v111 = snoozeAlarmRequiresDetach2;
    [sourceCopy setSnoozeAlarmRequiresDetach:snoozeAlarmRequiresDetach2];
    v112 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      if (snoozeAlarmRequiresDetach)
      {
        v113 = @"YES";
      }

      else
      {
        v113 = @"NO";
      }

      v114 = v113;
      if (v111)
      {
        v115 = @"YES";
      }

      else
      {
        v115 = @"NO";
      }

      v116 = v115;
      *buf = 138412802;
      v141 = v114;
      v142 = 2112;
      v143 = v116;
      v144 = 2114;
      v145 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Source's 'snoozeAlarmRequiresDetach' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  supportsAlarmAcknowledgedDate = [sourceCopy supportsAlarmAcknowledgedDate];
  supportsAlarmAcknowledgedDate2 = [v10 supportsAlarmAcknowledgedDate];
  if (supportsAlarmAcknowledgedDate != supportsAlarmAcknowledgedDate2)
  {
    v119 = supportsAlarmAcknowledgedDate2;
    [sourceCopy setSupportsAlarmAcknowledgedDate:supportsAlarmAcknowledgedDate2];
    v120 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      if (supportsAlarmAcknowledgedDate)
      {
        v121 = @"YES";
      }

      else
      {
        v121 = @"NO";
      }

      v122 = v121;
      if (v119)
      {
        v123 = @"YES";
      }

      else
      {
        v123 = @"NO";
      }

      v124 = v123;
      *buf = 138412802;
      v141 = v122;
      v142 = 2112;
      v143 = v124;
      v144 = 2114;
      v145 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Source's 'supportsAlarmAcknowledgedDate' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  v125 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v141 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "Completed configuration of source with persistent ID: [%{public}@].", buf, 0xCu);
  }

  storeCopy = v135;
LABEL_173:

  return v11;
}

- (NEKSourceAttributes)initWithAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v16.receiver = self;
    v16.super_class = NEKSourceAttributes;
    v5 = [(NEKSourceAttributes *)&v16 init];
    if (v5)
    {
      name = [accountCopy name];
      [(NEKSourceAttributes *)v5 setName:name];

      [(NEKSourceAttributes *)v5 setDefaultAlarmOffset:0];
      -[NEKSourceAttributes setType:](v5, "setType:", sub_100037290([accountCopy type]));
      [(NEKSourceAttributes *)v5 setIsEnabled:1];
      [(NEKSourceAttributes *)v5 setIsFacebook:0];
      [(NEKSourceAttributes *)v5 setUsesSelfAttendee:0];
      daConstraintsDescriptionPath = [accountCopy daConstraintsDescriptionPath];
      v8 = sub_100037310(daConstraintsDescriptionPath);
      [(NEKSourceAttributes *)v5 setConstraintsDescriptionPath:v8];

      externalIdentifier = [accountCopy externalIdentifier];
      [(NEKSourceAttributes *)v5 setExternalID:externalIdentifier];

      externalModificationTag = [accountCopy externalModificationTag];
      [(NEKSourceAttributes *)v5 setExternalModificationTag:externalModificationTag];

      [(NEKSourceAttributes *)v5 setCreatorBundleID:0];
      [(NEKSourceAttributes *)v5 setCreatorCodeSigningIdentity:0];
      objectID = [accountCopy objectID];
      uuid = [objectID uuid];
      uUIDString = [uuid UUIDString];
      [(NEKSourceAttributes *)v5 setAccountPersistentID:uUIDString];

      -[NEKSourceAttributes setSupportsSharedCalendars:](v5, "setSupportsSharedCalendars:", [accountCopy daSupportsSharedCalendars]);
      -[NEKSourceAttributes setAllowsTasks:](v5, "setAllowsTasks:", [accountCopy inactive] ^ 1);
      [(NEKSourceAttributes *)v5 setAllowsEvents:0];
      [(NEKSourceAttributes *)v5 setAllowsCalendarAddDeleteModify:1];
      [(NEKSourceAttributes *)v5 setOnlyCreatorCanModify:0];
      [(NEKSourceAttributes *)v5 setSnoozeAlarmRequiresDetach:0];
      [(NEKSourceAttributes *)v5 setSupportsAlarmAcknowledgedDate:0];
      -[NEKSourceAttributes setIsLocalStore:](v5, "setIsLocalStore:", [accountCopy type] == 1);
      [(NEKSourceAttributes *)v5 setIsBirthdayStore:0];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)createAccountWithSaveRequest:(id)request withAttributes:(id)attributes
{
  attributesCopy = attributes;
  requestCopy = request;
  type = [attributesCopy type];
  if (type > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_1000A27A8[type];
  }

  name = [attributesCopy name];
  accountPersistentID = [attributesCopy accountPersistentID];
  v12 = [[NSUUID alloc] initWithUUIDString:accountPersistentID];
  if (!v12)
  {
    v13 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_100072110(accountPersistentID, v13);
    }
  }

  v14 = [REMAccount objectIDWithUUID:v12];
  v15 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [NSNumber numberWithInteger:v9];
    *buf = 138543874;
    v25 = v14;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = name;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating REMAccount with id:%{public}@ type:%@ name:%@", buf, 0x20u);
  }

  [requestCopy _addAccountWithType:v9 name:name accountObjectID:v14];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000376E8;
  v18 = v22[3] = &unk_1000B56A0;
  v23 = v18;
  [self configureAccount:0 accountChangeItemProvider:v22 withAttributes:attributesCopy];
  v21 = 0;
  [requestCopy saveSynchronouslyWithError:&v21];

  v19 = v21;
  if (v19)
  {
    v20 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10007219C(accountPersistentID, v20);
    }
  }
}

+ (BOOL)configureAccount:(id)account withSaveRequest:(id)request withAttributes:(id)attributes
{
  accountCopy = account;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000377C4;
  v12[3] = &unk_1000B56C8;
  requestCopy = request;
  v14 = accountCopy;
  v9 = accountCopy;
  v10 = requestCopy;
  LOBYTE(attributes) = [self configureAccount:v9 accountChangeItemProvider:v12 withAttributes:attributes];

  return attributes;
}

+ (BOOL)configureAccount:(id)account accountChangeItemProvider:(id)provider withAttributes:(id)attributes
{
  accountCopy = account;
  providerCopy = provider;
  attributesCopy = attributes;
  accountPersistentID = [attributesCopy accountPersistentID];
  v9 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v99 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting configuration of source with persistent ID: [%{public}@].", buf, 0xCu);
  }

  name = [accountCopy name];
  name2 = [attributesCopy name];
  v12 = name2;
  v13 = &stru_1000B7928;
  if (name2)
  {
    v13 = name2;
  }

  v96 = v13;

  v95 = name;
  if (name && ([(__CFString *)name isEqualToString:v96]& 1) != 0)
  {
    v86 = 0;
  }

  else
  {
    if ([accountCopy type] == 1)
    {
      v14 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v99 = name;
        v100 = 2112;
        v101 = v96;
        v102 = 2114;
        v103 = accountPersistentID;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Local source's 'name' has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
      }

      v86 = 0;
    }

    else
    {
      v15 = providerCopy[2]();

      v86 = v15;
      [v15 setName:v96];
      v14 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v99 = name;
        v100 = 2112;
        v101 = v96;
        v102 = 2114;
        v103 = accountPersistentID;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Source's 'name' has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
      }
    }
  }

  defaultAlarmOffset = [attributesCopy defaultAlarmOffset];
  if (defaultAlarmOffset)
  {
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = 0;
      v100 = 2112;
      v101 = defaultAlarmOffset;
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'defaultAlarmOffset' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  v18 = sub_100037290([accountCopy type]);
  type = [attributesCopy type];
  if (v18 != type)
  {
    v20 = type;
    v21 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [NSNumber numberWithInteger:v18];
      v23 = [NSNumber numberWithInteger:v20];
      *buf = 138412802;
      v99 = v22;
      v100 = 2112;
      v101 = v23;
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'type' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  if (([attributesCopy isEnabled] & 1) == 0)
  {
    v24 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"YES";
      v100 = 2112;
      v101 = @"NO";
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'enabled' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isFacebook])
  {
    v25 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v99 = @"isFacebook";
      v100 = 2112;
      v101 = @"NO";
      v102 = 2112;
      v103 = @"YES";
      v104 = 2114;
      v105 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's '%@' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x2Au);
    }
  }

  if ([attributesCopy usesSelfAttendee])
  {
    v26 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"NO";
      v100 = 2112;
      v101 = @"YES";
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'usesSelfAttendee' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  daConstraintsDescriptionPath = [accountCopy daConstraintsDescriptionPath];
  v28 = sub_100037310(daConstraintsDescriptionPath);

  constraintsDescriptionPath = [attributesCopy constraintsDescriptionPath];
  v30 = constraintsDescriptionPath;
  if (v28)
  {
    if (([(__CFString *)v28 isEqualToString:constraintsDescriptionPath]& 1) != 0)
    {
      goto LABEL_42;
    }
  }

  else if (!constraintsDescriptionPath)
  {
    goto LABEL_42;
  }

  v31 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v99 = v28;
    v100 = 2112;
    v101 = v30;
    v102 = 2114;
    v103 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'constraintsDescriptionPath' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

LABEL_42:
  externalIdentifier = [accountCopy externalIdentifier];
  externalID = [attributesCopy externalID];
  v91 = externalID;
  if (externalIdentifier)
  {
    if (([(__CFString *)externalIdentifier isEqualToString:externalID]& 1) != 0)
    {
      goto LABEL_49;
    }
  }

  else if (!externalID)
  {
    goto LABEL_49;
  }

  v34 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v99 = externalIdentifier;
    v100 = 2112;
    v101 = v91;
    v102 = 2114;
    v103 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'externalID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

LABEL_49:
  externalModificationTag = [accountCopy externalModificationTag];
  externalModificationTag2 = [attributesCopy externalModificationTag];
  v89 = externalModificationTag2;
  v90 = externalModificationTag;
  if (externalModificationTag)
  {
    if (([(__CFString *)externalModificationTag isEqualToString:externalModificationTag2]& 1) != 0)
    {
      goto LABEL_56;
    }
  }

  else if (!externalModificationTag2)
  {
    goto LABEL_56;
  }

  v37 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v99 = v90;
    v100 = 2112;
    v101 = v89;
    v102 = 2114;
    v103 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'externalModificationTag' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

LABEL_56:
  creatorBundleID = [attributesCopy creatorBundleID];
  if (creatorBundleID)
  {
    v38 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = 0;
      v100 = 2112;
      v101 = creatorBundleID;
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'creatorBundleID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  v39 = defaultAlarmOffset;
  creatorCodeSigningIdentity = [attributesCopy creatorCodeSigningIdentity];
  if (creatorCodeSigningIdentity)
  {
    v40 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = 0;
      v100 = 2112;
      v101 = creatorCodeSigningIdentity;
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'creatorCodeSigningIdentity' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  v85 = externalIdentifier;
  objectID = [accountCopy objectID];
  uuid = [objectID uuid];
  uUIDString = [uuid UUIDString];

  v44 = uUIDString;
  accountPersistentID2 = [attributesCopy accountPersistentID];
  v88 = accountPersistentID2;
  if (uUIDString)
  {
    v46 = [(__CFString *)uUIDString isEqualToString:accountPersistentID2];
    v47 = v39;
    v48 = v30;
    if (v46)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v47 = v39;
    v48 = v30;
    if (!accountPersistentID2)
    {
      goto LABEL_71;
    }
  }

  v49 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v99 = v44;
    v100 = 2112;
    v101 = v88;
    v102 = 2114;
    v103 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'accountPersistentID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

LABEL_71:
  v84 = v44;
  daSupportsSharedCalendars = [accountCopy daSupportsSharedCalendars];
  supportsSharedCalendars = [attributesCopy supportsSharedCalendars];
  if (daSupportsSharedCalendars != supportsSharedCalendars)
  {
    v52 = supportsSharedCalendars;
    v53 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      if (daSupportsSharedCalendars)
      {
        v54 = @"YES";
      }

      else
      {
        v54 = @"NO";
      }

      v55 = v54;
      if (v52)
      {
        v56 = @"YES";
      }

      else
      {
        v56 = @"NO";
      }

      v57 = v56;
      *buf = 138412802;
      v99 = v55;
      v100 = 2112;
      v101 = v57;
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'supportsSharedCalendars' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  inactive = [accountCopy inactive];
  allowsTasks = [attributesCopy allowsTasks];
  if (inactive == allowsTasks)
  {
    v61 = allowsTasks;
    v83 = v48;
    v62 = v28;
    v63 = v47;
    v64 = v86;
    if (!v86)
    {
      v64 = providerCopy[2]();
    }

    v65 = v64;

    v66 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      if (inactive)
      {
        v78 = @"NO";
      }

      else
      {
        v78 = @"YES";
      }

      v79 = v78;
      v87 = v79;
      if (v61)
      {
        v80 = @"YES";
      }

      else
      {
        v80 = @"NO";
      }

      v81 = v80;
      *buf = 138412802;
      v99 = v79;
      v100 = 2112;
      v101 = v81;
      v82 = v81;
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "UNSUPPORTED: Source's 'allowsTasks' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    if ([accountCopy type] == 1)
    {
      v67 = *(qword_1000D18A8 + 8);
      v68 = v61 ^ 1;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v69 = [NSNumber numberWithInt:v61 ^ 1];
        *buf = 138543362;
        v99 = v69;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Updating local account .inactive to %{public}@.", buf, 0xCu);
      }

      v60 = v65;
      [v65 setInactive:v68];
    }

    else if (v61)
    {
      v60 = v65;
    }

    else
    {
      v70 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v99 = accountPersistentID;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Deleting account with identifier %{public}@.", buf, 0xCu);
      }

      v60 = v65;
      [v65 removeFromStore];
    }

    v47 = v63;
    v28 = v62;
    v48 = v83;
  }

  else
  {
    v60 = v86;
  }

  if ([attributesCopy allowsEvents])
  {
    if (!v60)
    {
      v60 = providerCopy[2]();
    }

    v60 = v60;

    v71 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      sub_100072214(accountPersistentID, v71);
    }
  }

  if (([attributesCopy allowsCalendarAddDeleteModify] & 1) == 0)
  {
    v72 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"YES";
      v100 = 2112;
      v101 = @"NO";
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'allowsCalendarAddDeleteModify' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy onlyCreatorCanModify])
  {
    v73 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"NO";
      v100 = 2112;
      v101 = @"YES";
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'onlyCreatorCanModify' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy snoozeAlarmRequiresDetach])
  {
    v74 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"NO";
      v100 = 2112;
      v101 = @"YES";
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'snoozeAlarmRequiresDetach' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy supportsAlarmAcknowledgedDate])
  {
    v75 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"NO";
      v100 = 2112;
      v101 = @"YES";
      v102 = 2114;
      v103 = accountPersistentID;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'supportsAlarmAcknowledgedDate' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  v76 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v99 = accountPersistentID;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Completed configuration of source with persistent ID: [%{public}@].", buf, 0xCu);
  }

  return v60 != 0;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"<NEKSourceAttributes (%p)\n", self];
  name = [(NEKSourceAttributes *)self name];
  [v3 appendFormat:@"  name: %@\n", name];

  defaultAlarmOffset = [(NEKSourceAttributes *)self defaultAlarmOffset];
  [v3 appendFormat:@"  defaultAlarmOffset: %@\n", defaultAlarmOffset];

  [v3 appendFormat:@"  type: %d\n", -[NEKSourceAttributes type](self, "type")];
  [v3 appendFormat:@"  isEnabled: %d\n", -[NEKSourceAttributes isEnabled](self, "isEnabled")];
  [v3 appendFormat:@"  isFacebook: %d\n", -[NEKSourceAttributes isFacebook](self, "isFacebook")];
  [v3 appendFormat:@"  usesSelfAttendee: %d\n", -[NEKSourceAttributes usesSelfAttendee](self, "usesSelfAttendee")];
  constraintsDescriptionPath = [(NEKSourceAttributes *)self constraintsDescriptionPath];
  [v3 appendFormat:@"  constraintsDescriptionPath: %@\n", constraintsDescriptionPath];

  externalID = [(NEKSourceAttributes *)self externalID];
  [v3 appendFormat:@"  externalID: %@\n", externalID];

  externalModificationTag = [(NEKSourceAttributes *)self externalModificationTag];
  [v3 appendFormat:@"  externalModificationTag: %@\n", externalModificationTag];

  creatorBundleID = [(NEKSourceAttributes *)self creatorBundleID];
  [v3 appendFormat:@"  creatorBundleID: %@\n", creatorBundleID];

  creatorCodeSigningIdentity = [(NEKSourceAttributes *)self creatorCodeSigningIdentity];
  [v3 appendFormat:@"  creatorCodeSigningIdentity: %@\n", creatorCodeSigningIdentity];

  accountPersistentID = [(NEKSourceAttributes *)self accountPersistentID];
  [v3 appendFormat:@"  accountPersistentID: %@\n", accountPersistentID];

  [v3 appendFormat:@"  supportsSharedCalendars: %d\n", -[NEKSourceAttributes supportsSharedCalendars](self, "supportsSharedCalendars")];
  [v3 appendFormat:@"  allowsTasks: %d\n", -[NEKSourceAttributes allowsTasks](self, "allowsTasks")];
  [v3 appendFormat:@"  allowsEvents: %d\n", -[NEKSourceAttributes allowsEvents](self, "allowsEvents")];
  [v3 appendFormat:@"  allowsCalendarAddModifyDelete: %d\n", -[NEKSourceAttributes allowsCalendarAddDeleteModify](self, "allowsCalendarAddDeleteModify")];
  [v3 appendFormat:@"  onlyCreatorCanModify: %d\n", -[NEKSourceAttributes onlyCreatorCanModify](self, "onlyCreatorCanModify")];
  [v3 appendFormat:@"  snoozeAlarmRequiresDetach: %d\n", -[NEKSourceAttributes snoozeAlarmRequiresDetach](self, "snoozeAlarmRequiresDetach")];
  [v3 appendFormat:@"  supportsAlarmAcknowledgedDate: %d\n", -[NEKSourceAttributes supportsAlarmAcknowledgedDate](self, "supportsAlarmAcknowledgedDate")];
  [v3 appendFormat:@"  isLocalStore: %d\n", -[NEKSourceAttributes isLocalStore](self, "isLocalStore")];
  [v3 appendFormat:@"  isBirthdayStore: %d\n", -[NEKSourceAttributes isBirthdayStore](self, "isBirthdayStore")];
  [v3 appendString:@">"];
  v12 = [v3 copy];

  return v12;
}

@end