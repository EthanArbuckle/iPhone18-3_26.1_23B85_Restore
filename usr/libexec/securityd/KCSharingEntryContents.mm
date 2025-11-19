@interface KCSharingEntryContents
- (KCSharingEntryContents)initWithContents:(id)a3 fullyDecoded:(BOOL)a4;
@end

@implementation KCSharingEntryContents

- (KCSharingEntryContents)initWithContents:(id)a3 fullyDecoded:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = KCSharingEntryContents;
  v8 = [(KCSharingEntryContents *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contents, a3);
    v9->_fullyDecoded = a4;
  }

  return v9;
}

@end