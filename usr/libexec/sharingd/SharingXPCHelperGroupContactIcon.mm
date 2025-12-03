@interface SharingXPCHelperGroupContactIcon
- (SharingXPCHelperGroupContactIcon)initWithCoder:(id)coder;
- (SharingXPCHelperGroupContactIcon)initWithContacts:(id)contacts icon:(CGImage *)icon atIndex:(int64_t)index cacheLookupKey:(id)key;
- (SharingXPCHelperGroupContactIcon)initWithContacts:(id)contacts iconData:(id)data atIndex:(int64_t)index cacheLookupKey:(id)key;
- (id)contactIDs;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SharingXPCHelperGroupContactIcon

- (SharingXPCHelperGroupContactIcon)initWithContacts:(id)contacts iconData:(id)data atIndex:(int64_t)index cacheLookupKey:(id)key
{
  contactsCopy = contacts;
  v15.receiver = self;
  v15.super_class = SharingXPCHelperGroupContactIcon;
  v12 = [(SharingXPCHelperContactIcon *)&v15 initWithContact:0 iconData:data atIndex:index cacheLookupKey:key];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contacts, contacts);
  }

  return v13;
}

- (SharingXPCHelperGroupContactIcon)initWithContacts:(id)contacts icon:(CGImage *)icon atIndex:(int64_t)index cacheLookupKey:(id)key
{
  contactsCopy = contacts;
  v15.receiver = self;
  v15.super_class = SharingXPCHelperGroupContactIcon;
  v12 = [(SharingXPCHelperContactIcon *)&v15 initWithContact:0 icon:icon atIndex:index cacheLookupKey:key];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contacts, contacts);
  }

  return v13;
}

- (SharingXPCHelperGroupContactIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SharingXPCHelperGroupContactIcon;
  v5 = [(SharingXPCHelperContactIcon *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SharingXPCHelperGroupContactIcon;
  [(SharingXPCHelperContactIcon *)&v6 encodeWithCoder:coderCopy];
  contacts = self->_contacts;
  if (contacts)
  {
    [coderCopy encodeObject:contacts forKey:@"SharingXPCHelperGroupContactIcon-Contacts"];
  }
}

- (id)contactIDs
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  contacts = [(SharingXPCHelperGroupContactIcon *)self contacts];
  v5 = [contacts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(contacts);
        }

        identifier = [*(*(&v12 + 1) + 8 * i) identifier];
        [v3 addObject:identifier];
      }

      v6 = [contacts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 sortedArrayUsingSelector:"compare:"];

  return v10;
}

- (id)description
{
  contacts = self->_contacts;
  iconData = [(SharingXPCHelperContactIcon *)self iconData];
  [(SharingXPCHelperContactIcon *)self iconIndex];
  NSAppendPrintF();
  v5 = 0;

  return 0;
}

@end