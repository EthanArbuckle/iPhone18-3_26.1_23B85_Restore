@interface _DASGroupManagedObject
- (void)willSave;
@end

@implementation _DASGroupManagedObject

- (void)willSave
{
  v3 = [(_DASGroupManagedObject *)self activities];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(_DASGroupManagedObject *)self managedObjectContext];
    [v5 deleteObject:self];
  }
}

@end