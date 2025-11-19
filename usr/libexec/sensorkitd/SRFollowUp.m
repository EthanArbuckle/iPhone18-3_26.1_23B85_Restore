@interface SRFollowUp
+ (void)initialize;
- (SRFollowUp)init;
- (void)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)pendingFollowUpItemsWithCompletion:(id)a3;
- (void)postFollowUpItem:(id)a3 completion:(id)a4;
@end

@implementation SRFollowUp

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

- (void)postFollowUpItem:(id)a3 completion:(id)a4
{
  v7 = qword_100071AB8;
  if (os_log_type_enabled(qword_100071AB8, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempting to post follow up item: %{public}@", &v8, 0xCu);
  }

  [(FLFollowUpController *)self->_followUpController postFollowUpItem:a3 completion:a4];
}

- (void)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)a3 completion:(id)a4
{
  v7 = qword_100071AB8;
  if (os_log_type_enabled(qword_100071AB8, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempting to clear follow up identifiers: %{public}@", &v8, 0xCu);
  }

  [(FLFollowUpController *)self->_followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:a3 completion:a4];
}

- (void)pendingFollowUpItemsWithCompletion:(id)a3
{
  v5 = qword_100071AB8;
  if (os_log_type_enabled(qword_100071AB8, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = @"com.apple.SensorKit.followup.enableSensorKit";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Retrieving follow items for %{public}@", &v6, 0xCu);
  }

  [(FLFollowUpController *)self->_followUpController pendingFollowUpItemsWithCompletion:a3];
}

@end