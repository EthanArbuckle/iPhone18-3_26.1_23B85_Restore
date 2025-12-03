@interface SKDiskOperations
- (BOOL)isEqual:(id)equal;
- (SKDiskOperations)initWithWholeDiskOperation:(id)operation;
@end

@implementation SKDiskOperations

- (SKDiskOperations)initWithWholeDiskOperation:(id)operation
{
  operationCopy = operation;
  v11.receiver = self;
  v11.super_class = SKDiskOperations;
  v5 = [(SKDiskOperations *)&v11 init];
  if (v5)
  {
    v6 = [operationCopy copy];
    wholeDiskOperation = v5->_wholeDiskOperation;
    v5->_wholeDiskOperation = v6;

    v8 = +[NSMutableArray array];
    childrenOperations = v5->_childrenOperations;
    v5->_childrenOperations = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  wholeDiskOperation = [(SKDiskOperations *)self wholeDiskOperation];
  v6 = [wholeDiskOperation objectForKeyedSubscript:off_1000592F8];
  v7 = [equalCopy isEqual:v6];

  return v7;
}

@end