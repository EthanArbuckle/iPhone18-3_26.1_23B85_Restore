@interface StreamContext
- (StreamContext)init;
@end

@implementation StreamContext

- (StreamContext)init
{
  v3.receiver = self;
  v3.super_class = StreamContext;
  return [(StreamContext *)&v3 init];
}

@end