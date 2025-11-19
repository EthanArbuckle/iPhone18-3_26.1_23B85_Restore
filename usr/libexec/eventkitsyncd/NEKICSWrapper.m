@interface NEKICSWrapper
+ (void)setAllPropertiesForItem:(id)a3 identifier:(id)a4 wrapper:(id)a5 needsInvite:(id)a6 eventStore:(id)a7 calendar:(id)a8;
+ (void)setAllPropertiesForReminder:(id)a3 identifier:(id)a4 wrapper:(id)a5 store:(id)a6 list:(id)a7 oldListIdentifier:(id)a8;
+ (void)setMinimalPropertiesForItem:(id)a3 identifier:(id)a4 wrapper:(id)a5;
+ (void)setMinimalPropertiesForReminder:(id)a3 identifier:(id)a4 wrapper:(id)a5;
+ (void)setPropertiesForWrapper:(id)a3 withCalendarItems:(id)a4 needsInvite:(id)a5 sendAllProperties:(BOOL)a6 eventStore:(id)a7 calendar:(id)a8 originalEvent:(id)a9;
+ (void)setPropertiesForWrapper:(id)a3 withReminders:(id)a4 oldListIdentifier:(id)a5 sendAllProperties:(BOOL)a6 store:(id)a7 list:(id)a8;
- (BOOL)attendeeCommentForIdentifier:(id)a3;
- (BOOL)attendeeStatusFlagForIdentifier:(id)a3;
- (BOOL)dateChangedForIdentifier:(id)a3;
- (BOOL)hasPropertiesForIdentifier:(id)a3;
- (BOOL)locationChangedForIdentifier:(id)a3;
- (BOOL)timeChangedForIdentifier:(id)a3;
- (BOOL)titleChangedForIdentifier:(id)a3;
- (NSData)ICSData;
- (NSDictionary)startDateMap;
- (id)ICSWrapperMetadata;
- (id)description;
- (id)externalIDForIdentifier:(id)a3;
- (id)invitationStatusForIdentifier:(id)a3;
- (id)locationPredictionStateForIdentifier:(id)a3;
- (id)objectIdentifier;
- (id)properInvitationStatusForIdentifier:(id)a3;
- (id)selfAttendeeEmailForIdentifier:(id)a3;
- (id)selfAttendeeUUIDForIdentifier:(id)a3;
- (id)selfOrganizerEmailForIdentifier:(id)a3;
- (id)selfOrganizerUUIDForIdentifier:(id)a3;
- (id)settablePropertiesForCalendarItemIdentifier:(id)a3;
- (id)startDateForIdentifier:(id)a3;
- (int64_t)attendeeStatusForIdentifier:(id)a3;
- (int64_t)objectTypeForCalendarItemWithIdentifier:(id)a3;
- (unint64_t)entityTypeForCalendarItemWithIdentifier:(id)a3;
- (void)enumerateCalendarItemIdentifiersUsingBlock:(id)a3;
- (void)setAttendeeStatus:(int64_t)a3 forIdentifier:(id)a4;
- (void)setExternalID:(id)a3 forIdentifier:(id)a4;
- (void)setICSData:(id)a3;
- (void)setInvitationStatus:(unint64_t)a3 forIdentifier:(id)a4;
- (void)setLocationPredictionState:(int64_t)a3 forIdentifier:(id)a4;
- (void)setMetadata:(id)a3 forCalendarItemIdentifier:(id)a4;
- (void)setProperInvitationStatus:(unint64_t)a3 forIdentifier:(id)a4;
- (void)setSelfAttendeeEmail:(id)a3 forIdentifier:(id)a4;
- (void)setSelfAttendeeUUID:(id)a3 forIdentifier:(id)a4;
- (void)setSelfOrganizerEmail:(id)a3 forIdentifier:(id)a4;
- (void)setSelfOrganizerUUID:(id)a3 forIdentifier:(id)a4;
- (void)setStartDate:(id)a3 forIdentifier:(id)a4;
@end

@implementation NEKICSWrapper

- (id)ICSWrapperMetadata
{
  v2 = [(NEKICSWrapper *)self properties];
  v3 = [v2 allValues];

  return v3;
}

