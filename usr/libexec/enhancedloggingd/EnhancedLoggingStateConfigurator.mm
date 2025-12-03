@interface EnhancedLoggingStateConfigurator
- (EnhancedLoggingStateConfigurator)initWithParameters:(id)parameters ticket:(id)ticket;
- (id)aggregateMetadata;
- (id)createQueueEntryInputDictionary:(id)dictionary;
- (id)formatNewQueueEntries:(BOOL *)entries;
- (id)getDeviceSelectionMap;
- (id)getTopLevelPrivacyPolicy;
- (void)addEnrollmentTicketNumber:(id)number;
- (void)addPayload:(id)payload;
- (void)addServerSuppliedMetadata:(id)metadata;
- (void)finishWithStatusCode:(int64_t)code metadata:(id)metadata;
- (void)injectDefaultValuesToParameters:(id)parameters bundleID:(id)d;
- (void)startWithCompletionHandler:(id)handler;
- (void)unenroll;
- (void)updateEnhancedLoggingStateWithNewQueueEntries:(id)entries commit:(BOOL)commit;
@end

@implementation EnhancedLoggingStateConfigurator

- (EnhancedLoggingStateConfigurator)initWithParameters:(id)parameters ticket:(id)ticket
{
  parametersCopy = parameters;
  ticketCopy = ticket;
  v13.receiver = self;
  v13.super_class = EnhancedLoggingStateConfigurator;
  v8 = [(EnhancedLoggingStateConfigurator *)&v13 init];
  if (v8)
  {
    v9 = [[EnhancedLoggingStateInputs alloc] initWithParameters:parametersCopy];
    inputs = v8->_inputs;
    v8->_inputs = v9;

    if (!v8->_inputs)
    {
      v11 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v8->_ticketNumber, ticket);
  }

  v11 = v8;
LABEL_6:

  return v11;
}

