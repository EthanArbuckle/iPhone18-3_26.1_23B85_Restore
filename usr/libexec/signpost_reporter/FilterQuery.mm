@interface FilterQuery
- (FilterQuery)initWithSubsystem:(id)a3 category:(id)a4 name:(id)a5;
@end

@implementation FilterQuery

- (FilterQuery)initWithSubsystem:(id)a3 category:(id)a4 name:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FilterQuery;
  v12 = [(FilterQuery *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_subsystem, a3);
    objc_storeStrong(&v13->_category, a4);
    objc_storeStrong(&v13->_name, a5);
  }

  return v13;
}

@end