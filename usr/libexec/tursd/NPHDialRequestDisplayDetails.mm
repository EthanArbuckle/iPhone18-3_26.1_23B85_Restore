@interface NPHDialRequestDisplayDetails
- (NPHDialRequestDisplayDetails)initWithHandle:(id)handle;
- (id)description;
@end

@implementation NPHDialRequestDisplayDetails

- (NPHDialRequestDisplayDetails)initWithHandle:(id)handle
{
  handleCopy = handle;
  v17.receiver = self;
  v17.super_class = NPHDialRequestDisplayDetails;
  v6 = [(NPHDialRequestDisplayDetails *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
    if (v7->_handle)
    {
      v8 = [[TUContactsDataProviderFetchRequest alloc] initWithHandle:v7->_handle];
      v9 = objc_opt_new();
      v10 = [v9 executeFetchRequest:v8];
      localizedName = [v10 localizedName];
      title = v7->_title;
      v7->_title = localizedName;

      contactLabel = [v10 contactLabel];
      subTitle = v7->_subTitle;
      v7->_subTitle = contactLabel;
    }

    else
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v8 localizedStringForKey:@"UNKNOWN" value:&stru_100014D40 table:0];
      v9 = v7->_title;
      v7->_title = v15;
    }
  }

  return v7;
}

- (id)description
{
  handle = [(NPHDialRequestDisplayDetails *)self handle];
  title = [(NPHDialRequestDisplayDetails *)self title];
  subTitle = [(NPHDialRequestDisplayDetails *)self subTitle];
  v6 = [NSString stringWithFormat:@"%@: title: %@ subtitle: %@", handle, title, subTitle];

  return v6;
}

@end