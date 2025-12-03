@interface MOContactUtilities
+ (id)cNContactIdentifierFromPPContactIdentifier:(id)identifier;
@end

@implementation MOContactUtilities

+ (id)cNContactIdentifierFromPPContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"CN:"])
  {
    v4 = [identifierCopy substringFromIndex:{objc_msgSend(@"CN:", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end