- (void)startWithCompletionHandler:(id)handler
{
  [(EnhancedLoggingStateConfigurator *)self setCompletionHandler:handler];
  v4 = +[ELSManager sharedManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000028A8;
  v5[3] = &unk_1000450D8;
  v5[4] = self;
  [v4 refreshWithCompletion:v5];
}

- (void)finishWithStatusCode:(int64_t)code metadata:(id)metadata
{
  metadataCopy = metadata;
  completionHandler = [(EnhancedLoggingStateConfigurator *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(EnhancedLoggingStateConfigurator *)self completionHandler];
    (completionHandler2)[2](completionHandler2, code, metadataCopy);
  }

  [(EnhancedLoggingStateConfigurator *)self setCompletionHandler:0];
}

- (void)unenroll
{
  v3 = +[ELSManager sharedManager];
  snapshot = [v3 snapshot];
  status = [snapshot status];

  if (status)
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

- (id)formatNewQueueEntries:(BOOL *)entries
{
  v5 = +[ELSManager sharedManager];
  snapshot = [v5 snapshot];
  queue = [snapshot queue];

  v8 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  inputs = [(EnhancedLoggingStateConfigurator *)self inputs];
  queue2 = [inputs queue];

  v11 = [queue2 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(queue2);
        }

        v15 = [(EnhancedLoggingStateConfigurator *)self createQueueEntryInputDictionary:*(*(&v19 + 1) + 8 * i)];
        if ([queue containsObject:v15])
        {
          v16 = sub_1000026D0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000357C0(v23, v15, &v24, v16);
          }

          [(EnhancedLoggingStateConfigurator *)self finishWithStatusCode:-3 metadata:0];
          *entries = 0;
LABEL_14:

          goto LABEL_15;
        }

        if (!*entries)
        {
          goto LABEL_14;
        }

        [v8 addObject:v15];
      }

      v12 = [queue2 countByEnumeratingWithState:&v19 objects:v25 count:16];
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

- (id)createQueueEntryInputDictionary:(id)dictionary
{
  v4 = ELSSubDefaultQueueEntryType;
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:v4];
  v7 = [dictionaryCopy objectForKeyedSubscript:ELSParameterPayload];
  v8 = [dictionaryCopy objectForKeyedSubscript:ELSSubDefaultQueueEntryExecuteAfterDuration];
  v9 = [dictionaryCopy objectForKeyedSubscript:ELSSubDefaultQueueEntryRetry];
  v31 = [dictionaryCopy objectForKeyedSubscript:ELSSubDefaultQueueEntryPlatform];

  v10 = [ELSWhitelist findEntryForParameterName:v6];
  bundleIdentifier = [v10 bundleIdentifier];
  v12 = +[NSMutableDictionary dictionary];
  v33 = v7;
  if (v7)
  {
    inputs = [(EnhancedLoggingStateConfigurator *)self inputs];
    parameterPayloads = [inputs parameterPayloads];

    if (parameterPayloads)
    {
      inputs2 = [(EnhancedLoggingStateConfigurator *)self inputs];
      parameterPayloads2 = [inputs2 parameterPayloads];
      v17 = [parameterPayloads2 objectForKeyedSubscript:v33];

      if (v17)
      {
        [v12 addEntriesFromDictionary:v17];
      }
    }

    inputs3 = [(EnhancedLoggingStateConfigurator *)self inputs];
    specificationPayloads = [inputs3 specificationPayloads];

    if (specificationPayloads)
    {
      inputs4 = [(EnhancedLoggingStateConfigurator *)self inputs];
      specificationPayloads2 = [inputs4 specificationPayloads];
      v22 = [specificationPayloads2 objectForKeyedSubscript:v33];

      if (v22)
      {
        [v12 addEntriesFromDictionary:v22];
      }
    }
  }

  [(EnhancedLoggingStateConfigurator *)self injectDefaultValuesToParameters:v12 bundleID:bundleIdentifier, v31];
  if (v8)
  {
    [v8 doubleValue];
    v24 = v23;
    if (v9)
    {
LABEL_12:
      bOOLValue = [v9 BOOLValue];
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

  bOOLValue = [v10 retry];
LABEL_15:
  v26 = bOOLValue;
  v27 = [ELSQueueEntry alloc];
  v28 = [NSDictionary dictionaryWithDictionary:v12];
  v29 = [v27 initWithType:bundleIdentifier typeName:v6 parameters:v28 executeAfterDuration:v26 retry:v32 platform:v24];

  return v29;
}

- (void)injectDefaultValuesToParameters:(id)parameters bundleID:(id)d
{
  parametersCopy = parameters;
  if ([d isEqualToString:@"com.apple.DiagnosticExtensions.sysdiagnose"])
  {
    v5 = [parametersCopy objectForKeyedSubscript:@"shouldDisplayTarBall"];

    if (!v5)
    {
      [parametersCopy setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldDisplayTarBall"];
    }
  }
}

- (void)updateEnhancedLoggingStateWithNewQueueEntries:(id)entries commit:(BOOL)commit
{
  commitCopy = commit;
  entriesCopy = entries;
  if (!commitCopy)
  {
    goto LABEL_5;
  }

  v7 = +[ELSManager sharedManager];
  snapshot = [v7 snapshot];
  queue = [snapshot queue];
  if ([queue count])
  {

LABEL_5:
    v11 = +[ELSManager sharedManager];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000033AC;
    v21[3] = &unk_100045168;
    v24 = commitCopy;
    v22 = entriesCopy;
    selfCopy = self;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000357C;
    v20[3] = &unk_100045140;
    v20[4] = self;
    [v11 transactionWithBlock:v21 completion:v20];

    goto LABEL_6;
  }

  v10 = [entriesCopy count];

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

- (void)addEnrollmentTicketNumber:(id)number
{
  numberCopy = number;
  ticketNumber = [(EnhancedLoggingStateConfigurator *)self ticketNumber];

  if (ticketNumber)
  {
    ticketNumber2 = [(EnhancedLoggingStateConfigurator *)self ticketNumber];
    [numberCopy setObject:ticketNumber2 forKeyedSubscript:ELSMetadataEnrollmentTicketNumber];
  }
}

- (void)addServerSuppliedMetadata:(id)metadata
{
  metadataCopy = metadata;
  inputs = [(EnhancedLoggingStateConfigurator *)self inputs];
  metadata = [inputs metadata];

  if (metadata)
  {
    inputs2 = [(EnhancedLoggingStateConfigurator *)self inputs];
    metadata2 = [inputs2 metadata];
    allKeys = [metadata2 allKeys];
    v9 = ELSMetadataGigafilesToken;
    v10 = [allKeys containsObject:ELSMetadataGigafilesToken];

    if (v10)
    {
      inputs3 = [(EnhancedLoggingStateConfigurator *)self inputs];
      metadata3 = [inputs3 metadata];
      v13 = [metadata3 objectForKeyedSubscript:v9];
      [metadataCopy setObject:v13 forKeyedSubscript:v9];
    }
  }
}

- (void)addPayload:(id)payload
{
  payloadCopy = payload;
  inputs = [(EnhancedLoggingStateConfigurator *)self inputs];
  queue = [inputs queue];
  if (queue)
  {
    v7 = queue;
    inputs2 = [(EnhancedLoggingStateConfigurator *)self inputs];
    queue2 = [inputs2 queue];
    v10 = [queue2 count];

    if (v10)
    {
      inputs3 = [(EnhancedLoggingStateConfigurator *)self inputs];
      rawParameters = [inputs3 rawParameters];
      v16 = 0;
      v13 = [NSJSONSerialization dataWithJSONObject:rawParameters options:1 error:&v16];
      v14 = v16;

      if (!v14 && v13)
      {
        v15 = [[NSString alloc] initWithData:v13 encoding:4];
        [payloadCopy setObject:v15 forKeyedSubscript:ELSMetadataPayload];
      }
    }
  }

  else
  {
  }
}

- (id)getTopLevelPrivacyPolicy
{
  inputs = [(EnhancedLoggingStateConfigurator *)self inputs];
  topLevelPrivacyPolicy = [inputs topLevelPrivacyPolicy];

  if (topLevelPrivacyPolicy)
  {
    inputs2 = [(EnhancedLoggingStateConfigurator *)self inputs];
    topLevelPrivacyPolicy2 = [inputs2 topLevelPrivacyPolicy];
    v7 = [topLevelPrivacyPolicy2 objectForKey:ELSPrivacyPolicyDescriptionPolicyKey];

    inputs3 = [(EnhancedLoggingStateConfigurator *)self inputs];
    topLevelPrivacyPolicy3 = [inputs3 topLevelPrivacyPolicy];
    v10 = [topLevelPrivacyPolicy3 objectForKey:ELSPrivacyPolicyDescriptionSuiteNameKey];

    inputs4 = [(EnhancedLoggingStateConfigurator *)self inputs];
    topLevelPrivacyPolicy4 = [inputs4 topLevelPrivacyPolicy];
    v13 = [topLevelPrivacyPolicy4 objectForKey:ELSPrivacyPolicyDescriptionSensitiveInformationKey];

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
  inputs = [(EnhancedLoggingStateConfigurator *)self inputs];
  deviceSelection = [inputs deviceSelection];

  return deviceSelection;
}

@end