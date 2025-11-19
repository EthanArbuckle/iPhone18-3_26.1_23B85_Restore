@interface PBCodable
- (id)_nsurlsessionproxy_launchUUID;
- (id)_nsurlsessionproxy_sessionIdentifier;
- (id)_nsurlsessionproxy_sessionUUID;
- (int64_t)_nsurlsessionproxy_messagePriority;
- (unint64_t)_nsurlsessionproxy_sequenceNumber;
- (unint64_t)_nsurlsessionproxy_taskIdentifier;
- (void)_nsurlsessionproxy_setLaunchUUID:(id)a3;
- (void)_nsurlsessionproxy_setMessagePriority:(int64_t)a3;
- (void)_nsurlsessionproxy_setSequenceNumber:(unint64_t)a3;
- (void)_nsurlsessionproxy_setSessionUUID:(id)a3;
@end

@implementation PBCodable

- (void)_nsurlsessionproxy_setMessagePriority:(int64_t)a3
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    v6 = [(PBCodable *)self task];
    v5 = [v6 session];
    [v5 setIdsPriority:a3];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![(PBCodable *)self hasSession])
    {
      return;
    }

    v6 = [(PBCodable *)self session];
    [v6 setIdsPriority:a3];
  }
}

- (int64_t)_nsurlsessionproxy_messagePriority
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    v3 = [(PBCodable *)self task];
    v4 = [v3 session];
    v5 = [v4 idsPriority];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![(PBCodable *)self hasSession])
    {
      return 0;
    }

    v3 = [(PBCodable *)self session];
    v5 = [v3 idsPriority];
  }

  return v5;
}

- (void)_nsurlsessionproxy_setSequenceNumber:(unint64_t)a3
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    v6 = [(PBCodable *)self task];
    v5 = [v6 session];
    [v5 setSequenceNumber:a3];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![(PBCodable *)self hasSession])
    {
      return;
    }

    v6 = [(PBCodable *)self session];
    [v6 setSequenceNumber:a3];
  }
}

- (unint64_t)_nsurlsessionproxy_sequenceNumber
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    v3 = [(PBCodable *)self task];
    v4 = [v3 session];
    v5 = [v4 sequenceNumber];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![(PBCodable *)self hasSession])
    {
      return 0;
    }

    v3 = [(PBCodable *)self session];
    v5 = [v3 sequenceNumber];
  }

  return v5;
}

- (unint64_t)_nsurlsessionproxy_taskIdentifier
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(PBCodable *)self task];
  v4 = [v3 taskIdentifier];

  return v4;
}

- (id)_nsurlsessionproxy_sessionIdentifier
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    v3 = [(PBCodable *)self task];
    v4 = [v3 session];
    v5 = [v4 sessionIdentifier];

LABEL_7:
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasSession])
  {
    v3 = [(PBCodable *)self session];
    v5 = [v3 sessionIdentifier];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)_nsurlsessionproxy_setSessionUUID:(id)a3
{
  v6 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    v4 = [(PBCodable *)self task];
    v5 = [v4 session];
    [v5 setUuidString:v6];

LABEL_7:
    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasSession])
  {
    v4 = [(PBCodable *)self session];
    [v4 setUuidString:v6];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_nsurlsessionproxy_sessionUUID
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    v3 = [(PBCodable *)self task];
    v4 = [v3 session];
    v5 = [v4 uuidString];

LABEL_7:
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasSession])
  {
    v3 = [(PBCodable *)self session];
    v5 = [v3 uuidString];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)_nsurlsessionproxy_setLaunchUUID:(id)a3
{
  v6 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    v4 = [(PBCodable *)self task];
    v5 = [v4 session];
    [v5 setLaunchUUID:v6];

LABEL_7:
    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasSession])
  {
    v4 = [(PBCodable *)self session];
    [v4 setLaunchUUID:v6];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_nsurlsessionproxy_launchUUID
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(PBCodable *)self launchUUID];
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasTask])
  {
    v4 = [(PBCodable *)self task];
    v5 = [v4 session];
    v3 = [v5 launchUUID];

LABEL_9:
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PBCodable *)self hasSession])
  {
    v4 = [(PBCodable *)self session];
    v3 = [v4 launchUUID];
    goto LABEL_9;
  }

  v3 = 0;
LABEL_11:

  return v3;
}

@end