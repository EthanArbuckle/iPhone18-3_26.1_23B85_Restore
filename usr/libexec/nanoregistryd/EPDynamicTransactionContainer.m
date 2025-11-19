@interface EPDynamicTransactionContainer
- (BOOL)notUnrollable;
- (BOOL)persistWhilePending;
- (BOOL)resumeEnabled;
- (EPDynamicTransactionContainer)initWithCoder:(id)a3;
- (EPRoutingSlip)routingSlip;
- (NSObject)userInfo;
- (id)description;
- (id)transactionName;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EPDynamicTransactionContainer

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(EPDynamicTransactionContainer *)self routingSlip];
  [v5 encodeObject:v4 forKey:@"routingSlip"];

  [v5 encodeInteger:self->_runningStatusCode forKey:@"runningStatusCode"];
  [v5 encodeObject:self->_operationType forKey:@"operationType"];
  [v5 encodeObject:self->_targetPairingID forKey:@"targetPairingID"];
  [v5 encodeObject:self->_transactionStartTimestamp forKey:@"transactionStartTimestamp"];
}

- (EPDynamicTransactionContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EPDynamicTransactionContainer *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routingSlip"];
    routingSlip = v5->_routingSlip;
    v5->_routingSlip = v6;

    v5->_runningStatusCode = [v4 decodeIntegerForKey:@"runningStatusCode"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationType"];
    operationType = v5->_operationType;
    v5->_operationType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetPairingID"];
    targetPairingID = v5->_targetPairingID;
    v5->_targetPairingID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionStartTimestamp"];
    transactionStartTimestamp = v5->_transactionStartTimestamp;
    v5->_transactionStartTimestamp = v12;
  }

  return v5;
}

- (id)transactionName
{
  v2 = [(EPDynamicTransactionContainer *)self routingSlip];
  v3 = [v2 currentEntry];
  v4 = [v3 printableName];

  return v4;
}

- (EPRoutingSlip)routingSlip
{
  routingSlip = self->_routingSlip;
  if (!routingSlip)
  {
    if (self->_entry)
    {
      v4 = [EPRoutingSlip alloc];
      entry = self->_entry;
      v5 = [NSArray arrayWithObjects:&entry count:1];
      v6 = [(EPRoutingSlip *)v4 initWithRoutingSlipEntries:v5];
      v7 = self->_routingSlip;
      self->_routingSlip = v6;

      [(EPRoutingSlip *)self->_routingSlip setPersistWhilePending:self->_persistWhilePending];
      [(EPRoutingSlip *)self->_routingSlip setNotUnrollable:self->_notUnrollable];
      [(EPRoutingSlip *)self->_routingSlip setResumeEnabled:self->_resumeEnabled];
      routingSlip = self->_routingSlip;
    }

    else
    {
      routingSlip = 0;
    }
  }

  return routingSlip;
}

- (BOOL)persistWhilePending
{
  routingSlip = self->_routingSlip;
  if (routingSlip)
  {
    LOBYTE(v4) = [(EPRoutingSlip *)routingSlip persistWhilePending];
  }

  else
  {
    return self->_persistWhilePending;
  }

  return v4;
}

- (BOOL)notUnrollable
{
  routingSlip = self->_routingSlip;
  if (routingSlip)
  {
    LOBYTE(v4) = [(EPRoutingSlip *)routingSlip notUnrollable];
  }

  else
  {
    return self->_notUnrollable;
  }

  return v4;
}

- (BOOL)resumeEnabled
{
  routingSlip = self->_routingSlip;
  if (routingSlip)
  {
    LOBYTE(v4) = [(EPRoutingSlip *)routingSlip resumeEnabled];
  }

  else
  {
    return self->_resumeEnabled;
  }

  return v4;
}

- (id)description
{
  v3 = [(EPDynamicTransactionContainer *)self transactionName];
  routingSlip = self->_routingSlip;
  v5 = [NSString stringWithFormat:@"EPDynamicTransactionContainer %@: %@ [%@]", v3, routingSlip, self->_transactionStartTimestamp];

  return v5;
}

- (NSObject)userInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_userInfo);

  return WeakRetained;
}

@end