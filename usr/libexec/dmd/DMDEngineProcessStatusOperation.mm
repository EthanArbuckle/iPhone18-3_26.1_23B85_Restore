@interface DMDEngineProcessStatusOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context;
@end

@implementation DMDEngineProcessStatusOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context
{
  v4 = +[NSNotificationCenter defaultCenter];
  organizationIdentifier = [(DMDEngineProcessStatusOperation *)self organizationIdentifier];
  [v4 postNotificationName:@"DMDConfigurationSourceStatusDidChange" object:organizationIdentifier];

  [(DMDEngineProcessStatusOperation *)self setResultObject:0];
}

@end