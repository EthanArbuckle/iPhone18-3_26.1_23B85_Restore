@interface GKApplicationStateMonitor
- (BOOL)startObservingStateChangesForBundleID:(id)a3;
- (GKApplicationStateMonitor)init;
- (LSApplicationWorkspaceObserverProtocol)delegate;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsWillUninstall:(id)a3;
- (void)dealloc;
- (void)setHandler:(id)a3;
- (void)startObservingApplicationWorkspaceChanges;
- (void)stopObservingStateChangesForBundleID:(id)a3;
- (void)updateStateObservation;
@end

@implementation GKApplicationStateMonitor

- (GKApplicationStateMonitor)init
{
  v6.receiver = self;
  v6.super_class = GKApplicationStateMonitor;
  v2 = [(GKApplicationStateMonitor *)&v6 init];
  if (v2)
  {
    v3 = +[RBSProcessMonitor monitor];
    [(GKApplicationStateMonitor *)v2 setProcessMonitor:v3];

    v4 = +[NSMutableSet set];
    [(GKApplicationStateMonitor *)v2 setInterestedBundleIDs:v4];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKApplicationStateMonitor;
  [(GKApplicationStateMonitor *)&v4 dealloc];
}

- (void)setHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  handler = self->_handler;
  self->_handler = v5;

  objc_initWeak(&location, self);
  v7 = [(GKApplicationStateMonitor *)self processMonitor];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015D6A4;
  v8[3] = &unk_1003690E0;
  objc_copyWeak(&v9, &location);
  [v7 updateConfiguration:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)startObservingStateChangesForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(GKApplicationStateMonitor *)self interestedBundleIDs];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(GKApplicationStateMonitor *)self interestedBundleIDs];
    [v7 addObject:v4];

    [(GKApplicationStateMonitor *)self updateStateObservation];
  }

  return v6 ^ 1;
}

- (void)stopObservingStateChangesForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(GKApplicationStateMonitor *)self interestedBundleIDs];
  [v5 removeObject:v4];

  [(GKApplicationStateMonitor *)self updateStateObservation];
}

- (void)updateStateObservation
{
  objc_initWeak(&location, self);
  v3 = [(GKApplicationStateMonitor *)self processMonitor];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015DAD4;
  v4[3] = &unk_1003690E0;
  objc_copyWeak(&v5, &location);
  [v3 updateConfiguration:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)startObservingApplicationWorkspaceChanges
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[GKApplicationStateMonitor startObservingApplicationWorkspaceChanges]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
  }

  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 addObserver:self];
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[GKApplicationStateMonitor applicationsDidUninstall:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: %@", &v10, 0x16u);
  }

  v7 = [(GKApplicationStateMonitor *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(GKApplicationStateMonitor *)self delegate];
    [v9 applicationsDidUninstall:v4];
  }
}

- (void)applicationsWillUninstall:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[GKApplicationStateMonitor applicationsWillUninstall:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: %@", &v10, 0x16u);
  }

  v7 = [(GKApplicationStateMonitor *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(GKApplicationStateMonitor *)self delegate];
    [v9 applicationsWillUninstall:v4];
  }
}

- (LSApplicationWorkspaceObserverProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end