@interface NSArray
- (id)describeQHashes;
- (id)describeUAQHashes;
- (id)filterObjectsUsingBlock:(id)block;
@end

@implementation NSArray

- (id)describeUAQHashes
{
  if ([(NSArray *)self count])
  {
    v3 = +[NSMutableString string];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    selfCopy = self;
    v5 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
      do
      {
        v9 = 0;
        v10 = v7 + 1;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(selfCopy);
          }

          [v3 appendFormat:@"%x", objc_msgSend(*(*(&v13 + 1) + 8 * v9), "qhash")];
          if (v10 < [(NSArray *)selfCopy count])
          {
            [v3 appendString:{@", "}];
          }

          v9 = v9 + 1;
          ++v10;
        }

        while (v6 != v9);
        v7 += v6;
        v6 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)describeQHashes
{
  if ([(NSArray *)self count])
  {
    v3 = +[NSMutableString string];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    selfCopy = self;
    v5 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
      do
      {
        v9 = 0;
        v10 = v7 + 1;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(selfCopy);
          }

          [v3 appendFormat:@"%x", objc_msgSend(*(*(&v13 + 1) + 8 * v9), "unsignedIntValue")];
          if (v10 < [(NSArray *)selfCopy count])
          {
            [v3 appendString:{@", "}];
          }

          v9 = v9 + 1;
          ++v10;
        }

        while (v6 != v9);
        v7 += v6;
        v6 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)filterObjectsUsingBlock:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __49__NSArray_ua_extension__filterObjectsUsingBlock___block_invoke;
  v8[3] = &unk_1001513B0;
  blockCopy = block;
  v4 = blockCopy;
  v5 = [(NSArray *)self indexesOfObjectsPassingTest:v8];
  v6 = [(NSArray *)self objectsAtIndexes:v5];

  return v6;
}

@end