@interface MOEventMO
+ (id)managedObjectWithEvent:(id)event inManagedObjectContext:(id)context;
+ (void)setPropertiesOfEventMO:(id)o withEvent:(id)event;
- (id)clonedObjectWithContext:(id)context;
@end

@implementation MOEventMO

+ (id)managedObjectWithEvent:(id)event inManagedObjectContext:(id)context
{
  contextCopy = context;
  eventCopy = event;
  v7 = [[MOEventMO alloc] initWithContext:contextCopy];

  [MOEventMO setPropertiesOfEventMO:v7 withEvent:eventCopy];

  return v7;
}

+ (void)setPropertiesOfEventMO:(id)o withEvent:(id)event
{
  eventCopy = event;
  oCopy = o;
  eventIdentifier = [eventCopy eventIdentifier];
  [oCopy setEventIdentifier:eventIdentifier];

  startDate = [eventCopy startDate];
  [oCopy setStartDate:startDate];

  endDate = [eventCopy endDate];
  [oCopy setEndDate:endDate];

  creationDate = [eventCopy creationDate];
  [oCopy setCreationDate:creationDate];

  sourceCreationDate = [eventCopy sourceCreationDate];
  [oCopy setSourceCreationDate:sourceCreationDate];

  expirationDate = [eventCopy expirationDate];
  [oCopy setExpirationDate:expirationDate];

  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy provider]);
  [oCopy setProvider:v13];

  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy category]);
  [oCopy setCategory:v14];

  identifierFromProvider = [eventCopy identifierFromProvider];
  [oCopy setIdentifierFromProvider:identifierFromProvider];

  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy mode]);
  [oCopy setMode:v16];

  [oCopy setIsInvalid:{objc_msgSend(eventCopy, "isInvalid")}];
  [oCopy setIsHighConfidence:{objc_msgSend(eventCopy, "isHighConfidence")}];
  trends = [eventCopy trends];
  [oCopy setTrends:trends];

  patterns = [eventCopy patterns];
  [oCopy setPatterns:patterns];

  [oCopy setIsGatheringComplete:{objc_msgSend(eventCopy, "isGComplete")}];
  v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy timeAtHomeSubType]);
  [oCopy setTimeAtHomeSubType:v19];

  rehydrationFailCount = [eventCopy rehydrationFailCount];
  v21 = [NSNumber numberWithUnsignedInteger:rehydrationFailCount];
  [oCopy setRehydrationFailCount:v21];
}

- (id)clonedObjectWithContext:(id)context
{
  contextCopy = context;
  v5 = [[MOEvent alloc] initWithEventMO:self];
  v6 = [MOEventMO managedObjectWithEvent:v5 inManagedObjectContext:contextCopy];

  return v6;
}

@end