@interface FilterQuery
- (FilterQuery)initWithSubsystem:(id)subsystem category:(id)category name:(id)name;
@end

@implementation FilterQuery

- (FilterQuery)initWithSubsystem:(id)subsystem category:(id)category name:(id)name
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = FilterQuery;
  v12 = [(FilterQuery *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_subsystem, subsystem);
    objc_storeStrong(&v13->_category, category);
    objc_storeStrong(&v13->_name, name);
  }

  return v13;
}

@end