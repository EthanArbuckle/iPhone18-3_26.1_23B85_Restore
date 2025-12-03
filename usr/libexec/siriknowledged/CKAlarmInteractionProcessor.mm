@interface CKAlarmInteractionProcessor
- (BOOL)processInteraction:(id)interaction bundleId:(id)id;
@end

@implementation CKAlarmInteractionProcessor

- (BOOL)processInteraction:(id)interaction bundleId:(id)id
{
  idCopy = id;
  intent = [interaction intent];
  verb = [intent verb];
  parametersByName = [intent parametersByName];
  v9 = [parametersByName objectForKey:@"repeat"];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[CKAlarmInteractionProcessor processInteraction:bundleId:]";
      v12 = "%s Ignoring non-Recurring events";
      goto LABEL_14;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if (([verb isEqualToString:@"Delete"] & 1) != 0 || objc_msgSend(verb, "isEqualToString:", @"Disable"))
  {
    v11 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[CKAlarmInteractionProcessor processInteraction:bundleId:]";
      v12 = "%s Ignoring Alarm Delete or Disable events";
LABEL_14:
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v12, buf, 0xCu);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v15 = [NSString stringWithFormat:@"%@#%@%@", @"RecurringAlarm", @"RecurringAlarmApp", verb];
  v16 = +[NSDate date];
  if (idCopy)
  {
    v17 = idCopy;
  }

  else
  {
    v17 = &stru_100019038;
  }

  v20 = @"bundleId";
  v21 = v17;
  v13 = 1;
  v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v19 = +[CKDaemon sharedDaemon];
  [v19 recordEventWithIdentifier:v15 startDate:v16 endDate:v16 metadata:v18 toStoreWithIdentifier:@"synched" completionHandler:&stru_100018648];

LABEL_8:
  return v13;
}

@end