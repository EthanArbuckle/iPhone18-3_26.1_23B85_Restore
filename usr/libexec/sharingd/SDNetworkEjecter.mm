@interface SDNetworkEjecter
- (SDNetworkEjecter)initWithNode:(__SFNode *)node;
- (SDNetworkEjecterDelegate)delegate;
- (int)start;
- (void)dealloc;
- (void)eject;
- (void)notifyClientAboutEject:(int)eject;
- (void)stop;
@end

@implementation SDNetworkEjecter

- (SDNetworkEjecter)initWithNode:(__SFNode *)node
{
  v9.receiver = self;
  v9.super_class = SDNetworkEjecter;
  v4 = [(SDNetworkEjecter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    flags = v4->_flags;
    v4->_flags = 0;

    protocol = v5->_protocol;
    v5->_protocol = 0;

    *&v5->_mountedCount = 0;
    v5->_node = CFRetain(node);
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_node);
  v3.receiver = self;
  v3.super_class = SDNetworkEjecter;
  [(SDNetworkEjecter *)&v3 dealloc];
}

- (void)notifyClientAboutEject:(int)eject
{
  if (!eject)
  {
    mountedCount = self->_mountedCount;
    if (mountedCount)
    {
      v6 = self->_ejectedCount + 1;
      self->_ejectedCount = v6;
      if (v6 != mountedCount)
      {
        return;
      }
    }

    node = self->_node;
    SFNodeSetMountPoint();
    v8 = self->_node;
    SFNodeRemoveKind();
    v9 = self->_node;
    SFNodeSetConnectionState();
  }

  v13 = objc_opt_new();
  [v13 setObject:self->_node forKeyedSubscript:kSFOperationNodeKey];
  [v13 setObject:self->_flags forKeyedSubscript:kSFOperationFlagsKey];
  [v13 setObject:self->_protocol forKeyedSubscript:kSFOperationProtocolKey];
  if (eject)
  {
    v10 = [NSError errorWithDomain:@"SFNodeError" code:eject userInfo:0];
    [v13 setObject:v10 forKeyedSubscript:kSFOperationErrorKey];

    v11 = 10;
  }

  else
  {
    v11 = 9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkEjecter:self event:v11 withResults:v13];
}

- (void)eject
{
  node = self->_node;
  if (SFNodeIsMounted())
  {
    longValue = [(NSNumber *)self->_flags longValue];
    v5 = self->_node;
    IsSharePoint = SFNodeIsSharePoint();
    v7 = self->_node;
    if (IsSharePoint)
    {
      v8 = SFNodeCopyMountPoint();
      v9 = v8;
      if (v8)
      {
        v15 = v8;
        v10 = [NSArray arrayWithObjects:&v15 count:1];
        [(SDNetworkEjecter *)self ejectMountPoints:v10 useAssistant:(longValue >> 1) & 1];
      }

      else
      {
        [(SDNetworkEjecter *)self notifyClientAboutEject:0xFFFFFFFFLL];
      }
    }

    else if (SFNodeIsServer())
    {
      v11 = +[SDStatusMonitor sharedMonitor];
      v12 = self->_node;
      v13 = SFNodeCopyRealName();
      if ([(NSString *)self->_protocol isEqual:kSFNodeProtocolODisk])
      {
        [v11 odiskMountPointsForServer:v13];
      }

      else
      {
        [v11 mountPointsForServer:v13];
      }
      v14 = ;
      [(SDNetworkEjecter *)self ejectMountPoints:v14 useAssistant:(longValue >> 1) & 1];
    }
  }

  else
  {

    [(SDNetworkEjecter *)self notifyClientAboutEject:0];
  }
}

- (int)start
{
  if (!self->_protocol)
  {
    node = self->_node;
    v4 = sub_1001F1110();
    protocol = self->_protocol;
    self->_protocol = v4;

    if (!self->_protocol)
    {
      return -2;
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100174FCC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  return 0;
}

- (void)stop
{
  v2 = browser_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001750C4(v2);
  }
}

- (SDNetworkEjecterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end