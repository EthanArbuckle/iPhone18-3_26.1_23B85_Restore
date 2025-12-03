@interface NMRPlaybackQueueResponse
- (NMRPlaybackQueueResponse)initWithPlaybackQueue:(void *)queue error:(__CFError *)error;
- (NMRPlaybackQueueResponse)initWithProtobufData:(id)data;
- (__CFError)error;
- (void)invokeCompletion:(id)completion;
- (void)playbackQueue;
@end

@implementation NMRPlaybackQueueResponse

- (NMRPlaybackQueueResponse)initWithPlaybackQueue:(void *)queue error:(__CFError *)error
{
  v15.receiver = self;
  v15.super_class = NMRPlaybackQueueResponse;
  v6 = [(NMRPlaybackQueueResponse *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc_init(_NMRPlaybackQueueResponseProtobuf);
    protobuf = v6->_protobuf;
    v6->_protobuf = v7;

    if (queue)
    {
      ExternalRepresentation = MRPlaybackQueueCreateExternalRepresentation();
      [(_NMRPlaybackQueueResponseProtobuf *)v6->_protobuf setPlaybackQueue:ExternalRepresentation];
    }

    if (error)
    {
      v14 = 0;
      v10 = [NSKeyedArchiver archivedDataWithRootObject:error requiringSecureCoding:1 error:&v14];
      v11 = v14;
      if (v11)
      {
        v12 = sub_10002C180(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100031280(error, v11, v12);
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

  playbackQueue = [(_NMRPlaybackQueueResponseProtobuf *)self->_protobuf playbackQueue];
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
  error = [(_NMRPlaybackQueueResponseProtobuf *)self->_protobuf error];
  v10 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v3 fromData:error error:&v10];
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

- (void)invokeCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    (*(completion + 2))(completionCopy, [(NMRPlaybackQueueResponse *)self playbackQueue], [(NMRPlaybackQueueResponse *)self error]);
  }
}

- (NMRPlaybackQueueResponse)initWithProtobufData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = NMRPlaybackQueueResponse;
  v5 = [(NMRPlaybackQueueResponse *)&v9 init];
  if (v5)
  {
    v6 = [[_NMRPlaybackQueueResponseProtobuf alloc] initWithData:dataCopy];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;
  }

  return v5;
}

@end