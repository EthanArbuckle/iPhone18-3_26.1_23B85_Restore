@interface SACloudChannelsInterface
- (BOOL)isSubscribedChannel:(id)channel;
- (SACloudChannelsInterface)initWithQueue:(id)queue isProduction:(BOOL)production channelType:(int)type;
- (id).cxx_construct;
- (void)addToSubscribedChannels:(id)channels;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)removeFromSubscribedChannels:(id)channels;
- (void)subscribe:(id)subscribe topic:(id)topic;
- (void)unsubcribeForgottenChannels:(id)channels;
- (void)unsubcribeForgottenChannelsForTopic:(id)topic topicName:(id)name;
- (void)unsubscribe:(id)unsubscribe topic:(id)topic;
@end

@implementation SACloudChannelsInterface

- (SACloudChannelsInterface)initWithQueue:(id)queue isProduction:(BOOL)production channelType:(int)type
{
  productionCopy = production;
  queueCopy = queue;
  v10 = [NSArray arrayWithObjects:@"com.apple.aps.locationd.safetyalert", @"com.apple.aps.mantis.safetyalert", 0];
  v23.receiver = self;
  v23.super_class = SACloudChannelsInterface;
  v11 = [(SACloudChannelsInterface *)&v23 init];
  v12 = v11;
  v13 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 1026;
      v29 = productionCopy;
      v30 = 1026;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,initWithQueue, isProduction:%{public}hhd, type:%{public}d}", buf, 0x1Eu);
    }

    v15 = [APSConnection alloc];
    v16 = &APSEnvironmentProduction;
    if (!productionCopy)
    {
      v16 = &APSEnvironmentDevelopment;
    }

    v17 = [v15 initWithEnvironmentName:*v16 namedDelegatePort:@"com.apple.aps.safetyalerts" queue:v12->_queue];
    pushConnection = v13->_pushConnection;
    v13->_pushConnection = v17;

    [(APSConnection *)v13->_pushConnection setDelegate:v13];
    v19 = objc_alloc_init(NSMutableArray);
    [v19 addObjectsFromArray:v10];
    [(APSConnection *)v13->_pushConnection _setEnabledTopics:v19];
    [(APSConnection *)v13->_pushConnection requestTokenForTopic:@"com.apple.aps.locationd.safetyalert" identifier:0];
    [(APSConnection *)v13->_pushConnection requestTokenForTopic:@"com.apple.aps.mantis.safetyalert" identifier:0];
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,Waiting for push notifications}", buf, 0x12u);
    }
  }

  v21 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,Created SACloudChannelsInterface}", buf, 0x12u);
  }

  return v13;
}

- (BOOL)isSubscribedChannel:(id)channel
{
  channelCopy = channel;
  begin = self->_activeSubscibedChannels.__begin_;
  end = self->_activeSubscibedChannels.__end_;
  v7 = channelCopy;
  if (begin != end)
  {
    while (1)
    {
      if (begin[23] < 0)
      {
        sub_100004CEC(&__p, *begin, *(begin + 1));
      }

      else
      {
        v8 = *begin;
        __p.__r_.__value_.__r.__words[2] = *(begin + 2);
        *&__p.__r_.__value_.__l.__data_ = v8;
      }

      v9 = v7;
      v10 = std::string::compare(&__p, [v7 UTF8String]);
      v11 = SALogObjectGeneral;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v13 = __p.__r_.__value_.__r.__words[0];
        v14 = v7;
        uTF8String = [v7 UTF8String];
        *buf = 68289795;
        p_p = &__p;
        if (v12 < 0)
        {
          p_p = v13;
        }

        v21 = 2082;
        v22 = "";
        v23 = 2081;
        v24 = p_p;
        v25 = 2081;
        v26 = uTF8String;
        v27 = 1026;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,isSubscribedChannel, candidate:%{private, location:escape_only}s, matchedWith:%{private, location:escape_only}s, result:%{public}d}", buf, 0x2Cu);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v10)
      {
        break;
      }

      begin += 24;
      if (begin == end)
      {
        begin = end;
        break;
      }
    }
  }

  v17 = begin != self->_activeSubscibedChannels.__end_;
  return v17;
}

