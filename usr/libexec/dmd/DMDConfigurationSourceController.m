@interface DMDConfigurationSourceController
- (DMDConfigurationSourceController)initWithConfigurationSource:(id)a3 delegate:(id)a4;
- (DMDConfigurationSourceControllerDelegate)delegate;
- (DMFConfigurationSource)configurationSource;
- (NSString)displayName;
- (NSString)organizationIdentifier;
- (id)debugDescription;
- (id)description;
- (void)eventsForSourceDidChange:(id)a3;
- (void)reportEvents;
- (void)reportStatus;
- (void)resolveAssetWithContext:(id)a3;
- (void)statusForSourceDidChange:(id)a3;
- (void)updateStatusChangeListener;
- (void)updateWithConfigurationSource:(id)a3;
@end

@implementation DMDConfigurationSourceController

- (DMDConfigurationSourceController)initWithConfigurationSource:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    sub_100080A84(a2, self);
  }

  v9 = [v7 identifier];

  if (!v9)
  {
    sub_100080B00(a2, self);
  }

  v16.receiver = self;
  v16.super_class = DMDConfigurationSourceController;
  v10 = [(DMDConfigurationSourceController *)&v16 init];
  if (v10)
  {
    v11 = [v7 identifier];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeWeak(&v10->_delegate, v8);
    v13 = objc_opt_new();
    queue = v10->_queue;
    v10->_queue = v13;

    [(DMDConfigurationSourceController *)v10 updateWithConfigurationSource:v7];
  }

  return v10;
}

- (id)description
{
  v5[0] = @"identifier";
  v5[1] = @"displayName";
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

- (id)debugDescription
{
  v5[0] = @"source";
  v5[1] = @"queue";
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

- (NSString)organizationIdentifier
{
  v2 = [(DMDConfigurationSourceController *)self source];
  v3 = [v2 organizationIdentifier];

  return v3;
}

- (NSString)displayName
{
  v2 = [(DMDConfigurationSourceController *)self source];
  v3 = [v2 displayName];

  return v3;
}

- (void)updateWithConfigurationSource:(id)a3
{
  v9 = a3;
  v5 = [(DMDConfigurationSourceController *)self identifier];
  v6 = [v9 identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    sub_100080B7C(a2, self);
  }

  v8 = [[DMDConfigurationSourceRepresentation alloc] initWithConfigurationSource:v9];
  [(DMDConfigurationSourceController *)self setSource:v8];

  [(DMDConfigurationSourceController *)self updateStatusChangeListener];
  [(DMDConfigurationSourceController *)self statusForSourceDidChange:0];
}

- (DMFConfigurationSource)configurationSource
{
  v3 = objc_opt_new();
  v4 = [(DMDConfigurationSourceController *)self source];
  v5 = [v4 identifier];
  [v3 setIdentifier:v5];

  v6 = [(DMDConfigurationSourceController *)self source];
  v7 = [v6 displayName];
  [v3 setDisplayName:v7];

  v8 = [(DMDConfigurationSourceController *)self source];
  v9 = [v8 machServiceName];
  [v3 setMachServiceName:v9];

  v10 = [(DMDConfigurationSourceController *)self source];
  v11 = [v10 reportingRequirements];
  [v3 setReportingRequirements:v11];

  return v3;
}

- (void)updateStatusChangeListener
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"statusForSourceDidChange:" name:@"DMDConfigurationSourceStatusDidChange" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"eventsForSourceDidChange:" name:@"DMDConfigurationSourceEventsDidChange" object:0];
}

- (void)statusForSourceDidChange:(id)a3
{
  v14 = a3;
  if (+[NSThread isMainThread])
  {
    if (v14)
    {
      [v14 object];
    }

    else
    {
      [(DMDConfigurationSourceController *)self organizationIdentifier];
    }
    v5 = ;
    v6 = [(DMDConfigurationSourceController *)self organizationIdentifier];
    v7 = [v6 isEqualToString:v5];

    if (v7)
    {
      v8 = [(DMDConfigurationSourceController *)self source];
      v9 = [v8 reportingRequirements];

      v10 = 10.0;
      v11 = 3.0;
      if (v9)
      {
        [v9 updateCoalescenceInterval];
        if (v12 > DMFReportingRequirementsUpdateCoalescenceIntervalDefault)
        {
          [v9 updateCoalescenceInterval];
          v11 = v13;
          v10 = v13;
        }
      }

      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"reportStatus" object:0];
      [(DMDConfigurationSourceController *)self performSelector:"reportStatus" withObject:0 afterDelay:v11];
      if (v10 > v11)
      {
        [(DMDConfigurationSourceController *)self performSelector:"reportStatusTimeout" withObject:0 afterDelay:v10];
      }
    }
  }

  else
  {
    [(DMDConfigurationSourceController *)self performSelectorOnMainThread:a2 withObject:v14 waitUntilDone:0];
  }
}

- (void)reportStatus
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"reportStatusTimeout" object:0];
  v3 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100080BF8(self);
  }

  v4 = [(DMDConfigurationSourceTaskOperation *)[DMDConfigurationSourceStatusUpdateOperation alloc] initWithController:self];
  [(DMDConfigurationSourceTaskOperation *)v4 setController:self];
  v5 = [(DMDConfigurationSourceController *)self queue];
  [v5 addOperation:v4];
}

- (void)eventsForSourceDidChange:(id)a3
{
  v14 = a3;
  if (+[NSThread isMainThread])
  {
    if (v14)
    {
      [v14 object];
    }

    else
    {
      [(DMDConfigurationSourceController *)self organizationIdentifier];
    }
    v5 = ;
    v6 = [(DMDConfigurationSourceController *)self organizationIdentifier];
    v7 = [v6 isEqualToString:v5];

    if (v7)
    {
      v8 = [(DMDConfigurationSourceController *)self source];
      v9 = [v8 reportingRequirements];

      v10 = 10.0;
      v11 = 3.0;
      if (v9)
      {
        [v9 updateCoalescenceInterval];
        if (v12 > DMFReportingRequirementsUpdateCoalescenceIntervalDefault)
        {
          [v9 updateCoalescenceInterval];
          v11 = v13;
          v10 = v13;
        }
      }

      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"reportEvents" object:0];
      [(DMDConfigurationSourceController *)self performSelector:"reportEvents" withObject:0 afterDelay:3.0];
      if (v10 > v11)
      {
        [(DMDConfigurationSourceController *)self performSelector:"reportEventsTimeout" withObject:0 afterDelay:10.0];
      }
    }
  }

  else
  {
    [(DMDConfigurationSourceController *)self performSelectorOnMainThread:a2 withObject:v14 waitUntilDone:0];
  }
}

- (void)reportEvents
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"reportEventsTimeout" object:0];
  v3 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100080C80(self);
  }

  v4 = [(DMDConfigurationSourceTaskOperation *)[DMDConfigurationSourceEventsOperation alloc] initWithController:self];
  [(DMDConfigurationSourceTaskOperation *)v4 setController:self];
  v5 = [(DMDConfigurationSourceController *)self queue];
  [v5 addOperation:v4];
}

- (void)resolveAssetWithContext:(id)a3
{
  v4 = a3;
  v6 = [(DMDConfigurationSourceTaskOperation *)[DMDConfigurationSourceAssetResolveOperation alloc] initWithController:self];
  [(DMDConfigurationSourceAssetResolveOperation *)v6 setContext:v4];

  v5 = [(DMDConfigurationSourceController *)self queue];
  [v5 addOperation:v6];
}

- (DMDConfigurationSourceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end