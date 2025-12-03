@interface SDWindowsBrowser
- (SDWindowsBrowser)initWithWorkgroup:(id)workgroup;
- (SDWindowsBrowserDelegate)delegate;
- (void)bonjourNodesDidChange:(id)change;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation SDWindowsBrowser

- (SDWindowsBrowser)initWithWorkgroup:(id)workgroup
{
  workgroupCopy = workgroup;
  v10.receiver = self;
  v10.super_class = SDWindowsBrowser;
  v6 = [(SDWindowsBrowser *)&v10 init];
  v7 = v6;
  if (v6)
  {
    browser = v6->_browser;
    v6->_browser = 0;

    objc_storeStrong(&v7->_workgroup, workgroup);
  }

  return v7;
}

- (void)dealloc
{
  [(SDWindowsBrowser *)self stop];
  v3.receiver = self;
  v3.super_class = SDWindowsBrowser;
  [(SDWindowsBrowser *)&v3 dealloc];
}

- (void)bonjourNodesDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained windowsNodesDidChange:self];
}

- (void)start
{
  if (!self->_browser)
  {
    v3 = [SDBonjourBrowser alloc];
    workgroup = self->_workgroup;
    v8 = @"_netbios._udp.";
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    v6 = [(SDBonjourBrowser *)v3 initWithDomain:workgroup types:v5];
    browser = self->_browser;
    self->_browser = v6;

    [(SDBonjourBrowser *)self->_browser setDelegate:self];
    [(SDBonjourBrowser *)self->_browser start];
  }
}

- (void)stop
{
  browser = self->_browser;
  if (browser)
  {
    [(SDBonjourBrowser *)browser setDelegate:0];
    [(SDBonjourBrowser *)self->_browser invalidate];
    v4 = self->_browser;
    self->_browser = 0;
  }
}

- (SDWindowsBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end