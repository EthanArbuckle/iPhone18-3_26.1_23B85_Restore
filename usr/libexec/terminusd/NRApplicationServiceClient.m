@interface NRApplicationServiceClient
- (NSString)description;
- (void)dealloc;
- (void)didCompleteIncomingResolveRequestForASName:(id)a3 asClient:(id)a4;
- (void)didStartBrowseRequestForASName:(id)a3 asClient:(id)a4;
- (void)didStartResolveRequestForASName:(id)a3 asClient:(id)a4;
- (void)didStopAdvertiseRequestForASName:(id)a3 endpoint:(id)a4 asClient:(id)a5;
- (void)didStopBrowseRequestForASName:(id)a3 asClient:(id)a4;
- (void)didStopResolveRequestForASName:(id)a3 asClient:(id)a4;
@end

@implementation NRApplicationServiceClient

- (void)didStopAdvertiseRequestForASName:(id)a3 endpoint:(id)a4 asClient:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9 == self)
  {
    if (v9)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained didStopAdvertiseRequestForASName:v12 endpoint:v8 asClient:self];
  }
}

- (void)didCompleteIncomingResolveRequestForASName:(id)a3 asClient:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 == self)
  {
    if (v6)
    {
      if (!self->_cancelled && [(NSMutableArray *)self->_asNamesForIncomingResolveRequests containsObject:v9])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
LABEL_6:
        [WeakRetained didCompleteIncomingResolveRequestForASName:v9 asClient:self];
      }
    }

    else
    {
      WeakRetained = 0;
      if ([0 containsObject:v9])
      {
        goto LABEL_6;
      }
    }
  }
}

- (void)didStopResolveRequestForASName:(id)a3 asClient:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6 == self)
  {
    if (v6)
    {
      if (!self->_cancelled)
      {
        v7 = v6;
        v8 = [(NSMutableArray *)self->_asNamesForResolving containsObject:v11];
        v6 = v7;
        if (v8)
        {
          [(NSMutableArray *)self->_asNamesForResolving removeObject:v11];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
LABEL_6:
          [WeakRetained didStopResolveRequestForASName:v11 asClient:self];

          v6 = v7;
        }
      }
    }

    else
    {
      v7 = 0;
      v10 = [0 containsObject:v11];
      v6 = 0;
      if (v10)
      {
        [0 removeObject:v11];
        WeakRetained = 0;
        goto LABEL_6;
      }
    }
  }
}

- (void)didStartResolveRequestForASName:(id)a3 asClient:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6 == self)
  {
    if (v6)
    {
      if (self->_cancelled)
      {
        goto LABEL_8;
      }

      v7 = v6;
      if (([(NSMutableArray *)self->_asNamesForResolving containsObject:v9]& 1) == 0)
      {
        [(NSMutableArray *)self->_asNamesForResolving addObject:v9];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v7 = 0;
      WeakRetained = 0;
      if (([0 containsObject:v9] & 1) == 0)
      {
        [0 addObject:v9];
        WeakRetained = 0;
      }
    }

    [WeakRetained didStartResolveRequestForASName:v9 asClient:self];

    v6 = v7;
  }

LABEL_8:
}

- (void)didStopBrowseRequestForASName:(id)a3 asClient:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6 == self)
  {
    if (v6)
    {
      if (!self->_cancelled)
      {
        v7 = v6;
        v8 = [(NSMutableArray *)self->_asNamesForBrowsing containsObject:v11];
        v6 = v7;
        if (v8)
        {
          [(NSMutableArray *)self->_asNamesForBrowsing removeObject:v11];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
LABEL_6:
          [WeakRetained didStopBrowseRequestForASName:v11 asClient:self];

          v6 = v7;
        }
      }
    }

    else
    {
      v7 = 0;
      v10 = [0 containsObject:v11];
      v6 = 0;
      if (v10)
      {
        [0 removeObject:v11];
        WeakRetained = 0;
        goto LABEL_6;
      }
    }
  }
}

- (void)didStartBrowseRequestForASName:(id)a3 asClient:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v6 == self)
  {
    if (v6)
    {
      if (self->_cancelled)
      {
        goto LABEL_13;
      }

      v7 = v6;
      if ([(NSMutableArray *)self->_asNamesForBrowsing containsObject:v13])
      {
        nrUUID = self->_nrUUID;
LABEL_6:
        v9 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        v6 = v7;
        if (!IsLevelEnabled)
        {
          goto LABEL_13;
        }

        if (v7)
        {
          v11 = self->_nrUUID;
        }

        else
        {
          v7 = 0;
        }

        WeakRetained = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
        goto LABEL_12;
      }

      [(NSMutableArray *)self->_asNamesForBrowsing addObject:v13];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v7 = 0;
      if ([0 containsObject:v13])
      {
        goto LABEL_6;
      }

      [0 addObject:v13];
      WeakRetained = 0;
    }

    [WeakRetained didStartBrowseRequestForASName:v13 asClient:self];
LABEL_12:

    v6 = v7;
  }

LABEL_13:
}

- (void)dealloc
{
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      v6 = self->_nrUUID;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  sub_10011DE24(self);
  v9.receiver = self;
  v9.super_class = NRApplicationServiceClient;
  [(NRApplicationServiceClient *)&v9 dealloc];
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  if (self)
  {
    identifier = self->_identifier;
    if (self->_started)
    {
      v5 = "started";
    }

    else if (self->_cancelled)
    {
      v5 = "cancelled";
    }

    else
    {
      v5 = "";
    }

    v6 = [v3 initWithFormat:@"NRASClient[%llu %s ", self->_identifier, v5];
    [v6 appendFormat:@"browsing: %@ ", self->_asNamesForBrowsing];
    [v6 appendFormat:@"resolving: %@ ", self->_asNamesForResolving];
    asNamesForIncomingResolveRequests = self->_asNamesForIncomingResolveRequests;
  }

  else
  {
    v6 = [v3 initWithFormat:@"NRASClient[%llu %s ", 0, ""];
    [v6 appendFormat:@"browsing: %@ ", 0];
    [v6 appendFormat:@"resolving: %@ ", 0];
    asNamesForIncomingResolveRequests = 0;
  }

  [v6 appendFormat:@"incoming-requests: %@ ", asNamesForIncomingResolveRequests];
  [v6 appendString:@"]"];

  return v6;
}

@end