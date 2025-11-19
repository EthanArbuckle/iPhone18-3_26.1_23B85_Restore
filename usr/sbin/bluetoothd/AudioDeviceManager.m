@interface AudioDeviceManager
+ (id)sharedManager;
- (AudioDeviceManager)init;
- (AudioSkywalkProvider)getAudioSkywalkProvider;
- (basic_string<char,)getClientBundleIDs;
- (id).cxx_construct;
- (void)configureXPCListener;
- (void)dealloc;
- (void)forwardEvent:(void *)a3 forUid:()basic_string<char;
- (void)getDeviceForUID:()basic_string<char;
- (void)handleListenerEvent:(void *)a3;
- (void)publishAndRegisterDevice:(int)a3 withArgs:(void *)a4 uid:()basic_string<char device:()std:(std::allocator<char>> *)a5 :char_traits<char>;
- (void)removeXpcClient:(void *)a3;
- (void)republishAllAudioDevices;
- (void)sendMsg:(int)a3 withArgs:(void *)a4 uid:()basic_string<char;
@end

@implementation AudioDeviceManager

+ (id)sharedManager
{
  if (qword_100B6D8E0 != -1)
  {
    sub_10082C6CC();
  }

  v3 = qword_100B6D8D8;

  return v3;
}

- (AudioDeviceManager)init
{
  v6.receiver = self;
  v6.super_class = AudioDeviceManager;
  v2 = [(AudioDeviceManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, -1);
    v2->_queue = dispatch_queue_create("AudioDeviceManager", v4);
    [(AudioDeviceManager *)v2 configureXPCListener];
  }

  return v2;
}

- (void)dealloc
{
  self->_audioSkywalkProvider = 0;
  v2.receiver = self;
  v2.super_class = AudioDeviceManager;
  [(AudioDeviceManager *)&v2 dealloc];
}

- (void)configureXPCListener
{
  mach_service = xpc_connection_create_mach_service("com.apple.BTAudioHALPlugin.xpc", self->_queue, 1uLL);
  self->_listener = mach_service;
  if (mach_service)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10043D1FC;
    handler[3] = &unk_100AF6248;
    handler[4] = self;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(self->_listener);
  }
}

- (void)handleListenerEvent:(void *)a3
{
  type = xpc_get_type(a3);
  if (type == &_xpc_type_connection)
  {
    v7 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AudioDeviceManager received new xpc connection from %p", &v10, 0xCu);
    }

    operator new();
  }

  if (type == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(a3, _xpc_error_key_description);
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_10082C758(string, v9);
    }
  }

  else
  {
    v5 = xpc_copy_description(a3);
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_10082C6E0(v5, v6);
    }

    free(v5);
  }
}

- (void)publishAndRegisterDevice:(int)a3 withArgs:(void *)a4 uid:()basic_string<char device:()std:(std::allocator<char>> *)a5 :char_traits<char>
{
  v6 = v5;
  v9 = *&a3;
  var1 = *(&a5->var0.var1 + 23);
  if ((var1 & 0x8000000000000000) != 0)
  {
    var1 = a5->var0.var1.var1;
  }

  v12 = qword_100BCE8D0;
  if (!var1 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "[AudioDeviceManager publishAndRegisterDevice:] uid is empty", buf, 2u);
    v12 = qword_100BCE8D0;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "[AudioDeviceManager publishAndRegisterDevice:] device is nil", buf, 2u);
    v12 = qword_100BCE8D0;
  }

LABEL_8:
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    var0 = a5;
    if (*(&a5->var0.var1 + 23) < 0)
    {
      var0 = a5->var0.var1.var0;
    }

    *buf = 136446466;
    *&buf[4] = var0;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[AudioDeviceManager publishAndRegisterDevice:] Register audio device %{public}s with XpcAudioPluginDevice: %p", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, &self->audioDeviceMapMutex);
  v16 = a5;
  *(sub_10043E1FC(&self->audioDevices, a5) + 56) = v6;
  if (*(&a5->var0.var1 + 23) < 0)
  {
    sub_100008904(__p, a5->var0.var1.var0, a5->var0.var1.var1);
  }

  else
  {
    *__p = *a5->var0.var0.var0;
    v15 = *(&a5->var0.var1 + 2);
  }

  [(AudioDeviceManager *)self sendMsg:v9 withArgs:a4 uid:__p];
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000088CC(buf);
}

