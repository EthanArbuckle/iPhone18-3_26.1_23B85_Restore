@interface NSDictionary
- (id)ic_prettyDescriptionWithTabLevel:(unint64_t)level;
- (id)jsonify;
@end

@implementation NSDictionary

- (id)ic_prettyDescriptionWithTabLevel:(unint64_t)level
{
  v5 = objc_alloc_init(NSMutableString);
  [v5 appendString:@"{\n"];
  if (level)
  {
    v6 = &stru_1008FE8A0;
    levelCopy = level;
    do
    {
      v8 = [(__CFString *)v6 stringByAppendingString:@"\t"];

      v6 = v8;
      --levelCopy;
    }

    while (levelCopy);
  }

  else
  {
    v8 = &stru_1008FE8A0;
  }

  v9 = [(__CFString *)v8 stringByAppendingString:@"\t"];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100067898;
  v18 = &unk_1008D98C8;
  v10 = v5;
  v19 = v10;
  v20 = v9;
  levelCopy2 = level;
  v11 = v9;
  [(NSDictionary *)self enumerateKeysAndObjectsUsingBlock:&v15];
  [v10 appendFormat:@"%@}", v8, v15, v16, v17, v18];
  v12 = v20;
  v13 = v10;

  return v10;
}

- (id)jsonify
{
  selfCopy = self;
  v3 = sub_10044F760();

  return v3;
}

@end