- (void)addToSubscribedChannels:(id)channels
{
  channelsCopy = channels;
  v31 = channelsCopy;
  if (![(SACloudChannelsInterface *)self isSubscribedChannel:channelsCopy])
  {
    uTF8String = [channelsCopy UTF8String];
    v6 = strlen(uTF8String);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100004D90();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v33) = v6;
    if (v6)
    {
      memmove(&__dst, uTF8String, v6);
    }

    *(&__dst + v7) = 0;
    end = self->_activeSubscibedChannels.__end_;
    cap = self->_activeSubscibedChannels.__cap_;
    if (end >= cap)
    {
      begin = self->_activeSubscibedChannels.__begin_;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10000509C();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 3);
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v13;
      }

      *&v35[24] = &self->_activeSubscibedChannels;
      if (v15)
      {
        sub_1000050B4(&self->_activeSubscibedChannels, v15);
      }

      v16 = 24 * v12;
      *v16 = __dst;
      *(v16 + 16) = v33;
      v10 = (24 * v12 + 24);
      v17 = self->_activeSubscibedChannels.__begin_;
      v18 = (self->_activeSubscibedChannels.__end_ - v17);
      v19 = (v16 - v18);
      memcpy((v16 - v18), v17, v18);
      v20 = self->_activeSubscibedChannels.__begin_;
      self->_activeSubscibedChannels.__begin_ = v19;
      self->_activeSubscibedChannels.__end_ = v10;
      v21 = self->_activeSubscibedChannels.__cap_;
      self->_activeSubscibedChannels.__cap_ = 0;
      *&v35[8] = v20;
      *&v35[16] = v21;
      *buf = v20;
      *v35 = v20;
      sub_10000510C(buf);
    }

    else
    {
      *end = __dst;
      *(end + 2) = v33;
      v10 = end + 24;
    }

    self->_activeSubscibedChannels.__end_ = v10;
  }

  v22 = SALogObjectGeneral;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = channelsCopy;
    uTF8String2 = [channelsCopy UTF8String];
    v25 = -1431655765 * ((self->_activeSubscibedChannels.__end_ - self->_activeSubscibedChannels.__begin_) >> 3);
    *buf = 68289539;
    *&buf[4] = 0;
    *v35 = 2082;
    *&v35[2] = "";
    *&v35[10] = 2081;
    *&v35[12] = uTF8String2;
    *&v35[20] = 1026;
    *&v35[22] = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,addToSubscribedChannels, channel:%{private, location:escape_only}s, len:%{public}d}", buf, 0x22u);
  }

  v26 = self->_activeSubscibedChannels.__begin_;
  for (i = self->_activeSubscibedChannels.__end_; v26 != i; v26 += 24)
  {
    if (v26[23] < 0)
    {
      sub_100004CEC(&__dst, *v26, *(v26 + 1));
    }

    else
    {
      v28 = *v26;
      v33 = *(v26 + 2);
      __dst = v28;
    }

    v29 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (v33 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *v35 = 2082;
      *&v35[2] = "";
      *&v35[10] = 2081;
      *&v35[12] = p_dst;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,addToSubscribedChannels,active, channel:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(__dst);
    }
  }
}

- (void)removeFromSubscribedChannels:(id)channels
{
  channelsCopy = channels;
  begin = self->_activeSubscibedChannels.__begin_;
  end = self->_activeSubscibedChannels.__end_;
  v7 = channelsCopy;
  if (begin != end)
  {
    while (1)
    {
      if (*(begin + 23) < 0)
      {
        sub_100004CEC(&__p, *begin, *(begin + 1));
      }

      else
      {
        v8 = *begin;
        __p.__r_.__value_.__r.__words[2] = *(begin + 2);
        *&__p.__r_.__value_.__l.__data_ = v8;
      }

      v9 = std::string::compare(&__p, [v7 UTF8String]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v9)
      {
        break;
      }

      begin = (begin + 24);
      if (begin == end)
      {
        begin = end;
        break;
      }
    }
  }

  v10 = self->_activeSubscibedChannels.__end_;
  if (begin != v10)
  {
    sub_100047E20(&__p, (begin + 24), v10, begin);
    v12 = v11;
    v13 = self->_activeSubscibedChannels.__end_;
    while (v13 != v12)
    {
      v14 = *(v13 - 1);
      v13 -= 3;
      if (v14 < 0)
      {
        operator delete(*v13);
      }
    }

    self->_activeSubscibedChannels.__end_ = v12;
  }
}

