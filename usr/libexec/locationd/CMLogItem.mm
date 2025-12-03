@interface CMLogItem
- (CMLogItem)initWithCoder:(id)coder;
- (CMLogItem)initWithTimestamp:(double)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CMLogItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMLogItem;
  [(CMLogItem *)&v3 dealloc];
}

- (CMLogItem)initWithTimestamp:(double)timestamp
{
  v6.receiver = self;
  v6.super_class = CMLogItem;
  v4 = [(CMLogItem *)&v6 init];
  if (v4)
  {
    v4->_internalLogItem = [[CMLogItemInternal alloc] initWithTimestamp:timestamp];
  }

  return v4;
}

- (CMLogItem)initWithCoder:(id)coder
{
  [coder decodeDoubleForKey:@"kCMLogItemCodingKeyTimestamp"];

  return [(CMLogItem *)self initWithTimestamp:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(CMLogItem *)self timestamp];

  return [v4 initWithTimestamp:?];
}

@end