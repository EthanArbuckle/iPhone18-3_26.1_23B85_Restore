@interface SDAItemSource
- (SDAItemSource)initWithAttributedString:(id)a3 previewImage:(id)a4 subject:(id)a5;
- (SDAItemSource)initWithData:(id)a3 type:(id)a4 previewImage:(id)a5 subject:(id)a6 name:(id)a7;
- (SDAItemSource)initWithString:(id)a3 previewImage:(id)a4 subject:(id)a5;
- (SDAItemSource)initWithURL:(id)a3 previewImage:(id)a4 subject:(id)a5;
- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation SDAItemSource

- (SDAItemSource)initWithData:(id)a3 type:(id)a4 previewImage:(id)a5 subject:(id)a6 name:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = SDAItemSource;
  v18 = [(SDAItemSource *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_data, a3);
    objc_storeStrong(&v19->_name, a7);
    objc_storeStrong(&v19->_previewImage, a5);
    v20 = [v16 copy];
    subject = v19->_subject;
    v19->_subject = v20;

    v22 = [v14 copy];
    uti = v19->_uti;
    v19->_uti = v22;
  }

  return v19;
}

- (SDAItemSource)initWithURL:(id)a3 previewImage:(id)a4 subject:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SDAItemSource;
  v12 = [(SDAItemSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_previewImage, a4);
    v14 = [v11 copy];
    subject = v13->_subject;
    v13->_subject = v14;

    objc_storeStrong(&v13->_URL, a3);
  }

  return v13;
}

- (SDAItemSource)initWithString:(id)a3 previewImage:(id)a4 subject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = SDAItemSource;
  v11 = [(SDAItemSource *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_previewImage, a4);
    v13 = [v10 copy];
    subject = v12->_subject;
    v12->_subject = v13;

    v15 = [v8 copy];
    string = v12->_string;
    v12->_string = v15;
  }

  return v12;
}

- (SDAItemSource)initWithAttributedString:(id)a3 previewImage:(id)a4 subject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = SDAItemSource;
  v11 = [(SDAItemSource *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    attributedString = v11->_attributedString;
    v11->_attributedString = v12;

    objc_storeStrong(&v11->_previewImage, a4);
    v14 = [v10 copy];
    subject = v11->_subject;
    v11->_subject = v14;
  }

  return v11;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
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

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
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

- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4
{
  URL = self->_URL;
  if (URL)
  {
    v6 = [(NSURL *)URL lastPathComponent:a3];
  }

  else
  {
    v6 = self->_name;
  }

  return v6;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
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