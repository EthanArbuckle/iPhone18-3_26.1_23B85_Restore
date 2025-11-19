@interface REMCDReminder
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5;
+ (id)recordTypes;
+ (id)timeZoneFromName:(id)a3;
- (BOOL)_validateAssignmentsForInvalidSharees:(id *)a3;
- (BOOL)_validateForReminderTreeConsistency:(id *)a3;
- (BOOL)_validateMoveAcrossLists:(id *)a3;
- (BOOL)_validateMoveAcrossSharedLists:(id *)a3;
- (BOOL)isConnectedToAccountObject:(id)a3;
- (BOOL)markExtraneousAlarmsForDeletion;
- (BOOL)mergeWithLocalObject:(id)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (CKRecord)ckServerRecord;
- (NSArray)alarms;
- (NSDateComponents)dueDateComponents;
- (NSDateComponents)startDateComponents;
- (REMDisplayDate)displayDate;
- (REMDisplayDateUtils)displayDateUtils;
- (id)existingLocalObjectToMergeWithPredicate:(id)a3;
- (id)newlyCreatedRecord;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)parentCloudObject;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (uint64_t)validateForUpdate_Swift:(void *)a1;
- (unint64_t)displayOrder;
- (void)debug_lowLevelRemoveFromParent;
- (void)didSave;
- (void)fixBrokenReferences;
- (void)incrementSpotlightIndexCount;
- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4;
- (void)prepareForDeletion_Swift;
- (void)processDueDateDeltaAlertsDataChanges;
- (void)setCkServerRecord:(id)a3;
- (void)setDisplayDate:(id)a3;
- (void)setDisplayOrder:(unint64_t)a3;
- (void)setDueDateComponents:(id)a3;
- (void)setList:(id)a3;
- (void)setStartDateComponents:(id)a3;
- (void)updateDisplayDate;
- (void)updateDisplayDateWithAlarm:(id)a3;
- (void)willChangeList:(id)a3 toList:(id)a4;
- (void)willSave;
- (void)willSave_Swift;
@end

@implementation REMCDReminder

- (uint64_t)validateForUpdate_Swift:(void *)a1
{
  v1 = a1;
  sub_100342E04();

  return 1;
}

- (void)setList:(id)a3
{
  v5 = a3;
  v4 = [(REMCDReminder *)self primitiveValueForKey:@"list"];
  [(REMCDReminder *)self setPreviousList:v4];

  if (objc_opt_respondsToSelector())
  {
    [(REMCDReminder *)self willChangeList:self->previousList toList:v5];
  }

  [(REMCDObject *)self willChangeValueForKey:@"list"];
  [(REMCDReminder *)self setPrimitiveValue:v5 forKey:@"list"];
  [(REMCDObject *)self didChangeValueForKey:@"list"];
}