- (NSData)ICSData
{
  if (self->_zICSData)
  {
    v2 = [(NSData *)self->_zICSData NEKFluff];
  }

  else
  {
    rICSData = self->_rICSData;
    if (rICSData)
    {
      v2 = rICSData;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (void)setICSData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v12[0] = 67109120;
      v12[1] = [v4 length];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting ICS, len:%d", v12, 8u);
    }

    if ([v4 length] < 0x800)
    {
      zICSData = self->_zICSData;
      self->_zICSData = 0;

      v11 = [v4 copy];
      rICSData = self->_rICSData;
      self->_rICSData = v11;
      goto LABEL_9;
    }

    v7 = [v4 NEKSqueeze];
    v8 = self->_zICSData;
    self->_zICSData = v7;
  }

  else
  {
    v8 = self->_zICSData;
    self->_zICSData = 0;
  }

  rICSData = self->_rICSData;
  self->_rICSData = 0;
LABEL_9:
}

- (id)objectIdentifier
{
  syncId = self->_syncId;
  if (syncId)
  {
    v3 = syncId;
  }

  else
  {
    v3 = +[NSUUID eks_garbageUUID];
  }

  return v3;
}

- (id)settablePropertiesForCalendarItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_properties objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(NEKICSWrapperMetadata);
    [(NSMutableDictionary *)self->_properties setObject:v5 forKey:v4];
  }

  return v5;
}

- (BOOL)hasPropertiesForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)setMetadata:(id)a3 forCalendarItemIdentifier:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
    }
  }
}

- (NSDictionary)startDateMap
{
  startDateMap = self->_startDateMap;
  if (!startDateMap)
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->_properties, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_properties;
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v10];
          v12 = [v11 startDate];
          [v4 setObject:v10 forKey:v12];
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
    v14 = self->_startDateMap;
    self->_startDateMap = v13;

    startDateMap = self->_startDateMap;
  }

  return startDateMap;
}

- (BOOL)dateChangedForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 dateChanged];

  return v4;
}

- (BOOL)timeChangedForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 timeChanged];

  return v4;
}

- (BOOL)titleChangedForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 titleChanged];

  return v4;
}

- (BOOL)locationChangedForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 locationChanged];

  return v4;
}

- (BOOL)attendeeCommentForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 attendeeComment];

  return v4;
}

- (void)setSelfAttendeeEmail:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v8 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:a4];
  v7 = sub_100003498(v6);

  [v8 setSelfAttendeeEmail:v7];
}

- (id)selfAttendeeEmailForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 selfAttendeeEmail];

  return v4;
}

- (void)setSelfAttendeeUUID:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v8 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:a4];
  v7 = sub_100003498(v6);

  [v8 setSelfAttendeeUUID:v7];
}

- (id)selfAttendeeUUIDForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 selfAttendeeUUID];

  return v4;
}

- (void)setSelfOrganizerEmail:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v8 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:a4];
  v7 = sub_100003498(v6);

  [v8 setSelfOrganizerEmail:v7];
}

- (id)selfOrganizerEmailForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 selfOrganizerEmail];

  return v4;
}

- (void)setSelfOrganizerUUID:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v8 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:a4];
  v7 = sub_100003498(v6);

  [v8 setSelfOrganizerUUID:v7];
}

- (id)selfOrganizerUUIDForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 selfOrganizerUUID];

  return v4;
}

- (void)setInvitationStatus:(unint64_t)a3 forIdentifier:(id)a4
{
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:a4];
  [v5 setInvitationStatus:a3];
}

- (id)invitationStatusForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 invitationStatus]);

  return v4;
}

- (void)setProperInvitationStatus:(unint64_t)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:v6];
  [v7 setProperInvitationStatus:a3];

  v8 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:v6];

  [v8 setHasProperInvitationStatus:1];
}

- (id)properInvitationStatusForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  if ([v3 hasProperInvitationStatus])
  {
    v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 properInvitationStatus]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLocationPredictionState:(int64_t)a3 forIdentifier:(id)a4
{
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:a4];
  [v5 setLocationPredictionState:a3];
}

- (id)locationPredictionStateForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 locationPredictionState]);

  return v4;
}

- (void)setAttendeeStatus:(int64_t)a3 forIdentifier:(id)a4
{
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:a4];
  [v5 setAttendeeStatus:a3];
}

- (int64_t)attendeeStatusForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 attendeeStatus];

  return v4;
}

- (BOOL)attendeeStatusFlagForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 attendeeStatusFlag];

  return v4;
}

- (void)setExternalID:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:a4];
  [v7 setExternalID:v6];
}