- (void)sendMsg:(int)a3 withArgs:(void *)a4 uid:()basic_string<char
{
  *keys = *off_100AF6268;
  v35 = "kBTAudioMsgArgs";
  values = xpc_int64_create(a3);
  var0 = a5;
  if (*(&a5->var0.var1 + 23) < 0)
  {
    var0 = a5->var0.var1.var0;
  }

  object = xpc_string_create(var0);
  v33 = a4;
  if (a4)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v11 = xpc_dictionary_create(keys, &values, v10);
  v12 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
  {
    v24 = a5;
    if (*(&a5->var0.var1 + 23) < 0)
    {
      v24 = a5->var0.var1.var0;
    }

    *buf = 67109378;
    *v28 = a3;
    *&v28[4] = 2082;
    *&v28[6] = v24;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Sending XPC message %d for %{public}s", buf, 0x12u);
  }

  if (a3 == 4)
  {
    if ((*(&a5->var0.var1 + 23) & 0x8000000000000000) != 0)
    {
      if (!a5->var0.var1.var1)
      {
        goto LABEL_12;
      }
    }

    else if (!*(&a5->var0.var1 + 23))
    {
LABEL_12:
      v13 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        sub_10082C7D0(v13);
      }
    }

    v26[0] = 0;
    v26[1] = 0;
    sub_100007F88(v26, &self->audioDeviceMapMutex);
    v14 = sub_10000EEB8(&self->audioDevices, a5);
    if (&self->audioDevices.__tree_.__end_node_ != v14)
    {
      left = v14->audioDevices.__tree_.__end_node_.__left_;
      v16 = sub_10043E358(&self->audioDevices, a5);
      v17 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        if (*(&a5->var0.var1 + 23) < 0)
        {
          a5 = a5->var0.var1.var0;
        }

        size = self->audioDevices.__tree_.__size_;
        *buf = 134218498;
        *v28 = v16;
        *&v28[8] = 2082;
        *&v28[10] = a5;
        v29 = 2048;
        v30 = size;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Erased %lu audio device %{public}s from audio device map. Map now has %lu devices", buf, 0x20u);
      }

      v19 = +[AudioDeviceManager sharedManager];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10043D9C8;
      block[3] = &unk_100ADF8F8;
      block[4] = left;
      dispatch_async([v19 getXpcQueue], block);
    }

    sub_10000801C(v26);
    sub_1000088CC(v26);
  }

  begin = self->xpcClients.__begin_;
  end = self->xpcClients.__end_;
  if (begin == end)
  {
    goto LABEL_24;
  }

  do
  {
    v22 = sub_1000BC720(*begin);
    xpc_connection_send_message(v22, v11);
    ++begin;
  }

  while (begin != end);
  if (self->xpcClients.__end_ == self->xpcClients.__begin_)
  {
LABEL_24:
    v23 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_10082C814(v23);
    }
  }

  xpc_release(v11);
  xpc_release(object);
  xpc_release(values);
}

- (void)republishAllAudioDevices
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, &self->audioDeviceMapMutex);
  begin_node = self->audioDevices.__tree_.__begin_node_;
  if (begin_node != &self->audioDevices.__tree_.__end_node_)
  {
    do
    {
      v4 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v5 = begin_node + 4;
        if (SHIBYTE(begin_node[6].__left_) < 0)
        {
          v5 = v5->__left_;
        }

        *buf = 136315138;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Republishing %s", buf, 0xCu);
      }

      sub_1003CA9D8(begin_node[7].__left_);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v7 = left;
          left = left->super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v7 = begin_node[2].__left_;
          v8 = v7->super.isa == begin_node;
          begin_node = v7;
        }

        while (!v8);
      }

      begin_node = v7;
    }

    while (v7 != &self->audioDevices.__tree_.__end_node_);
  }

  sub_1000088CC(v9);
}

