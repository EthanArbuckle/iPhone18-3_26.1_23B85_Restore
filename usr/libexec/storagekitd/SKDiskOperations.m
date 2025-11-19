@interface SKDiskOperations
- (BOOL)isEqual:(id)a3;
- (SKDiskOperations)initWithWholeDiskOperation:(id)a3;
@end

@implementation SKDiskOperations

- (SKDiskOperations)initWithWholeDiskOperation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SKDiskOperations;
  v5 = [(SKDiskOperations *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    wholeDiskOperation = v5->_wholeDiskOperation;
    v5->_wholeDiskOperation = v6;

    v8 = +[NSMutableArray array];
    childrenOperations = v5->_childrenOperations;
    v5->_childrenOperations = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(SKDiskOperations *)self wholeDiskOperation];
  v6 = [v5 objectForKeyedSubscript:off_1000592F8];
  v7 = [v4 isEqual:v6];

  return v7;
}

@end