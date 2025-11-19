@interface ICNSBlockOperation
- (BOOL)canCoalesceWithOperation:(id)a3;
- (BOOL)isProcessObjectsForContextDidSaveOperation;
@end

@implementation ICNSBlockOperation

- (BOOL)canCoalesceWithOperation:(id)a3
{
  v4 = [a3 name];
  v5 = [(ICNSBlockOperation *)self name];
  v6 = 0;
  if (v5 && v4)
  {
    v7 = [(ICNSBlockOperation *)self name];
    v6 = [v7 isEqualToString:v4];
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
  v3 = [(ICNSBlockOperation *)self name];
  if (v3)
  {
    v4 = [(ICNSBlockOperation *)self name];
    v5 = [v4 isEqualToString:ICNSBlockOperationNameProcessObjectsForContextDidSave];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end