@interface CKGenericAppInteractionProcessor
- (BOOL)processInteraction:(id)interaction bundleId:(id)id;
@end

@implementation CKGenericAppInteractionProcessor

- (BOOL)processInteraction:(id)interaction bundleId:(id)id
{
  idCopy = id;
  interactionCopy = interaction;
  intent = [interactionCopy intent];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);

  idCopy = [NSString stringWithFormat:@"%@%@:%@", @"duet:app/intents:", v9, idCopy];

  dateInterval = [interactionCopy dateInterval];
  startDate = [dateInterval startDate];

  dateInterval2 = [interactionCopy dateInterval];

  endDate = [dateInterval2 endDate];

  v15 = +[CKDaemon sharedDaemon];
  [v15 recordEventWithIdentifier:idCopy startDate:startDate endDate:endDate metadata:&__NSDictionary0__struct toStoreWithIdentifier:@"history" completionHandler:&stru_100018D38];

  return 1;
}

@end