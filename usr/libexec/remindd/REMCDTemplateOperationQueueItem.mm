@interface REMCDTemplateOperationQueueItem
- (NSString)description;
- (REMCDTemplateOperationQueueItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation REMCDTemplateOperationQueueItem

- (NSString)description
{
  selfCopy = self;
  sub_100237ED4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (REMCDTemplateOperationQueueItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(REMCDTemplateOperationQueueItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end