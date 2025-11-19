@interface OS_firehose_client
- (OS_firehose_client)init;
- (void)dealloc;
@end

@implementation OS_firehose_client

- (void)dealloc
{
  sub_100009808(self);
  v3.receiver = self;
  v3.super_class = OS_firehose_client;
  [(OS_firehose_client *)&v3 dealloc];
}

- (OS_firehose_client)init
{
  qword_1000360E8 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

@end