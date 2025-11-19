@interface NPHDialRequestDisplayDetails
- (NPHDialRequestDisplayDetails)initWithHandle:(id)a3;
- (id)description;
@end

@implementation NPHDialRequestDisplayDetails

- (NPHDialRequestDisplayDetails)initWithHandle:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = NPHDialRequestDisplayDetails;
  v6 = [(NPHDialRequestDisplayDetails *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, a3);
    if (v7->_handle)
    {
      v8 = [[TUContactsDataProviderFetchRequest alloc] initWithHandle:v7->_handle];
      v9 = objc_opt_new();
      v10 = [v9 executeFetchRequest:v8];
      v11 = [v10 localizedName];
      title = v7->_title;
      v7->_title = v11;

      v13 = [v10 contactLabel];
      subTitle = v7->_subTitle;
      v7->_subTitle = v13;
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
  v3 = [(NPHDialRequestDisplayDetails *)self handle];
  v4 = [(NPHDialRequestDisplayDetails *)self title];
  v5 = [(NPHDialRequestDisplayDetails *)self subTitle];
  v6 = [NSString stringWithFormat:@"%@: title: %@ subtitle: %@", v3, v4, v5];

  return v6;
}

@end