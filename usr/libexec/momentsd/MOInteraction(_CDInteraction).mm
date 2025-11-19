@interface MOInteraction(_CDInteraction)
@end

@implementation MOInteraction(_CDInteraction)

- (void)initWithCDInteraction:()_CDInteraction meIdentifier:.cold.1(void *a1, NSObject *a2)
{
  v4 = [a1 sender];
  v5 = [v4 identifier];
  v6 = [a1 sender];
  v7 = 138412546;
  v8 = v5;
  v9 = 2048;
  v10 = [v6 contactIdType];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "sender with ID, %@, CDContactIDType, %ld", &v7, 0x16u);
}

@end