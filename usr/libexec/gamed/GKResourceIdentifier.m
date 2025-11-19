@interface GKResourceIdentifier
+ (id)resourceIdentifierForKeys:(id)a3;
+ (id)resourceIdentifiersForBagKeys:(id)a3;
- (BOOL)isEqual:(id)a3;
- (GKResourceIdentifier)initWithKeys:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation GKResourceIdentifier

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GKResourceIdentifier allocWithZone:a3];
  keys = self->_keys;

  return [(GKResourceIdentifier *)v4 initWithKeys:keys];
}

- (GKResourceIdentifier)initWithKeys:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v5 = [NSString stringWithFormat:@"A GKResourceIdentifier must have at least one key"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKResourceManager.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (0 < [keys count])\n[%s (%s:%d)]", v5, "-[GKResourceIdentifier initWithKeys:]", [v7 UTF8String], 35);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v18.receiver = self;
  v18.super_class = GKResourceIdentifier;
  v9 = [(GKResourceIdentifier *)&v18 init];
  if (v9)
  {
    v10 = [v4 copy];
    keys = v9->_keys;
    v9->_keys = v10;

    v12 = [NSMutableString stringWithString:@"com.apple.gamed.resourceQueue"];
    v13 = v9->_keys;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F73CC;
    v16[3] = &unk_100366858;
    v17 = v12;
    v14 = v12;
    [(NSArray *)v13 enumerateObjectsUsingBlock:v16];
  }

  return v9;
}

+ (id)resourceIdentifiersForBagKeys:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F7484;
  v5[3] = &unk_100366878;
  v5[4] = a1;
  v3 = [a3 _gkMapWithBlock:v5];

  return v3;
}

+ (id)resourceIdentifierForKeys:(id)a3
{
  v3 = a3;
  v4 = [[GKResourceIdentifier alloc] initWithKeys:v3];

  return v4;
}

- (unint64_t)hash
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = [(NSArray *)self->_keys hash];
  keys = self->_keys;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F7660;
  v6[3] = &unk_100364338;
  v6[4] = &v7;
  [(NSArray *)keys enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  keys = self->_keys;
  v4 = [a3 keys];
  LOBYTE(keys) = [(NSArray *)keys isEqual:v4];

  return keys;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = GKResourceIdentifier;
  v3 = [(GKResourceIdentifier *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ keys: %@", v3, self->_keys];

  return v4;
}

@end