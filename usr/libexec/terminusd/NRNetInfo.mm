@interface NRNetInfo
- (id)description;
- (void)dealloc;
@end

@implementation NRNetInfo

- (id)description
{
  if (!_NRIsAppleInternal())
  {
    v4 = @"NRNetInfo[<redacted>]";
    goto LABEL_50;
  }

  if (self)
  {
    if (self->_isIncoming && self->_forcedUpdateIdentifier)
    {
      v3 = [[NSString alloc] initWithFormat:@" (forced:%u)", self->_forcedUpdateIdentifier];
    }

    else
    {
      v3 = &stru_1001FDE68;
    }

    v5 = [NSMutableString alloc];
    version = self->_version;
    pathStatus = self->_pathStatus;
    if (pathStatus >= 4)
    {
      v9 = v5;
      v8 = [[NSString alloc] initWithFormat:@"unknown(%u)", self->_pathStatus];
      v5 = v9;
    }

    else
    {
      v8 = *(&off_1001FA570 + pathStatus);
    }

    pathInterfaceType = self->_pathInterfaceType;
    if (pathInterfaceType <= 1)
    {
      if (!self->_pathInterfaceType)
      {
        v11 = @"other";
        goto LABEL_23;
      }

      if (pathInterfaceType == 1)
      {
        v11 = @"wifi";
        goto LABEL_23;
      }
    }

    else
    {
      switch(pathInterfaceType)
      {
        case 2u:
          v11 = @"cellular";
          goto LABEL_23;
        case 3u:
          v11 = @"wired";
          goto LABEL_23;
        case 4u:
          v11 = @"loopback";
          goto LABEL_23;
      }
    }

    v12 = v5;
    v11 = [[NSString alloc] initWithFormat:@"unknown(%u)", self->_pathInterfaceType];
    v5 = v12;
  }

  else
  {
    v5 = [NSMutableString alloc];
    v8 = 0;
    version = 0;
    v11 = 0;
    v3 = &stru_1001FDE68;
  }

LABEL_23:
  v4 = [v5 initWithFormat:@"NRNetInfo:[v%d%@, %@, %@, ", version, v3, v8, v11];

  if (self)
  {
    pathFlags = self->_pathFlags;
    if (pathFlags)
    {
      [(__CFString *)v4 appendString:@"dns, "];
      pathFlags = self->_pathFlags;
      if ((pathFlags & 2) == 0)
      {
LABEL_26:
        if ((pathFlags & 4) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_55;
      }
    }

    else if ((pathFlags & 2) == 0)
    {
      goto LABEL_26;
    }

    [(__CFString *)v4 appendString:@"ipv4, "];
    pathFlags = self->_pathFlags;
    if ((pathFlags & 4) == 0)
    {
LABEL_27:
      if ((pathFlags & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_56;
    }

LABEL_55:
    [(__CFString *)v4 appendString:@"ipv6, "];
    pathFlags = self->_pathFlags;
    if ((pathFlags & 8) == 0)
    {
LABEL_28:
      if ((pathFlags & 0x10) == 0)
      {
LABEL_30:
        if (self->_isImmediate)
        {
          [(__CFString *)v4 appendString:@"immediate, "];
        }

        if ((self->_pathFlags & 0x20) != 0)
        {
          [(__CFString *)v4 appendString:@"roaming, "];
        }

        if (*&self->_estimatedUploadThroughput != 0)
        {
          [(__CFString *)v4 appendFormat:@"%llu/%llu, ", self->_estimatedUploadThroughput, self->_estimatedDownloadThroughput];
        }

        [(__CFString *)v4 appendString:@"["];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        resolverConfigs = self->_resolverConfigs;
        goto LABEL_37;
      }

LABEL_29:
      [(__CFString *)v4 appendString:@"constrained, "];
      goto LABEL_30;
    }

LABEL_56:
    [(__CFString *)v4 appendString:@"expensive, "];
    if ((self->_pathFlags & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  [(__CFString *)v4 appendString:@"["];
  resolverConfigs = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
LABEL_37:
  v15 = resolverConfigs;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(__CFString *)v4 appendFormat:@"%@, ", *(*(&v24 + 1) + 8 * i)];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  [(__CFString *)v4 appendString:@"]"];
  if (self && self->_wifiSSIDData)
  {
    v20 = [[NSString alloc] initWithData:self->_wifiSSIDData encoding:4];
    v21 = v20;
    v22 = @"<unavailable>";
    if (v20)
    {
      v22 = v20;
    }

    [(__CFString *)v4 appendFormat:@", wifi %@", v22];
  }

  [(__CFString *)v4 appendString:@"]"];

LABEL_50:

  return v4;
}

- (void)dealloc
{
  if (qword_100228ED8 != -1)
  {
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    v6 = 113;
    v4 = "";
    v5 = "[NRNetInfo dealloc]";
    _NRLogWithArgs();
  }

  if (self)
  {
    self->_invalidated = 1;
    if (self->_evaluator)
    {
      nw_path_evaluator_cancel();
      evaluator = self->_evaluator;
      self->_evaluator = 0;
    }
  }

  v7.receiver = self;
  v7.super_class = NRNetInfo;
  [(NRNetInfo *)&v7 dealloc:v4];
}

@end