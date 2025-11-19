@interface PCSRegistryOperation
- (PCSRegistryOperation)init;
- (id)debugDescription;
- (id)description;
- (id)operationStateString;
- (id)pendingDependenciesString:(id)a3;
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
    v4 = [v3 UUIDString];
    operationUUID = v2->_operationUUID;
    v2->_operationUUID = v4;
  }

  return v2;
}

- (id)selfname
{
  v3 = [(PCSRegistryOperation *)self name];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (v3)
  {
    v6 = [(PCSRegistryOperation *)self name];
    v7 = [(PCSRegistryOperation *)self operationUUID];
    v8 = [NSString stringWithFormat:@"%@(%@, %@)", v5, v6, v7];
  }

  else
  {
    v6 = [(PCSRegistryOperation *)self operationUUID];
    v8 = [NSString stringWithFormat:@"%@(%@)", v5, v6];
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
  v3 = [(PCSRegistryOperation *)self operationStateString];
  v4 = [(PCSRegistryOperation *)self error];

  v5 = [(PCSRegistryOperation *)self selfname];
  if (v4)
  {
    v6 = [(PCSRegistryOperation *)self error];
    [NSString stringWithFormat:@"<%@: %@ error:%@>", v5, v3, v6];
  }

  else
  {
    v6 = [(PCSRegistryOperation *)self pendingDependenciesString:@" dep:"];
    [NSString stringWithFormat:@"<%@: %@%@>", v5, v3, v6];
  }
  v7 = ;

  return v7;
}

- (id)debugDescription
{
  v3 = [(PCSRegistryOperation *)self operationStateString];
  v4 = [(PCSRegistryOperation *)self error];

  v5 = [(PCSRegistryOperation *)self selfname];
  if (v4)
  {
    v6 = [(PCSRegistryOperation *)self error];
    [NSString stringWithFormat:@"<%@ (%p): %@ error:%@>", v5, self, v3, v6];
  }

  else
  {
    v6 = [(PCSRegistryOperation *)self pendingDependenciesString:@" dep:"];
    [NSString stringWithFormat:@"<%@ (%p): %@%@>", v5, self, v3, v6];
  }
  v7 = ;

  return v7;
}

- (id)pendingDependenciesString:(id)a3
{
  v4 = a3;
  v5 = [(PCSRegistryOperation *)self dependencies];
  v6 = [v5 copy];

  v7 = [v6 indexesOfObjectsPassingTest:&stru_1000187C8];
  v8 = [v6 objectsAtIndexes:v7];

  if ([v8 count])
  {
    v9 = [v8 componentsJoinedByString:{@", "}];
    v10 = [NSString stringWithFormat:@"%@%@", v4, v9];
  }

  else
  {
    v10 = &stru_100019048;
  }

  return v10;
}

@end