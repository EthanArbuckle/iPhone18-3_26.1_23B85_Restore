@interface NSSet
- (BOOL)containsElementsNotIn:(id)a3;
- (id)shortDescription;
- (id)sortedElementsTruncated:(unint64_t)a3 JoinedByString:(id)a4;
@end

@implementation NSSet

- (id)shortDescription
{
  v2 = [(NSSet *)self allObjects];
  v3 = [v2 sortedArrayUsingSelector:"compare:"];
  v4 = [v3 concatenateWithSeparator:{@", "}];
  v5 = [NSString stringWithFormat:@"{[%@]}", v4];

  return v5;
}

- (id)sortedElementsTruncated:(unint64_t)a3 JoinedByString:(id)a4
{
  v6 = a4;
  +[NSMutableArray array];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000887B4;
  v14 = v13 = &unk_100335DB0;
  v15 = a3;
  v7 = v14;
  [(NSSet *)self enumerateObjectsUsingBlock:&v10];
  [v7 sortUsingSelector:{"compare:", v10, v11, v12, v13}];
  v8 = [v7 componentsJoinedByString:v6];

  return v8;
}

- (BOOL)containsElementsNotIn:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100088970;
  v6[3] = &unk_100335D88;
  v4 = a3;
  v7 = v4;
  v8 = &v9;
  [(NSSet *)self enumerateObjectsUsingBlock:v6];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

@end