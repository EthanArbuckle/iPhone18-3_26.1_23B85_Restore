@interface NSArray
- (BOOL)ic_containsObjectPassingTest:(id)test;
- (id)ic_arrayByAddingNonNilObject:(id)object;
- (id)ic_arrayByAddingObjectsFromNonNilArray:(id)array;
- (id)ic_arrayByGroupingIntoArraysWithMaxCount:(unint64_t)count;
- (id)ic_map:(id)ic_map;
- (id)ic_objectAfter:(id)after wrap:(BOOL)wrap;
- (id)ic_objectBefore:(id)before wrap:(BOOL)wrap;
- (id)ic_objectPassingTest:(id)test;
- (id)ic_objectsOfClass:(Class)class;
- (id)ic_objectsPassingTest:(id)test;
- (id)ic_randomObject;
- (id)jsonify;
- (unint64_t)ic_indexOfSortedObject:(id)object insertionIndex:(unint64_t *)index usingComparator:(id)comparator;
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

- (id)ic_objectPassingTest:(id)test
{
  v4 = [(NSArray *)self indexOfObjectPassingTest:test];
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

- (BOOL)ic_containsObjectPassingTest:(id)test
{
  v3 = [(NSArray *)self ic_objectPassingTest:test];
  v4 = v3 != 0;

  return v4;
}

- (id)ic_objectsPassingTest:(id)test
{
  v4 = [(NSArray *)self indexesOfObjectsPassingTest:test];
  v5 = [(NSArray *)self objectsAtIndexes:v4];

  return v5;
}

- (id)ic_objectsOfClass:(Class)class
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BF740;
  v5[3] = &unk_1008DBF78;
  v5[4] = class;
  v3 = [(NSArray *)self ic_objectsPassingTest:v5];

  return v3;
}

- (id)ic_arrayByGroupingIntoArraysWithMaxCount:(unint64_t)count
{
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v9 count];
        if (!v9 || v13 >= count)
        {
          v14 = [NSMutableArray arrayWithCapacity:count];

          [v5 addObject:v14];
          v9 = v14;
        }

        [v9 addObject:v12];
      }

      v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v5;
}

- (unint64_t)ic_indexOfSortedObject:(id)object insertionIndex:(unint64_t *)index usingComparator:(id)comparator
{
  objectCopy = object;
  comparatorCopy = comparator;
  comparatorCopy = [(NSArray *)self indexOfObject:objectCopy inSortedRange:0 options:[(NSArray *)self count] usingComparator:1280, comparatorCopy];

  if (index)
  {
    *index = comparatorCopy;
  }

  if (comparatorCopy >= -[NSArray count](self, "count") || (-[NSArray objectAtIndexedSubscript:](self, "objectAtIndexedSubscript:", comparatorCopy), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:objectCopy], v11, (v12 & 1) == 0))
  {
    comparatorCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  return comparatorCopy;
}

- (id)ic_objectBefore:(id)before wrap:(BOOL)wrap
{
  wrapCopy = wrap;
  v6 = [(NSArray *)self indexOfObject:before];
  v7 = 0;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = wrapCopy;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8)
  {
    v7 = [(NSArray *)self objectAtIndexedSubscript:([(NSArray *)self count]+ v6 - 1) % [(NSArray *)self count]];
  }

  return v7;
}

- (id)ic_objectAfter:(id)after wrap:(BOOL)wrap
{
  v6 = [(NSArray *)self indexOfObject:after];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v6, !wrap) && v6 == [(NSArray *)self count]- 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSArray *)self objectAtIndexedSubscript:(v8 + 1) % [(NSArray *)self count]];
  }

  return v7;
}

- (id)ic_arrayByAddingNonNilObject:(id)object
{
  selfCopy = self;
  v5 = selfCopy;
  if (object)
  {
    v6 = [(NSArray *)selfCopy arrayByAddingObject:object];

    v5 = v6;
  }

  return v5;
}

- (id)ic_arrayByAddingObjectsFromNonNilArray:(id)array
{
  selfCopy = self;
  v5 = selfCopy;
  if (array)
  {
    v6 = [(NSArray *)selfCopy arrayByAddingObjectsFromArray:array];

    v5 = v6;
  }

  return v5;
}

- (id)ic_map:(id)ic_map
{
  ic_mapCopy = ic_map;
  [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000BFCBC;
  v13 = v12 = &unk_1008DBFA0;
  v14 = ic_mapCopy;
  v5 = v13;
  v6 = ic_mapCopy;
  [(NSArray *)self enumerateObjectsUsingBlock:&v9];
  v7 = [v5 copy];

  return v7;
}

- (id)jsonify
{
  selfCopy = self;
  v3 = sub_10044F4F8(NSMutableArray_ptr, &NSArray.makeIterator());

  return v3;
}

@end