@interface SDWorkgroupBrowser
+ (id)sharedBrowser;
- (NSSet)workgroups;
- (SDWorkgroupBrowser)init;
- (void)bonjourNodesDidChange:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation SDWorkgroupBrowser

+ (id)sharedBrowser
{
  if (qword_100989EC0 != -1)
  {
    sub_100136868();
  }

  v3 = qword_100989EC8;

  return v3;
}

- (SDWorkgroupBrowser)init
{
  v6.receiver = self;
  v6.super_class = SDWorkgroupBrowser;
  v2 = [(SDWorkgroupBrowser *)&v6 init];
  v3 = v2;
  if (v2)
  {
    browser = v2->_browser;
    v2->_browser = 0;

    v3->_clientCount = 0;
  }

  return v3;
}

- (NSSet)workgroups
{
  v2 = [(SDWorkgroupBrowser *)self nodes];
  v3 = v2;
  if (v2)
  {
    v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v2 count]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = SFNodeCopyRealName();
          [v4 addObject:{v11, v13}];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)bonjourNodesDidChange:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"com.apple.sharingd.WorkgroupsChanged" object:0 userInfo:0];
}

- (void)start
{
  clientCount = self->_clientCount;
  self->_clientCount = clientCount + 1;
  if (!clientCount)
  {
    v4 = [SDBonjourBrowser alloc];
    v8 = @"_workgroups._udp.";
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    v6 = [(SDBonjourBrowser *)v4 initWithDomain:@"local" types:v5];
    browser = self->_browser;
    self->_browser = v6;

    [(SDBonjourBrowser *)self->_browser setDelegate:self];
    [(SDBonjourBrowser *)self->_browser start];
  }
}

- (void)stop
{
  v3 = self->_clientCount - 1;
  self->_clientCount = v3;
  if (!v3)
  {
    [(SDBonjourBrowser *)self->_browser setDelegate:0];
    [(SDBonjourBrowser *)self->_browser invalidate];
    browser = self->_browser;
    self->_browser = 0;
  }
}

@end