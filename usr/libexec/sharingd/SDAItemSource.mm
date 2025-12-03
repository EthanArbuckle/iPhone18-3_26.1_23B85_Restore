@interface SDAItemSource
- (SDAItemSource)initWithAttributedString:(id)string previewImage:(id)image subject:(id)subject;
- (SDAItemSource)initWithData:(id)data type:(id)type previewImage:(id)image subject:(id)subject name:(id)name;
- (SDAItemSource)initWithString:(id)string previewImage:(id)image subject:(id)subject;
- (SDAItemSource)initWithURL:(id)l previewImage:(id)image subject:(id)subject;
- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation SDAItemSource

- (SDAItemSource)initWithData:(id)data type:(id)type previewImage:(id)image subject:(id)subject name:(id)name
{
  dataCopy = data;
  typeCopy = type;
  imageCopy = image;
  subjectCopy = subject;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = SDAItemSource;
  v18 = [(SDAItemSource *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_data, data);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_previewImage, image);
    v20 = [subjectCopy copy];
    subject = v19->_subject;
    v19->_subject = v20;

    v22 = [typeCopy copy];
    uti = v19->_uti;
    v19->_uti = v22;
  }

  return v19;
}

- (SDAItemSource)initWithURL:(id)l previewImage:(id)image subject:(id)subject
{
  lCopy = l;
  imageCopy = image;
  subjectCopy = subject;
  v17.receiver = self;
  v17.super_class = SDAItemSource;
  v12 = [(SDAItemSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_previewImage, image);
    v14 = [subjectCopy copy];
    subject = v13->_subject;
    v13->_subject = v14;

    objc_storeStrong(&v13->_URL, l);
  }

  return v13;
}

- (SDAItemSource)initWithString:(id)string previewImage:(id)image subject:(id)subject
{
  stringCopy = string;
  imageCopy = image;
  subjectCopy = subject;
  v18.receiver = self;
  v18.super_class = SDAItemSource;
  v11 = [(SDAItemSource *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_previewImage, image);
    v13 = [subjectCopy copy];
    subject = v12->_subject;
    v12->_subject = v13;

    v15 = [stringCopy copy];
    string = v12->_string;
    v12->_string = v15;
  }

  return v12;
}

- (SDAItemSource)initWithAttributedString:(id)string previewImage:(id)image subject:(id)subject
{
  stringCopy = string;
  imageCopy = image;
  subjectCopy = subject;
  v17.receiver = self;
  v17.super_class = SDAItemSource;
  v11 = [(SDAItemSource *)&v17 init];
  if (v11)
  {
    v12 = [stringCopy copy];
    attributedString = v11->_attributedString;
    v11->_attributedString = v12;

    objc_storeStrong(&v11->_previewImage, image);
    v14 = [subjectCopy copy];
    subject = v11->_subject;
    v11->_subject = v14;
  }

  return v11;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  attributedString = self->_attributedString;
  if (attributedString || (attributedString = self->_data) != 0 || (attributedString = self->_string) != 0 || (attributedString = self->_URL) != 0)
  {
    v5 = attributedString;
  }

  else
  {
    v5 = &stru_1008EFBD0;
  }

  return v5;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  attributedString = self->_attributedString;
  if (attributedString || (attributedString = self->_data) != 0 || (attributedString = self->_string) != 0 || (attributedString = self->_URL) != 0)
  {
    v6 = attributedString;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type
{
  URL = self->_URL;
  if (URL)
  {
    v6 = [(NSURL *)URL lastPathComponent:controller];
  }

  else
  {
    v6 = self->_name;
  }

  return v6;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  v4 = objc_alloc_init(off_100972CE8());
  if (self->_previewImage)
  {
    v5 = [objc_alloc(off_100972CF0()) initWithPlatformImage:self->_previewImage];
    [v4 setImage:v5];
  }

  if (self->_URL)
  {
    [v4 setOriginalURL:?];
  }

  if (self->_name || self->_subject)
  {
    [v4 setTitle:?];
  }

  return v4;
}

@end