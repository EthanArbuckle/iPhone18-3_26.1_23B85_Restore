@interface WebBookmarksExtensionsImporterDelgate
- (WebBookmarksExtensionsImporterDelgate)initWithConnection:(id)connection;
- (void)enableExtensionWithComposedIdentifier:(id)identifier adamIdentifier:(id)adamIdentifier alternatePlatformAppBundleIdentifier:(id)bundleIdentifier alternatePlatformExtensionBundleIdentifier:(id)extensionBundleIdentifier;
- (void)finishWithCompletionHandler:(id)handler;
@end

@implementation WebBookmarksExtensionsImporterDelgate

- (WebBookmarksExtensionsImporterDelgate)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = WebBookmarksExtensionsImporterDelgate;
  v6 = [(WebBookmarksExtensionsImporterDelgate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = v7;
  }

  return v7;
}

- (void)enableExtensionWithComposedIdentifier:(id)identifier adamIdentifier:(id)adamIdentifier alternatePlatformAppBundleIdentifier:(id)bundleIdentifier alternatePlatformExtensionBundleIdentifier:(id)extensionBundleIdentifier
{
  identifierCopy = identifier;
  adamIdentifierCopy = adamIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  extensionBundleIdentifierCopy = extensionBundleIdentifier;
  v13 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksEnableImportedExtensionMessageName];
  if (identifierCopy)
  {
    xpc_dictionary_set_string(v13, kWebBookmarksEnableImportedExtensionComposedIdentifierKey, [identifierCopy UTF8String]);
  }

  if (adamIdentifierCopy)
  {
    xpc_dictionary_set_string(v13, kWebBookmarksEnableImportedExtensionAdamIdentifierKey, [adamIdentifierCopy UTF8String]);
  }

  if (bundleIdentifierCopy)
  {
    xpc_dictionary_set_string(v13, kWebBookmarksEnableImportedExtensionAlternatePlatformAppBundleIdentifierKey, [bundleIdentifierCopy UTF8String]);
  }

  if (extensionBundleIdentifierCopy)
  {
    xpc_dictionary_set_string(v13, kWebBookmarksEnableImportedExtensionAlternatePlatformExtensionBundleIdentifierKey, [extensionBundleIdentifierCopy UTF8String]);
  }

  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v13];
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksFinishedImportingExtensionsMessageName];
  connection = self->_connection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000064D0;
  v8[3] = &unk_100029128;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WebBookmarksXPCConnection *)connection sendMessage:v5 withReplyHandler:v8];
}

@end