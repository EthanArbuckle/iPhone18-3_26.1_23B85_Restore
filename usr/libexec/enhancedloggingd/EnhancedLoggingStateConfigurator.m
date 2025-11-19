@interface EnhancedLoggingStateConfigurator
- (EnhancedLoggingStateConfigurator)initWithParameters:(id)a3 ticket:(id)a4;
- (id)aggregateMetadata;
- (id)createQueueEntryInputDictionary:(id)a3;
- (id)formatNewQueueEntries:(BOOL *)a3;
- (id)getDeviceSelectionMap;
- (id)getTopLevelPrivacyPolicy;
- (void)addEnrollmentTicketNumber:(id)a3;
- (void)addPayload:(id)a3;
- (void)addServerSuppliedMetadata:(id)a3;
- (void)finishWithStatusCode:(int64_t)a3 metadata:(id)a4;
- (void)injectDefaultValuesToParameters:(id)a3 bundleID:(id)a4;
- (void)startWithCompletionHandler:(id)a3;
- (void)unenroll;
- (void)updateEnhancedLoggingStateWithNewQueueEntries:(id)a3 commit:(BOOL)a4;
@end

@implementation EnhancedLoggingStateConfigurator

- (EnhancedLoggingStateConfigurator)initWithParameters:(id)a3 ticket:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = EnhancedLoggingStateConfigurator;
  v8 = [(EnhancedLoggingStateConfigurator *)&v13 init];
  if (v8)
  {
    v9 = [[EnhancedLoggingStateInputs alloc] initWithParameters:v6];
    inputs = v8->_inputs;
    v8->_inputs = v9;

    if (!v8->_inputs)
    {
      v11 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v8->_ticketNumber, a4);
  }

  v11 = v8;
LABEL_6:

  return v11;
}

- (void)startWithCompletionHandler:(id)a3
{
  [(EnhancedLoggingStateConfigurator *)self setCompletionHandler:a3];
  v4 = +[ELSManager sharedManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000028A8;
  v5[3] = &unk_1000450D8;
  v5[4] = self;
  [v4 refreshWithCompletion:v5];
}

- (void)finishWithStatusCode:(int64_t)a3 metadata:(id)a4
{
  v8 = a4;
  v6 = [(EnhancedLoggingStateConfigurator *)self completionHandler];

  if (v6)
  {
    v7 = [(EnhancedLoggingStateConfigurator *)self completionHandler];
    (v7)[2](v7, a3, v8);
  }

  [(EnhancedLoggingStateConfigurator *)self setCompletionHandler:0];
}

- (void)unenroll
{
  v3 = +[ELSManager sharedManager];
  v4 = [v3 snapshot];
  v5 = [v4 status];

  if (v5)
  {
    v6 = +[ELSManager sharedManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100002C60;
    v15[3] = &unk_100045140;
    v15[4] = self;
    [v6 transactionWithBlock:&stru_100045118 completion:v15];
  }

  else
  {
    v7 = sub_1000026D0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100035788(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    [(EnhancedLoggingStateConfigurator *)self finishWithStatusCode:-2 metadata:0];
  }
}

- (id)formatNewQueueEntries:(BOOL *)a3
{
  v5 = +[ELSManager sharedManager];
  v6 = [v5 snapshot];
  v7 = [v6 queue];

  v8 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(EnhancedLoggingStateConfigurator *)self inputs];
  v10 = [v9 queue];

  v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(EnhancedLoggingStateConfigurator *)self createQueueEntryInputDictionary:*(*(&v19 + 1) + 8 * i)];
        if ([v7 containsObject:v15])
        {
          v16 = sub_1000026D0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000357C0(v23, v15, &v24, v16);
          }

          [(EnhancedLoggingStateConfigurator *)self finishWithStatusCode:-3 metadata:0];
          *a3 = 0;
LABEL_14:

          goto LABEL_15;
        }

        if (!*a3)
        {
          goto LABEL_14;
        }

        [v8 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v17 = [NSArray arrayWithArray:v8];

  return v17;
}

- (id)createQueueEntryInputDictionary:(id)a3
{
  v4 = ELSSubDefaultQueueEntryType;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:ELSParameterPayload];
  v8 = [v5 objectForKeyedSubscript:ELSSubDefaultQueueEntryExecuteAfterDuration];
  v9 = [v5 objectForKeyedSubscript:ELSSubDefaultQueueEntryRetry];
  v31 = [v5 objectForKeyedSubscript:ELSSubDefaultQueueEntryPlatform];

  v10 = [ELSWhitelist findEntryForParameterName:v6];
  v11 = [v10 bundleIdentifier];
  v12 = +[NSMutableDictionary dictionary];
  v33 = v7;
  if (v7)
  {
    v13 = [(EnhancedLoggingStateConfigurator *)self inputs];
    v14 = [v13 parameterPayloads];

    if (v14)
    {
      v15 = [(EnhancedLoggingStateConfigurator *)self inputs];
      v16 = [v15 parameterPayloads];
      v17 = [v16 objectForKeyedSubscript:v33];

      if (v17)
      {
        [v12 addEntriesFromDictionary:v17];
      }
    }

    v18 = [(EnhancedLoggingStateConfigurator *)self inputs];
    v19 = [v18 specificationPayloads];

    if (v19)
    {
      v20 = [(EnhancedLoggingStateConfigurator *)self inputs];
      v21 = [v20 specificationPayloads];
      v22 = [v21 objectForKeyedSubscript:v33];

      if (v22)
      {
        [v12 addEntriesFromDictionary:v22];
      }
    }
  }

  [(EnhancedLoggingStateConfigurator *)self injectDefaultValuesToParameters:v12 bundleID:v11, v31];
  if (v8)
  {
    [v8 doubleValue];
    v24 = v23;
    if (v9)
    {
LABEL_12:
      v25 = [v9 BOOLValue];
      goto LABEL_15;
    }
  }

  else
  {
    v24 = 0.0;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  v25 = [v10 retry];
LABEL_15:
  v26 = v25;
  v27 = [ELSQueueEntry alloc];
  v28 = [NSDictionary dictionaryWithDictionary:v12];
  v29 = [v27 initWithType:v11 typeName:v6 parameters:v28 executeAfterDuration:v26 retry:v32 platform:v24];

  return v29;
}

- (void)injectDefaultValuesToParameters:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"com.apple.DiagnosticExtensions.sysdiagnose"])
  {
    v5 = [v6 objectForKeyedSubscript:@"shouldDisplayTarBall"];

    if (!v5)
    {
      [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldDisplayTarBall"];
    }
  }
}