- (id)externalIDForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 externalID];

  return v4;
}

- (void)setStartDate:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:a4];
  [v7 setStartDate:v6];
}

- (id)startDateForIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 startDate];

  return v4;
}

- (void)enumerateCalendarItemIdentifiersUsingBlock:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_properties keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unint64_t)entityTypeForCalendarItemWithIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 entityType];

  v5 = 1;
  if (v4 != 3)
  {
    v5 = -1;
  }

  if (v4 == 2)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (int64_t)objectTypeForCalendarItemWithIdentifier:(id)a3
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:a3];
  v4 = [v3 entityType];

  if (v4 == 1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)description
{
  if (self->_calendarItemCount != 1)
  {
    v13 = objc_opt_class();
    v5 = NSStringFromClass(v13);
    calendarIdentifier = self->_calendarIdentifier;
    v9 = [(NEKICSWrapper *)self oldCalendarIdentifier];
    v10 = [NSNumber numberWithInteger:self->_calendarItemCount];
    v12 = [NSString stringWithFormat:@"<%@ %p, calendarIdentifier = %@ oldCalendarIdentifier = %@; count = %@>", v5, self, calendarIdentifier, v9, v10];;
    goto LABEL_5;
  }

  v3 = [(NEKICSWrapper *)self title];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  syncId = self->_syncId;
  v7 = self->_calendarIdentifier;
  v8 = [(NEKICSWrapper *)self oldCalendarIdentifier];
  v9 = v8;
  if (v3)
  {
    v10 = [(NEKICSWrapper *)self title];
    v11 = sub_10002CDF8(v10);
    v12 = [NSString stringWithFormat:@"<%@ %p identifier=%@; calendarIdentifier=%@; oldCalendarIdentifier=%@; title='%@'>", v5, self, syncId, v7, v9, v11];;

LABEL_5:
    goto LABEL_6;
  }

  v12 = [NSString stringWithFormat:@"<%@ %p identifier=%@; calendarIdentifier=%@; oldCalendarIdentifier=%@>", v5, self, syncId, v7, v8];;
LABEL_6:

  return v12;
}

+ (void)setAllPropertiesForReminder:(id)a3 identifier:(id)a4 wrapper:(id)a5 store:(id)a6 list:(id)a7 oldListIdentifier:(id)a8
{
  v19 = a4;
  v12 = a5;
  v13 = a7;
  v14 = a8;
  v15 = [a3 externalIdentifier];
  if (v15)
  {
    [v12 setExternalID:v15 forIdentifier:v19];
  }

  if (v14)
  {
    [v12 setOldCalendarIdentifier:v14];
  }

  else
  {
    v16 = [v13 objectID];
    v17 = [v16 uuid];
    v18 = [v17 UUIDString];
    [v12 setOldCalendarIdentifier:v18];
  }
}

+ (void)setMinimalPropertiesForReminder:(id)a3 identifier:(id)a4 wrapper:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 isCompleted])
  {
    v10 = [v7 completionDate];
    [v9 setTaskCompleted:1];
    [v10 timeIntervalSinceReferenceDate];
    [v9 setTaskCompletionDate:?];
    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting task with identifier %{public}@ as completed, completion date is %{public}@", &v12, 0x16u);
    }
  }
}

