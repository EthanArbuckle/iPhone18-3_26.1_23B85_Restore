@interface CMLogItemInternal
- (CMLogItemInternal)initWithTimestamp:(double)timestamp;
@end

@implementation CMLogItemInternal

- (CMLogItemInternal)initWithTimestamp:(double)timestamp
{
  v5.receiver = self;
  v5.super_class = CMLogItemInternal;
  result = [(CMLogItemInternal *)&v5 init];
  if (result)
  {
    result->fTimestamp = timestamp;
  }

  return result;
}

@end