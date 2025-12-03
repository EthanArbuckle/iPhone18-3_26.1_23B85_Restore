@interface GTDeviceCapabilitiesXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTDeviceCapabilitiesXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (id)daemonDeviceCapabilities;
- (id)deviceCompatibilityCapabilitiesWithHeapDescriptors:(id)descriptors;
- (id)gpuToolsVersionQuery;
- (id)inferiorEnvironment:(id)environment;
@end

@implementation GTDeviceCapabilitiesXPCProxy

- (GTDeviceCapabilitiesXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v23.receiver = self;
  v23.super_class = GTDeviceCapabilitiesXPCProxy;
  v8 = [(GTDeviceCapabilitiesXPCProxy *)&v23 init];
  if (v8)
  {
    v9 = &OBJC_PROTOCOL___GTDeviceCapabilities;
    protocolName = [propertiesCopy protocolName];
    v11 = NSStringFromProtocol(v9);
    v12 = [protocolName isEqualToString:v11];

    if (!v12)
    {

      v21 = 0;
      goto LABEL_6;
    }

    v13 = [GTServiceConnection alloc];
    deviceUDID = [propertiesCopy deviceUDID];
    v15 = -[GTServiceConnection initWithConnection:device:port:](v13, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v15;

    v17 = [GTServiceProperties protocolMethods:v9];
    protocolMethods = [propertiesCopy protocolMethods];
    v19 = newSetWithArrayMinusArray(v17, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v19;
  }

  v21 = v8;
LABEL_6:

  return v21;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(selector);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTDeviceCapabilitiesXPCProxy;
    v7 = [(GTDeviceCapabilitiesXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (id)daemonDeviceCapabilities
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v6 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  if (v6)
  {
    v7 = [NSSet alloc];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 initWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    nsobject_classes = xpc_dictionary_get_nsobject_classes(v6, "returnValue", v12);
  }

  else
  {
    nsobject_classes = 0;
  }

  return nsobject_classes;
}

- (id)deviceCompatibilityCapabilitiesWithHeapDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "heapDescriptors", descriptorsCopy);

  v8 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  if (v8)
  {
    v9 = [NSSet alloc];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v9 initWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
    nsobject_classes = xpc_dictionary_get_nsobject_classes(v8, "returnValue", v14);
  }

  else
  {
    nsobject_classes = 0;
  }

  return nsobject_classes;
}

- (id)gpuToolsVersionQuery
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v6 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v7 = v6;
  if (v6)
  {
    nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v6, "returnValue");
  }

  else
  {
    nsdictionary_any = 0;
  }

  return nsdictionary_any;
}

- (id)inferiorEnvironment:(id)environment
{
  environmentCopy = environment;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "launchDictionary", environmentCopy);

  v8 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    nsdictionary = xpc_dictionary_get_nsdictionary(v8, "environment", v9, v10);
  }

  else
  {
    nsdictionary = 0;
  }

  return nsdictionary;
}

@end