- (BOOL)validateForInsert:(id *)a3
{
  v12.receiver = self;
  v12.super_class = REMCDReminder;
  v5 = [(REMCDObject *)&v12 validateForInsert:?];
  if (!v5 || [(REMCDReminder *)self _validateForReminderTreeConsistency:a3])
  {
    v6 = 1;
    return v5 & v6;
  }

  v7 = [(REMCDObject *)self storeControllerManagedObjectContext];

  if (!v7)
  {
    v9 = 0;
LABEL_9:

    v6 = 0;
    return v5 & v6;
  }

  v8 = [(REMCDObject *)self storeControllerManagedObjectContext];
  v9 = [v8 validationPolicy];

  if (!v9 || ![v9 saveShouldContinueIfCustomValidationFailed])
  {
    goto LABEL_9;
  }

  v10 = 1;
  [v9 setCustomValidationFailed:1];

  return v10;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v12.receiver = self;
  v12.super_class = REMCDReminder;
  v5 = [(REMCDObject *)&v12 validateForUpdate:?];
  v6 = [(REMCDReminder *)self _validateMoveAcrossLists:a3];
  v7 = [(REMCDObject *)self storeControllerManagedObjectContext];

  if (!v7 || (-[REMCDObject storeControllerManagedObjectContext](self, "storeControllerManagedObjectContext"), v8 = objc_claimAutoreleasedReturnValue(), [v8 validationPolicy], v7 = objc_claimAutoreleasedReturnValue(), v8, !v7))
  {
    v9 = 1;
    goto LABEL_7;
  }

  v9 = 0;
  if ([v7 shouldValidateMoveAcrossSharedList])
  {
LABEL_7:
    if (!v6 || ![(REMCDReminder *)self _validateMoveAcrossSharedLists:a3])
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v10 = 0;
  if (!v6)
  {
LABEL_11:
    if (v9)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_9:
  if ([(REMCDReminder *)self _validateForReminderTreeConsistency:a3])
  {
    v10 = [(REMCDReminder *)self _validateAssignmentsForInvalidSharees:a3];
    goto LABEL_11;
  }

LABEL_13:
  v10 = 0;
  if (v9)
  {
LABEL_17:
    v5 &= v10;
    goto LABEL_18;
  }

LABEL_14:
  if ((v10 & 1) != 0 || ![v7 saveShouldContinueIfCustomValidationFailed])
  {
    goto LABEL_17;
  }

  [v7 setCustomValidationFailed:1];
LABEL_18:

  return v5;
}

- (BOOL)_validateMoveAcrossLists:(id *)a3
{
  v5 = [REMAccountCapabilities alloc];
  v6 = [(REMCDReminder *)self account];
  v7 = [v5 initWithAccountType:{objc_msgSend(v6, "type")}];

  if ([v7 supportsMoveAcrossLists])
  {
    goto LABEL_10;
  }

  v8 = [(REMCDReminder *)self previousList];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [(REMCDReminder *)self list];
  if (!v10)
  {

    goto LABEL_10;
  }

  v11 = v10;
  v12 = [(REMCDReminder *)self previousList];
  v13 = [v12 identifier];
  v14 = [(REMCDReminder *)self list];
  v15 = [v14 identifier];
  v16 = [v13 isEqual:v15];

  if (v16)
  {
LABEL_10:
    LOBYTE(a3) = 1;
    goto LABEL_11;
  }

  v17 = +[REMLogStore write];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100765A5C(self);
  }

  if (a3)
  {
    v18 = [(REMCDReminder *)self previousList];
    v19 = [v18 remObjectID];
    v20 = [(REMCDReminder *)self list];
    v21 = [v20 remObjectID];
    v22 = [(REMCDReminder *)self account];
    v23 = [v22 remObjectID];
    *a3 = [REMError validationErrorMoveReminderFromList:v19 toList:v21 inAccount:v23];

    LOBYTE(a3) = 0;
  }

LABEL_11:

  return a3;
}

- (BOOL)_validateMoveAcrossSharedLists:(id *)a3
{
  v5 = [REMAccountCapabilities alloc];
  v6 = [(REMCDReminder *)self account];
  v7 = [v5 initWithAccountType:{objc_msgSend(v6, "type")}];

  if ([v7 supportsMoveAcrossSharedLists])
  {
    goto LABEL_7;
  }

  v8 = [(REMCDReminder *)self previousList];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [(REMCDReminder *)self list];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [(REMCDReminder *)self previousList];
  v13 = [v12 identifier];
  v14 = [(REMCDReminder *)self list];
  v15 = [v14 identifier];
  if ([v13 isEqual:v15])
  {

LABEL_6:
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v28 = a3;
  v18 = [(REMCDReminder *)self previousList];
  if ([v18 isShared])
  {
  }

  else
  {
    v19 = [(REMCDReminder *)self list];
    v27 = [v19 isShared];

    if ((v27 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v20 = +[REMLogStore write];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100765B5C(self);
  }

  if (v28)
  {
    v21 = [(REMCDReminder *)self previousList];
    v22 = [v21 remObjectID];
    v23 = [(REMCDReminder *)self list];
    v24 = [v23 remObjectID];
    v25 = [(REMCDReminder *)self account];
    v26 = [v25 remObjectID];
    *v28 = [REMError validationErrorMoveReminderFromList:v22 toList:v24 inAccount:v26];
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (BOOL)_validateForReminderTreeConsistency:(id *)a3
{
  v5 = [(REMCDReminder *)self parentReminder];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [(REMCDReminder *)self children];
  if (!v7)
  {

    goto LABEL_10;
  }

  v8 = v7;
  v9 = [(REMCDReminder *)self children];
  v10 = [v9 count];

  if (!v10)
  {
LABEL_10:
    v15 = 1;
    goto LABEL_11;
  }

  v11 = +[REMLogStore write];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100765C5C(self, v11);
  }

  if (a3)
  {
    v12 = [(REMCDObject *)self remObjectID];
    v13 = [(REMCDReminder *)self parentReminder];
    v14 = [v13 remObjectID];
    *a3 = [REMError validationErrorNestedSubtask:v12 parentReminderID:v14];
  }

  v15 = 0;
LABEL_11:
  v16 = [(REMCDReminder *)self parentReminder];
  if (v16)
  {
    v17 = v16;
    v18 = [(REMCDReminder *)self parentReminder];
    if ([v18 markedForDeletion])
    {
LABEL_20:

      goto LABEL_21;
    }

    v19 = [(REMCDReminder *)self parentReminder];
    if ([v19 ckNeedsInitialFetchFromCloud])
    {
LABEL_19:

      goto LABEL_20;
    }

    [(REMCDReminder *)self parentReminder];
    v43 = v15;
    v21 = v20 = a3;
    v22 = [v21 list];
    v23 = [v22 identifier];
    v24 = [(REMCDReminder *)self list];
    v25 = [v24 identifier];

    a3 = v20;
    v15 = v43;

    if (v23 != v25)
    {
      v26 = +[REMLogStore write];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100765D4C(self, v26);
      }

      if (!a3)
      {
        v15 = 0;
        goto LABEL_21;
      }

      v17 = [(REMCDObject *)self remObjectID];
      v18 = [(REMCDReminder *)self parentReminder];
      v19 = [v18 remObjectID];
      [REMError validationErrorSubtaskAndParentNotOnSameList:v17 parentReminderID:v19];
      *a3 = v15 = 0;
      goto LABEL_19;
    }
  }

LABEL_21:
  if (([(REMCDReminder *)self ckNeedsInitialFetchFromCloud]& 1) == 0 && ([(REMCDReminder *)self markedForDeletion]& 1) == 0)
  {
    v27 = [(REMCDReminder *)self children];

    if (v27)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v28 = [(REMCDReminder *)self children];
      v29 = [v28 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v29)
      {
        v30 = v29;
        v44 = v15;
        v42 = a3;
        v31 = *v46;
        while (2)
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v45 + 1) + 8 * i);
            v34 = [v33 list];
            v35 = [v34 identifier];
            v36 = [(REMCDReminder *)self list];
            v37 = [v36 identifier];

            if (v35 != v37)
            {
              v38 = +[REMLogStore write];
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                sub_100765EA0(v33, self);
              }

              if (v42)
              {
                v39 = [v33 remObjectID];
                v40 = [(REMCDObject *)self remObjectID];
                *v42 = [REMError validationErrorSubtaskAndParentNotOnSameList:v39 parentReminderID:v40];
              }

              v15 = 0;
              goto LABEL_38;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

        v15 = v44;
      }

LABEL_38:
    }
  }

  return v15;
}

- (BOOL)_validateAssignmentsForInvalidSharees:(id *)a3
{
  v4 = [REMAccountCapabilities alloc];
  v5 = [(REMCDReminder *)self account];
  v6 = [v4 initWithAccountType:{objc_msgSend(v5, "type")}];

  LODWORD(v4) = [v6 supportsAssignments];
  v75 = v6;
  v7 = [v6 supportsMoveAcrossSharedLists];
  if (!v4)
  {
    goto LABEL_51;
  }

  v74 = v7;
  v8 = [(REMCDReminder *)self previousList];
  if (v8)
  {
    v9 = [(REMCDReminder *)self list];
    if (v9)
    {
      v10 = [(REMCDReminder *)self previousList];
      v11 = [v10 identifier];
      v12 = [(REMCDReminder *)self list];
      v13 = [v12 identifier];
      v14 = [v11 isEqual:v13] ^ 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v15 = [(REMCDReminder *)self assignments];
  v16 = [v15 objectEnumerator];

  obj = v16;
  v85 = [v16 countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (!v85)
  {
LABEL_50:

    goto LABEL_51;
  }

  v77 = 0;
  v84 = *v87;
  v81 = self;
  v79 = v14;
  do
  {
    for (i = 0; i != v85; i = i + 1)
    {
      if (*v87 != v84)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v86 + 1) + 8 * i);
      if (!v14)
      {
        v35 = 0;
LABEL_28:
        v52 = 0;
        goto LABEL_31;
      }

      v19 = [*(*(&v86 + 1) + 8 * i) assignee];
      if (v19)
      {
        v20 = v19;
        v21 = [v18 assignee];
        v22 = [v21 list];
        v23 = [v22 identifier];
        v24 = [(REMCDReminder *)self list];
        v25 = [v24 identifier];

        if (v23 == v25)
        {
          v35 = 0;
        }

        else
        {
          v26 = +[REMLogStore write];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v18 identifier];
            v28 = [(REMCDReminder *)v81 identifier];
            v82 = [(REMCDReminder *)v81 previousList];
            v29 = [v82 identifier];
            v30 = [(REMCDReminder *)v81 list];
            v31 = [v30 identifier];
            [(REMCDReminder *)v81 account];
            v33 = v32 = v18;
            v34 = [v33 identifier];
            *buf = 138544386;
            v91 = v27;
            v92 = 2114;
            v93 = v28;
            v94 = 2114;
            v95 = v29;
            v96 = 2114;
            v97 = v31;
            v98 = 2114;
            v99 = v34;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Validation Update: Moving reminder to another list nullifies assignee in its assignments {assignment.identifier: %{public}@, reminder.identifier: %{public}@, fromList.identifier: %{public}@, toList.identifier: %{public}@, account.identifier: %{public}@}", buf, 0x34u);

            v18 = v32;
          }

          v77 = 1;
          v35 = 1;
        }

        self = v81;
        v14 = v79;
      }

      else
      {
        v35 = 0;
      }

      v36 = [v18 originator];
      if (!v36)
      {
        goto LABEL_28;
      }

      v37 = v36;
      v83 = v18;
      v38 = [v18 originator];
      v39 = [v38 list];
      v40 = [v39 identifier];
      v41 = [(REMCDReminder *)self list];
      v42 = [v41 identifier];

      if (v40 == v42)
      {
        v52 = 0;
      }

      else
      {
        v43 = +[REMLogStore write];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v76 = [v83 identifier];
          v44 = self;
          v45 = [(REMCDReminder *)self identifier];
          v78 = [(REMCDReminder *)v44 previousList];
          v46 = [v78 identifier];
          v47 = [(REMCDReminder *)v81 list];
          v48 = [v47 identifier];
          v49 = [(REMCDReminder *)v81 account];
          v50 = [v49 identifier];
          *buf = 138544386;
          v91 = v76;
          v92 = 2114;
          v93 = v45;
          v51 = v45;
          v94 = 2114;
          v95 = v46;
          v96 = 2114;
          v97 = v48;
          v98 = 2114;
          v99 = v50;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Validation Update: Moving reminder to another list nullifies origiantor in its assignments {assignment.identifier: %{public}@, reminder.identifier: %{public}@, fromList.identifier: %{public}@, toList.identifier: %{public}@, account.identifier: %{public}@}", buf, 0x34u);

          v14 = v79;
          self = v81;
        }

        v77 = 1;
        v52 = 1;
      }

      v18 = v83;
LABEL_31:
      v53 = [v18 assignee];
      if (v53)
      {
        v54 = v53;
        v55 = [v18 assignee];
        v56 = [REMCDAssignment isShareeActivelyParticipatingWithSharee:v55];

        if ((v56 & 1) == 0)
        {
          v57 = +[REMLogStore write];
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = [v18 identifier];
            v59 = [(REMCDReminder *)self identifier];
            [(REMCDReminder *)self account];
            v61 = v60 = v18;
            v62 = [v61 identifier];
            *buf = 138543874;
            v91 = v58;
            v92 = 2114;
            v93 = v59;
            v94 = 2114;
            v95 = v62;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Validation Update: Assignee in disallowed status and hence will be nullified {assignment.identifier: %{public}@, reminder.identifier: %{public}@, account.identifier: %{public}@}", buf, 0x20u);

            v18 = v60;
          }

          v35 = 1;
        }
      }

      v63 = [v18 originator];
      if (v63)
      {
        v64 = v63;
        v65 = [v18 originator];
        v66 = [REMCDAssignment isShareeActivelyParticipatingWithSharee:v65];

        if ((v66 & 1) == 0)
        {
          v67 = +[REMLogStore write];
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = [v18 identifier];
            v69 = [(REMCDReminder *)self identifier];
            [(REMCDReminder *)self account];
            v71 = v70 = v18;
            v72 = [v71 identifier];
            *buf = 138543874;
            v91 = v68;
            v92 = 2114;
            v93 = v69;
            v94 = 2114;
            v95 = v72;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Validation Update: Originator in disallowed status and hence will be nullified {assignment.identifier: %{public}@, reminder.identifier: %{public}@, account.identifier: %{public}@}", buf, 0x20u);

            v18 = v70;
          }

          v52 = 1;
        }
      }

      if (v35)
      {
        [v18 setAssignee:0];
      }

      if (v52)
      {
        [v18 setOriginator:0];
      }
    }

    v85 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
  }

  while (v85);

  if (!(v74 & 1 | ((v77 & 1) == 0)))
  {
    obj = +[REMLogStore write];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_100765FC8(self, obj);
    }

    goto LABEL_50;
  }

