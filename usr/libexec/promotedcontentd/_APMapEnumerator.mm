@interface _APMapEnumerator
- (id)nextObject;
@end

@implementation _APMapEnumerator

- (id)nextObject
{
  srcEnumerator = [(_APMapEnumerator *)self srcEnumerator];
  nextObject = [srcEnumerator nextObject];

  if (nextObject)
  {
    transformationBlock = [(_APMapEnumerator *)self transformationBlock];
    v6 = (transformationBlock)[2](transformationBlock, nextObject);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end