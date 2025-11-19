@interface NSArray
- (BOOL)ic_containsObjectPassingTest:(id)a3;
- (id)ic_arrayByAddingNonNilObject:(id)a3;
- (id)ic_arrayByAddingObjectsFromNonNilArray:(id)a3;
- (id)ic_arrayByGroupingIntoArraysWithMaxCount:(unint64_t)a3;
- (id)ic_map:(id)a3;
- (id)ic_objectAfter:(id)a3 wrap:(BOOL)a4;
- (id)ic_objectBefore:(id)a3 wrap:(BOOL)a4;
- (id)ic_objectPassingTest:(id)a3;
- (id)ic_objectsOfClass:(Class)a3;
- (id)ic_objectsPassingTest:(id)a3;
- (id)ic_randomObject;
- (id)jsonify;
- (unint64_t)ic_indexOfSortedObject:(id)a3 insertionIndex:(unint64_t *)a4 usingComparator:(id)a5;
@end

@implementation NSArray

- (id)ic_randomObject
{
  v3 = [(NSArray *)self count];
  if (v3)
  {
    v3 = [(NSArray *)self objectAtIndexedSubscript:arc4random_uniform([(NSArray *)self count])];
  }

  return v3;
}

- (id)ic_objectPassingTest:(id)a3
{
  v4 = [(NSArray *)self indexOfObjectPassingTest:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self objectAtIndex:v4];
  }

  return v5;
}

- (BOOL)ic_containsObjectPassingTest:(id)a3
{
  v3 = [(NSArray *)self ic_objectPassingTest:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)ic_objectsPassingTest:(id)a3
{
  v4 = [(NSArray *)self indexesOfObjectsPassingTest:a3];
  v5 = [(NSArray *)self objectsAtIndexes:v4];

  return v5;
}

- (id)ic_objectsOfClass:(Class)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BF740;
  v5[3] = &unk_1008DBF78;
  v5[4] = a3;
  v3 = [(NSArray *)self ic_objectsPassingTest:v5];

  return v3;
}

- (id)ic_arrayByGroupingIntoArraysWithMaxCount:(unint64_t)a3
{
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v9 count];
        if (!v9 || v13 >= a3)
        {
          v14 = [NSMutableArray arrayWithCapacity:a3];

          [v5 addObject:v14];
          v9 = v14;
        }

        [v9 addObject:v12];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v5;
}

- (unint64_t)ic_indexOfSortedObject:(id)a3 insertionIndex:(unint64_t *)a4 usingComparator:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NSArray *)self indexOfObject:v8 inSortedRange:0 options:[(NSArray *)self count] usingComparator:1280, v9];

  if (a4)
  {
    *a4 = v10;
  }

  if (v10 >= -[NSArray count](self, "count") || (-[NSArray objectAtIndexedSubscript:](self, "objectAtIndexedSubscript:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:v8], v11, (v12 & 1) == 0))
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)ic_objectBefore:(id)a3 wrap:(BOOL)a4
{
  v4 = a4;
  v6 = [(NSArray *)self indexOfObject:a3];
  v7 = 0;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8)
  {
    v7 = [(NSArray *)self objectAtIndexedSubscript:([(NSArray *)self count]+ v6 - 1) % [(NSArray *)self count]];
  }

  return v7;
}

- (id)ic_objectAfter:(id)a3 wrap:(BOOL)a4
{
  v6 = [(NSArray *)self indexOfObject:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v6, !a4) && v6 == [(NSArray *)self count]- 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSArray *)self objectAtIndexedSubscript:(v8 + 1) % [(NSArray *)self count]];
  }

  return v7;
}

- (id)ic_arrayByAddingNonNilObject:(id)a3
{
  v4 = self;
  v5 = v4;
  if (a3)
  {
    v6 = [(NSArray *)v4 arrayByAddingObject:a3];

    v5 = v6;
  }

  return v5;
}

- (id)ic_arrayByAddingObjectsFromNonNilArray:(id)a3
{
  v4 = self;
  v5 = v4;
  if (a3)
  {
    v6 = [(NSArray *)v4 arrayByAddingObjectsFromArray:a3];

    v5 = v6;
  }

  return v5;
}

- (id)ic_map:(id)a3
{
  v4 = a3;
  [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000BFCBC;
  v13 = v12 = &unk_1008DBFA0;
  v14 = v4;
  v5 = v13;
  v6 = v4;
  [(NSArray *)self enumerateObjectsUsingBlock:&v9];
  v7 = [v5 copy];

  return v7;
}

- (id)jsonify
{
  v2 = self;
  v3 = sub_10044F4F8(NSMutableArray_ptr, &NSArray.makeIterator());

  return v3;
}

@end