LABEL_51:

  return 1;
}

- (REMDisplayDate)displayDate
{
  v3 = [(REMCDReminder *)self displayDateDate];
  if (v3)
  {
    v4 = [(REMCDReminder *)self displayDateTimeZone];
    if (v4)
    {
      v5 = [NSTimeZone timeZoneWithName:v4];
    }

    else
    {
      v5 = 0;
    }

    v6 = [[REMDisplayDate alloc] initWithDate:v3 allDay:-[REMCDReminder displayDateIsAllDay](self timeZone:"displayDateIsAllDay") floatingDateSecondsFromGMT:{v5, -[REMCDReminder displayDateUpdatedForSecondsFromGMT](self, "displayDateUpdatedForSecondsFromGMT")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDisplayDate:(id)a3
{
  v10 = a3;
  v4 = [(REMCDReminder *)self displayDate];
  v5 = [v4 isEqual:v10];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 date];
    [(REMCDReminder *)self setDisplayDateDate:v6];

    -[REMCDReminder setDisplayDateIsAllDay:](self, "setDisplayDateIsAllDay:", [v10 isAllDay]);
    v7 = [v10 timeZone];
    v8 = [v7 name];
    [(REMCDReminder *)self setDisplayDateTimeZone:v8];

    v9 = +[NSTimeZone defaultTimeZone];
    -[REMCDReminder setDisplayDateUpdatedForSecondsFromGMT:](self, "setDisplayDateUpdatedForSecondsFromGMT:", [v9 secondsFromGMT]);
  }
}

- (REMDisplayDateUtils)displayDateUtils
{
  displayDateUtils = self->_displayDateUtils;
  if (!displayDateUtils)
  {
    v4 = objc_alloc_init(REMDisplayDateUtils);
    v5 = self->_displayDateUtils;
    self->_displayDateUtils = v4;

    displayDateUtils = self->_displayDateUtils;
  }

  return displayDateUtils;
}

- (void)willSave
{
  v8.receiver = self;
  v8.super_class = REMCDReminder;
  [(REMCDObject *)&v8 willSave];
  if ([(REMCDReminder *)self willSave_handledExtraneousAlarmsMarking])
  {
    v3 = 0;
  }

  else
  {
    [(REMCDReminder *)self setWillSave_handledExtraneousAlarmsMarking:1];
    v4 = [(REMCDReminder *)self changedValues];
    v5 = [v4 allKeys];

    if ([v5 containsObject:@"alarmStorage"] && (objc_opt_respondsToSelector() & 1) != 0 && -[REMCDReminder markExtraneousAlarmsForDeletion](self, "markExtraneousAlarmsForDeletion"))
    {
      if ([(REMCDReminder *)self willSave_handledUpdateDisplayDate])
      {
        sub_100766104(self);
      }

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  if (![(REMCDReminder *)self willSave_handledUpdateDisplayDate])
  {
    [(REMCDReminder *)self setWillSave_handledUpdateDisplayDate:1];
    v6 = [(REMCDReminder *)self changedValues];
    v7 = [v6 allKeys];

    if ((v3 & 1) != 0 || ([v7 containsObject:@"alarmStorage"] & 1) != 0 || objc_msgSend(v7, "containsObject:", @"dueDate"))
    {
      [(REMCDReminder *)self updateDisplayDate];
    }
  }
}

- (void)didSave
{
  v3.receiver = self;
  v3.super_class = REMCDReminder;
  [(REMCDObject *)&v3 didSave];
  [(REMCDReminder *)self setWillSave_handledUpdateDisplayDate:0];
  [(REMCDReminder *)self setWillSave_handledExtraneousAlarmsMarking:0];
}

- (void)updateDisplayDate
{
  v6 = [(REMCDReminder *)self displayDateUtils];
  v3 = [(REMCDReminder *)self dueDateComponents];
  v4 = [(REMCDReminder *)self alarms];
  v5 = [v6 displayDateWithDueDateComponents:v3 alarms:v4];
  [(REMCDReminder *)self setDisplayDate:v5];
}

- (void)updateDisplayDateWithAlarm:(id)a3
{
  v4 = a3;
  v8 = [(REMCDReminder *)self displayDateUtils];
  v5 = [(REMCDReminder *)self dueDateComponents];
  v6 = [v4 modelObject];

  v7 = [v8 updateDisplayDateWithDueDateComponents:v5 alarm:v6 alarmsProviding:self];
  [(REMCDReminder *)self setDisplayDate:v7];
}

- (void)incrementSpotlightIndexCount
{
  if ([(REMCDReminder *)self spotlightIndexCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(REMCDReminder *)self spotlightIndexCount]+ 1;
  }

  [(REMCDReminder *)self setSpotlightIndexCount:v3];
}

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = a3;
  v5 = [(REMCDObject *)self remObjectID];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      LOBYTE(v8) = [v6 integerValue] == 1;
    }

    else
    {
      [v4 setObject:&off_100904F50 forKeyedSubscript:v5];
      v9 = [(REMCDReminder *)self parentReminder];

      if (v9)
      {
        [(REMCDReminder *)self parentReminder];
      }

      else
      {
        [(REMCDReminder *)self list];
      }
      v10 = ;
      v8 = [v10 isConnectedToAccountObject:v4];

      if (v8)
      {
        v11 = &off_100904F68;
      }

      else
      {
        v11 = &off_100904F80;
      }

      [v4 setObject:v11 forKeyedSubscript:v5];
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  v3 = [(REMCDReminder *)self parentReminder];

  if (v3)
  {
    v4 = [(REMCDReminder *)self parentReminder];
    v5 = [v4 effectiveMinimumSupportedVersion];
  }

  else
  {
    v4 = [(REMCDReminder *)self list];
    if (v4)
    {
      v6 = [(REMCDReminder *)self list];
      v5 = [v6 effectiveMinimumSupportedVersion];
    }

    else
    {
      v5 = kREMSupportedVersionUnset;
    }
  }

  return v5;
}

+ (id)timeZoneFromName:(id)a3
{
  if (a3)
  {
    v4 = [NSTimeZone timeZoneWithName:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDateComponents)dueDateComponents
{
  v3 = objc_opt_class();
  v4 = [(REMCDReminder *)self dueDate];
  v5 = [(REMCDReminder *)self allDay];
  v6 = [(REMCDReminder *)self timeZone];
  v7 = [v3 dueDateComponentsWithDueDate:v4 isAllDay:v5 timeZoneName:v6];

  return v7;
}

- (void)setDueDateComponents:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    -[REMCDReminder setAllDay:](self, "setAllDay:", [v4 rem_isAllDayDateComponents]);
    v5 = [v8 timeZone];
    if ([(REMCDReminder *)self allDay])
    {

      v5 = 0;
    }

    v6 = [v5 name];
    [(REMCDReminder *)self setTimeZone:v6];

    if (v5)
    {
      [NSDateComponents rem_dateWithDateComponents:v8 timeZone:v5];
    }

    else
    {
      [NSDateComponents rem_dateWithDateComponentsUsingArchivingTimeZone:v8];
    }
    v7 = ;
    [(REMCDReminder *)self setDueDate:v7];
  }

  else
  {
    [(REMCDReminder *)self setDueDate:0];
  }
}

- (NSDateComponents)startDateComponents
{
  v3 = [(REMCDReminder *)self startDate];

  if (v3)
  {
    v4 = [(REMCDReminder *)self startDate];
    v5 = [NSDateComponents rem_dateComponentsWithDateUsingArchivingTimeZone:v4 isAllDay:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStartDateComponents:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [v4 timeZone];
    if (v5)
    {
      [NSDateComponents rem_dateWithDateComponents:v7 timeZone:v5];
    }

    else
    {
      [NSDateComponents rem_dateWithDateComponentsUsingArchivingTimeZone:v7];
    }
    v6 = ;
    [(REMCDReminder *)self setStartDate:v6];
  }

  else
  {
    [(REMCDReminder *)self setStartDate:0];
  }
}

- (NSArray)alarms
{
  v3 = [(REMCDReminder *)self alarmStorage];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(REMCDReminder *)self alarmStorage];
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(REMCDReminder *)self alarmStorage];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (([v12 isDeleted] & 1) == 0)
          {
            v13 = [v12 modelObject];
            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)displayOrder
{
  v3 = [(REMCDReminder *)self icsDisplayOrder];
  if (!v3)
  {
    v4 = [(REMCDReminder *)self creationDate];
    [v4 timeIntervalSinceReferenceDate];
    v3 = v5;
  }

  return v3;
}

- (void)setDisplayOrder:(unint64_t)a3
{
  if (a3 || ([(REMCDReminder *)self creationDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {

    [(REMCDReminder *)self setIcsDisplayOrder:a3];
  }
}

- (void)debug_lowLevelRemoveFromParent
{
  [(REMCDReminder *)self setParentReminder:0];

  [(REMCDReminder *)self setList:0];
}

- (BOOL)markExtraneousAlarmsForDeletion
{
  v2 = self;
  v3 = REMCDReminder.markExtraneousAlarmsForDeletion()();

  return v3;
}

- (void)willChangeList:(id)a3 toList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  REMCDReminder.willChange(_:to:)(a3, a4);
}

- (void)willSave_Swift
{
  v2 = self;
  REMCDReminder.willSave_Swift()();
}

- (void)prepareForDeletion_Swift
{
  v2 = self;
  _sSo13REMCDReminderC7reminddE24prepareForDeletion_SwiftyyF_0();
}

+ (id)recordTypes
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a5;
  v12 = static REMCDReminder.existingCloudObject(for:accountID:managedObjectContext:)(v10, v7, v9, v11);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static REMCDReminder.newCloudObject(for:account:managedObjectContext:)(v8, v9, v10);

  return v11;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDReminder.mergeData(from:accountID:)(v9, v11);
}

- (CKRecord)ckServerRecord
{
  v4.receiver = self;
  v4.super_class = REMCDReminder;
  v2 = [(REMCDObject *)&v4 ckServerRecord];

  return v2;
}

- (void)setCkServerRecord:(id)a3
{
  v6.receiver = self;
  v6.super_class = REMCDReminder;
  v4 = a3;
  v5 = self;
  [(REMCDObject *)&v6 setCkServerRecord:v4];
  sub_10039DAE4();
}

- (id)newlyCreatedRecord
{
  v2 = self;
  v3 = REMCDReminder.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  v2 = [(REMCDReminder *)self list];

  return v2;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)a3
{
  v5 = a3;
  v6 = self;
  REMCDReminder.existingLocalObjectToMerge(with:)(v7, a3);
  v9 = v8;

  return v9;
}

- (BOOL)mergeWithLocalObject:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = REMCDReminder.merge(withLocalObject:)(v4);

  return self & 1;
}

- (id)objectsToBeDeletedBeforeThisObject
{
  v2 = self;
  REMCDReminder.objectsToBeDeletedBeforeThisObject()();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)fixBrokenReferences
{
  v2 = self;
  REMCDReminder.fixBrokenReferences()();
}

- (void)processDueDateDeltaAlertsDataChanges
{
  v2 = self;
  REMCDReminder.processDueDateDeltaAlertsDataChanges()();
}

@end