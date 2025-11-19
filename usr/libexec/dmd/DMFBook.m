@interface DMFBook
- (id)initWithBook:(id)a3;
@end

@implementation DMFBook

- (id)initWithBook:(id)a3
{
  v3 = a3;
  v4 = [v3 kind];
  if ([v4 isEqualToString:@"ibooks"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"pdf"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"epub"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [v3 state];
  if ([v6 isEqualToString:@"Queued"])
  {
    v7 = 1;
  }

  else if ([v6 isEqualToString:@"PromptingForLogin"])
  {
    v7 = 2;
  }

  else if ([v6 isEqualToString:@"Updating"])
  {
    v7 = 3;
  }

  else if ([v6 isEqualToString:@"Installing"])
  {
    v7 = 4;
  }

  else if ([v6 isEqualToString:@"Managed"])
  {
    v7 = 7;
  }

  else if ([v6 isEqualToString:@"ManagedButUninstalled"])
  {
    v7 = 8;
  }

  else if ([v6 isEqualToString:@"Installed"])
  {
    v7 = 5;
  }

  else if ([v6 isEqualToString:@"Uninstalled"])
  {
    v7 = 6;
  }

  else if ([v6 isEqualToString:@"Failed"])
  {
    v7 = 9;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 persistentID];
  v9 = [v3 iTunesStoreID];
  v10 = [v3 author];
  v11 = [v3 title];
  v12 = [v3 version];
  v13 = [(DMFBook *)self initWithPersistentID:v8 iTunesStoreID:v9 author:v10 title:v11 version:v12 type:v5 state:v7];

  return v13;
}

@end