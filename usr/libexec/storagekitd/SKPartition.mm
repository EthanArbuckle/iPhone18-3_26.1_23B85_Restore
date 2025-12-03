@interface SKPartition
- (id)buildWithScheme:(int)scheme sectorSize:(unint64_t)size;
@end

@implementation SKPartition

- (id)buildWithScheme:(int)scheme sectorSize:(unint64_t)size
{
  v10 = 0;
  v5 = [(SKPartition *)self fs];
  [v5 contentMask];

  name = [(SKPartition *)self name];
  [(SKPartition *)self size];
  v7 = MKCFBuildPartition();

  v8 = v7;

  return v8;
}

@end