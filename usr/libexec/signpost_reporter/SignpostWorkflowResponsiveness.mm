@interface SignpostWorkflowResponsiveness
+ (id)allWorkflows;
+ (id)workflowWithName:(id)a3;
- (BOOL)signpostInAllowList:(id)a3;
- (SignpostWorkflowResponsiveness)initWithWorkflowEventTracker:(id)a3;
- (id)newConfiguredExtractor;
- (void)addSubsystemCategoriesOfInterestToAllowlist:(id)a3;
- (void)handleDeviceReboot;
- (void)handleSignpostEmitEvent:(id)a3;
- (void)handleSignpostInterval:(id)a3;
- (void)handleSignpostIntervalBegin:(id)a3;
@end

@implementation SignpostWorkflowResponsiveness

- (SignpostWorkflowResponsiveness)initWithWorkflowEventTracker:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SignpostWorkflowResponsiveness;
  v6 = [(SignpostWorkflowResponsiveness *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workflowEventTracker, a3);
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

+ (id)workflowWithName:(id)a3
{
  v3 = [WRWorkflow workflowWithName:a3];
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

- (void)addSubsystemCategoriesOfInterestToAllowlist:(id)a3
{
  v4 = a3;
  v7 = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
  v5 = [v7 workflow];
  v6 = [v5 allowListForAllSignposts];
  [v4 addAllowlist:v6];
}

- (BOOL)signpostInAllowList:(id)a3
{
  v4 = a3;
  v5 = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
  v6 = [v5 workflow];
  v7 = [v6 allowListForAllSignposts];
  v8 = [v4 subsystem];
  v9 = [v4 category];

  LOBYTE(v4) = [v7 passesSubsystem:v8 category:v9];
  return v4;
}

- (void)handleDeviceReboot
{
  v2 = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
  [v2 reset];
}

- (void)handleSignpostIntervalBegin:(id)a3
{
  v5 = a3;
  if ([(SignpostWorkflowResponsiveness *)self signpostInAllowList:?])
  {
    v4 = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
    [v4 handleSignpost:v5];
  }
}

- (void)handleSignpostEmitEvent:(id)a3
{
  v5 = a3;
  if ([(SignpostWorkflowResponsiveness *)self signpostInAllowList:?])
  {
    v4 = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
    [v4 handleSignpost:v5];
  }
}

- (void)handleSignpostInterval:(id)a3
{
  v5 = a3;
  if ([(SignpostWorkflowResponsiveness *)self signpostInAllowList:?])
  {
    v4 = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
    [v4 handleSignpost:v5];
  }
}

- (id)newConfiguredExtractor
{
  v3 = objc_alloc_init(SignpostSupportObjectExtractor);
  v4 = [(SignpostWorkflowResponsiveness *)self workflowEventTracker];
  v5 = [v4 workflow];
  v6 = [v5 allowListForAllSignposts];
  [v3 setSubsystemCategoryFilter:v6];

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