- (void)forwardEvent:(void *)a3 forUid:()basic_string<char
{
  var0 = a4;
  v7 = &a4->var0.var1 + 23;
  if (*(&a4->var0.var1 + 23) < 0)
  {
    sub_100008904(&__p, a4->var0.var1.var0, a4->var0.var1.var1);
  }

  else
  {
    __p = *a4;
  }

  v8 = [(AudioDeviceManager *)self getDeviceForUID:&__p];
  if (*(&__p.var0.var1 + 23) < 0)
  {
    operator delete(__p.var0.var1.var0);
  }

  v9 = qword_100BCE8D0;
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
    {
      sub_10082C858(v7, var0, v9);
    }

    sub_1003CA350(v8, a3);
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    if (*v7 < 0)
    {
      var0 = var0->var0.var1.var0;
    }

    int64 = xpc_dictionary_get_int64(a3, "kBTAudioMsgId");
    *buf = 136446466;
    v13 = var0;
    v14 = 1024;
    v15 = int64;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No device found for uid %{public}s to send msg %u", buf, 0x12u);
  }
}

- (void)getDeviceForUID:()basic_string<char
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, &self->audioDeviceMapMutex);
  if ((*(&a3->var0.var1 + 23) & 0x8000000000000000) != 0)
  {
    if (a3->var0.var1.var1)
    {
      goto LABEL_7;
    }
  }

  else if (*(&a3->var0.var1 + 23))
  {
    goto LABEL_7;
  }

  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
  {
    sub_10082C8E0(v5);
  }

LABEL_7:
  if (&self->audioDevices.__tree_.__end_node_ == sub_10000EEB8(&self->audioDevices, a3))
  {
    v6 = 0;
  }

  else
  {
    v6 = *sub_10042A910(&self->audioDevices, a3);
  }

  sub_1000088CC(v8);
  return v6;
}

- (AudioSkywalkProvider)getAudioSkywalkProvider
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10043DE20;
  block[3] = &unk_100ADF820;
  block[4] = self;
  if (qword_100B6D8E8 != -1)
  {
    dispatch_once(&qword_100B6D8E8, block);
  }

  return self->_audioSkywalkProvider;
}

- (basic_string<char,)getClientBundleIDs
{
  *retstr->var0.var0.var0 = 0uLL;
  *(&retstr->var0.var1 + 2) = 0;
  var0 = result[1].var0.var1.var0;
  for (i = result[1].var0.var1.var1; var0 != i; var0 += 8)
  {
    sub_10064B0E0(*var0, &v9);
    v5 = std::string::append(&v9, ",");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v11 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (v11 >= 0)
    {
      v8 = HIBYTE(v11);
    }

    else
    {
      v8 = __p[1];
    }

    result = std::string::append(retstr, v7, v8);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  return result;
}

- (void)removeXpcClient:(void *)a3
{
  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = sub_1000BC720(a3);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AudioDeviceManager removing xpc client for connection %p", &v9, 0xCu);
  }

  begin = self->xpcClients.__begin_;
  end = self->xpcClients.__end_;
  if (begin != end)
  {
    while (*begin != a3)
    {
      if (++begin == end)
      {
        goto LABEL_15;
      }
    }

    if (begin != end)
    {
      v8 = begin + 1;
      if (begin + 1 != end)
      {
        do
        {
          if (*v8 != a3)
          {
            *begin++ = *v8;
          }

          ++v8;
        }

        while (v8 != end);
        end = self->xpcClients.__end_;
      }
    }
  }

  if (begin != end)
  {
    self->xpcClients.__end_ = begin;
  }

LABEL_15:
  if (a3)
  {
    sub_10064B070(a3);
    operator delete();
  }
}

- (id).cxx_construct
{
  self->xpcClients.__begin_ = 0;
  self->xpcClients.__end_ = 0;
  self->audioDevices.__tree_.__size_ = 0;
  self->audioDevices.__tree_.__end_node_.__left_ = 0;
  self->xpcClients.__cap_ = 0;
  self->audioDevices.__tree_.__begin_node_ = &self->audioDevices.__tree_.__end_node_;
  sub_100044BBC(&self->audioDeviceMapMutex);
  return self;
}

@end