@interface _DASExtensionHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)remoteContextWithError:(id *)a3;
- (int)pid;
@end

@implementation _DASExtensionHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (qword_10020B940 != -1)
  {
    sub_10012D8E0();
  }

  v3 = qword_10020B948;

  return v3;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_10020B950 != -1)
  {
    sub_10012D8F4();
  }

  v3 = qword_10020B958;

  return v3;
}

- (int)pid
{
  v2 = [(_DASExtensionHostContext *)self _auxiliaryConnection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (id)remoteContextWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1001129E0;
  v12 = sub_1001129F0;
  v13 = 0;
  v4 = [(_DASExtensionHostContext *)self _auxiliaryConnection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001129F8;
  v7[3] = &unk_1001B8EE8;
  v7[4] = &v8;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v7];

  if (a3)
  {
    *a3 = v9[5];
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

@end