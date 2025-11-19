@interface _APMapEnumerator
- (id)nextObject;
@end

@implementation _APMapEnumerator

- (id)nextObject
{
  v3 = [(_APMapEnumerator *)self srcEnumerator];
  v4 = [v3 nextObject];

  if (v4)
  {
    v5 = [(_APMapEnumerator *)self transformationBlock];
    v6 = (v5)[2](v5, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end