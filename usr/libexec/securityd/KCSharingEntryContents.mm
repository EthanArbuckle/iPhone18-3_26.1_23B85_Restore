@interface KCSharingEntryContents
- (KCSharingEntryContents)initWithContents:(id)contents fullyDecoded:(BOOL)decoded;
@end

@implementation KCSharingEntryContents

- (KCSharingEntryContents)initWithContents:(id)contents fullyDecoded:(BOOL)decoded
{
  contentsCopy = contents;
  v11.receiver = self;
  v11.super_class = KCSharingEntryContents;
  v8 = [(KCSharingEntryContents *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contents, contents);
    v9->_fullyDecoded = decoded;
  }

  return v9;
}

@end