@interface UninstallObserver
- (UninstallObserver)init;
- (UninstallObserverProtocol)delegate;
- (void)applicationsDidUninstall:(id)a3;
- (void)dealloc;
@end

@implementation UninstallObserver

- (UninstallObserver)init
{
  v5.receiver = self;
  v5.super_class = UninstallObserver;
  v2 = [(UninstallObserver *)&v5 init];
  if (v2)
  {
    v3 = +[LSApplicationWorkspace defaultWorkspace];
    [v3 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = UninstallObserver;
  [(UninstallObserver *)&v4 dealloc];
}

- (void)applicationsDidUninstall:(id)a3
{
  v5 = a3;
  v4 = [(UninstallObserver *)self delegate];
  [v4 applicationsDidUninstall:v5];
}

- (UninstallObserverProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end