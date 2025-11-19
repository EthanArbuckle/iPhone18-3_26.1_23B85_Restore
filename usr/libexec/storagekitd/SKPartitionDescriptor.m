@interface SKPartitionDescriptor
- (id)newPartition;
@end

@implementation SKPartitionDescriptor

- (id)newPartition
{
  v3 = objc_opt_new();
  [v3 setSize:{-[SKPartitionDescriptor size](self, "size")}];
  v4 = [(SKPartitionDescriptor *)self innerDescriptor];
  v5 = [v4 filesystem];
  [v3 setFs:v5];

  return v3;
}

@end