- (void)subscribe:(id)subscribe topic:(id)topic
{
  subscribeCopy = subscribe;
  topicCopy = topic;
  v8 = SALogObjectGeneral;
  if (subscribeCopy)
  {
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2081;
      uTF8String = [subscribeCopy UTF8String];
      v17 = 2081;
      uTF8String2 = [topicCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,subscribe, channel:%{private, location:escape_only}s, channelTopic:%{private, location:escape_only}s}", &v11, 0x26u);
    }

    v10 = [[PKPublicChannel alloc] initWithChannelID:subscribeCopy];
    [(SACloudChannelsInterface *)self addToSubscribedChannels:subscribeCopy];
    [(APSConnection *)self->_pushConnection subscribeToChannel:v10 forTopic:topicCopy];
  }

  else if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v11 = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#ch,subscribeWithNilChannel}", &v11, 0x12u);
  }
}

- (void)unsubscribe:(id)unsubscribe topic:(id)topic
{
  unsubscribeCopy = unsubscribe;
  topicCopy = topic;
  v8 = SALogObjectGeneral;
  if (unsubscribeCopy)
  {
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2081;
      uTF8String = [unsubscribeCopy UTF8String];
      v17 = 2081;
      uTF8String2 = [topicCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,unsubscribe, channel:%{private, location:escape_only}s, channelTopic:%{private, location:escape_only}s}", &v11, 0x26u);
    }

    v10 = [[PKPublicChannel alloc] initWithChannelID:unsubscribeCopy];
    [(SACloudChannelsInterface *)self removeFromSubscribedChannels:unsubscribeCopy];
    [(APSConnection *)self->_pushConnection unsubscribeFromChannel:v10 forTopic:topicCopy];
  }

  else if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v11 = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#ch,unsubscribeWithNilChannel}", &v11, 0x12u);
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v14 = objc_autoreleasePoolPush();
  v15 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 68289795;
    v18 = 2082;
    v19 = "";
    v20 = 2113;
    v21 = tokenCopy;
    v22 = 2113;
    v23 = topicCopy;
    v24 = 2113;
    v25 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,received push token, token:%{private, location:escape_only}@, topic:%{private, location:escape_only}@, identifier:%{private, location:escape_only}@}", &v17, 0x30u);
  }

  channelProxy = [(SACloudChannelsInterface *)self channelProxy];
  (*(channelProxy->var0 + 5))(channelProxy, 1);
  objc_autoreleasePoolPop(v14);
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  v8 = objc_autoreleasePoolPush();
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 68289283;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2113;
    v15 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,received public push token, token:%{private, location:escape_only}@}", v11, 0x1Cu);
  }

  channelProxy = [(SACloudChannelsInterface *)self channelProxy];
  (*(channelProxy->var0 + 6))(channelProxy, 1);
  objc_autoreleasePoolPop(v8);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  topic = [messageCopy topic];
  userInfo = [messageCopy userInfo];
  incomingInterface = [messageCopy incomingInterface];
  v23 = kIncomingMessageInterfaceKey;
  v12 = [NSNumber numberWithInt:incomingInterface];
  v24 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  v14 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 68289539;
    v16[1] = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2113;
    v20 = topic;
    v21 = 2113;
    v22 = messageCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,Received push message, topic:%{private, location:escape_only}@, message:%{private, location:escape_only}@}", v16, 0x26u);
  }

  [userInfo enumerateKeysAndObjectsUsingBlock:&stru_10013FC00];
  [v13 enumerateKeysAndObjectsUsingBlock:&stru_10013FC20];
  channelProxy = [(SACloudChannelsInterface *)self channelProxy];
  (*(channelProxy->var0 + 4))(channelProxy, userInfo, v13);

  objc_autoreleasePoolPop(v8);
}

- (void)unsubcribeForgottenChannels:(id)channels
{
  channelsCopy = channels;
  [SACloudChannelsInterface unsubcribeForgottenChannelsForTopic:"unsubcribeForgottenChannelsForTopic:topicName:" topicName:?];
  [(SACloudChannelsInterface *)self unsubcribeForgottenChannelsForTopic:channelsCopy topicName:@"com.apple.aps.mantis.safetyalert"];
}

- (void)unsubcribeForgottenChannelsForTopic:(id)topic topicName:(id)name
{
  topicCopy = topic;
  nameCopy = name;
  if (nameCopy)
  {
    getPushConnection = [(SACloudChannelsInterface *)self getPushConnection];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000C3CF8;
    v10[3] = &unk_10013FC48;
    v11 = nameCopy;
    selfCopy = self;
    v13 = topicCopy;
    [getPushConnection getRegisteredChannelsForTopic:v11 withCompletion:v10];
  }

  else
  {
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,unsubcribeForgottenChannels,invalid topic}", buf, 0x12u);
    }
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end