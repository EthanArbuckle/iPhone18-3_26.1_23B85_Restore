@interface MOObjectZipper
- (BOOL)nextObjectPairWithHandler:(id)handler;
- (MOObjectZipper)initWithObjects:(id)objects others:(id)others comparator:(id)comparator;
@end

@implementation MOObjectZipper

- (MOObjectZipper)initWithObjects:(id)objects others:(id)others comparator:(id)comparator
{
  objectsCopy = objects;
  othersCopy = others;
  comparatorCopy = comparator;
  v25.receiver = self;
  v25.super_class = MOObjectZipper;
  v11 = [(MOObjectZipper *)&v25 init];
  if (v11)
  {
    v12 = [objectsCopy sortedArrayUsingComparator:comparatorCopy];

    v13 = [othersCopy sortedArrayUsingComparator:comparatorCopy];

    objectEnumerator = [v12 objectEnumerator];
    objectEnumerator = v11->objectEnumerator;
    v11->objectEnumerator = objectEnumerator;

    objectEnumerator2 = [v13 objectEnumerator];
    otherEnumerator = v11->otherEnumerator;
    v11->otherEnumerator = objectEnumerator2;

    nextObject = [(NSEnumerator *)v11->objectEnumerator nextObject];
    object = v11->object;
    v11->object = nextObject;

    nextObject2 = [(NSEnumerator *)v11->otherEnumerator nextObject];
    other = v11->other;
    v11->other = nextObject2;

    v22 = objc_retainBlock(comparatorCopy);
    objectComparator = v11->objectComparator;
    v11->objectComparator = v22;

    objectsCopy = v12;
    othersCopy = v13;
  }

  return v11;
}

- (BOOL)nextObjectPairWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->object && self->other)
  {
    (*(handlerCopy + 2))(handlerCopy);
    other = self->other;
    object = self->object;
    v8 = (*(self->objectComparator + 2))();
    v9 = 16;
    if (v8 == -1)
    {
      v9 = 8;
      v10 = 24;
    }

    else
    {
      v10 = 32;
    }

    nextObject = [*(&self->super.isa + v9) nextObject];
    v12 = *(&self->super.isa + v10);
    *(&self->super.isa + v10) = nextObject;

    hasNextObjectPair = [(MOObjectZipper *)self hasNextObjectPair];
  }

  else
  {
    hasNextObjectPair = 0;
  }

  return hasNextObjectPair;
}

@end