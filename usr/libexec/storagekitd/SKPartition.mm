@interface SKPartition
- (id)buildWithScheme:(int)a3 sectorSize:(unint64_t)a4;
@end

@implementation SKPartition

- (id)buildWithScheme:(int)a3 sectorSize:(unint64_t)a4
{
  v10 = 0;
  v5 = [(SKPartition *)self fs];
  [v5 contentMask];

  v6 = [(SKPartition *)self name];
  [(SKPartition *)self size];
  v7 = MKCFBuildPartition();

  v8 = v7;

  return v8;
}

@end