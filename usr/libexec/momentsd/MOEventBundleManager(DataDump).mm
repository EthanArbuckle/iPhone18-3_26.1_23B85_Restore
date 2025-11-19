@interface MOEventBundleManager(DataDump)
@end

@implementation MOEventBundleManager(DataDump)

- (void)buildLabelsForEventBundles:()DataDump .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 metaData];
  v8 = [v7 allKeys];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "build labels, meta data, %@", a1, 0xCu);
}

@end