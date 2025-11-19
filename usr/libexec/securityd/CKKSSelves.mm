@interface CKKSSelves
- (CKKSSelves)initWithCurrent:(id)a3 allSelves:(id)a4;
- (id)description;
@end

@implementation CKKSSelves

- (id)description
{
  v3 = [(CKKSSelves *)self allSelves];
  v4 = [v3 mutableCopy];

  v5 = [(CKKSSelves *)self currentSelf];
  [(__CFString *)v4 removeObject:v5];

  v6 = [(CKKSSelves *)self currentSelf];
  v7 = [(__CFString *)v4 count];
  v8 = @"(no past selves)";
  if (v7)
  {
    v8 = v4;
  }

  v9 = [NSString stringWithFormat:@"<CKKSSelves: %@ %@>", v6, v8];

  return v9;
}

- (CKKSSelves)initWithCurrent:(id)a3 allSelves:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CKKSSelves;
  v9 = [(CKKSSelves *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currentSelf, a3);
    if (v8)
    {
      v11 = [v8 setByAddingObject:v7];
    }

    else
    {
      if (v7)
      {
        [NSSet setWithObject:v7];
      }

      else
      {
        +[NSSet set];
      }
      v11 = ;
    }

    allSelves = v10->_allSelves;
    v10->_allSelves = v11;
  }

  return v10;
}

@end