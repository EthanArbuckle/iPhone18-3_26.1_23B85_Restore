@interface NSArray
- (id)objectAtIndexOrNull:(unint64_t)null;
@end

@implementation NSArray

- (id)objectAtIndexOrNull:(unint64_t)null
{
  if ([(NSArray *)self count]<= null)
  {
    nextObject = 0;
  }

  else
  {
    v5 = [(NSArray *)self objectAtIndex:null];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectEnumerator = [v5 objectEnumerator];
      nextObject = [objectEnumerator nextObject];
    }

    else
    {
      nextObject = v5;
    }
  }

  return nextObject;
}

@end