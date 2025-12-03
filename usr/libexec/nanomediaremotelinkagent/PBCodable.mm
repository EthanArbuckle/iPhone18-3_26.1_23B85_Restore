@interface PBCodable
- (id)nmr_valueForPotentiallyUndefinedKey:(id)key;
@end

@implementation PBCodable

- (id)nmr_valueForPotentiallyUndefinedKey:(id)key
{
  keyCopy = key;
  v5 = [keyCopy substringToIndex:1];
  uppercaseString = [v5 uppercaseString];
  v7 = [NSString stringWithFormat:@"has%@", uppercaseString];

  v8 = [keyCopy stringByReplacingCharactersInRange:0 withString:{1, v7}];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100026FD4;
  v15[3] = &unk_100049420;
  v15[4] = self;
  v16 = keyCopy;
  v9 = keyCopy;
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