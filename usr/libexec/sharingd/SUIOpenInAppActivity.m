@interface SUIOpenInAppActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (BOOL)openByImportWillHandlePromiseURLs;
- (NSString)applicationIdentifier;
- (NSString)description;
- (id)_bookmarkWithSandboxExtensionForExport;
- (id)_firstMatchingDocumentProxyForActivityItems:(id)a3;
- (id)activityTitle;
- (id)activityType;
- (id)ss_activitySpecificExtensionItemDataRequestInfo;
- (void)_performLaunchServicesOpenWithDocumentOpenURL:(id)a3 launchServiceOptions:(id)a4 completion:(id)a5;
- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4;
- (void)performActivity;
- (void)performLaunchServicesImportOpenWithCompletion:(id)a3;
- (void)performLaunchServicesInPlaceOpenWithCompletion:(id)a3;
- (void)prepareWithActivityExtensionItemData:(id)a3;
- (void)prepareWithActivityItemData:(id)a3;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation SUIOpenInAppActivity

- (id)ss_activitySpecificExtensionItemDataRequestInfo
{
  v2 = [(SUIOpenInAppActivity *)self applicationIdentifier];
  v3 = _UISUIActivitySpecificMetadataForOpeningDocumentWithApplicationID();

  return v3;
}

- (NSString)applicationIdentifier
{
  v2 = [(SUIOpenInAppActivity *)self applicationProxy];
  v3 = [v2 applicationIdentifier];

  return v3;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = SUIOpenInAppActivity;
  v3 = [(SUIOpenInAppActivity *)&v7 description];
  v4 = [(SUIOpenInAppActivity *)self activityTitle];
  v5 = [NSString stringWithFormat:@"%@ '%@'", v3, v4];

  return v5;
}

- (void)_performLaunchServicesOpenWithDocumentOpenURL:(id)a3 launchServiceOptions:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = _UIActivityDefaultOpenApplicationLaunchServiceOptions();
  v10 = [v9 mutableCopy];

  [v10 addEntriesFromDictionary:v7];
  v11 = [(SUIOpenInAppActivity *)self sourceApplicationAuditTokenData];

  if (v11)
  {
    v12 = [(SUIOpenInAppActivity *)self sourceApplicationAuditTokenData];
    v13 = sub_1001FA2C0(v12);

    if (v13)
    {
      v14 = v10;
      v15 = UIApplicationLaunchOptionsSourceApplicationKey;
      v16 = v13;
      if (v15)
      {
        v17 = LSOpenApplicationPayloadOptionsKey;
        v18 = [v14 objectForKeyedSubscript:LSOpenApplicationPayloadOptionsKey];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v18)
          {
            v19 = [v18 mutableCopy];

            v18 = v19;
          }

          else
          {
            v18 = +[NSMutableDictionary dictionary];
          }

          [v14 setObject:v18 forKeyedSubscript:v17];
        }

        [v18 setObject:v16 forKeyedSubscript:v15];
      }
    }
  }

  v20 = [(SUIOpenInAppActivity *)self openURLAnnotationsByURL];
  v21 = [v20 objectForKeyedSubscript:v8];

  v22 = [v10 objectForKeyedSubscript:LSFileProviderStringKey];
  v23 = +[LSApplicationWorkspace defaultWorkspace];
  v24 = [(LSApplicationProxy *)self->_applicationProxy applicationIdentifier];
  v25 = [(SUIOpenInAppActivity *)self isContentManaged];
  v26 = [(SUIOpenInAppActivity *)self sourceApplicationAuditTokenData];
  v27 = [v23 operationToOpenResource:v8 usingApplication:v24 uniqueDocumentIdentifier:v22 isContentManaged:v25 sourceAuditToken:objc_msgSend(v26 userInfo:"bytes") options:v21 delegate:{v10, self}];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001FA2F8;
  v30[3] = &unk_1008CDEA0;
  v30[4] = self;
  [v27 setCompletionBlock:v30];
  v28 = share_sheet_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(LSApplicationProxy *)self->_applicationProxy applicationIdentifier];
    *buf = 138412546;
    v32 = v29;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "SUIOpenInAppActivity: Performing open using application %@ with options %@", buf, 0x16u);
  }

  [v27 start];
}

- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SUIOpenInAppActivity openResourceOperation:didFailWithError:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }
}

- (void)performLaunchServicesInPlaceOpenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SUIOpenInAppActivity *)self applicationProxy];
  v6 = [(SUIOpenInAppActivity *)self documentProxy];
  v7 = [v6 URL];
  CanOpenInPlaceByReferenceOriginalFile = _UIApplicationCanOpenInPlaceByReferenceOriginalFile();

  if ((CanOpenInPlaceByReferenceOriginalFile & 1) == 0)
  {
    sub_1001FC274();
  }

  v9 = [(SUIOpenInAppActivity *)self documentProxy];
  v10 = [v9 URL];

  v11 = [(SUIOpenInAppActivity *)self applicationProxy];
  v12 = [v11 bundleIdentifier];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001FA5BC;
  v16[3] = &unk_1008D40E0;
  v17 = v10;
  v18 = v4;
  v16[4] = self;
  v13 = off_100972B58;
  v14 = v10;
  v15 = v4;
  v13(v14, v12, v16);
}

- (BOOL)openByImportWillHandlePromiseURLs
{
  v3 = [(SUIOpenInAppActivity *)self documentProxy];
  v4 = [v3 URL];

  v5 = [(SUIOpenInAppActivity *)self applicationProxy];
  LOBYTE(v3) = _UIApplicationCanOpenInPlaceByCopyingFromOriginalFile();

  return v3;
}

- (void)performLaunchServicesImportOpenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SUIOpenInAppActivity *)self documentProxy];
  v6 = [v5 URL];

  v7 = [(SUIOpenInAppActivity *)self applicationProxy];
  CanOpenInPlaceByCopyingFromOriginalFile = _UIApplicationCanOpenInPlaceByCopyingFromOriginalFile();

  if (CanOpenInPlaceByCopyingFromOriginalFile)
  {
    v9 = [(SUIOpenInAppActivity *)self applicationProxy];
    v10 = [v9 supportsOpenInPlace];

    if (v10)
    {
      sub_1001FC2E4();
    }

    v11 = [(SUIOpenInAppActivity *)self _bookmarkWithSandboxExtensionForExport];
    v13[0] = LSFileProviderStringKey;
    v13[1] = LSRequireOpenInPlaceKey;
    v14[0] = v11;
    v14[1] = &__kCFBooleanFalse;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v12 = 0;
  }

  [(SUIOpenInAppActivity *)self _performLaunchServicesOpenWithDocumentOpenURL:v6 launchServiceOptions:v12 completion:v4];
}

- (id)_bookmarkWithSandboxExtensionForExport
{
  v3 = [(SUIOpenInAppActivity *)self documentProxy];
  v4 = [v3 URL];

  v5 = [(SUIOpenInAppActivity *)self securityContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FAAAC;
  v11[3] = &unk_1008D4108;
  v6 = v4;
  v12 = v6;
  v7 = [v5 securityScopedResourcesMatchingPredicate:v11];
  v8 = [v7 firstObject];

  v9 = [v8 bookmarkExportDataEncodedAsString];
  if (!v9)
  {
    v9 = [v6 ui_bookmarkForExportWithError:0];
  }

  return v9;
}

- (void)prepareWithActivityItemData:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 securityContexts];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) securityScopedResources];
        [v5 addObjectsFromArray:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [[UISUISecurityContext alloc] initWithSecurityScopedResources:v5];
  v13 = [v4 openURLAnnotationsByURL];
  [(SUIOpenInAppActivity *)self setOpenURLAnnotationsByURL:v13];

  [(SUIOpenInAppActivity *)self setSecurityContext:v12];
  v14 = [(SUIOpenInAppActivity *)self securityContext];
  [v14 activate];

  v15 = sub_1001FAD1C(v12);
  [(SUIOpenInAppActivity *)self prepareWithActivityItems:v15];
}

