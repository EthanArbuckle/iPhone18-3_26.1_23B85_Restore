@interface NSArray
- (id)objectAtIndexOrNull:(unint64_t)a3;
@end

@implementation NSArray

- (id)objectAtIndexOrNull:(unint64_t)a3
{
  if ([(NSArray *)self count]<= a3)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(NSArray *)self objectAtIndex:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectEnumerator];
      v7 = [v6 nextObject];
    }

    else
    {
      v7 = v5;
    }
  }

  return v7;
}

@end