@interface SDNetworkResolver
- (SDNetworkResolver)initWithNode:(__SFNode *)a3;
- (SDNetworkResolverDelegate)delegate;
- (int)start;
- (void)bonjourResolverDidChange:(id)a3;
- (void)dealloc;
- (void)notifyClientAboutResolve:(int)a3;
- (void)stop;
@end

@implementation SDNetworkResolver

- (SDNetworkResolver)initWithNode:(__SFNode *)a3
{
  v10.receiver = self;
  v10.super_class = SDNetworkResolver;
  v4 = [(SDNetworkResolver *)&v10 init];
  v5 = v4;
  if (v4)
  {
    flags = v4->_flags;
    v4->_flags = 0;

    v5->_node = CFRetain(a3);
    protocol = v5->_protocol;
    v5->_protocol = 0;

    resolver = v5->_resolver;
    v5->_resolver = 0;

    v5->_session = 0;
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_node);
  v3.receiver = self;
  v3.super_class = SDNetworkResolver;
  [(SDNetworkResolver *)&v3 dealloc];
}

- (void)notifyClientAboutResolve:(int)a3
{
  v8 = objc_opt_new();
  [v8 setObject:self->_node forKeyedSubscript:kSFOperationNodeKey];
  [v8 setObject:self->_flags forKeyedSubscript:kSFOperationFlagsKey];
  [v8 setObject:self->_protocol forKeyedSubscript:kSFOperationProtocolKey];
  if (a3)
  {
    v5 = [NSError errorWithDomain:@"SFNodeError" code:a3 userInfo:0];
    [v8 setObject:v5 forKeyedSubscript:kSFOperationErrorKey];

    v6 = 10;
  }

  else
  {
    v6 = 9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkResolver:self event:v6 withResults:v8];

  [(SDNetworkResolver *)self stop];
}

- (void)bonjourResolverDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 error];
  if (v5)
  {
    v6 = v5;
    v7 = browser_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100132474(v6, v7);
    }

    v8 = self;
    v9 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  node = self->_node;
  v11 = SFNodeCopyURL();
  if (v11)
  {
    v12 = v11;
    v13 = CFURLCopyScheme(v11);
    if (v13)
    {
      v14 = v13;
      v15 = CFURLCopyPath(v12);
      if (v15)
      {
        v16 = v15;
        v17 = [v4 hostName];
        v18 = [v4 portNumber];
        v19 = sub_1001174F4(v14, 0, 0, v17, [v18 intValue], v16, 0, 0);

        v20 = self->_node;
        SFNodeSetURL();
        if (v19)
        {
          CFRelease(v19);
        }

        CFRelease(v16);
      }

      CFRelease(v14);
    }

    CFRelease(v12);
  }

  else
  {
    v21 = self->_node;
    v22 = [v4 portNumber];
    [v22 intValue];
    SFNodeSetPortNumber();

    v23 = self->_node;
    v24 = [v4 hostName];
    SFNodeSetHostName();

    v25 = self->_node;
    v26 = [v4 path];
    SFNodeSetPath();

    v27 = self->_node;
    v28 = [v4 url];
    SFNodeSetURL();
  }

  if ([(NSString *)self->_protocol isEqualToString:kSFNodeProtocolVNC])
  {
    v8 = self;
    v9 = 0;
LABEL_16:
    [(SDNetworkResolver *)v8 notifyClientAboutResolve:v9];
    goto LABEL_17;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(SDNetworkResolver *)self mount];
  }

LABEL_17:
}

- (int)start
{
  protocol = self->_protocol;
  if (!protocol)
  {
    node = self->_node;
    v5 = sub_1001F1110();
    v6 = self->_protocol;
    self->_protocol = v5;

    protocol = self->_protocol;
    if (!protocol)
    {
      return -2;
    }
  }

  if ([(NSString *)protocol isEqualToString:kSFNodeProtocolODisk])
  {
    v7 = self->_node;
    v8 = SFNodeCopyURL();
    v9 = self->_node;
    v10 = SFNodeCopyDomain();
    v11 = self->_node;
    v12 = SFNodeCopyServiceName();
    v13 = v12;
    if (v8)
    {
      v14 = _CFNetServiceCreateFromURL();
      if (v14)
      {
        v15 = v14;
        v16 = [SDBonjourResolver alloc];
        Name = CFNetServiceGetName(v15);
        Type = CFNetServiceGetType(v15);
        v19 = [(SDBonjourResolver *)v16 initWithName:Name type:Type domain:CFNetServiceGetDomain(v15) path:0 timeout:0];
        resolver = self->_resolver;
        self->_resolver = v19;

        [(SDBonjourResolver *)self->_resolver setDelegate:self];
        [(SDBonjourResolver *)self->_resolver resolve];
        CFRelease(v15);
LABEL_18:

        goto LABEL_19;
      }

      if (!v13 || !v10)
      {
        goto LABEL_18;
      }
    }

    else if (!v12 || !v10)
    {
      v21 = browser_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1001324EC(v21);
      }

LABEL_24:

      return -2;
    }

    v22 = sub_100118668(self->_protocol);
    if (v22)
    {
      v23 = v22;
      v24 = self->_node;
      v25 = SFNodeCopyRealName();
      v26 = [SDBonjourResolver alloc];
      v27 = self->_node;
      if (SFNodeIsSharePoint())
      {
        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      v29 = [(SDBonjourResolver *)v26 initWithName:v13 type:v23 domain:v10 path:v28 timeout:0];
      v30 = self->_resolver;
      self->_resolver = v29;

      [(SDBonjourResolver *)self->_resolver setDelegate:self];
      [(SDBonjourResolver *)self->_resolver resolve];

      goto LABEL_18;
    }

    v21 = browser_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100132530(v21);
    }

    goto LABEL_24;
  }

LABEL_19:
  if (!self->_resolver)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100132358;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  return 0;
}

- (void)stop
{
  resolver = self->_resolver;
  if (resolver)
  {
    [(SDBonjourResolver *)resolver setDelegate:0];
    [(SDBonjourResolver *)self->_resolver cancel];
    v4 = self->_resolver;
    self->_resolver = 0;
  }
}

- (SDNetworkResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end