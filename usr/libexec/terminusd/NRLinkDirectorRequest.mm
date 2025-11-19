@interface NRLinkDirectorRequest
- (NRLinkDirectorRequest)init;
- (id)description;
- (void)dealloc;
@end

@implementation NRLinkDirectorRequest

- (void)dealloc
{
  if (qword_100229208 != -1)
  {
    dispatch_once(&qword_100229208, &stru_1001FC280);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229208 != -1)
    {
      dispatch_once(&qword_100229208, &stru_1001FC280);
    }

    v7 = 113;
    v8 = self;
    v5 = "";
    v6 = "[NRLinkDirectorRequest dealloc]";
    _NRLogWithArgs();
  }

  if (self)
  {
    source = self->_source;
    if (source)
    {
      dispatch_source_cancel(source);
      v4 = self->_source;
      self->_source = 0;
    }
  }

  v9.receiver = self;
  v9.super_class = NRLinkDirectorRequest;
  [(NRLinkDirectorRequest *)&v9 dealloc:v5];
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = v3;
  if (!self)
  {
    uniqueIndex = 0;
    goto LABEL_30;
  }

  uniqueIndex = self->_uniqueIndex;
  type = self->_type;
  if (type > 5)
  {
    if (self->_type > 8u)
    {
      switch(type)
      {
        case 9u:
          v7 = "PreferWiFiAckEnable";
          goto LABEL_31;
        case 0xAu:
          v7 = "PreferWiFiAckDisable";
          goto LABEL_31;
        case 0xBu:
          v7 = "UpdateAWDLAddress";
          goto LABEL_31;
      }
    }

    else
    {
      switch(type)
      {
        case 6u:
          v7 = "Timer";
          goto LABEL_31;
        case 7u:
          v7 = "TimerPreferWiFiTimeout";
          goto LABEL_31;
        case 8u:
          v7 = "StopQuickRelay";
          goto LABEL_31;
      }
    }

LABEL_27:
    v8 = [v3 initWithFormat:@"[Request %llu %@", self->_uniqueIndex, @"Unknown"];
    if (!self->_requiredLinkType)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (self->_type > 2u)
  {
    switch(type)
    {
      case 3u:
        v7 = "PreferWiFiDisable";
        goto LABEL_31;
      case 4u:
        v7 = "StopWiFi";
        goto LABEL_31;
      case 5u:
        v7 = "SuspendBluetooth";
        goto LABEL_31;
    }

    goto LABEL_27;
  }

  if (!self->_type)
  {
LABEL_30:
    v7 = "Invalid";
    goto LABEL_31;
  }

  if (type == 1)
  {
    v7 = "UpdateWiFiAddress";
  }

  else
  {
    v7 = "PreferWiFiEnable";
  }

LABEL_31:
  v9 = [[NSString alloc] initWithUTF8String:v7];
  v8 = [v4 initWithFormat:@"[Request %llu %@", uniqueIndex, v9];

  if (!self)
  {
    [v8 appendFormat:@" %somplete", "Inc"];
    goto LABEL_44;
  }

  if (self->_requiredLinkType)
  {
LABEL_33:
    StringFromNRLinkType = createStringFromNRLinkType();
    [v8 appendFormat:@" %@", StringFromNRLinkType];
  }

LABEL_34:
  if (self->_complete)
  {
    v11 = "C";
  }

  else
  {
    v11 = "Inc";
  }

  [v8 appendFormat:@" %somplete", v11];
  if (self->_attemptImmediately)
  {
    [v8 appendString:@" Immediate"];
  }

  if (self->_allowsSuspendedLink)
  {
    [v8 appendString:@" AllowsSuspendedLink"];
  }

  if (self->_type == 6)
  {
    [v8 appendFormat:@" Timeout %llus", self->_timeout];
    if (self->_timerDescription)
    {
      [v8 appendFormat:@" %@", self->_timerDescription];
    }
  }

LABEL_44:
  [v8 appendString:@"]"];

  return v8;
}

- (NRLinkDirectorRequest)init
{
  v11.receiver = self;
  v11.super_class = NRLinkDirectorRequest;
  v2 = [(NRLinkDirectorRequest *)&v11 init];
  if (!v2)
  {
    v6 = sub_100139E64();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100139E64();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v9 = *__error();
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "[NRLinkDirectorRequest init]";
    sub_100139E64();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v2->_requiredLinkType = 0;
  cancelIfLinkTypeReady = v2->_cancelIfLinkTypeReady;
  v2->_cancelIfLinkTypeReady = 0;

  v3->_type = 0;
  v3->_allowsSuspendedLink = 0;
  v3->_uniqueIndex = atomic_fetch_add_explicit(&qword_100228A70, 1uLL, memory_order_relaxed);
  return v3;
}

@end