@interface WebBookmarksExtensionsImporterDelgate
- (WebBookmarksExtensionsImporterDelgate)initWithConnection:(id)a3;
- (void)enableExtensionWithComposedIdentifier:(id)a3 adamIdentifier:(id)a4 alternatePlatformAppBundleIdentifier:(id)a5 alternatePlatformExtensionBundleIdentifier:(id)a6;
- (void)finishWithCompletionHandler:(id)a3;
@end

@implementation WebBookmarksExtensionsImporterDelgate

- (WebBookmarksExtensionsImporterDelgate)initWithConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WebBookmarksExtensionsImporterDelgate;
  v6 = [(WebBookmarksExtensionsImporterDelgate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = v7;
  }

  return v7;
}

- (void)enableExtensionWithComposedIdentifier:(id)a3 adamIdentifier:(id)a4 alternatePlatformAppBundleIdentifier:(id)a5 alternatePlatformExtensionBundleIdentifier:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksEnableImportedExtensionMessageName];
  if (v14)
  {
    xpc_dictionary_set_string(v13, kWebBookmarksEnableImportedExtensionComposedIdentifierKey, [v14 UTF8String]);
  }

  if (v10)
  {
    xpc_dictionary_set_string(v13, kWebBookmarksEnableImportedExtensionAdamIdentifierKey, [v10 UTF8String]);
  }

  if (v11)
  {
    xpc_dictionary_set_string(v13, kWebBookmarksEnableImportedExtensionAlternatePlatformAppBundleIdentifierKey, [v11 UTF8String]);
  }

  if (v12)
  {
    xpc_dictionary_set_string(v13, kWebBookmarksEnableImportedExtensionAlternatePlatformExtensionBundleIdentifierKey, [v12 UTF8String]);
  }

  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v13];
}

- (void)finishWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksFinishedImportingExtensionsMessageName];
  connection = self->_connection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000064D0;
  v8[3] = &unk_100029128;
  v9 = v4;
  v7 = v4;
  [(WebBookmarksXPCConnection *)connection sendMessage:v5 withReplyHandler:v8];
}

@end