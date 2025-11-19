@interface PBCodable
- (id)nmr_valueForPotentiallyUndefinedKey:(id)a3;
@end

@implementation PBCodable

- (id)nmr_valueForPotentiallyUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [v4 substringToIndex:1];
  v6 = [v5 uppercaseString];
  v7 = [NSString stringWithFormat:@"has%@", v6];

  v8 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v7}];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100026FD4;
  v15[3] = &unk_100049420;
  v15[4] = self;
  v16 = v4;
  v9 = v4;
  v10 = objc_retainBlock(v15);
  v11 = NSSelectorFromString(v8);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v12 = [(PBCodable *)self methodForSelector:v11]) != 0 && v12(self, v11))
  {
    v13 = (v10[2])(v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end