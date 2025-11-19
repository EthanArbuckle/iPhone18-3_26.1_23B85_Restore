@interface NEKSourceAttributes
+ (BOOL)configureAccount:(id)a3 accountChangeItemProvider:(id)a4 withAttributes:(id)a5;
+ (BOOL)configureAccount:(id)a3 withSaveRequest:(id)a4 withAttributes:(id)a5;
+ (BOOL)configureSource:(id)a3 inStore:(id)a4 withAttributes:(id)a5;
+ (void)createAccountWithSaveRequest:(id)a3 withAttributes:(id)a4;
+ (void)deleteWhatever:(unint64_t)a3 calendarsInSource:(id)a4 inStore:(id)a5;
- (NEKSourceAttributes)initWithAccount:(id)a3;
- (NEKSourceAttributes)initWithSource:(id)a3;
- (id)description;
@end

@implementation NEKSourceAttributes

- (NEKSourceAttributes)initWithSource:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 sourceIdentifier];
    if ([v5 sourceType])
    {
      if ([v5 sourceType] == 5)
      {

        v6 = @"F519C070-44C7-467D-B560-7FEABDF9D3AC";
        v7 = [[NSUUID alloc] initWithUUIDString:@"F519C070-44C7-467D-B560-7FEABDF9D3AC"];
        v8 = [REMAccount objectIDWithUUID:v7];

        v9 = 1;
        goto LABEL_12;
      }

      v11 = [v5 sourceIdentifier];
      v12 = [[NSUUID alloc] initWithUUIDString:v11];
      if (!v12)
      {
        v13 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_1000718F0(v11, v13);
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
        v20 = [v5 allowsEvents];
        v21 = *(qword_1000D18A8 + 8);
        if (!v20)
        {
          if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEFAULT))
          {
            v36 = v21;
            v37 = [v15 objectID];
            *buf = 138543362;
            v41 = v37;
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
          v23 = [v5 title];
          [(NEKSourceAttributes *)v22 setName:v23];

          v24 = [v5 defaultAlarmOffset];
          [(NEKSourceAttributes *)v22 setDefaultAlarmOffset:v24];

          -[NEKSourceAttributes setType:](v22, "setType:", [v5 sourceType]);
          -[NEKSourceAttributes setIsEnabled:](v22, "setIsEnabled:", [v5 isEnabled]);
          -[NEKSourceAttributes setIsFacebook:](v22, "setIsFacebook:", [v5 isFacebookSource]);
          -[NEKSourceAttributes setUsesSelfAttendee:](v22, "setUsesSelfAttendee:", [v5 usesSelfAttendee]);
          v25 = [v5 constraintsDescriptionPath];
          [(NEKSourceAttributes *)v22 setConstraintsDescriptionPath:v25];

          v26 = [v5 externalID];
          [(NEKSourceAttributes *)v22 setExternalID:v26];

          v27 = [v5 externalModificationTag];
          [(NEKSourceAttributes *)v22 setExternalModificationTag:v27];

          v28 = [v5 creatorBundleID];
          [(NEKSourceAttributes *)v22 setCreatorBundleID:v28];

          v29 = [v5 creatorCodeSigningIdentity];
          [(NEKSourceAttributes *)v22 setCreatorCodeSigningIdentity:v29];

          [(NEKSourceAttributes *)v22 setAccountPersistentID:v6];
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

          v34 = [v5 sourceIdentifier];
          *buf = 138543874;
          v41 = v33;
          v42 = 2114;
          v43 = v34;
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

    v18 = [v16 domain];
    if ([v18 isEqualToString:REMErrorDomain])
    {
      v19 = [v16 code];

      if (v19 == -3000)
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

+ (void)deleteWhatever:(unint64_t)a3 calendarsInSource:(id)a4 inStore:(id)a5
{
  v7 = a4;
  v8 = a5;
  [v7 calendarsForEntityType:a3];
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
        v16 = [v15 calendarIdentifier];
        v17 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v30 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Performing a priori deletion of calendar %{public}@", buf, 0xCu);
        }

        [v15 setImmutable:0];
        v24 = v14;
        [v8 removeCalendar:v15 commit:0 error:&v24];
        v11 = v24;

        if (v11)
        {
          v18 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v30 = v16;
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
  [v8 commit:&v23];
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

+ (BOOL)configureSource:(id)a3 inStore:(id)a4 withAttributes:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (!v7 || !v8 || !v9)
  {
    goto LABEL_173;
  }

  v135 = v8;
  v12 = [v9 accountPersistentID];
  v13 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v141 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting configuration of source with persistent ID: [%{public}@].", buf, 0xCu);
  }

  v14 = [v7 title];
  v15 = [v10 name];
  v16 = v15;
  v133 = v15;
  v134 = v14;
  if (v14)
  {
    if (([(__CFString *)v14 isEqualToString:v15]& 1) != 0)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_13;
    }
  }

  else if (!v15)
  {
    goto LABEL_8;
  }

  [v7 setTitle:v16];
  v17 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = v14;
    v142 = 2112;
    v143 = v16;
    v144 = 2114;
    v145 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Source's 'name' has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

  v11 = 1;
LABEL_13:
  v18 = [v7 defaultAlarmOffset];
  v19 = [v10 defaultAlarmOffset];
  v20 = v19;
  if (v18)
  {
    if (([(__CFString *)v18 isEqual:v19]& 1) != 0)
    {
      goto LABEL_20;
    }
  }

  else if (!v19)
  {
    goto LABEL_20;
  }

  [v7 setDefaultAlarmOffset:v20];
  v21 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = v18;
    v142 = 2112;
    v143 = v20;
    v144 = 2114;
    v145 = v12;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Source's 'defaultAlarmOffset' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

  v11 = 1;
LABEL_20:
  v131 = v20;
  v132 = v18;
  v22 = [v7 sourceType];
  v23 = [v10 type];
  if (v22 != v23)
  {
    v24 = v23;
    [v7 setSourceType:v23];
    v25 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [NSNumber numberWithInteger:v22];
      v27 = [NSNumber numberWithInteger:v24];
      *buf = 138412802;
      v141 = v26;
      v142 = 2112;
      v143 = v27;
      v144 = 2114;
      v145 = v12;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Source's 'type' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  v28 = [v7 isEnabled];
  v29 = [v10 isEnabled];
  if (v28 != v29)
  {
    v30 = v29;
    [v7 setEnabled:v29];
    v31 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if (v28)
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
      v145 = v12;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Source's 'enabled' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  v36 = [v7 isFacebook];
  v37 = [v10 isFacebook];
  if (v36 != v37)
  {
    v38 = v37;
    [v7 setIsFacebook:v37];
    v39 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      if (v36)
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
      v147 = v12;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Source's '%@' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x2Au);
    }

    v11 = 1;
  }

  v44 = [v7 usesSelfAttendee];
  v45 = [v10 usesSelfAttendee];
  if (v44 != v45)
  {
    v46 = v45;
    [v7 setUsesSelfAttendee:v45];
    v47 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      if (v44)
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
      v145 = v12;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Source's 'usesSelfAttendee' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  v52 = [v7 constraintsDescriptionPath];
  v53 = [v10 constraintsDescriptionPath];
  v54 = v53;
  if (v52)
  {
    if (([(__CFString *)v52 isEqualToString:v53]& 1) != 0)
    {
      goto LABEL_61;
    }
  }

  else if (!v53)
  {
    goto LABEL_61;
  }

  v55 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = v52;
    v142 = 2112;
    v143 = v54;
    v144 = 2114;
    v145 = v12;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'constraintsDescriptionPath' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

LABEL_61:
  v56 = [v7 externalID];
  v57 = [v10 externalID];
  v58 = v57;
  if (v56)
  {
    if (([(__CFString *)v56 isEqualToString:v57]& 1) != 0)
    {
      goto LABEL_68;
    }
  }

  else if (!v57)
  {
    goto LABEL_68;
  }

  [v7 setExternalID:v58];
  v59 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = v56;
    v142 = 2112;
    v143 = v58;
    v144 = 2114;
    v145 = v12;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Source's 'externalID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

  v11 = 1;
LABEL_68:
  v60 = [v7 creatorBundleID];
  v61 = [v10 creatorBundleID];
  v137 = v60;
  v138 = v61;
  if (v60)
  {
    if (([(__CFString *)v60 isEqualToString:v61]& 1) != 0)
    {
      goto LABEL_75;
    }
  }

  else if (!v61)
  {
    goto LABEL_75;
  }

  [v7 setCreatorBundleID:v138];
  v62 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = v137;
    v142 = 2112;
    v143 = v138;
    v144 = 2114;
    v145 = v12;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Source's 'creatorBundleID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

  v11 = 1;
LABEL_75:
  v127 = v58;
  v128 = v56;
  v63 = [v7 creatorCodeSigningIdentity];
  v64 = [v10 creatorCodeSigningIdentity];
  v65 = v64;
  if (v63)
  {
    if (([(__CFString *)v63 isEqualToString:v64]& 1) != 0)
    {
      goto LABEL_82;
    }
  }

  else if (!v64)
  {
    goto LABEL_82;
  }

  [v7 setCreatorCodeSigningIdentity:v65];
  v66 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v141 = v63;
    v142 = 2112;
    v143 = v65;
    v144 = 2114;
    v145 = v12;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Source's 'creatorCodeSigningIdentity' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

  v11 = 1;
LABEL_82:
  v67 = [v7 sourceIdentifier];
  v139 = [v10 accountPersistentID];
  v136 = v67;
  if (([v10 isBirthdayStore] & 1) == 0)
  {
    if (v67)
    {
      if (([(__CFString *)v67 isEqualToString:v139]& 1) != 0)
      {
        goto LABEL_90;
      }

LABEL_87:
      [v7 setSourceIdentifier:v139];
      v68 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v141 = v136;
        v142 = 2112;
        v143 = v139;
        v144 = 2114;
        v145 = v12;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Source's 'accountPersistentID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
      }

      v11 = 1;
      goto LABEL_90;
    }

    if (v139)
    {
      goto LABEL_87;
    }
  }

LABEL_90:
  v129 = v54;
  v130 = v52;
  v69 = [v7 supportsSharedCalendars];
  v70 = [v10 supportsSharedCalendars];
  if (v69 != v70)
  {
    v71 = v70;
    [v7 setSupportsSharedCalendars:v70];
    v72 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      if (v69)
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
      v145 = v12;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Source's 'supportsSharedCalendars' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  v77 = [v7 allowsTasks];
  v78 = [v10 allowsTasks];
  if (![v10 isBirthdayStore] && v77 != v78)
  {
    v79 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      if (v77)
      {
        v80 = @"YES";
      }

      else
      {
        v80 = @"NO";
      }

      v81 = v80;
      if (v78)
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
      v145 = v12;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Source's 'allowsTasks' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    if ((v78 & 1) == 0)
    {
      v84 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        sub_100071B0C();
      }
    }

    [v7 setAllowsTasks:v78];
    v11 = 1;
  }

  v85 = [v7 allowsEvents];
  v86 = [v10 allowsEvents];
  if (![v10 isBirthdayStore] && v85 != v86)
  {
    v87 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      if (v85)
      {
        v88 = @"YES";
      }

      else
      {
        v88 = @"NO";
      }

      v89 = v88;
      if (v86)
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
      v145 = v12;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Source's 'allowsEvents' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    if ((v86 & 1) == 0)
    {
      v92 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        sub_100071B4C();
      }
    }

    [v7 setAllowsEvents:v86];
    v11 = 1;
  }

  v93 = [v7 allowsCalendarAddDeleteModify];
  v94 = [v10 allowsCalendarAddDeleteModify];
  if (v93 != v94)
  {
    v95 = v94;
    [v7 setAllowsCalendarAddDeleteModify:v94];
    v96 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      if (v93)
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
      v145 = v12;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Source's 'allowsCalendarAddDeleteModify' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  v101 = [v7 onlyCreatorCanModify];
  v102 = [v10 onlyCreatorCanModify];
  if (v101 != v102)
  {
    v103 = v102;
    [v7 setOnlyCreatorCanModify:v102];
    v104 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      if (v101)
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
      v145 = v12;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Source's 'onlyCreatorCanModify' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  v109 = [v7 snoozeAlarmRequiresDetach];
  v110 = [v10 snoozeAlarmRequiresDetach];
  if (v109 != v110)
  {
    v111 = v110;
    [v7 setSnoozeAlarmRequiresDetach:v110];
    v112 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      if (v109)
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
      v145 = v12;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Source's 'snoozeAlarmRequiresDetach' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  v117 = [v7 supportsAlarmAcknowledgedDate];
  v118 = [v10 supportsAlarmAcknowledgedDate];
  if (v117 != v118)
  {
    v119 = v118;
    [v7 setSupportsAlarmAcknowledgedDate:v118];
    v120 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      if (v117)
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
      v145 = v12;
      _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Source's 'supportsAlarmAcknowledgedDate' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    v11 = 1;
  }

  v125 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v141 = v12;
    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "Completed configuration of source with persistent ID: [%{public}@].", buf, 0xCu);
  }

  v8 = v135;
LABEL_173:

  return v11;
}

- (NEKSourceAttributes)initWithAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16.receiver = self;
    v16.super_class = NEKSourceAttributes;
    v5 = [(NEKSourceAttributes *)&v16 init];
    if (v5)
    {
      v6 = [v4 name];
      [(NEKSourceAttributes *)v5 setName:v6];

      [(NEKSourceAttributes *)v5 setDefaultAlarmOffset:0];
      -[NEKSourceAttributes setType:](v5, "setType:", sub_100037290([v4 type]));
      [(NEKSourceAttributes *)v5 setIsEnabled:1];
      [(NEKSourceAttributes *)v5 setIsFacebook:0];
      [(NEKSourceAttributes *)v5 setUsesSelfAttendee:0];
      v7 = [v4 daConstraintsDescriptionPath];
      v8 = sub_100037310(v7);
      [(NEKSourceAttributes *)v5 setConstraintsDescriptionPath:v8];

      v9 = [v4 externalIdentifier];
      [(NEKSourceAttributes *)v5 setExternalID:v9];

      v10 = [v4 externalModificationTag];
      [(NEKSourceAttributes *)v5 setExternalModificationTag:v10];

      [(NEKSourceAttributes *)v5 setCreatorBundleID:0];
      [(NEKSourceAttributes *)v5 setCreatorCodeSigningIdentity:0];
      v11 = [v4 objectID];
      v12 = [v11 uuid];
      v13 = [v12 UUIDString];
      [(NEKSourceAttributes *)v5 setAccountPersistentID:v13];

      -[NEKSourceAttributes setSupportsSharedCalendars:](v5, "setSupportsSharedCalendars:", [v4 daSupportsSharedCalendars]);
      -[NEKSourceAttributes setAllowsTasks:](v5, "setAllowsTasks:", [v4 inactive] ^ 1);
      [(NEKSourceAttributes *)v5 setAllowsEvents:0];
      [(NEKSourceAttributes *)v5 setAllowsCalendarAddDeleteModify:1];
      [(NEKSourceAttributes *)v5 setOnlyCreatorCanModify:0];
      [(NEKSourceAttributes *)v5 setSnoozeAlarmRequiresDetach:0];
      [(NEKSourceAttributes *)v5 setSupportsAlarmAcknowledgedDate:0];
      -[NEKSourceAttributes setIsLocalStore:](v5, "setIsLocalStore:", [v4 type] == 1);
      [(NEKSourceAttributes *)v5 setIsBirthdayStore:0];
    }

    self = v5;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)createAccountWithSaveRequest:(id)a3 withAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 type];
  if (v8 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_1000A27A8[v8];
  }

  v10 = [v6 name];
  v11 = [v6 accountPersistentID];
  v12 = [[NSUUID alloc] initWithUUIDString:v11];
  if (!v12)
  {
    v13 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_100072110(v11, v13);
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
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating REMAccount with id:%{public}@ type:%@ name:%@", buf, 0x20u);
  }

  [v7 _addAccountWithType:v9 name:v10 accountObjectID:v14];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000376E8;
  v18 = v22[3] = &unk_1000B56A0;
  v23 = v18;
  [a1 configureAccount:0 accountChangeItemProvider:v22 withAttributes:v6];
  v21 = 0;
  [v7 saveSynchronouslyWithError:&v21];

  v19 = v21;
  if (v19)
  {
    v20 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10007219C(v11, v20);
    }
  }
}

