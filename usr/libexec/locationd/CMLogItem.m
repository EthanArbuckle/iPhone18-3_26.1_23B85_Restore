@interface CMLogItem
- (CMLogItem)initWithCoder:(id)a3;
- (CMLogItem)initWithTimestamp:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CMLogItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMLogItem;
  [(CMLogItem *)&v3 dealloc];
}

- (CMLogItem)initWithTimestamp:(double)a3
{
  v6.receiver = self;
  v6.super_class = CMLogItem;
  v4 = [(CMLogItem *)&v6 init];
  if (v4)
  {
    v4->_internalLogItem = [[CMLogItemInternal alloc] initWithTimestamp:a3];
  }

  return v4;
}

- (CMLogItem)initWithCoder:(id)a3
{
  [a3 decodeDoubleForKey:@"kCMLogItemCodingKeyTimestamp"];

  return [(CMLogItem *)self initWithTimestamp:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(CMLogItem *)self timestamp];

  return [v4 initWithTimestamp:?];
}

@end