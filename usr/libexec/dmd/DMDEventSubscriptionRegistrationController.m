@interface DMDEventSubscriptionRegistrationController
- (DMDEventSubscriptionRegistrationController)initWithSubscriptionRegistration:(id)a3 streamEventsHandler:(id)a4;
- (id)eventStatusesSinceStartDate:(id)a3;
- (void)_updateEventStreams:(id)a3;
- (void)setSchedule:(id)a3;
- (void)updateWithSubscriptionRegistration:(id)a3;
@end

@implementation DMDEventSubscriptionRegistrationController

- (DMDEventSubscriptionRegistrationController)initWithSubscriptionRegistration:(id)a3 streamEventsHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = DMDEventSubscriptionRegistrationController;
  v8 = [(DMDEventSubscriptionRegistrationController *)&v24 init];
  if (v8)
  {
    v9 = [v6 payloadMetadata];
    v10 = [v9 organization];
    v11 = [v10 identifier];
    organizationIdentifier = v8->_organizationIdentifier;
    v8->_organizationIdentifier = v11;

    v13 = [v9 identifier];
    payloadIdentifier = v8->_payloadIdentifier;
    v8->_payloadIdentifier = v13;

    v15 = [v6 identifier];
    identifier = v8->_identifier;
    v8->_identifier = v15;

    v17 = objc_retainBlock(v7);
    streamEventsHandler = v8->_streamEventsHandler;
    v8->_streamEventsHandler = v17;

    v19 = objc_opt_new();
    eventStreamByEventType = v8->_eventStreamByEventType;
    v8->_eventStreamByEventType = v19;

    v21 = objc_opt_new();
    lastDateScheduleElapsed = v8->_lastDateScheduleElapsed;
    v8->_lastDateScheduleElapsed = v21;

    [(DMDEventSubscriptionRegistrationController *)v8 updateWithSubscriptionRegistration:v6];
  }

  return v8;
}

- (void)updateWithSubscriptionRegistration:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    sub_100084220(a2, self);
  }

  v5 = [(DMDEventSubscriptionRegistrationController *)self identifier];
  v6 = [v10 identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    sub_10008429C(a2, self);
  }

  v8 = [v10 events];
  [(DMDEventSubscriptionRegistrationController *)self _updateEventStreams:v8];

  v9 = [[DMDEventReportingSchedule alloc] initWithScheduleRegistration:v10];
  [(DMDEventSubscriptionRegistrationController *)self setSchedule:v9];
}

- (void)_updateEventStreams:(id)a3
{
  v4 = a3;
  v5 = [(DMDEventSubscriptionRegistrationController *)self eventStreamByEventType];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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
        v13 = [v12 payloadType];
        v14 = [v13 lowercaseString];

        v15 = [v5 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          [v15 updateEvent:v12];
          goto LABEL_14;
        }

        if ([v14 isEqualToString:@"com.apple.event.management.test"])
        {
          v17 = objc_opt_new();
          if (!v17)
          {
            goto LABEL_14;
          }

          v18 = v17;
          [v5 setObject:v17 forKeyedSubscript:v14];
        }

        else
        {
          v18 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v25 = v14;
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

- (void)setSchedule:(id)a3
{
  v5 = a3;
  if (![(DMDEventReportingSchedule *)self->_schedule isEqual:v5])
  {
    objc_storeStrong(&self->_schedule, a3);
    if ([v5 frequency])
    {
      objc_initWeak(&location, self);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100044714;
      v7[3] = &unk_1000CE898;
      objc_copyWeak(&v8, &location);
      [v5 startWithScheduleElapsedHandler:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    else
    {
      v6 = [(DMDEventSubscriptionRegistrationController *)self eventStreamByEventType];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000446B0;
      v10[3] = &unk_1000CF158;
      v10[4] = self;
      [v6 enumerateKeysAndObjectsUsingBlock:v10];
    }
  }
}

- (id)eventStatusesSinceStartDate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(DMDEventSubscriptionRegistrationController *)self eventStreamByEventType];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000448AC;
  v12[3] = &unk_1000CF180;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

@end