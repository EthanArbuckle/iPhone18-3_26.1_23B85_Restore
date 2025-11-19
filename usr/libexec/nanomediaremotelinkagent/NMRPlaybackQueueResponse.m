@interface NMRPlaybackQueueResponse
- (NMRPlaybackQueueResponse)initWithPlaybackQueue:(void *)a3 error:(__CFError *)a4;
- (NMRPlaybackQueueResponse)initWithProtobufData:(id)a3;
- (__CFError)error;
- (void)invokeCompletion:(id)a3;
- (void)playbackQueue;
@end

@implementation NMRPlaybackQueueResponse

- (NMRPlaybackQueueResponse)initWithPlaybackQueue:(void *)a3 error:(__CFError *)a4
{
  v15.receiver = self;
  v15.super_class = NMRPlaybackQueueResponse;
  v6 = [(NMRPlaybackQueueResponse *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc_init(_NMRPlaybackQueueResponseProtobuf);
    protobuf = v6->_protobuf;
    v6->_protobuf = v7;

    if (a3)
    {
      ExternalRepresentation = MRPlaybackQueueCreateExternalRepresentation();
      [(_NMRPlaybackQueueResponseProtobuf *)v6->_protobuf setPlaybackQueue:ExternalRepresentation];
    }

    if (a4)
    {
      v14 = 0;
      v10 = [NSKeyedArchiver archivedDataWithRootObject:a4 requiringSecureCoding:1 error:&v14];
      v11 = v14;
      if (v11)
      {
        v12 = sub_10002C180(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100031280(a4, v11, v12);
        }
      }

      [(_NMRPlaybackQueueResponseProtobuf *)v6->_protobuf setError:v10];
    }
  }

  return v6;
}

- (void)playbackQueue
{
  if (![(_NMRPlaybackQueueResponseProtobuf *)self->_protobuf hasPlaybackQueue])
  {
    return 0;
  }

  v3 = [(_NMRPlaybackQueueResponseProtobuf *)self->_protobuf playbackQueue];
  v4 = MRPlaybackQueueCreateFromExternalRepresentation();
  v5 = CFAutorelease(v4);

  return v5;
}

- (__CFError)error
{
  if (![(_NMRPlaybackQueueResponseProtobuf *)self->_protobuf hasError])
  {
    return 0;
  }

  v3 = +[NSSet setWithObject:](NSSet, "setWithObject:", +[NSError classForKeyedUnarchiver]);
  v4 = [(_NMRPlaybackQueueResponseProtobuf *)self->_protobuf error];
  v10 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v3 fromData:v4 error:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = sub_10002C180(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100031308(v6, v7);
    }
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (void)invokeCompletion:(id)a3
{
  if (a3)
  {
    v5 = a3;
    (*(a3 + 2))(v5, [(NMRPlaybackQueueResponse *)self playbackQueue], [(NMRPlaybackQueueResponse *)self error]);
  }
}

- (NMRPlaybackQueueResponse)initWithProtobufData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NMRPlaybackQueueResponse;
  v5 = [(NMRPlaybackQueueResponse *)&v9 init];
  if (v5)
  {
    v6 = [[_NMRPlaybackQueueResponseProtobuf alloc] initWithData:v4];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;
  }

  return v5;
}

@end