+ (void)setPropertiesForWrapper:(id)a3 withReminders:(id)a4 oldListIdentifier:(id)a5 sendAllProperties:(BOOL)a6 store:(id)a7 list:(id)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = v10;
  v18 = a1;
  v49 = v16;
  v48 = a7;
  v47 = a8;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v15;
  v19 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v19)
  {
    v21 = v19;
    v51 = *v53;
    *&v20 = 138543618;
    v44 = v20;
    v45 = v17;
    v46 = a1;
    do
    {
      v22 = 0;
      do
      {
        if (*v53 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v52 + 1) + 8 * v22);
        v24 = objc_autoreleasePoolPush();
        v25 = [v23 daCalendarItemUniqueIdentifier];
        if (v25)
        {
          v26 = v25;
LABEL_11:
          v30 = [v14 settablePropertiesForCalendarItemIdentifier:{v26, v44}];
          [v30 setEntityType:1];
          if (os_variant_has_internal_diagnostics())
          {
            v31 = *(qword_1000D18A8 + 8);
            v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
            if (v17)
            {
              if (v32)
              {
                v33 = v31;
                v34 = [v23 eks_debugDesc];
                v35 = [v23 daCalendarItemUniqueIdentifier];
                *buf = 138412546;
                v57 = v34;
                v58 = 2114;
                v59 = v35;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Setting all properties on %@, identifier: %{public}@", buf, 0x16u);

                v18 = v46;
                v17 = v45;
              }

LABEL_16:
              [v18 setAllPropertiesForReminder:v23 identifier:v26 wrapper:v14 store:v48 list:v47 oldListIdentifier:v49];
LABEL_20:

              goto LABEL_21;
            }

            if (v32)
            {
              v36 = v31;
              v37 = [v23 eks_debugDesc];
              v38 = [v23 daCalendarItemUniqueIdentifier];
              *buf = 138412546;
              v57 = v37;
              v58 = 2114;
              v59 = v38;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Setting minimal properties on %@, identifier: %{public}@", buf, 0x16u);

              v17 = v45;
              v18 = v46;
            }
          }

          else if (v17)
          {
            goto LABEL_16;
          }

          [v18 setMinimalPropertiesForReminder:v23 identifier:v26 wrapper:v14];
          goto LABEL_20;
        }

        v27 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10006EE70(v60, v27, v23, &v61);
        }

        v28 = [v23 remObjectID];
        v29 = [v28 uuid];
        v26 = [v29 UUIDString];

        if (v26)
        {
          goto LABEL_11;
        }

        v39 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v40 = v39;
          v41 = [v23 eks_debugDesc];
          v42 = [v23 daCalendarItemUniqueIdentifier];
          *buf = v44;
          v57 = v41;
          v58 = 2114;
          v59 = v42;
          _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Can't create canonical unique identifier for reminder %{public}@. Identifier returned by REMReminder is %{public}@", buf, 0x16u);

          v18 = v46;
        }

LABEL_21:
        objc_autoreleasePoolPop(v24);
        v22 = v22 + 1;
      }

      while (v21 != v22);
      v43 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      v21 = v43;
    }

    while (v43);
  }
}

+ (void)setAllPropertiesForItem:(id)a3 identifier:(id)a4 wrapper:(id)a5 needsInvite:(id)a6 eventStore:(id)a7 calendar:(id)a8
{
  v38 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v38 selfAttendee];
  v19 = v18;
  if (v18)
  {
    [v14 setAttendeeStatus:objc_msgSend(v18 forIdentifier:{"participantStatus"), v13}];
    v20 = [v19 emailAddress];
    [v14 setSelfAttendeeEmail:v20 forIdentifier:v13];
    v21 = [v19 URL];
    v22 = [v21 absoluteString];
    [v14 setSelfAttendeeUUID:v22 forIdentifier:v13];
  }

  v23 = [v38 organizer];
  v24 = v23;
  if (v23 && [v23 isCurrentUser])
  {
    v25 = [v24 emailAddress];
    [v14 setSelfOrganizerEmail:v25 forIdentifier:v13];
    v26 = [v24 URL];
    v27 = [v26 absoluteString];
    [v14 setSelfOrganizerUUID:v27 forIdentifier:v13];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v29 = v38;
  if (isKindOfClass)
  {
    v30 = v38;
    v31 = [v30 startDate];
    [v14 setStartDate:v31 forIdentifier:v13];

    [v14 setDateChanged:objc_msgSend(v30 forIdentifier:{"dateChanged"), v13}];
    [v14 setTimeChanged:objc_msgSend(v30 forIdentifier:{"timeChanged"), v13}];
    [v14 setTitleChanged:objc_msgSend(v30 forIdentifier:{"titleChanged"), v13}];
    [v14 setLocationChanged:objc_msgSend(v30 forIdentifier:{"locationChanged"), v13}];
    [v14 setAttendeeComment:objc_msgSend(v30 forIdentifier:{"attendeeComment"), v13}];
    [v14 setAttendeeStatusFlag:objc_msgSend(v30 forIdentifier:{"attendeeStatus"), v13}];
    v32 = [v30 invitationStatus];
    if ([v15 containsObject:v13])
    {
      [v14 setInvitationStatus:v32 forIdentifier:v13];
    }

    [v14 setProperInvitationStatus:v32 forIdentifier:v13];

    v29 = v38;
  }

  v33 = [v29 externalID];
  if (v33)
  {
    [v14 setExternalID:v33 forIdentifier:v13];
  }

  if (v17)
  {
    v34 = sub_1000624F8(v17);
    if (!v16)
    {
      [v14 setOldCalendarIdentifier:v34];
LABEL_21:

      goto LABEL_22;
    }

    v35 = [v16 calendarIdentifierInRowMappingForEventOrTask:v38];
    if (v35)
    {
      v36 = v14;
      v37 = v35;
    }

    else
    {
      if ([v16 hasRowMappingForEntity:v38])
      {
LABEL_20:

        goto LABEL_21;
      }

      v36 = v14;
      v37 = v34;
    }

    [v36 setOldCalendarIdentifier:v37];
    goto LABEL_20;
  }

LABEL_22:
}

