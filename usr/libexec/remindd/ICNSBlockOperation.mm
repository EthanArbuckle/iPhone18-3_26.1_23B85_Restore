@interface ICNSBlockOperation
- (BOOL)canCoalesceWithOperation:(id)operation;
- (BOOL)isProcessObjectsForContextDidSaveOperation;
@end

@implementation ICNSBlockOperation

- (BOOL)canCoalesceWithOperation:(id)operation
{
  name = [operation name];
  name2 = [(ICNSBlockOperation *)self name];
  v6 = 0;
  if (name2 && name)
  {
    name3 = [(ICNSBlockOperation *)self name];
    v6 = [name3 isEqualToString:name];
  }

  if (([(ICNSBlockOperation *)self isFinished]& 1) != 0 || ([(ICNSBlockOperation *)self isExecuting]& 1) != 0)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = ([(ICNSBlockOperation *)self isCancelled]^ 1) & v6;
  }

  return v8;
}

- (BOOL)isProcessObjectsForContextDidSaveOperation
{
  name = [(ICNSBlockOperation *)self name];
  if (name)
  {
    name2 = [(ICNSBlockOperation *)self name];
    v5 = [name2 isEqualToString:ICNSBlockOperationNameProcessObjectsForContextDidSave];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end