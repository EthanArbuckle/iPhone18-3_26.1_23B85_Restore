@interface NRTermsEventCollection
- (BOOL)_termsEvent:(id)event isNewerVersionOfTermsEvent:(id)termsEvent;
- (NRTermsEventCollection)init;
- (NRTermsEventCollection)initWithCoder:(id)coder;
- (id)description;
- (void)_removeDuplicatesOfTermsEvent:(id)event;
- (void)addObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRTermsEventCollection

- (id)description
{
  v3 = [@"NRTermsEventCollection {\n" mutableCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_events;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v3 appendString:{@"\t", v12}];
        v10 = [v9 description];
        [v3 appendString:v10];

        [v3 appendString:@"\n"];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"}\n"];

  return v3;
}

- (NRTermsEventCollection)init
{
  v6.receiver = self;
  v6.super_class = NRTermsEventCollection;
  v2 = [(NRTermsEventCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    events = v2->_events;
    v2->_events = v3;
  }

  return v2;
}

- (NRTermsEventCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NRTermsEventCollection *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"events"];
    events = v5->_events;
    v5->_events = v8;

    v5->_termsTextCleared = [coderCopy decodeBoolForKey:@"termsTextCleared"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  events = self->_events;
  coderCopy = coder;
  [coderCopy encodeObject:events forKey:@"events"];
  [coderCopy encodeBool:self->_termsTextCleared forKey:@"termsTextCleared"];
}

- (void)addObject:(id)object
{
  objectCopy = object;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding NRTermsEvent", v12, 2u);
    }
  }

  termsDigest = [objectCopy termsDigest];

  if (!termsDigest)
  {
    v9 = objc_opt_class();
    termsText = [objectCopy termsText];
    v11 = [v9 digestFromData:termsText];
    [objectCopy setTermsDigest:v11];
  }

  [objectCopy saveEventTextToFileIfNeeded];
  [(NRTermsEventCollection *)self _removeDuplicatesOfTermsEvent:objectCopy];
  [(NSMutableArray *)self->_events addObject:objectCopy];
  self->_dirty = 1;
}

- (void)_removeDuplicatesOfTermsEvent:(id)event
{
  eventCopy = event;
  v5 = +[NSMutableIndexSet indexSet];
  events = [(NRTermsEventCollection *)self events];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A8D60;
  v10[3] = &unk_100178968;
  v10[4] = self;
  v11 = eventCopy;
  v12 = v5;
  v7 = v5;
  v8 = eventCopy;
  [events enumerateObjectsUsingBlock:v10];

  events2 = [(NRTermsEventCollection *)self events];
  [events2 removeObjectsAtIndexes:v7];
}

- (BOOL)_termsEvent:(id)event isNewerVersionOfTermsEvent:(id)termsEvent
{
  eventCopy = event;
  termsEventCopy = termsEvent;
  displayDeviceName = [termsEventCopy displayDeviceName];
  displayDeviceName2 = [eventCopy displayDeviceName];
  v9 = [displayDeviceName isEqualToString:displayDeviceName2];

  if (!v9)
  {
    goto LABEL_16;
  }

  displayDeviceSerialNumber = [termsEventCopy displayDeviceSerialNumber];
  displayDeviceSerialNumber2 = [eventCopy displayDeviceSerialNumber];
  v12 = [displayDeviceSerialNumber isEqualToString:displayDeviceSerialNumber2];

  if (!v12)
  {
    goto LABEL_16;
  }

  acknowledgedDeviceName = [termsEventCopy acknowledgedDeviceName];
  acknowledgedDeviceName2 = [eventCopy acknowledgedDeviceName];
  v15 = [acknowledgedDeviceName isEqualToString:acknowledgedDeviceName2];

  if (!v15)
  {
    goto LABEL_16;
  }

  acknowledgedDeviceSerialNumber = [termsEventCopy acknowledgedDeviceSerialNumber];
  acknowledgedDeviceSerialNumber2 = [eventCopy acknowledgedDeviceSerialNumber];
  v18 = [acknowledgedDeviceSerialNumber isEqualToString:acknowledgedDeviceSerialNumber2];

  if (!v18)
  {
    goto LABEL_16;
  }

  documentationID = [termsEventCopy documentationID];
  documentationID2 = [eventCopy documentationID];
  v21 = [documentationID isEqualToString:documentationID2];

  if (!v21)
  {
    goto LABEL_16;
  }

  loggingProcessName = [termsEventCopy loggingProcessName];
  loggingProcessName2 = [eventCopy loggingProcessName];
  v24 = [loggingProcessName isEqualToString:loggingProcessName2];

  if (!v24)
  {
    goto LABEL_16;
  }

  eventType = [termsEventCopy eventType];
  if (eventType != [eventCopy eventType])
  {
    goto LABEL_16;
  }

  presentationLocation = [termsEventCopy presentationLocation];
  if (presentationLocation != [eventCopy presentationLocation])
  {
    goto LABEL_16;
  }

  presentationReason = [termsEventCopy presentationReason];
  if (presentationReason)
  {

    goto LABEL_12;
  }

  presentationReason2 = [eventCopy presentationReason];

  if (presentationReason2)
  {
LABEL_12:
    presentationReason3 = [termsEventCopy presentationReason];
    presentationReason4 = [eventCopy presentationReason];
    v31 = [presentationReason3 isEqualToString:presentationReason4];

    if (v31)
    {
      goto LABEL_13;
    }

LABEL_16:
    v38 = 0;
    goto LABEL_17;
  }

LABEL_13:
  termsDigest = [termsEventCopy termsDigest];

  if (!termsDigest)
  {
    v33 = objc_opt_class();
    termsText = [termsEventCopy termsText];
    v35 = [v33 digestFromData:termsText];
    [termsEventCopy setTermsDigest:v35];
  }

  termsDigest2 = [termsEventCopy termsDigest];
  termsDigest3 = [eventCopy termsDigest];
  v38 = [termsDigest2 isEqualToString:termsDigest3];

LABEL_17:
  return v38;
}

@end