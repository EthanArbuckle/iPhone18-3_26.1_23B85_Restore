@interface MOTimeMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOTimeMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOTimeMO alloc] initWithContext:contextCopy];

  identifier = [objectCopy identifier];
  [(MOTimeMO *)v7 setIdentifier:identifier];

  [objectCopy timestamp];
  [(MOTimeMO *)v7 setTimestamp:?];
  timeString = [objectCopy timeString];
  [(MOTimeMO *)v7 setTimeString:timeString];

  timeZone = [objectCopy timeZone];
  [(MOTimeMO *)v7 setTimeZone:timeZone];

  timeTag = [objectCopy timeTag];
  [(MOTimeMO *)v7 setTimeTag:timeTag];

  return v7;
}

@end