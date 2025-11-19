@interface SendDict
@end

@implementation SendDict

void __SendDict_ToServer_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    v4 = mDNSLogCategory_Default;
    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    LogMsgWithLevel(v4, OS_LOG_TYPE_DEFAULT, "SendDict_ToServer Received unexpected reply from daemon [%s]", v6, v7, v8, v9, v10, string);
    HelperLog("SendDict_ToServer Unexpected Reply contents", object);
    goto LABEL_9;
  }

  HelperLog("SendDict_ToServer Received reply msg from Daemon", object);
  uint64 = xpc_dictionary_get_uint64(object, "HelperReplyStatusToClient");
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_int64(object, "HelperErrorCodefromCall");
  if (uint64)
  {
    v17 = "default: Unexpected reply from Helper";
LABEL_7:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, v17, v12, v13, v14, v15, v16, v19);
    goto LABEL_8;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v17 = "NoError: successful reply";
    goto LABEL_7;
  }

LABEL_8:
  *(*(*(a1 + 40) + 8) + 24) = object;
  xpc_retain(*(*(*(a1 + 40) + 8) + 24));
LABEL_9:
  dispatch_semaphore_signal(*(a1 + 48));
  v18 = *(a1 + 48);
  if (v18)
  {

    dispatch_release(v18);
  }
}

@end