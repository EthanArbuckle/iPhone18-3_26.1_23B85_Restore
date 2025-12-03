@interface PCSRegistryOperation
- (PCSRegistryOperation)init;
- (id)debugDescription;
- (id)description;
- (id)operationStateString;
- (id)pendingDependenciesString:(id)string;
- (id)selfname;
@end

@implementation PCSRegistryOperation

- (PCSRegistryOperation)init
{
  v7.receiver = self;
  v7.super_class = PCSRegistryOperation;
  v2 = [(PCSRegistryOperation *)&v7 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    uUIDString = [v3 UUIDString];
    operationUUID = v2->_operationUUID;
    v2->_operationUUID = uUIDString;
  }

  return v2;
}

- (id)selfname
{
  name = [(PCSRegistryOperation *)self name];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (name)
  {
    name2 = [(PCSRegistryOperation *)self name];
    operationUUID = [(PCSRegistryOperation *)self operationUUID];
    v8 = [NSString stringWithFormat:@"%@(%@, %@)", v5, name2, operationUUID];
  }

  else
  {
    name2 = [(PCSRegistryOperation *)self operationUUID];
    v8 = [NSString stringWithFormat:@"%@(%@)", v5, name2];
  }

  return v8;
}

- (id)operationStateString
{
  if (([(PCSRegistryOperation *)self isFinished]& 1) != 0)
  {
    v3 = @"finished ";
  }

  else if (([(PCSRegistryOperation *)self isCancelled]& 1) != 0)
  {
    v3 = @"cancelled";
  }

  else if (([(PCSRegistryOperation *)self isExecuting]& 1) != 0)
  {
    v3 = @"executing";
  }

  else if ([(PCSRegistryOperation *)self isReady])
  {
    v3 = @"ready";
  }

  else
  {
    v3 = @"pending";
  }

  return v3;
}

- (id)description
{
  operationStateString = [(PCSRegistryOperation *)self operationStateString];
  error = [(PCSRegistryOperation *)self error];

  selfname = [(PCSRegistryOperation *)self selfname];
  if (error)
  {
    error2 = [(PCSRegistryOperation *)self error];
    [NSString stringWithFormat:@"<%@: %@ error:%@>", selfname, operationStateString, error2];
  }

  else
  {
    error2 = [(PCSRegistryOperation *)self pendingDependenciesString:@" dep:"];
    [NSString stringWithFormat:@"<%@: %@%@>", selfname, operationStateString, error2];
  }
  v7 = ;

  return v7;
}

- (id)debugDescription
{
  operationStateString = [(PCSRegistryOperation *)self operationStateString];
  error = [(PCSRegistryOperation *)self error];

  selfname = [(PCSRegistryOperation *)self selfname];
  if (error)
  {
    error2 = [(PCSRegistryOperation *)self error];
    [NSString stringWithFormat:@"<%@ (%p): %@ error:%@>", selfname, self, operationStateString, error2];
  }

  else
  {
    error2 = [(PCSRegistryOperation *)self pendingDependenciesString:@" dep:"];
    [NSString stringWithFormat:@"<%@ (%p): %@%@>", selfname, self, operationStateString, error2];
  }
  v7 = ;

  return v7;
}

- (id)pendingDependenciesString:(id)string
{
  stringCopy = string;
  dependencies = [(PCSRegistryOperation *)self dependencies];
  v6 = [dependencies copy];

  v7 = [v6 indexesOfObjectsPassingTest:&stru_1000187C8];
  v8 = [v6 objectsAtIndexes:v7];

  if ([v8 count])
  {
    v9 = [v8 componentsJoinedByString:{@", "}];
    v10 = [NSString stringWithFormat:@"%@%@", stringCopy, v9];
  }

  else
  {
    v10 = &stru_100019048;
  }

  return v10;
}

@end