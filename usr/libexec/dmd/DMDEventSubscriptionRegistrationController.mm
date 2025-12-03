@interface DMDEventSubscriptionRegistrationController
- (DMDEventSubscriptionRegistrationController)initWithSubscriptionRegistration:(id)registration streamEventsHandler:(id)handler;
- (id)eventStatusesSinceStartDate:(id)date;
- (void)_updateEventStreams:(id)streams;
- (void)setSchedule:(id)schedule;
- (void)updateWithSubscriptionRegistration:(id)registration;
@end

@implementation DMDEventSubscriptionRegistrationController

- (DMDEventSubscriptionRegistrationController)initWithSubscriptionRegistration:(id)registration streamEventsHandler:(id)handler
{
  registrationCopy = registration;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = DMDEventSubscriptionRegistrationController;
  v8 = [(DMDEventSubscriptionRegistrationController *)&v24 init];
  if (v8)
  {
    payloadMetadata = [registrationCopy payloadMetadata];
    organization = [payloadMetadata organization];
    identifier = [organization identifier];
    organizationIdentifier = v8->_organizationIdentifier;
    v8->_organizationIdentifier = identifier;

    identifier2 = [payloadMetadata identifier];
    payloadIdentifier = v8->_payloadIdentifier;
    v8->_payloadIdentifier = identifier2;

    identifier3 = [registrationCopy identifier];
    identifier = v8->_identifier;
    v8->_identifier = identifier3;

    v17 = objc_retainBlock(handlerCopy);
    streamEventsHandler = v8->_streamEventsHandler;
    v8->_streamEventsHandler = v17;

    v19 = objc_opt_new();
    eventStreamByEventType = v8->_eventStreamByEventType;
    v8->_eventStreamByEventType = v19;

    v21 = objc_opt_new();
    lastDateScheduleElapsed = v8->_lastDateScheduleElapsed;
    v8->_lastDateScheduleElapsed = v21;

    [(DMDEventSubscriptionRegistrationController *)v8 updateWithSubscriptionRegistration:registrationCopy];
  }

  return v8;
}

- (void)updateWithSubscriptionRegistration:(id)registration
{
  registrationCopy = registration;
  if (!registrationCopy)
  {
    sub_100084220(a2, self);
  }

  identifier = [(DMDEventSubscriptionRegistrationController *)self identifier];
  identifier2 = [registrationCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if ((v7 & 1) == 0)
  {
    sub_10008429C(a2, self);
  }

  events = [registrationCopy events];
  [(DMDEventSubscriptionRegistrationController *)self _updateEventStreams:events];

  v9 = [[DMDEventReportingSchedule alloc] initWithScheduleRegistration:registrationCopy];
  [(DMDEventSubscriptionRegistrationController *)self setSchedule:v9];
}

- (void)_updateEventStreams:(id)streams
{
  streamsCopy = streams;
  eventStreamByEventType = [(DMDEventSubscriptionRegistrationController *)self eventStreamByEventType];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = streamsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    *&v8 = 138543362;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        payloadType = [v12 payloadType];
        lowercaseString = [payloadType lowercaseString];

        v15 = [eventStreamByEventType objectForKeyedSubscript:lowercaseString];
        v16 = v15;
        if (v15)
        {
          [v15 updateEvent:v12];
          goto LABEL_14;
        }

        if ([lowercaseString isEqualToString:@"com.apple.event.management.test"])
        {
          v17 = objc_opt_new();
          if (!v17)
          {
            goto LABEL_14;
          }

          v18 = v17;
          [eventStreamByEventType setObject:v17 forKeyedSubscript:lowercaseString];
        }

        else
        {
          v18 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v25 = lowercaseString;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unknown event stream type %{public}@, skipping", buf, 0xCu);
          }
        }

LABEL_14:
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)setSchedule:(id)schedule
{
  scheduleCopy = schedule;
  if (![(DMDEventReportingSchedule *)self->_schedule isEqual:scheduleCopy])
  {
    objc_storeStrong(&self->_schedule, schedule);
    if ([scheduleCopy frequency])
    {
      objc_initWeak(&location, self);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100044714;
      v7[3] = &unk_1000CE898;
      objc_copyWeak(&v8, &location);
      [scheduleCopy startWithScheduleElapsedHandler:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    else
    {
      eventStreamByEventType = [(DMDEventSubscriptionRegistrationController *)self eventStreamByEventType];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000446B0;
      v10[3] = &unk_1000CF158;
      v10[4] = self;
      [eventStreamByEventType enumerateKeysAndObjectsUsingBlock:v10];
    }
  }
}

- (id)eventStatusesSinceStartDate:(id)date
{
  dateCopy = date;
  v5 = objc_opt_new();
  eventStreamByEventType = [(DMDEventSubscriptionRegistrationController *)self eventStreamByEventType];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000448AC;
  v12[3] = &unk_1000CF180;
  v13 = dateCopy;
  v7 = v5;
  v14 = v7;
  v8 = dateCopy;
  [eventStreamByEventType enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

@end