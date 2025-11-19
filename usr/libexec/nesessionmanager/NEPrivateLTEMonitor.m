@interface NEPrivateLTEMonitor
- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5;
@end

@implementation NEPrivateLTEMonitor

- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@ connection state changed for context: %@", &v11, 0x16u);
  }

  if (!a4)
  {
    sub_1000ADDF4(self, v8, v9);
  }
}

@end