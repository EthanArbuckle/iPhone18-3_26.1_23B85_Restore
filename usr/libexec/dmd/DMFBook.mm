@interface DMFBook
- (id)initWithBook:(id)book;
@end

@implementation DMFBook

- (id)initWithBook:(id)book
{
  bookCopy = book;
  kind = [bookCopy kind];
  if ([kind isEqualToString:@"ibooks"])
  {
    v5 = 0;
  }

  else if ([kind isEqualToString:@"pdf"])
  {
    v5 = 1;
  }

  else if ([kind isEqualToString:@"epub"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  state = [bookCopy state];
  if ([state isEqualToString:@"Queued"])
  {
    v7 = 1;
  }

  else if ([state isEqualToString:@"PromptingForLogin"])
  {
    v7 = 2;
  }

  else if ([state isEqualToString:@"Updating"])
  {
    v7 = 3;
  }

  else if ([state isEqualToString:@"Installing"])
  {
    v7 = 4;
  }

  else if ([state isEqualToString:@"Managed"])
  {
    v7 = 7;
  }

  else if ([state isEqualToString:@"ManagedButUninstalled"])
  {
    v7 = 8;
  }

  else if ([state isEqualToString:@"Installed"])
  {
    v7 = 5;
  }

  else if ([state isEqualToString:@"Uninstalled"])
  {
    v7 = 6;
  }

  else if ([state isEqualToString:@"Failed"])
  {
    v7 = 9;
  }

  else
  {
    v7 = 0;
  }

  persistentID = [bookCopy persistentID];
  iTunesStoreID = [bookCopy iTunesStoreID];
  author = [bookCopy author];
  title = [bookCopy title];
  version = [bookCopy version];
  v13 = [(DMFBook *)self initWithPersistentID:persistentID iTunesStoreID:iTunesStoreID author:author title:title version:version type:v5 state:v7];

  return v13;
}

@end