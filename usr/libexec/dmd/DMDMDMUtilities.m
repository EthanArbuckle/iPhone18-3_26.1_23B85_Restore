@interface DMDMDMUtilities
+ (id)iTunesAccountHashForUniqueIdentifier:(id)a3;
@end

@implementation DMDMDMUtilities

+ (id)iTunesAccountHashForUniqueIdentifier:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = MCUSEnglishNumberFormatter();
    v5 = [v4 stringFromNumber:v3];

    if (v5)
    {
      v6 = [v5 dataUsingEncoding:4];
      v7 = [v6 dmd_sha1Hash];
      v8 = [v7 base64EncodedStringWithOptions:0];
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