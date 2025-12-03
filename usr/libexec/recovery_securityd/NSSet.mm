@interface NSSet
- (BOOL)containsElementsNotIn:(id)in;
- (id)shortDescription;
- (id)sortedElementsTruncated:(unint64_t)truncated JoinedByString:(id)string;
@end

@implementation NSSet

- (id)shortDescription
{
  allObjects = [(NSSet *)self allObjects];
  v3 = [allObjects sortedArrayUsingSelector:"compare:"];
  v4 = [v3 concatenateWithSeparator:{@", "}];
  v5 = [NSString stringWithFormat:@"{[%@]}", v4];

  return v5;
}

- (id)sortedElementsTruncated:(unint64_t)truncated JoinedByString:(id)string
{
  stringCopy = string;
  +[NSMutableArray array];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10003C404;
  v14 = v13 = &unk_100064180;
  truncatedCopy = truncated;
  v7 = v14;
  [(NSSet *)self enumerateObjectsUsingBlock:&v10];
  [v7 sortUsingSelector:{"compare:", v10, v11, v12, v13}];
  v8 = [v7 componentsJoinedByString:stringCopy];

  return v8;
}

- (BOOL)containsElementsNotIn:(id)in
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003C5C0;
  v6[3] = &unk_100064158;
  inCopy = in;
  v7 = inCopy;
  v8 = &v9;
  [(NSSet *)self enumerateObjectsUsingBlock:v6];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

@end