@interface REMCDReminder
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
+ (id)timeZoneFromName:(id)name;
- (BOOL)_validateAssignmentsForInvalidSharees:(id *)sharees;
- (BOOL)_validateForReminderTreeConsistency:(id *)consistency;
- (BOOL)_validateMoveAcrossLists:(id *)lists;
- (BOOL)_validateMoveAcrossSharedLists:(id *)lists;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)markExtraneousAlarmsForDeletion;
- (BOOL)mergeWithLocalObject:(id)object;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (CKRecord)ckServerRecord;
- (NSArray)alarms;
- (NSDateComponents)dueDateComponents;
- (NSDateComponents)startDateComponents;
- (REMDisplayDate)displayDate;
- (REMDisplayDateUtils)displayDateUtils;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)newlyCreatedRecord;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)parentCloudObject;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (uint64_t)validateForUpdate_Swift:(void *)swift;
- (unint64_t)displayOrder;
- (void)debug_lowLevelRemoveFromParent;
- (void)didSave;
- (void)fixBrokenReferences;
- (void)incrementSpotlightIndexCount;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
- (void)prepareForDeletion_Swift;
- (void)processDueDateDeltaAlertsDataChanges;
- (void)setCkServerRecord:(id)record;
- (void)setDisplayDate:(id)date;
- (void)setDisplayOrder:(unint64_t)order;
- (void)setDueDateComponents:(id)components;
- (void)setList:(id)list;
- (void)setStartDateComponents:(id)components;
- (void)updateDisplayDate;
- (void)updateDisplayDateWithAlarm:(id)alarm;
- (void)willChangeList:(id)list toList:(id)toList;
- (void)willSave;
- (void)willSave_Swift;
@end

@implementation REMCDReminder

- (uint64_t)validateForUpdate_Swift:(void *)swift
{
  swiftCopy = swift;
  sub_100342E04();

  return 1;
}

- (void)setList:(id)list
{
  listCopy = list;
  v4 = [(REMCDReminder *)self primitiveValueForKey:@"list"];
  [(REMCDReminder *)self setPreviousList:v4];

  if (objc_opt_respondsToSelector())
  {
    [(REMCDReminder *)self willChangeList:self->previousList toList:listCopy];
  }

  [(REMCDObject *)self willChangeValueForKey:@"list"];
  [(REMCDReminder *)self setPrimitiveValue:listCopy forKey:@"list"];
  [(REMCDObject *)self didChangeValueForKey:@"list"];
}

- (BOOL)validateForInsert:(id *)insert
{
  v12.receiver = self;
  v12.super_class = REMCDReminder;
  v5 = [(REMCDObject *)&v12 validateForInsert:?];
  if (!v5 || [(REMCDReminder *)self _validateForReminderTreeConsistency:insert])
  {
    v6 = 1;
    return v5 & v6;
  }

  storeControllerManagedObjectContext = [(REMCDObject *)self storeControllerManagedObjectContext];

  if (!storeControllerManagedObjectContext)
  {
    validationPolicy = 0;
LABEL_9:

    v6 = 0;
    return v5 & v6;
  }

  storeControllerManagedObjectContext2 = [(REMCDObject *)self storeControllerManagedObjectContext];
  validationPolicy = [storeControllerManagedObjectContext2 validationPolicy];

  if (!validationPolicy || ![validationPolicy saveShouldContinueIfCustomValidationFailed])
  {
    goto LABEL_9;
  }

  v10 = 1;
  [validationPolicy setCustomValidationFailed:1];

  return v10;
}

