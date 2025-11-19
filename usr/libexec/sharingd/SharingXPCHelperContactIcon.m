@interface SharingXPCHelperContactIcon
- (SharingXPCHelperContactIcon)initWithCoder:(id)a3;
- (SharingXPCHelperContactIcon)initWithContact:(id)a3 icon:(CGImage *)a4 atIndex:(int64_t)a5 cacheLookupKey:(id)a6;
- (SharingXPCHelperContactIcon)initWithContact:(id)a3 iconData:(id)a4 atIndex:(int64_t)a5 cacheLookupKey:(id)a6;
- (id)contactIDs;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SharingXPCHelperContactIcon

- (SharingXPCHelperContactIcon)initWithContact:(id)a3 iconData:(id)a4 atIndex:(int64_t)a5 cacheLookupKey:(id)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SharingXPCHelperContactIcon;
  v12 = [(SharingXPCHelperImageItem *)&v15 initWithImageTitle:0 imageData:a4 cacheLookupKey:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, a3);
    v13->_iconIndex = a5;
  }

  return v13;
}

- (SharingXPCHelperContactIcon)initWithContact:(id)a3 icon:(CGImage *)a4 atIndex:(int64_t)a5 cacheLookupKey:(id)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SharingXPCHelperContactIcon;
  v12 = [(SharingXPCHelperImageItem *)&v15 initWithImageTitle:0 image:a4 cacheLookupKey:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, a3);
    v13->_iconIndex = a5;
  }

  return v13;
}

- (SharingXPCHelperContactIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SharingXPCHelperContactIcon;
  v5 = [(SharingXPCHelperImageItem *)&v8 initWithCoder:v4];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v4;
    if ([v6 containsValueForKey:@"ici"])
    {
      v5->_iconIndex = [v6 decodeIntegerForKey:@"ici"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SharingXPCHelperContactIcon;
  [(SharingXPCHelperImageItem *)&v6 encodeWithCoder:v4];
  contact = self->_contact;
  if (contact)
  {
    [v4 encodeObject:contact forKey:@"cn"];
  }

  [v4 encodeInteger:self->_iconIndex forKey:@"ici"];
}

- (id)contactIDs
{
  v3 = [(SharingXPCHelperContactIcon *)self contact];

  if (!v3)
  {
    v4 = sharingXPCHelperLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "monogramImagesForMultipleContacts called with nil contact, will use fallback.", v12, 2u);
    }
  }

  v5 = [(SharingXPCHelperContactIcon *)self contact];
  v6 = [v5 identifier];
  v7 = v6;
  v8 = @"FALLBACK";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v13 = v9;
  v10 = [NSArray arrayWithObjects:&v13 count:1];

  return v10;
}

- (id)description
{
  contact = self->_contact;
  v4 = [(SharingXPCHelperContactIcon *)self iconData];
  iconIndex = self->_iconIndex;
  NSAppendPrintF();
  v5 = 0;

  return 0;
}

@end