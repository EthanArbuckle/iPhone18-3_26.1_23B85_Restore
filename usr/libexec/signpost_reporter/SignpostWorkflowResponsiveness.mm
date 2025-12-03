@interface SignpostWorkflowResponsiveness
+ (id)allWorkflows;
+ (id)workflowWithName:(id)name;
- (BOOL)signpostInAllowList:(id)list;
- (SignpostWorkflowResponsiveness)initWithWorkflowEventTracker:(id)tracker;
- (id)newConfiguredExtractor;
- (void)addSubsystemCategoriesOfInterestToAllowlist:(id)allowlist;
- (void)handleDeviceReboot;
- (void)handleSignpostEmitEvent:(id)event;
- (void)handleSignpostInterval:(id)interval;
- (void)handleSignpostIntervalBegin:(id)begin;
@end

@implementation SignpostWorkflowResponsiveness

- (SignpostWorkflowResponsiveness)initWithWorkflowEventTracker:(id)tracker
{
  trackerCopy = tracker;
  v9.receiver = self;
  v9.super_class = SignpostWorkflowResponsiveness;
  v6 = [(SignpostWorkflowResponsiveness *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workflowEventTracker, tracker);
  }

  return v7;
}

+ (id)allWorkflows
{
  v2 = +[WRWorkflow allWorkflows];
  if ([v2 count])
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [[WRWorkflowEventTracker alloc] initForReadbackWithWorkflow:*(*(&v14 + 1) + 8 * i) eventCompletionCallback:&stru_100014620];
          v10 = [[SignpostWorkflowResponsiveness alloc] initWithWorkflowEventTracker:v9];
          if (v10)
          {
            [v3 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v11 = [v3 copy];
    v2 = v13;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)workflowWithName:(id)name
{
  v3 = [WRWorkflow workflowWithName:name];
  if (v3)
  {
    v4 = [[WRWorkflowEventTracker alloc] initForReadbackWithWorkflow:v3 eventCompletionCallback:&stru_100014640];
    v5 = [[SignpostWorkflowResponsiveness alloc] initWithWorkflowEventTracker:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addSubsystemCategoriesOfInterestToAllowlist:(id)allowlist
{
  allowlistCopy = allowlist;
  workflowEventTracker = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
  workflow = [workflowEventTracker workflow];
  allowListForAllSignposts = [workflow allowListForAllSignposts];
  [allowlistCopy addAllowlist:allowListForAllSignposts];
}

- (BOOL)signpostInAllowList:(id)list
{
  listCopy = list;
  workflowEventTracker = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
  workflow = [workflowEventTracker workflow];
  allowListForAllSignposts = [workflow allowListForAllSignposts];
  subsystem = [listCopy subsystem];
  category = [listCopy category];

  LOBYTE(listCopy) = [allowListForAllSignposts passesSubsystem:subsystem category:category];
  return listCopy;
}

- (void)handleDeviceReboot
{
  workflowEventTracker = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
  [workflowEventTracker reset];
}

- (void)handleSignpostIntervalBegin:(id)begin
{
  beginCopy = begin;
  if ([(SignpostWorkflowResponsiveness *)self signpostInAllowList:?])
  {
    workflowEventTracker = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
    [workflowEventTracker handleSignpost:beginCopy];
  }
}

- (void)handleSignpostEmitEvent:(id)event
{
  eventCopy = event;
  if ([(SignpostWorkflowResponsiveness *)self signpostInAllowList:?])
  {
    workflowEventTracker = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
    [workflowEventTracker handleSignpost:eventCopy];
  }
}

- (void)handleSignpostInterval:(id)interval
{
  intervalCopy = interval;
  if ([(SignpostWorkflowResponsiveness *)self signpostInAllowList:?])
  {
    workflowEventTracker = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
    [workflowEventTracker handleSignpost:intervalCopy];
  }
}

- (id)newConfiguredExtractor
{
  v3 = objc_alloc_init(SignpostSupportObjectExtractor);
  workflowEventTracker = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
  workflow = [workflowEventTracker workflow];
  allowListForAllSignposts = [workflow allowListForAllSignposts];
  [v3 setSubsystemCategoryFilter:allowListForAllSignposts];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001BD0;
  v11[3] = &unk_100014668;
  v11[4] = self;
  [v3 setIntervalCompletionProcessingBlock:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001BF4;
  v10[3] = &unk_100014690;
  v10[4] = self;
  [v3 setBeginEventProcessingBlock:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001C18;
  v9[3] = &unk_100014690;
  v9[4] = self;
  [v3 setEmitEventProcessingBlock:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001C3C;
  v8[3] = &unk_1000146B8;
  v8[4] = self;
  [v3 setDeviceRebootProcessingBlock:v8];
  return v3;
}

@end