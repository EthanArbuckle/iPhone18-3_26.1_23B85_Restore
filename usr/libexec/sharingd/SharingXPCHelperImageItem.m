@interface SharingXPCHelperImageItem
- (SharingXPCHelperImageItem)initWithCoder:(id)a3;
- (SharingXPCHelperImageItem)initWithImageTitle:(id)a3 image:(CGImage *)a4 cacheLookupKey:(id)a5;
- (SharingXPCHelperImageItem)initWithImageTitle:(id)a3 imageData:(id)a4 cacheLookupKey:(id)a5;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SharingXPCHelperImageItem

- (SharingXPCHelperImageItem)initWithImageTitle:(id)a3 imageData:(id)a4 cacheLookupKey:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = SharingXPCHelperImageItem;
  v12 = [(SharingXPCHelperImageItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageTitle, a3);
    objc_storeStrong(&v13->_imageData, a4);
    objc_storeStrong(&v13->_cacheLookupKey, a5);
    contactIDs = v13->_contactIDs;
    v13->_contactIDs = &__NSArray0__struct;
  }

  return v13;
}

- (SharingXPCHelperImageItem)initWithImageTitle:(id)a3 image:(CGImage *)a4 cacheLookupKey:(id)a5
{
  v6 = [(SharingXPCHelperImageItem *)self initWithImageTitle:a3 imageData:0 cacheLookupKey:a5];
  if (v6)
  {
    v6->_image = CFRetain(a4);
  }

  return v6;
}

- (SharingXPCHelperImageItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SharingXPCHelperImageItem;
  v5 = [(SharingXPCHelperImageItem *)&v11 init];
  if (v5)
  {
    v6 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  imageTitle = self->_imageTitle;
  v11 = v4;
  if (imageTitle)
  {
    [v4 encodeObject:imageTitle forKey:@"SharingXPCHelperImageItem-ImageTitle"];
    v4 = v11;
  }

  imageData = self->_imageData;
  if (imageData)
  {
    [v4 encodeObject:imageData forKey:@"SharingXPCHelperImageItem-ImageData"];
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