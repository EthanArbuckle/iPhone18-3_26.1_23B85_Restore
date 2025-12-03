@interface MSDKPeerDemoTestScript
- (MSDKPeerDemoTestScript)initWithCoder:(id)coder;
- (MSDKPeerDemoTestScript)initWithName:(id)name andMethods:(id)methods;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDKPeerDemoTestScript

- (MSDKPeerDemoTestScript)initWithName:(id)name andMethods:(id)methods
{
  nameCopy = name;
  methodsCopy = methods;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoTestScript;
  v8 = [(MSDKPeerDemoTestScript *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDKPeerDemoTestScript *)v8 setName:nameCopy];
    [(MSDKPeerDemoTestScript *)v9 setMethods:methodsCopy];
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(MSDKPeerDemoTestScript *)self name];
  methods = [(MSDKPeerDemoTestScript *)self methods];
  v7 = [NSString stringWithFormat:@"<%@[%p]: Name=%@ Methods=%@>", v4, self, name, methods];

  return v7;
}

- (MSDKPeerDemoTestScript)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoTestScript;
  v5 = [(MSDKPeerDemoTestScript *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(MSDKPeerDemoTestScript *)v5 setName:v6];

    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"testMethods"];
    [(MSDKPeerDemoTestScript *)v5 setMethods:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(MSDKPeerDemoTestScript *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  methods = [(MSDKPeerDemoTestScript *)self methods];
  [coderCopy encodeObject:methods forKey:@"testMethods"];
}

@end