+ (BOOL)configureAccount:(id)a3 withSaveRequest:(id)a4 withAttributes:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000377C4;
  v12[3] = &unk_1000B56C8;
  v13 = a4;
  v14 = v8;
  v9 = v8;
  v10 = v13;
  LOBYTE(a5) = [a1 configureAccount:v9 accountChangeItemProvider:v12 withAttributes:a5];

  return a5;
}

+ (BOOL)configureAccount:(id)a3 accountChangeItemProvider:(id)a4 withAttributes:(id)a5
{
  v7 = a3;
  v94 = a4;
  v8 = a5;
  v97 = [v8 accountPersistentID];
  v9 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v99 = v97;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting configuration of source with persistent ID: [%{public}@].", buf, 0xCu);
  }

  v10 = [v7 name];
  v11 = [v8 name];
  v12 = v11;
  v13 = &stru_1000B7928;
  if (v11)
  {
    v13 = v11;
  }

  v96 = v13;

  v95 = v10;
  if (v10 && ([(__CFString *)v10 isEqualToString:v96]& 1) != 0)
  {
    v86 = 0;
  }

  else
  {
    if ([v7 type] == 1)
    {
      v14 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v99 = v10;
        v100 = 2112;
        v101 = v96;
        v102 = 2114;
        v103 = v97;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Local source's 'name' has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
      }

      v86 = 0;
    }

    else
    {
      v15 = v94[2]();

      v86 = v15;
      [v15 setName:v96];
      v14 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v99 = v10;
        v100 = 2112;
        v101 = v96;
        v102 = 2114;
        v103 = v97;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Source's 'name' has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
      }
    }
  }

  v16 = [v8 defaultAlarmOffset];
  if (v16)
  {
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = 0;
      v100 = 2112;
      v101 = v16;
      v102 = 2114;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'defaultAlarmOffset' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  v18 = sub_100037290([v7 type]);
  v19 = [v8 type];
  if (v18 != v19)
  {
    v20 = v19;
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
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'type' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  if (([v8 isEnabled] & 1) == 0)
  {
    v24 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"YES";
      v100 = 2112;
      v101 = @"NO";
      v102 = 2114;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'enabled' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v8 isFacebook])
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
      v105 = v97;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's '%@' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x2Au);
    }
  }

  if ([v8 usesSelfAttendee])
  {
    v26 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"NO";
      v100 = 2112;
      v101 = @"YES";
      v102 = 2114;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'usesSelfAttendee' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  v27 = [v7 daConstraintsDescriptionPath];
  v28 = sub_100037310(v27);

  v29 = [v8 constraintsDescriptionPath];
  v30 = v29;
  if (v28)
  {
    if (([(__CFString *)v28 isEqualToString:v29]& 1) != 0)
    {
      goto LABEL_42;
    }
  }

  else if (!v29)
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
    v103 = v97;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'constraintsDescriptionPath' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

LABEL_42:
  v32 = [v7 externalIdentifier];
  v33 = [v8 externalID];
  v91 = v33;
  if (v32)
  {
    if (([(__CFString *)v32 isEqualToString:v33]& 1) != 0)
    {
      goto LABEL_49;
    }
  }

  else if (!v33)
  {
    goto LABEL_49;
  }

  v34 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v99 = v32;
    v100 = 2112;
    v101 = v91;
    v102 = 2114;
    v103 = v97;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'externalID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

LABEL_49:
  v35 = [v7 externalModificationTag];
  v36 = [v8 externalModificationTag];
  v89 = v36;
  v90 = v35;
  if (v35)
  {
    if (([(__CFString *)v35 isEqualToString:v36]& 1) != 0)
    {
      goto LABEL_56;
    }
  }

  else if (!v36)
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
    v103 = v97;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'externalModificationTag' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

LABEL_56:
  v93 = [v8 creatorBundleID];
  if (v93)
  {
    v38 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = 0;
      v100 = 2112;
      v101 = v93;
      v102 = 2114;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'creatorBundleID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  v39 = v16;
  v92 = [v8 creatorCodeSigningIdentity];
  if (v92)
  {
    v40 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = 0;
      v100 = 2112;
      v101 = v92;
      v102 = 2114;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'creatorCodeSigningIdentity' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  v85 = v32;
  v41 = [v7 objectID];
  v42 = [v41 uuid];
  v43 = [v42 UUIDString];

  v44 = v43;
  v45 = [v8 accountPersistentID];
  v88 = v45;
  if (v43)
  {
    v46 = [(__CFString *)v43 isEqualToString:v45];
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
    if (!v45)
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
    v103 = v97;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'accountPersistentID' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
  }

LABEL_71:
  v84 = v44;
  v50 = [v7 daSupportsSharedCalendars];
  v51 = [v8 supportsSharedCalendars];
  if (v50 != v51)
  {
    v52 = v51;
    v53 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      if (v50)
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
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'supportsSharedCalendars' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  v58 = [v7 inactive];
  v59 = [v8 allowsTasks];
  if (v58 == v59)
  {
    v61 = v59;
    v83 = v48;
    v62 = v28;
    v63 = v47;
    v64 = v86;
    if (!v86)
    {
      v64 = v94[2]();
    }

    v65 = v64;

    v66 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      if (v58)
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
      v103 = v97;
      _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "UNSUPPORTED: Source's 'allowsTasks' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }

    if ([v7 type] == 1)
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
        v99 = v97;
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

  if ([v8 allowsEvents])
  {
    if (!v60)
    {
      v60 = v94[2]();
    }

    v60 = v60;

    v71 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      sub_100072214(v97, v71);
    }
  }

  if (([v8 allowsCalendarAddDeleteModify] & 1) == 0)
  {
    v72 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"YES";
      v100 = 2112;
      v101 = @"NO";
      v102 = 2114;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'allowsCalendarAddDeleteModify' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v8 onlyCreatorCanModify])
  {
    v73 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"NO";
      v100 = 2112;
      v101 = @"YES";
      v102 = 2114;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'onlyCreatorCanModify' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v8 snoozeAlarmRequiresDetach])
  {
    v74 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"NO";
      v100 = 2112;
      v101 = @"YES";
      v102 = 2114;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'snoozeAlarmRequiresDetach' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v8 supportsAlarmAcknowledgedDate])
  {
    v75 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = @"NO";
      v100 = 2112;
      v101 = @"YES";
      v102 = 2114;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: Source's 'supportsAlarmAcknowledgedDate' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", buf, 0x20u);
    }
  }

  v76 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v99 = v97;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Completed configuration of source with persistent ID: [%{public}@].", buf, 0xCu);
  }

  return v60 != 0;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"<NEKSourceAttributes (%p)\n", self];
  v4 = [(NEKSourceAttributes *)self name];
  [v3 appendFormat:@"  name: %@\n", v4];

  v5 = [(NEKSourceAttributes *)self defaultAlarmOffset];
  [v3 appendFormat:@"  defaultAlarmOffset: %@\n", v5];

  [v3 appendFormat:@"  type: %d\n", -[NEKSourceAttributes type](self, "type")];
  [v3 appendFormat:@"  isEnabled: %d\n", -[NEKSourceAttributes isEnabled](self, "isEnabled")];
  [v3 appendFormat:@"  isFacebook: %d\n", -[NEKSourceAttributes isFacebook](self, "isFacebook")];
  [v3 appendFormat:@"  usesSelfAttendee: %d\n", -[NEKSourceAttributes usesSelfAttendee](self, "usesSelfAttendee")];
  v6 = [(NEKSourceAttributes *)self constraintsDescriptionPath];
  [v3 appendFormat:@"  constraintsDescriptionPath: %@\n", v6];

  v7 = [(NEKSourceAttributes *)self externalID];
  [v3 appendFormat:@"  externalID: %@\n", v7];

  v8 = [(NEKSourceAttributes *)self externalModificationTag];
  [v3 appendFormat:@"  externalModificationTag: %@\n", v8];

  v9 = [(NEKSourceAttributes *)self creatorBundleID];
  [v3 appendFormat:@"  creatorBundleID: %@\n", v9];

  v10 = [(NEKSourceAttributes *)self creatorCodeSigningIdentity];
  [v3 appendFormat:@"  creatorCodeSigningIdentity: %@\n", v10];

  v11 = [(NEKSourceAttributes *)self accountPersistentID];
  [v3 appendFormat:@"  accountPersistentID: %@\n", v11];

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