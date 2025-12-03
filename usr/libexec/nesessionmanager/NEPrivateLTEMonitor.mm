@interface NEPrivateLTEMonitor
- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info;
@end

@implementation NEPrivateLTEMonitor

- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info
{
  changedCopy = changed;
  infoCopy = info;
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = changedCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@ connection state changed for context: %@", &v11, 0x16u);
  }

  if (!connection)
  {
    sub_1000ADDF4(self, changedCopy, infoCopy);
  }
}

@end