- (void)prepareWithActivityExtensionItemData:(id)a3
{
  v20 = self;
  v21 = a3;
  v3 = [v21 extensionItems];
  v4 = dispatch_group_create();
  v39 = NSItemProviderOptionsDispatchModeKey;
  v40 = NSItemProviderOptionsDispatchModeAsynchronous;
  v5 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v6 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v24 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v24)
  {
    v23 = *v34;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v33 + 1) + 8 * v7);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = [v8 attachments];
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              if ([v14 hasItemConformingToTypeIdentifier:@"com.apple.ShareUI.openURL.supplementalSecurityContext"])
              {
                dispatch_group_enter(v4);
                v26[0] = _NSConcreteStackBlock;
                v26[1] = 3221225472;
                v26[2] = sub_1001FC0E4;
                v26[3] = &unk_1008D4178;
                v27 = v6;
                v28 = v4;
                [v14 loadItemForTypeIdentifier:@"com.apple.ShareUI.openURL.supplementalSecurityContext" options:v5 completionHandler:v26];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v11);
        }

        v7 = v25 + 1;
      }

      while ((v25 + 1) != v24);
      v24 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v24);
  }

  v15 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v4, v15);

  v16 = [[UISUISecurityContext alloc] initWithSecurityScopedResources:v6];
  v17 = [v21 openURLAnnotationsByURL];
  [(SUIOpenInAppActivity *)v20 setOpenURLAnnotationsByURL:v17];

  [(SUIOpenInAppActivity *)v20 setSecurityContext:v16];
  v18 = [(SUIOpenInAppActivity *)v20 securityContext];
  [v18 activate];

  v19 = sub_1001FAD1C(v16);
  [(SUIOpenInAppActivity *)v20 prepareWithActivityItems:v19];
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = a3;
  v5 = [(SUIOpenInAppActivity *)self supportedTypeIdentifiers];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SUIOpenInAppActivity *)self _firstMatchingDocumentProxyForActivityItems:v4];
    v6 = v7 != 0;
  }

  return v6;
}

- (void)prepareWithActivityItems:(id)a3
{
  v4 = [(SUIOpenInAppActivity *)self _firstMatchingDocumentProxyForActivityItems:a3];
  documentProxy = self->_documentProxy;
  self->_documentProxy = v4;
}

- (id)activityType
{
  v2 = [(SUIOpenInAppActivity *)self applicationIdentifier];
  v3 = _UISUIActivityRealActivityTypeForOpeningDocumentWithApplicationID();

  return v3;
}

- (id)_firstMatchingDocumentProxyForActivityItems:(id)a3
{
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v47;
    v9 = &kSFNodeProtocolWebDAVS_ptr;
    v10 = &OBJC_IVAR___SharingDaemon__collaborationUserDefaultsServer;
    *&v6 = 138412802;
    v35 = v6;
    v39 = v4;
    v40 = self;
    v36 = *v47;
    while (2)
    {
      v11 = 0;
      v37 = v7;
      do
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v46 + 1) + 8 * v11);
        v13 = v9[229];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          if ([v14 isFileURL])
          {
            v15 = [v14 pathExtension];
            v16 = v10[550];
            v17 = [*(&self->super.super.isa + v16) URL];
            v18 = [v17 pathExtension];
            v19 = [v15 caseInsensitiveCompare:v18];

            if (!v19)
            {
              v33 = sub_1001FB61C(v14, self->_isContentManaged, self->_sourceApplicationAuditTokenData);
LABEL_25:

              goto LABEL_27;
            }

            v38 = v16;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            obj = [(SUIOpenInAppActivity *)self supportedTypeIdentifiers];
            v20 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v43;
              while (2)
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v43 != v22)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v24 = [UTType typeWithIdentifier:*(*(&v42 + 1) + 8 * i), v35];
                  v25 = [v14 pathExtension];
                  v26 = [UTType typeWithFilenameExtension:v25];

                  v27 = [v24 preferredFilenameExtension];
                  v28 = [v26 preferredFilenameExtension];
                  v29 = [v27 isEqual:v28];

                  if (v29)
                  {
                    v33 = sub_1001FB61C(v14, v40->_isContentManaged, v40->_sourceApplicationAuditTokenData);

                    v4 = v39;
                    goto LABEL_25;
                  }
                }

                v21 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

            v30 = share_sheet_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [*(&v40->super.super.isa + v38) URL];
              v32 = [(SUIOpenInAppActivity *)v40 supportedTypeIdentifiers];
              *buf = v35;
              v51 = v14;
              v52 = 2112;
              v53 = v31;
              v54 = 2112;
              v55 = v32;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "SUIOpenInAppActivity: didn't find a matching document proxy for url:%@ documentProxy.URL:%@ supportedTypeIdentifiers:%@", buf, 0x20u);
            }

            v4 = v39;
            self = v40;
            v8 = v36;
            v7 = v37;
            v9 = &kSFNodeProtocolWebDAVS_ptr;
            v10 = &OBJC_IVAR___SharingDaemon__collaborationUserDefaultsServer;
          }
        }

        v11 = v11 + 1;
      }

      while (v11 != v7);
      v7 = [v4 countByEnumeratingWithState:&v46 objects:v57 count:16];
      v33 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_27:

  return v33;
}

- (id)activityTitle
{
  sub_100008A18();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1008EFBD0;
}

- (void)performActivity
{
  sub_100008A18();
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end