- (void)updateEnhancedLoggingStateWithNewQueueEntries:(id)a3 commit:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v4)
  {
    goto LABEL_5;
  }

  v7 = +[ELSManager sharedManager];
  v8 = [v7 snapshot];
  v9 = [v8 queue];
  if ([v9 count])
  {

LABEL_5:
    v11 = +[ELSManager sharedManager];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000033AC;
    v21[3] = &unk_100045168;
    v24 = v4;
    v22 = v6;
    v23 = self;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000357C;
    v20[3] = &unk_100045140;
    v20[4] = self;
    [v11 transactionWithBlock:v21 completion:v20];

    goto LABEL_6;
  }

  v10 = [v6 count];

  if (v10)
  {
    goto LABEL_5;
  }

  v12 = sub_1000026D0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100035838(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [(EnhancedLoggingStateConfigurator *)self finishWithStatusCode:-4 metadata:0];
LABEL_6:
}

- (id)aggregateMetadata
{
  v3 = +[NSMutableDictionary dictionary];
  [(EnhancedLoggingStateConfigurator *)self addEnrollmentTicketNumber:v3];
  [(EnhancedLoggingStateConfigurator *)self addServerSuppliedMetadata:v3];
  [(EnhancedLoggingStateConfigurator *)self addPayload:v3];
  v4 = [NSDictionary dictionaryWithDictionary:v3];

  return v4;
}

- (void)addEnrollmentTicketNumber:(id)a3
{
  v6 = a3;
  v4 = [(EnhancedLoggingStateConfigurator *)self ticketNumber];

  if (v4)
  {
    v5 = [(EnhancedLoggingStateConfigurator *)self ticketNumber];
    [v6 setObject:v5 forKeyedSubscript:ELSMetadataEnrollmentTicketNumber];
  }
}

- (void)addServerSuppliedMetadata:(id)a3
{
  v14 = a3;
  v4 = [(EnhancedLoggingStateConfigurator *)self inputs];
  v5 = [v4 metadata];

  if (v5)
  {
    v6 = [(EnhancedLoggingStateConfigurator *)self inputs];
    v7 = [v6 metadata];
    v8 = [v7 allKeys];
    v9 = ELSMetadataGigafilesToken;
    v10 = [v8 containsObject:ELSMetadataGigafilesToken];

    if (v10)
    {
      v11 = [(EnhancedLoggingStateConfigurator *)self inputs];
      v12 = [v11 metadata];
      v13 = [v12 objectForKeyedSubscript:v9];
      [v14 setObject:v13 forKeyedSubscript:v9];
    }
  }
}

- (void)addPayload:(id)a3
{
  v4 = a3;
  v5 = [(EnhancedLoggingStateConfigurator *)self inputs];
  v6 = [v5 queue];
  if (v6)
  {
    v7 = v6;
    v8 = [(EnhancedLoggingStateConfigurator *)self inputs];
    v9 = [v8 queue];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [(EnhancedLoggingStateConfigurator *)self inputs];
      v12 = [v11 rawParameters];
      v16 = 0;
      v13 = [NSJSONSerialization dataWithJSONObject:v12 options:1 error:&v16];
      v14 = v16;

      if (!v14 && v13)
      {
        v15 = [[NSString alloc] initWithData:v13 encoding:4];
        [v4 setObject:v15 forKeyedSubscript:ELSMetadataPayload];
      }
    }
  }

  else
  {
  }
}

- (id)getTopLevelPrivacyPolicy
{
  v3 = [(EnhancedLoggingStateConfigurator *)self inputs];
  v4 = [v3 topLevelPrivacyPolicy];

  if (v4)
  {
    v5 = [(EnhancedLoggingStateConfigurator *)self inputs];
    v6 = [v5 topLevelPrivacyPolicy];
    v7 = [v6 objectForKey:ELSPrivacyPolicyDescriptionPolicyKey];

    v8 = [(EnhancedLoggingStateConfigurator *)self inputs];
    v9 = [v8 topLevelPrivacyPolicy];
    v10 = [v9 objectForKey:ELSPrivacyPolicyDescriptionSuiteNameKey];

    v11 = [(EnhancedLoggingStateConfigurator *)self inputs];
    v12 = [v11 topLevelPrivacyPolicy];
    v13 = [v12 objectForKey:ELSPrivacyPolicyDescriptionSensitiveInformationKey];

    v14 = [[ELSPrivacyPolicyDescription alloc] initWithPolicyKey:v7 andSuiteNameKey:v10 andSensitiveInformationKey:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)getDeviceSelectionMap
{
  v2 = [(EnhancedLoggingStateConfigurator *)self inputs];
  v3 = [v2 deviceSelection];

  return v3;
}

@end