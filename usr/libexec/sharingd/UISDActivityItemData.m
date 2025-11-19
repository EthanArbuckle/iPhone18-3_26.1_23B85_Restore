@interface UISDActivityItemData
- (BOOL)canAccessFileURL:(id)a3;
- (UISDActivityItemData)init;
- (UISDActivityItemData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISDActivityItemData

- (UISDActivityItemData)init
{
  v18.receiver = self;
  v18.super_class = UISDActivityItemData;
  v2 = [(UISDActivityItemData *)&v18 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    attachmentNamesByItem = v2->_attachmentNamesByItem;
    v2->_attachmentNamesByItem = v3;

    v5 = +[NSMutableDictionary dictionary];
    subjectsByItem = v2->_subjectsByItem;
    v2->_subjectsByItem = v5;

    v7 = +[NSMutableDictionary dictionary];
    previewImagesByItem = v2->_previewImagesByItem;
    v2->_previewImagesByItem = v7;

    v9 = +[NSMutableDictionary dictionary];
    previewImageDataByItem = v2->_previewImageDataByItem;
    v2->_previewImageDataByItem = v9;

    v11 = +[NSMutableDictionary dictionary];
    dataTypesByItem = v2->_dataTypesByItem;
    v2->_dataTypesByItem = v11;

    v13 = +[NSMutableDictionary dictionary];
    openURLAnnotationsByURL = v2->_openURLAnnotationsByURL;
    v2->_openURLAnnotationsByURL = v13;

    v15 = objc_opt_new();
    securityContexts = v2->_securityContexts;
    v2->_securityContexts = v15;
  }

  return v2;
}

- (UISDActivityItemData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UISDActivityItemData *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector("attachmentNamesByItem");
    v7 = _UISecureDecodeExtensionItemsWithKey();
    attachmentNamesByItem = v5->_attachmentNamesByItem;
    v5->_attachmentNamesByItem = v7;

    v9 = NSStringFromSelector("subjectsByItem");
    v10 = _UISecureDecodeExtensionItemsWithKey();
    subjectsByItem = v5->_subjectsByItem;
    v5->_subjectsByItem = v10;

    v12 = NSStringFromSelector("previewImagesByItem");
    v13 = _UISecureDecodeExtensionItemsWithKey();
    previewImagesByItem = v5->_previewImagesByItem;
    v5->_previewImagesByItem = v13;

    v15 = NSStringFromSelector("previewImageDataByItem");
    v16 = _UISecureDecodeExtensionItemsWithKey();
    previewImageDataByItem = v5->_previewImageDataByItem;
    v5->_previewImageDataByItem = v16;

    v18 = NSStringFromSelector("dataTypesByItem");
    v19 = _UISecureDecodeExtensionItemsWithKey();
    dataTypesByItem = v5->_dataTypesByItem;
    v5->_dataTypesByItem = v19;

    v21 = _UISecureStandardPropertyListClasses();
    v22 = NSStringFromSelector("openURLAnnotationsByURL");
    v23 = [v4 decodeObjectOfClasses:v21 forKey:v22];
    openURLAnnotationsByURL = v5->_openURLAnnotationsByURL;
    v5->_openURLAnnotationsByURL = v23;

    v25 = objc_opt_class();
    v26 = [NSSet setWithObjects:v25, objc_opt_class(), 0];
    v27 = NSStringFromSelector("securityContexts");
    v28 = [v4 decodeObjectOfClasses:v26 forKey:v27];
    securityContexts = v5->_securityContexts;
    v5->_securityContexts = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  attachmentNamesByItem = self->_attachmentNamesByItem;
  v5 = a3;
  v6 = NSStringFromSelector("attachmentNamesByItem");
  [v5 encodeObject:attachmentNamesByItem forKey:v6];

  subjectsByItem = self->_subjectsByItem;
  v8 = NSStringFromSelector("subjectsByItem");
  [v5 encodeObject:subjectsByItem forKey:v8];

  previewImagesByItem = self->_previewImagesByItem;
  v10 = NSStringFromSelector("previewImagesByItem");
  [v5 encodeObject:previewImagesByItem forKey:v10];

  previewImageDataByItem = self->_previewImageDataByItem;
  v12 = NSStringFromSelector("previewImageDataByItem");
  [v5 encodeObject:previewImageDataByItem forKey:v12];

  dataTypesByItem = self->_dataTypesByItem;
  v14 = NSStringFromSelector("dataTypesByItem");
  [v5 encodeObject:dataTypesByItem forKey:v14];

  openURLAnnotationsByURL = self->_openURLAnnotationsByURL;
  v16 = NSStringFromSelector("openURLAnnotationsByURL");
  [v5 encodeObject:openURLAnnotationsByURL forKey:v16];

  securityContexts = self->_securityContexts;
  v18 = NSStringFromSelector("securityContexts");
  [v5 encodeObject:securityContexts forKey:v18];
}

- (BOOL)canAccessFileURL:(id)a3
{
  v5 = a3;
  if (([v5 isFileURL] & 1) == 0)
  {
    sub_10012FEA0(a2, self, v5);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = [(UISDActivityItemData *)self securityContexts];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012FB8C;
  v10[3] = &unk_1008D1158;
  v13 = a2;
  v10[4] = self;
  v7 = v5;
  v11 = v7;
  v12 = &v14;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v8;
}

@end