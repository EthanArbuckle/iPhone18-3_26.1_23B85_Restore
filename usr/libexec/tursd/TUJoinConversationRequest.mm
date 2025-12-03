@interface TUJoinConversationRequest
- (void)nph_logWithReason:(id)reason indented:(BOOL)indented;
@end

@implementation TUJoinConversationRequest

- (void)nph_logWithReason:(id)reason indented:(BOOL)indented
{
  indentedCopy = indented;
  reasonCopy = reason;
  v7 = &stru_100014D40;
  if (indentedCopy)
  {
    v7 = @"\t";
  }

  v8 = v7;
  v9 = sub_100001C24();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138413058;
    v11 = v8;
    v12 = 2112;
    v13 = reasonCopy;
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@%@ TUJoinConversationRequest %p: %@", &v10, 0x2Au);
  }
}

@end