+ (void)setMinimalPropertiesForItem:(id)a3 identifier:(id)a4 wrapper:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectID];
  v11 = [v10 entityType];

  if (v11 == 3)
  {
    v12 = [v7 completionDate];
    if (v12)
    {
      [v9 setTaskCompleted:1];
      [v12 timeIntervalSinceReferenceDate];
      [v9 setTaskCompletionDate:?];
      v15 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        *v17 = v8;
        *&v17[8] = 2114;
        *&v17[10] = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting task with identifier %{public}@ as completed, completion date is %{public}@", &v16, 0x16u);
      }
    }

    goto LABEL_10;
  }

  if (v11 == 2)
  {
    v12 = [v7 selfAttendee];
    if (v12)
    {
      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v16 = 67109378;
        *v17 = [v12 participantStatus];
        *&v17[4] = 2114;
        *&v17[6] = v8;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "self attendee status is 0x%08x for event with identifier %{public}@", &v16, 0x12u);
      }

      [v9 setAttendeeStatus:objc_msgSend(v12 forIdentifier:{"participantStatus"), v8}];
    }

LABEL_10:
  }
}

+ (void)setPropertiesForWrapper:(id)a3 withCalendarItems:(id)a4 needsInvite:(id)a5 sendAllProperties:(BOOL)a6 eventStore:(id)a7 calendar:(id)a8 originalEvent:(id)a9
{
  v11 = a6;
  v14 = a3;
  v15 = a4;
  v43 = a5;
  v42 = a7;
  v41 = a8;
  v38 = a9;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v16)
  {
    v17 = v16;
    v46 = *v48;
    v40 = v14;
    v39 = v11;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 uniqueId];
        if (v21)
        {
          v22 = [v14 settablePropertiesForCalendarItemIdentifier:v21];
          v23 = [v19 objectID];
          v24 = [v23 entityType];

          [v22 setEntityType:v24 == 3];
          if (os_variant_has_internal_diagnostics())
          {
            v25 = [v19 attendees];
            v26 = [v25 count];

            v27 = *(qword_1000D18A8 + 8);
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            if (v11)
            {
              if (v28)
              {
                v29 = v27;
                v30 = [v19 eks_debugDesc];
                v31 = [v19 uniqueIdentifier];
                *buf = 138412802;
                v52 = v30;
                v53 = 2114;
                v54 = v31;
                v55 = 1024;
                v56 = v26;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Setting all properties on %@, identifier: %{public}@, attendees: %d", buf, 0x1Cu);

                v14 = v40;
                v11 = v39;
              }
            }

            else if (v28)
            {
              v35 = v27;
              v36 = [v19 eks_debugDesc];
              v37 = [v19 uniqueIdentifier];
              *buf = 138412802;
              v52 = v36;
              v53 = 2114;
              v54 = v37;
              v55 = 1024;
              v56 = v26;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Setting minimal properties on %@, identifier: %{public}@, attendees: %d", buf, 0x1Cu);

              v11 = v39;
              v14 = v40;
            }
          }

          if (v11)
          {
            [a1 setAllPropertiesForItem:v19 identifier:v21 wrapper:v14 needsInvite:v43 eventStore:v42 calendar:v41];
          }

          else
          {
            [a1 setMinimalPropertiesForItem:v19 identifier:v21 wrapper:v14];
          }
        }

        else
        {
          v32 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = v32;
            v34 = [v19 uniqueId];
            *buf = 138543618;
            v52 = v19;
            v53 = 2114;
            v54 = v34;
            _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Can't create canonical unique identifier for event %{public}@. Identifier returned by CalCalendarItemCopyUniqueIdentifier is %{public}@", buf, 0x16u);

            v11 = v39;
            v14 = v40;
          }
        }

        objc_autoreleasePoolPop(v20);
      }

      v17 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v17);
  }
}

@end