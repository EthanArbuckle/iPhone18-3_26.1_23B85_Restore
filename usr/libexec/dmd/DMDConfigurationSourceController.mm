@interface DMDConfigurationSourceController
- (DMDConfigurationSourceController)initWithConfigurationSource:(id)source delegate:(id)delegate;
- (DMDConfigurationSourceControllerDelegate)delegate;
- (DMFConfigurationSource)configurationSource;
- (NSString)displayName;
- (NSString)organizationIdentifier;
- (id)debugDescription;
- (id)description;
- (void)eventsForSourceDidChange:(id)change;
- (void)reportEvents;
- (void)reportStatus;
- (void)resolveAssetWithContext:(id)context;
- (void)statusForSourceDidChange:(id)change;
- (void)updateStatusChangeListener;
- (void)updateWithConfigurationSource:(id)source;
@end

@implementation DMDConfigurationSourceController

- (DMDConfigurationSourceController)initWithConfigurationSource:(id)source delegate:(id)delegate
{
  sourceCopy = source;
  delegateCopy = delegate;
  if (!sourceCopy)
  {
    sub_100080A84(a2, self);
  }

  identifier = [sourceCopy identifier];

  if (!identifier)
  {
    sub_100080B00(a2, self);
  }

  v16.receiver = self;
  v16.super_class = DMDConfigurationSourceController;
  v10 = [(DMDConfigurationSourceController *)&v16 init];
  if (v10)
  {
    identifier2 = [sourceCopy identifier];
    identifier = v10->_identifier;
    v10->_identifier = identifier2;

    objc_storeWeak(&v10->_delegate, delegateCopy);
    v13 = objc_opt_new();
    queue = v10->_queue;
    v10->_queue = v13;

    [(DMDConfigurationSourceController *)v10 updateWithConfigurationSource:sourceCopy];
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
  source = [(DMDConfigurationSourceController *)self source];
  organizationIdentifier = [source organizationIdentifier];

  return organizationIdentifier;
}

- (NSString)displayName
{
  source = [(DMDConfigurationSourceController *)self source];
  displayName = [source displayName];

  return displayName;
}

- (void)updateWithConfigurationSource:(id)source
{
  sourceCopy = source;
  identifier = [(DMDConfigurationSourceController *)self identifier];
  identifier2 = [sourceCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if ((v7 & 1) == 0)
  {
    sub_100080B7C(a2, self);
  }

  v8 = [[DMDConfigurationSourceRepresentation alloc] initWithConfigurationSource:sourceCopy];
  [(DMDConfigurationSourceController *)self setSource:v8];

  [(DMDConfigurationSourceController *)self updateStatusChangeListener];
  [(DMDConfigurationSourceController *)self statusForSourceDidChange:0];
}

- (DMFConfigurationSource)configurationSource
{
  v3 = objc_opt_new();
  source = [(DMDConfigurationSourceController *)self source];
  identifier = [source identifier];
  [v3 setIdentifier:identifier];

  source2 = [(DMDConfigurationSourceController *)self source];
  displayName = [source2 displayName];
  [v3 setDisplayName:displayName];

  source3 = [(DMDConfigurationSourceController *)self source];
  machServiceName = [source3 machServiceName];
  [v3 setMachServiceName:machServiceName];

  source4 = [(DMDConfigurationSourceController *)self source];
  reportingRequirements = [source4 reportingRequirements];
  [v3 setReportingRequirements:reportingRequirements];

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

- (void)statusForSourceDidChange:(id)change
{
  changeCopy = change;
  if (+[NSThread isMainThread])
  {
    if (changeCopy)
    {
      [changeCopy object];
    }

    else
    {
      [(DMDConfigurationSourceController *)self organizationIdentifier];
    }
    v5 = ;
    organizationIdentifier = [(DMDConfigurationSourceController *)self organizationIdentifier];
    v7 = [organizationIdentifier isEqualToString:v5];

    if (v7)
    {
      source = [(DMDConfigurationSourceController *)self source];
      reportingRequirements = [source reportingRequirements];

      v10 = 10.0;
      v11 = 3.0;
      if (reportingRequirements)
      {
        [reportingRequirements updateCoalescenceInterval];
        if (v12 > DMFReportingRequirementsUpdateCoalescenceIntervalDefault)
        {
          [reportingRequirements updateCoalescenceInterval];
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
    [(DMDConfigurationSourceController *)self performSelectorOnMainThread:a2 withObject:changeCopy waitUntilDone:0];
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
  queue = [(DMDConfigurationSourceController *)self queue];
  [queue addOperation:v4];
}

- (void)eventsForSourceDidChange:(id)change
{
  changeCopy = change;
  if (+[NSThread isMainThread])
  {
    if (changeCopy)
    {
      [changeCopy object];
    }

    else
    {
      [(DMDConfigurationSourceController *)self organizationIdentifier];
    }
    v5 = ;
    organizationIdentifier = [(DMDConfigurationSourceController *)self organizationIdentifier];
    v7 = [organizationIdentifier isEqualToString:v5];

    if (v7)
    {
      source = [(DMDConfigurationSourceController *)self source];
      reportingRequirements = [source reportingRequirements];

      v10 = 10.0;
      v11 = 3.0;
      if (reportingRequirements)
      {
        [reportingRequirements updateCoalescenceInterval];
        if (v12 > DMFReportingRequirementsUpdateCoalescenceIntervalDefault)
        {
          [reportingRequirements updateCoalescenceInterval];
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
    [(DMDConfigurationSourceController *)self performSelectorOnMainThread:a2 withObject:changeCopy waitUntilDone:0];
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
  queue = [(DMDConfigurationSourceController *)self queue];
  [queue addOperation:v4];
}

- (void)resolveAssetWithContext:(id)context
{
  contextCopy = context;
  v6 = [(DMDConfigurationSourceTaskOperation *)[DMDConfigurationSourceAssetResolveOperation alloc] initWithController:self];
  [(DMDConfigurationSourceAssetResolveOperation *)v6 setContext:contextCopy];

  queue = [(DMDConfigurationSourceController *)self queue];
  [queue addOperation:v6];
}

- (DMDConfigurationSourceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end