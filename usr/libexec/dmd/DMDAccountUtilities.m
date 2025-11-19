@interface DMDAccountUtilities
+ (NSString)primaryAppleID;
@end

@implementation DMDAccountUtilities

+ (NSString)primaryAppleID
{
  v2 = objc_opt_new();
  v3 = [v2 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
  [v2 accountsWithAccountType:v3];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v16 = v3;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 accountProperties];
        v11 = [v10 objectForKeyedSubscript:@"primaryAccount"];
        v12 = [v11 BOOLValue];

        if (v12)
        {
          v14 = [v9 accountProperties];
          v13 = [v14 objectForKeyedSubscript:@"appleId"];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v13 = 0;
LABEL_11:
    v3 = v16;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end