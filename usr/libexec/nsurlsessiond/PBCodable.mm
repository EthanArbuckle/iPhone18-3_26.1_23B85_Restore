@interface PBCodable
- (id)_nsurlsessionproxy_launchUUID;
- (id)_nsurlsessionproxy_sessionIdentifier;
- (id)_nsurlsessionproxy_sessionUUID;
- (int64_t)_nsurlsessionproxy_messagePriority;
- (unint64_t)_nsurlsessionproxy_sequenceNumber;
- (unint64_t)_nsurlsessionproxy_taskIdentifier;
- (void)_nsurlsessionproxy_setLaunchUUID:(id)d;
- (void)_nsurlsessionproxy_setMessagePriority:(int64_t)priority;
- (void)_nsurlsessionproxy_setSequenceNumber:(unint64_t)number;
- (void)_nsurlsessionproxy_setSessionUUID:(id)d;
@end

@implementation PBCodable

- (void)_nsurlsessionproxy_setMessagePriority:(int64_t)priority
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    task = [(PBCodable *)self task];
    session = [task session];
    [session setIdsPriority:priority];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![(PBCodable *)self hasSession])
    {
      return;
    }

    task = [(PBCodable *)self session];
    [task setIdsPriority:priority];
  }
}

- (int64_t)_nsurlsessionproxy_messagePriority
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    task = [(PBCodable *)self task];
    session = [task session];
    idsPriority = [session idsPriority];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![(PBCodable *)self hasSession])
    {
      return 0;
    }

    task = [(PBCodable *)self session];
    idsPriority = [task idsPriority];
  }

  return idsPriority;
}

- (void)_nsurlsessionproxy_setSequenceNumber:(unint64_t)number
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    task = [(PBCodable *)self task];
    session = [task session];
    [session setSequenceNumber:number];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![(PBCodable *)self hasSession])
    {
      return;
    }

    task = [(PBCodable *)self session];
    [task setSequenceNumber:number];
  }
}

- (unint64_t)_nsurlsessionproxy_sequenceNumber
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    task = [(PBCodable *)self task];
    session = [task session];
    sequenceNumber = [session sequenceNumber];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![(PBCodable *)self hasSession])
    {
      return 0;
    }

    task = [(PBCodable *)self session];
    sequenceNumber = [task sequenceNumber];
  }

  return sequenceNumber;
}

- (unint64_t)_nsurlsessionproxy_taskIdentifier
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  task = [(PBCodable *)self task];
  taskIdentifier = [task taskIdentifier];

  return taskIdentifier;
}

- (id)_nsurlsessionproxy_sessionIdentifier
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    task = [(PBCodable *)self task];
    session = [task session];
    sessionIdentifier = [session sessionIdentifier];

LABEL_7:
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasSession])
  {
    task = [(PBCodable *)self session];
    sessionIdentifier = [task sessionIdentifier];
    goto LABEL_7;
  }

  sessionIdentifier = 0;
LABEL_9:

  return sessionIdentifier;
}

- (void)_nsurlsessionproxy_setSessionUUID:(id)d
{
  dCopy = d;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    task = [(PBCodable *)self task];
    session = [task session];
    [session setUuidString:dCopy];

LABEL_7:
    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasSession])
  {
    task = [(PBCodable *)self session];
    [task setUuidString:dCopy];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_nsurlsessionproxy_sessionUUID
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    task = [(PBCodable *)self task];
    session = [task session];
    uuidString = [session uuidString];

LABEL_7:
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasSession])
  {
    task = [(PBCodable *)self session];
    uuidString = [task uuidString];
    goto LABEL_7;
  }

  uuidString = 0;
LABEL_9:

  return uuidString;
}

- (void)_nsurlsessionproxy_setLaunchUUID:(id)d
{
  dCopy = d;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    task = [(PBCodable *)self task];
    session = [task session];
    [session setLaunchUUID:dCopy];

LABEL_7:
    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasSession])
  {
    task = [(PBCodable *)self session];
    [task setLaunchUUID:dCopy];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_nsurlsessionproxy_launchUUID
{
  if (objc_opt_respondsToSelector())
  {
    launchUUID = [(PBCodable *)self launchUUID];
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    task = [(PBCodable *)self task];
    session = [task session];
    launchUUID = [session launchUUID];

LABEL_9:
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasSession])
  {
    task = [(PBCodable *)self session];
    launchUUID = [task launchUUID];
    goto LABEL_9;
  }

  launchUUID = 0;
LABEL_11:

  return launchUUID;
}

@end