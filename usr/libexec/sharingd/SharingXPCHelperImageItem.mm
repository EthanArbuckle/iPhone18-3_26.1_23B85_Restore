@interface SharingXPCHelperImageItem
- (SharingXPCHelperImageItem)initWithCoder:(id)coder;
- (SharingXPCHelperImageItem)initWithImageTitle:(id)title image:(CGImage *)image cacheLookupKey:(id)key;
- (SharingXPCHelperImageItem)initWithImageTitle:(id)title imageData:(id)data cacheLookupKey:(id)key;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SharingXPCHelperImageItem

- (SharingXPCHelperImageItem)initWithImageTitle:(id)title imageData:(id)data cacheLookupKey:(id)key
{
  titleCopy = title;
  dataCopy = data;
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = SharingXPCHelperImageItem;
  v12 = [(SharingXPCHelperImageItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageTitle, title);
    objc_storeStrong(&v13->_imageData, data);
    objc_storeStrong(&v13->_cacheLookupKey, key);
    contactIDs = v13->_contactIDs;
    v13->_contactIDs = &__NSArray0__struct;
  }

  return v13;
}

- (SharingXPCHelperImageItem)initWithImageTitle:(id)title image:(CGImage *)image cacheLookupKey:(id)key
{
  v6 = [(SharingXPCHelperImageItem *)self initWithImageTitle:title imageData:0 cacheLookupKey:key];
  if (v6)
  {
    v6->_image = CFRetain(image);
  }

  return v6;
}

- (SharingXPCHelperImageItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SharingXPCHelperImageItem;
  v5 = [(SharingXPCHelperImageItem *)&v11 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeStandardContainerIfPresent();
  }

  return v5;
}

- (void)dealloc
{
  image = self->_image;
  if (image)
  {
    CFRelease(image);
  }

  v4.receiver = self;
  v4.super_class = SharingXPCHelperImageItem;
  [(SharingXPCHelperImageItem *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imageTitle = self->_imageTitle;
  v11 = coderCopy;
  if (imageTitle)
  {
    [coderCopy encodeObject:imageTitle forKey:@"SharingXPCHelperImageItem-ImageTitle"];
    coderCopy = v11;
  }

  imageData = self->_imageData;
  if (imageData)
  {
    [coderCopy encodeObject:imageData forKey:@"SharingXPCHelperImageItem-ImageData"];
  }

  else if (self->_image)
  {
    v7 = SFDataFromCGImage();
    [v11 encodeObject:v7 forKey:@"SharingXPCHelperImageItem-ImageData"];
  }

  cacheLookupKey = self->_cacheLookupKey;
  if (cacheLookupKey)
  {
    [v11 encodeObject:cacheLookupKey forKey:@"SharingXPCHelperImageItem-CacheLookupKey"];
  }

  contactIDs = self->_contactIDs;
  v10 = v11;
  if (contactIDs)
  {
    [v11 encodeObject:contactIDs forKey:@"SharingXPCHelperImageItem-ContactIDsKey"];
    v10 = v11;
  }
}

- (id)description
{
  self->_imageData;
  imageTitle = self->_imageTitle;
  NSAppendPrintF();

  return 0;
}

@end