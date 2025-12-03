@interface SRFollowUp
+ (void)initialize;
- (SRFollowUp)init;
- (void)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)identifiers completion:(id)completion;
- (void)dealloc;
- (void)pendingFollowUpItemsWithCompletion:(id)completion;
- (void)postFollowUpItem:(id)item completion:(id)completion;
@end

@implementation SRFollowUp

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071AB8 = os_log_create("com.apple.SensorKit", "SRFollowUp");
  }
}

- (SRFollowUp)init
{
  v5.receiver = self;
  v5.super_class = SRFollowUp;
  result = [(SRFollowUp *)&v5 init];
  if (result)
  {
    v3 = result;
    v4 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.sensorkitd"];
    result = v3;
    v3->_followUpController = v4;
  }

  return result;
}

- (void)dealloc
{
  self->_followUpController = 0;
  v3.receiver = self;
  v3.super_class = SRFollowUp;
  [(SRFollowUp *)&v3 dealloc];
}

- (void)postFollowUpItem:(id)item completion:(id)completion
{
  v7 = qword_100071AB8;
  if (os_log_type_enabled(qword_100071AB8, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    itemCopy = item;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempting to post follow up item: %{public}@", &v8, 0xCu);
  }

  [(FLFollowUpController *)self->_followUpController postFollowUpItem:item completion:completion];
}

- (void)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)identifiers completion:(id)completion
{
  v7 = qword_100071AB8;
  if (os_log_type_enabled(qword_100071AB8, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    identifiersCopy = identifiers;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempting to clear follow up identifiers: %{public}@", &v8, 0xCu);
  }

  [(FLFollowUpController *)self->_followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:identifiers completion:completion];
}

- (void)pendingFollowUpItemsWithCompletion:(id)completion
{
  v5 = qword_100071AB8;
  if (os_log_type_enabled(qword_100071AB8, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = @"com.apple.SensorKit.followup.enableSensorKit";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Retrieving follow items for %{public}@", &v6, 0xCu);
  }

  [(FLFollowUpController *)self->_followUpController pendingFollowUpItemsWithCompletion:completion];
}

@end