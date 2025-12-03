@interface DMDMDMUtilities
+ (id)iTunesAccountHashForUniqueIdentifier:(id)identifier;
@end

@implementation DMDMDMUtilities

+ (id)iTunesAccountHashForUniqueIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v4 = MCUSEnglishNumberFormatter();
    v5 = [v4 stringFromNumber:identifierCopy];

    if (v5)
    {
      v6 = [v5 dataUsingEncoding:4];
      dmd_sha1Hash = [v6 dmd_sha1Hash];
      v8 = [dmd_sha1Hash base64EncodedStringWithOptions:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end