- (BOOL)validateForUpdate:(id *)update
{
  v12.receiver = self;
  v12.super_class = REMCDReminder;
  v5 = [(REMCDObject *)&v12 validateForUpdate:?];
  v6 = [(REMCDReminder *)self _validateMoveAcrossLists:update];
  storeControllerManagedObjectContext = [(REMCDObject *)self storeControllerManagedObjectContext];

  if (!storeControllerManagedObjectContext || (-[REMCDObject storeControllerManagedObjectContext](self, "storeControllerManagedObjectContext"), v8 = objc_claimAutoreleasedReturnValue(), [v8 validationPolicy], storeControllerManagedObjectContext = objc_claimAutoreleasedReturnValue(), v8, !storeControllerManagedObjectContext))
  {
    v9 = 1;
    goto LABEL_7;
  }

  v9 = 0;
  if ([storeControllerManagedObjectContext shouldValidateMoveAcrossSharedList])
  {
LABEL_7:
    if (!v6 || ![(REMCDReminder *)self _validateMoveAcrossSharedLists:update])
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
  if ([(REMCDReminder *)self _validateForReminderTreeConsistency:update])
  {
    v10 = [(REMCDReminder *)self _validateAssignmentsForInvalidSharees:update];
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
  if ((v10 & 1) != 0 || ![storeControllerManagedObjectContext saveShouldContinueIfCustomValidationFailed])
  {
    goto LABEL_17;
  }

  [storeControllerManagedObjectContext setCustomValidationFailed:1];
LABEL_18:

  return v5;
}

- (BOOL)_validateMoveAcrossLists:(id *)lists
{
  v5 = [REMAccountCapabilities alloc];
  account = [(REMCDReminder *)self account];
  v7 = [v5 initWithAccountType:{objc_msgSend(account, "type")}];

  if ([v7 supportsMoveAcrossLists])
  {
    goto LABEL_10;
  }

  previousList = [(REMCDReminder *)self previousList];
  if (!previousList)
  {
    goto LABEL_10;
  }

  v9 = previousList;
  list = [(REMCDReminder *)self list];
  if (!list)
  {

    goto LABEL_10;
  }

  v11 = list;
  previousList2 = [(REMCDReminder *)self previousList];
  identifier = [previousList2 identifier];
  list2 = [(REMCDReminder *)self list];
  identifier2 = [list2 identifier];
  v16 = [identifier isEqual:identifier2];

  if (v16)
  {
LABEL_10:
    LOBYTE(lists) = 1;
    goto LABEL_11;
  }

  v17 = +[REMLogStore write];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100765A5C(self);
  }

  if (lists)
  {
    previousList3 = [(REMCDReminder *)self previousList];
    remObjectID = [previousList3 remObjectID];
    list3 = [(REMCDReminder *)self list];
    remObjectID2 = [list3 remObjectID];
    account2 = [(REMCDReminder *)self account];
    remObjectID3 = [account2 remObjectID];
    *lists = [REMError validationErrorMoveReminderFromList:remObjectID toList:remObjectID2 inAccount:remObjectID3];

    LOBYTE(lists) = 0;
  }

LABEL_11:

  return lists;
}

- (BOOL)_validateMoveAcrossSharedLists:(id *)lists
{
  v5 = [REMAccountCapabilities alloc];
  account = [(REMCDReminder *)self account];
  v7 = [v5 initWithAccountType:{objc_msgSend(account, "type")}];

  if ([v7 supportsMoveAcrossSharedLists])
  {
    goto LABEL_7;
  }

  previousList = [(REMCDReminder *)self previousList];
  if (!previousList)
  {
    goto LABEL_7;
  }

  v9 = previousList;
  list = [(REMCDReminder *)self list];
  if (!list)
  {
    goto LABEL_6;
  }

  v11 = list;
  previousList2 = [(REMCDReminder *)self previousList];
  identifier = [previousList2 identifier];
  list2 = [(REMCDReminder *)self list];
  identifier2 = [list2 identifier];
  if ([identifier isEqual:identifier2])
  {

LABEL_6:
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  listsCopy = lists;
  previousList3 = [(REMCDReminder *)self previousList];
  if ([previousList3 isShared])
  {
  }

  else
  {
    list3 = [(REMCDReminder *)self list];
    isShared = [list3 isShared];

    if ((isShared & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v20 = +[REMLogStore write];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100765B5C(self);
  }

  if (listsCopy)
  {
    previousList4 = [(REMCDReminder *)self previousList];
    remObjectID = [previousList4 remObjectID];
    list4 = [(REMCDReminder *)self list];
    remObjectID2 = [list4 remObjectID];
    account2 = [(REMCDReminder *)self account];
    remObjectID3 = [account2 remObjectID];
    *listsCopy = [REMError validationErrorMoveReminderFromList:remObjectID toList:remObjectID2 inAccount:remObjectID3];
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (BOOL)_validateForReminderTreeConsistency:(id *)consistency
{
  parentReminder = [(REMCDReminder *)self parentReminder];
  if (!parentReminder)
  {
    goto LABEL_10;
  }

  v6 = parentReminder;
  children = [(REMCDReminder *)self children];
  if (!children)
  {

    goto LABEL_10;
  }

  v8 = children;
  children2 = [(REMCDReminder *)self children];
  v10 = [children2 count];

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

  if (consistency)
  {
    remObjectID = [(REMCDObject *)self remObjectID];
    parentReminder2 = [(REMCDReminder *)self parentReminder];
    remObjectID2 = [parentReminder2 remObjectID];
    *consistency = [REMError validationErrorNestedSubtask:remObjectID parentReminderID:remObjectID2];
  }

  v15 = 0;
LABEL_11:
  parentReminder3 = [(REMCDReminder *)self parentReminder];
  if (parentReminder3)
  {
    remObjectID3 = parentReminder3;
    parentReminder4 = [(REMCDReminder *)self parentReminder];
    if ([parentReminder4 markedForDeletion])
    {
LABEL_20:

      goto LABEL_21;
    }

    parentReminder5 = [(REMCDReminder *)self parentReminder];
    if ([parentReminder5 ckNeedsInitialFetchFromCloud])
    {
LABEL_19:

      goto LABEL_20;
    }

    [(REMCDReminder *)self parentReminder];
    v43 = v15;
    v21 = v20 = consistency;
    list = [v21 list];
    identifier = [list identifier];
    list2 = [(REMCDReminder *)self list];
    identifier2 = [list2 identifier];

    consistency = v20;
    v15 = v43;

    if (identifier != identifier2)
    {
      v26 = +[REMLogStore write];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100765D4C(self, v26);
      }

      if (!consistency)
      {
        v15 = 0;
        goto LABEL_21;
      }

      remObjectID3 = [(REMCDObject *)self remObjectID];
      parentReminder4 = [(REMCDReminder *)self parentReminder];
      parentReminder5 = [parentReminder4 remObjectID];
      [REMError validationErrorSubtaskAndParentNotOnSameList:remObjectID3 parentReminderID:parentReminder5];
      *consistency = v15 = 0;
      goto LABEL_19;
    }
  }

LABEL_21:
  if (([(REMCDReminder *)self ckNeedsInitialFetchFromCloud]& 1) == 0 && ([(REMCDReminder *)self markedForDeletion]& 1) == 0)
  {
    children3 = [(REMCDReminder *)self children];

    if (children3)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      children4 = [(REMCDReminder *)self children];
      v29 = [children4 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v29)
      {
        v30 = v29;
        v44 = v15;
        consistencyCopy = consistency;
        v31 = *v46;
        while (2)
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(children4);
            }

            v33 = *(*(&v45 + 1) + 8 * i);
            list3 = [v33 list];
            identifier3 = [list3 identifier];
            list4 = [(REMCDReminder *)self list];
            identifier4 = [list4 identifier];

            if (identifier3 != identifier4)
            {
              v38 = +[REMLogStore write];
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                sub_100765EA0(v33, self);
              }

              if (consistencyCopy)
              {
                remObjectID4 = [v33 remObjectID];
                remObjectID5 = [(REMCDObject *)self remObjectID];
                *consistencyCopy = [REMError validationErrorSubtaskAndParentNotOnSameList:remObjectID4 parentReminderID:remObjectID5];
              }

              v15 = 0;
              goto LABEL_38;
            }
          }

          v30 = [children4 countByEnumeratingWithState:&v45 objects:v49 count:16];
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

- (BOOL)_validateAssignmentsForInvalidSharees:(id *)sharees
{
  v4 = [REMAccountCapabilities alloc];
  account = [(REMCDReminder *)self account];
  v6 = [v4 initWithAccountType:{objc_msgSend(account, "type")}];

  LODWORD(v4) = [v6 supportsAssignments];
  v75 = v6;
  supportsMoveAcrossSharedLists = [v6 supportsMoveAcrossSharedLists];
  if (!v4)
  {
    goto LABEL_51;
  }

  v74 = supportsMoveAcrossSharedLists;
  previousList = [(REMCDReminder *)self previousList];
  if (previousList)
  {
    list = [(REMCDReminder *)self list];
    if (list)
    {
      previousList2 = [(REMCDReminder *)self previousList];
      identifier = [previousList2 identifier];
      list2 = [(REMCDReminder *)self list];
      identifier2 = [list2 identifier];
      v14 = [identifier isEqual:identifier2] ^ 1;
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
  assignments = [(REMCDReminder *)self assignments];
  objectEnumerator = [assignments objectEnumerator];

  obj = objectEnumerator;
  v85 = [objectEnumerator countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (!v85)
  {
LABEL_50:

    goto LABEL_51;
  }

  v77 = 0;
  v84 = *v87;
  selfCopy = self;
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

      assignee = [*(*(&v86 + 1) + 8 * i) assignee];
      if (assignee)
      {
        v20 = assignee;
        assignee2 = [v18 assignee];
        list3 = [assignee2 list];
        identifier3 = [list3 identifier];
        list4 = [(REMCDReminder *)self list];
        identifier4 = [list4 identifier];

        if (identifier3 == identifier4)
        {
          v35 = 0;
        }

        else
        {
          v26 = +[REMLogStore write];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            identifier5 = [v18 identifier];
            identifier6 = [(REMCDReminder *)selfCopy identifier];
            previousList3 = [(REMCDReminder *)selfCopy previousList];
            identifier7 = [previousList3 identifier];
            list5 = [(REMCDReminder *)selfCopy list];
            identifier8 = [list5 identifier];
            [(REMCDReminder *)selfCopy account];
            v33 = v32 = v18;
            identifier9 = [v33 identifier];
            *buf = 138544386;
            v91 = identifier5;
            v92 = 2114;
            v93 = identifier6;
            v94 = 2114;
            v95 = identifier7;
            v96 = 2114;
            v97 = identifier8;
            v98 = 2114;
            v99 = identifier9;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Validation Update: Moving reminder to another list nullifies assignee in its assignments {assignment.identifier: %{public}@, reminder.identifier: %{public}@, fromList.identifier: %{public}@, toList.identifier: %{public}@, account.identifier: %{public}@}", buf, 0x34u);

            v18 = v32;
          }

          v77 = 1;
          v35 = 1;
        }

        self = selfCopy;
        v14 = v79;
      }

      else
      {
        v35 = 0;
      }

      originator = [v18 originator];
      if (!originator)
      {
        goto LABEL_28;
      }

      v37 = originator;
      v83 = v18;
      originator2 = [v18 originator];
      list6 = [originator2 list];
      identifier10 = [list6 identifier];
      list7 = [(REMCDReminder *)self list];
      identifier11 = [list7 identifier];

      if (identifier10 == identifier11)
      {
        v52 = 0;
      }

      else
      {
        v43 = +[REMLogStore write];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          identifier12 = [v83 identifier];
          selfCopy2 = self;
          identifier13 = [(REMCDReminder *)self identifier];
          previousList4 = [(REMCDReminder *)selfCopy2 previousList];
          identifier14 = [previousList4 identifier];
          list8 = [(REMCDReminder *)selfCopy list];
          identifier15 = [list8 identifier];
          account2 = [(REMCDReminder *)selfCopy account];
          identifier16 = [account2 identifier];
          *buf = 138544386;
          v91 = identifier12;
          v92 = 2114;
          v93 = identifier13;
          v51 = identifier13;
          v94 = 2114;
          v95 = identifier14;
          v96 = 2114;
          v97 = identifier15;
          v98 = 2114;
          v99 = identifier16;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Validation Update: Moving reminder to another list nullifies origiantor in its assignments {assignment.identifier: %{public}@, reminder.identifier: %{public}@, fromList.identifier: %{public}@, toList.identifier: %{public}@, account.identifier: %{public}@}", buf, 0x34u);

          v14 = v79;
          self = selfCopy;
        }

        v77 = 1;
        v52 = 1;
      }

      v18 = v83;
LABEL_31:
      assignee3 = [v18 assignee];
      if (assignee3)
      {
        v54 = assignee3;
        assignee4 = [v18 assignee];
        v56 = [REMCDAssignment isShareeActivelyParticipatingWithSharee:assignee4];

        if ((v56 & 1) == 0)
        {
          v57 = +[REMLogStore write];
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            identifier17 = [v18 identifier];
            identifier18 = [(REMCDReminder *)self identifier];
            [(REMCDReminder *)self account];
            v61 = v60 = v18;
            identifier19 = [v61 identifier];
            *buf = 138543874;
            v91 = identifier17;
            v92 = 2114;
            v93 = identifier18;
            v94 = 2114;
            v95 = identifier19;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Validation Update: Assignee in disallowed status and hence will be nullified {assignment.identifier: %{public}@, reminder.identifier: %{public}@, account.identifier: %{public}@}", buf, 0x20u);

            v18 = v60;
          }

          v35 = 1;
        }
      }

      originator3 = [v18 originator];
      if (originator3)
      {
        v64 = originator3;
        originator4 = [v18 originator];
        v66 = [REMCDAssignment isShareeActivelyParticipatingWithSharee:originator4];

        if ((v66 & 1) == 0)
        {
          v67 = +[REMLogStore write];
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            identifier20 = [v18 identifier];
            identifier21 = [(REMCDReminder *)self identifier];
            [(REMCDReminder *)self account];
            v71 = v70 = v18;
            identifier22 = [v71 identifier];
            *buf = 138543874;
            v91 = identifier20;
            v92 = 2114;
            v93 = identifier21;
            v94 = 2114;
            v95 = identifier22;
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
  displayDateDate = [(REMCDReminder *)self displayDateDate];
  if (displayDateDate)
  {
    displayDateTimeZone = [(REMCDReminder *)self displayDateTimeZone];
    if (displayDateTimeZone)
    {
      v5 = [NSTimeZone timeZoneWithName:displayDateTimeZone];
    }

    else
    {
      v5 = 0;
    }

    v6 = [[REMDisplayDate alloc] initWithDate:displayDateDate allDay:-[REMCDReminder displayDateIsAllDay](self timeZone:"displayDateIsAllDay") floatingDateSecondsFromGMT:{v5, -[REMCDReminder displayDateUpdatedForSecondsFromGMT](self, "displayDateUpdatedForSecondsFromGMT")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDisplayDate:(id)date
{
  dateCopy = date;
  displayDate = [(REMCDReminder *)self displayDate];
  v5 = [displayDate isEqual:dateCopy];

  if ((v5 & 1) == 0)
  {
    date = [dateCopy date];
    [(REMCDReminder *)self setDisplayDateDate:date];

    -[REMCDReminder setDisplayDateIsAllDay:](self, "setDisplayDateIsAllDay:", [dateCopy isAllDay]);
    timeZone = [dateCopy timeZone];
    name = [timeZone name];
    [(REMCDReminder *)self setDisplayDateTimeZone:name];

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
    changedValues = [(REMCDReminder *)self changedValues];
    allKeys = [changedValues allKeys];

    if ([allKeys containsObject:@"alarmStorage"] && (objc_opt_respondsToSelector() & 1) != 0 && -[REMCDReminder markExtraneousAlarmsForDeletion](self, "markExtraneousAlarmsForDeletion"))
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
    changedValues2 = [(REMCDReminder *)self changedValues];
    allKeys2 = [changedValues2 allKeys];

    if ((v3 & 1) != 0 || ([allKeys2 containsObject:@"alarmStorage"] & 1) != 0 || objc_msgSend(allKeys2, "containsObject:", @"dueDate"))
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
  displayDateUtils = [(REMCDReminder *)self displayDateUtils];
  dueDateComponents = [(REMCDReminder *)self dueDateComponents];
  alarms = [(REMCDReminder *)self alarms];
  v5 = [displayDateUtils displayDateWithDueDateComponents:dueDateComponents alarms:alarms];
  [(REMCDReminder *)self setDisplayDate:v5];
}

- (void)updateDisplayDateWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  displayDateUtils = [(REMCDReminder *)self displayDateUtils];
  dueDateComponents = [(REMCDReminder *)self dueDateComponents];
  modelObject = [alarmCopy modelObject];

  v7 = [displayDateUtils updateDisplayDateWithDueDateComponents:dueDateComponents alarm:modelObject alarmsProviding:self];
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

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  remObjectID = [(REMCDObject *)self remObjectID];
  if (remObjectID)
  {
    v6 = [objectCopy objectForKeyedSubscript:remObjectID];
    v7 = v6;
    if (v6)
    {
      LOBYTE(v8) = [v6 integerValue] == 1;
    }

    else
    {
      [objectCopy setObject:&off_100904F50 forKeyedSubscript:remObjectID];
      parentReminder = [(REMCDReminder *)self parentReminder];

      if (parentReminder)
      {
        [(REMCDReminder *)self parentReminder];
      }

      else
      {
        [(REMCDReminder *)self list];
      }
      v10 = ;
      v8 = [v10 isConnectedToAccountObject:objectCopy];

      if (v8)
      {
        v11 = &off_100904F68;
      }

      else
      {
        v11 = &off_100904F80;
      }

      [objectCopy setObject:v11 forKeyedSubscript:remObjectID];
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
  parentReminder = [(REMCDReminder *)self parentReminder];

  if (parentReminder)
  {
    parentReminder2 = [(REMCDReminder *)self parentReminder];
    effectiveMinimumSupportedVersion = [parentReminder2 effectiveMinimumSupportedVersion];
  }

  else
  {
    parentReminder2 = [(REMCDReminder *)self list];
    if (parentReminder2)
    {
      list = [(REMCDReminder *)self list];
      effectiveMinimumSupportedVersion = [list effectiveMinimumSupportedVersion];
    }

    else
    {
      effectiveMinimumSupportedVersion = kREMSupportedVersionUnset;
    }
  }

  return effectiveMinimumSupportedVersion;
}

+ (id)timeZoneFromName:(id)name
{
  if (name)
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
  dueDate = [(REMCDReminder *)self dueDate];
  allDay = [(REMCDReminder *)self allDay];
  timeZone = [(REMCDReminder *)self timeZone];
  v7 = [v3 dueDateComponentsWithDueDate:dueDate isAllDay:allDay timeZoneName:timeZone];

  return v7;
}

- (void)setDueDateComponents:(id)components
{
  componentsCopy = components;
  v8 = componentsCopy;
  if (componentsCopy)
  {
    -[REMCDReminder setAllDay:](self, "setAllDay:", [componentsCopy rem_isAllDayDateComponents]);
    timeZone = [v8 timeZone];
    if ([(REMCDReminder *)self allDay])
    {

      timeZone = 0;
    }

    name = [timeZone name];
    [(REMCDReminder *)self setTimeZone:name];

    if (timeZone)
    {
      [NSDateComponents rem_dateWithDateComponents:v8 timeZone:timeZone];
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
  startDate = [(REMCDReminder *)self startDate];

  if (startDate)
  {
    startDate2 = [(REMCDReminder *)self startDate];
    v5 = [NSDateComponents rem_dateComponentsWithDateUsingArchivingTimeZone:startDate2 isAllDay:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStartDateComponents:(id)components
{
  componentsCopy = components;
  v7 = componentsCopy;
  if (componentsCopy)
  {
    timeZone = [componentsCopy timeZone];
    if (timeZone)
    {
      [NSDateComponents rem_dateWithDateComponents:v7 timeZone:timeZone];
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
  alarmStorage = [(REMCDReminder *)self alarmStorage];
  v4 = [alarmStorage count];

  if (v4)
  {
    alarmStorage2 = [(REMCDReminder *)self alarmStorage];
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [alarmStorage2 count]);

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    alarmStorage3 = [(REMCDReminder *)self alarmStorage];
    v8 = [alarmStorage3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(alarmStorage3);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (([v12 isDeleted] & 1) == 0)
          {
            modelObject = [v12 modelObject];
            [v6 addObject:modelObject];
          }
        }

        v9 = [alarmStorage3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  icsDisplayOrder = [(REMCDReminder *)self icsDisplayOrder];
  if (!icsDisplayOrder)
  {
    creationDate = [(REMCDReminder *)self creationDate];
    [creationDate timeIntervalSinceReferenceDate];
    icsDisplayOrder = v5;
  }

  return icsDisplayOrder;
}

- (void)setDisplayOrder:(unint64_t)order
{
  if (order || ([(REMCDReminder *)self creationDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {

    [(REMCDReminder *)self setIcsDisplayOrder:order];
  }
}

- (void)debug_lowLevelRemoveFromParent
{
  [(REMCDReminder *)self setParentReminder:0];

  [(REMCDReminder *)self setList:0];
}

- (BOOL)markExtraneousAlarmsForDeletion
{
  selfCopy = self;
  v3 = REMCDReminder.markExtraneousAlarmsForDeletion()();

  return v3;
}

- (void)willChangeList:(id)list toList:(id)toList
{
  listCopy = list;
  toListCopy = toList;
  selfCopy = self;
  REMCDReminder.willChange(_:to:)(list, toList);
}

- (void)willSave_Swift
{
  selfCopy = self;
  REMCDReminder.willSave_Swift()();
}

- (void)prepareForDeletion_Swift
{
  selfCopy = self;
  _sSo13REMCDReminderC7reminddE24prepareForDeletion_SwiftyyF_0();
}

+ (id)recordTypes
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  dCopy = d;
  contextCopy = context;
  v12 = static REMCDReminder.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDReminder.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

  return v11;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)mergeDataFromRecord:(id)record accountID:(id)d
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  recordCopy = record;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDReminder.mergeData(from:accountID:)(recordCopy, v11);
}

- (CKRecord)ckServerRecord
{
  v4.receiver = self;
  v4.super_class = REMCDReminder;
  ckServerRecord = [(REMCDObject *)&v4 ckServerRecord];

  return ckServerRecord;
}

- (void)setCkServerRecord:(id)record
{
  v6.receiver = self;
  v6.super_class = REMCDReminder;
  recordCopy = record;
  selfCopy = self;
  [(REMCDObject *)&v6 setCkServerRecord:recordCopy];
  sub_10039DAE4();
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDReminder.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  list = [(REMCDReminder *)self list];

  return list;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  REMCDReminder.existingLocalObjectToMerge(with:)(v7, predicate);
  v9 = v8;

  return v9;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = REMCDReminder.merge(withLocalObject:)(objectCopy);

  return self & 1;
}

- (id)objectsToBeDeletedBeforeThisObject
{
  selfCopy = self;
  REMCDReminder.objectsToBeDeletedBeforeThisObject()();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)fixBrokenReferences
{
  selfCopy = self;
  REMCDReminder.fixBrokenReferences()();
}

- (void)processDueDateDeltaAlertsDataChanges
{
  selfCopy = self;
  REMCDReminder.processDueDateDeltaAlertsDataChanges()();
}

@end