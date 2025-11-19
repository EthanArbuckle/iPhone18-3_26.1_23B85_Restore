@interface NSSet
+ (id)_gkSetOfResourcesWithIDs:(id)a3;
- (BOOL)_gkContainsObjectPassingPredicate:(id)a3;
- (id)_gkResourceWithID:(id)a3;
- (id)_gkResourcesWithIDs:(id)a3;
@end

@implementation NSSet

+ (id)_gkSetOfResourcesWithIDs:(id)a3
{
  v3 = [a3 _gkMapWithBlock:&stru_100367488];
  v4 = [objc_opt_class() setWithArray:v3];

  return v4;
}

- (id)_gkResourcesWithIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSSet *)self _gkResourceWithID:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_gkResourceWithID:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011D8E0;
  block[3] = &unk_100361770;
  v9 = a3;
  v4 = qword_1003B9228;
  v5 = v9;
  if (v4 != -1)
  {
    dispatch_once(&qword_1003B9228, block);
  }

  [qword_1003B9220 setResourceID:v5];
  v6 = [(NSSet *)self member:qword_1003B9220];

  return v6;
}

- (BOOL)_gkContainsObjectPassingPredicate:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011DA1C;
  v6[3] = &unk_1003674B0;
  v4 = a3;
  v7 = v4;
  v8 = &v9;
  [(NSSet *)self enumerateObjectsUsingBlock:v6];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

@end