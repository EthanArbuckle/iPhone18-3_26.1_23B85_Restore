@interface SKPartitionDescriptor
- (id)newPartition;
@end

@implementation SKPartitionDescriptor

- (id)newPartition
{
  v3 = objc_opt_new();
  [v3 setSize:{-[SKPartitionDescriptor size](self, "size")}];
  innerDescriptor = [(SKPartitionDescriptor *)self innerDescriptor];
  filesystem = [innerDescriptor filesystem];
  [v3 setFs:filesystem];

  return v3;
}

@end