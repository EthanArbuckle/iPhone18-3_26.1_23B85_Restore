@interface NMRPlaybackQueueRequest
- (NMRPlaybackQueueRequest)initWithProtobufData:(id)data;
- (NMRPlaybackQueueRequest)initWithRequest:(void *)request playerPath:(void *)path;
- (void)performWithQueue:(id)queue completion:(id)completion;
- (void)playerPath;
- (void)request;
@end

@implementation NMRPlaybackQueueRequest

- (NMRPlaybackQueueRequest)initWithRequest:(void *)request playerPath:(void *)path
{
  v10.receiver = self;
  v10.super_class = NMRPlaybackQueueRequest;
  v4 = [(NMRPlaybackQueueRequest *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(_NMRPlaybackQueueRequestProtobuf);
    protobuf = v4->_protobuf;
    v4->_protobuf = v5;

    ExternalRepresentation = MRPlaybackQueueRequestCreateExternalRepresentation();
    [(_NMRPlaybackQueueRequestProtobuf *)v4->_protobuf setRequest:ExternalRepresentation];

    v8 = MRNowPlayingPlayerPathCreateExternalRepresentation();
    [(_NMRPlaybackQueueRequestProtobuf *)v4->_protobuf setPlayerPath:v8];
  }

  return v4;
}

- (void)request
{
  request = [(_NMRPlaybackQueueRequestProtobuf *)self->_protobuf request];
  v3 = MRPlaybackQueueRequestCreateFromExternalRepresentation();
  v4 = CFAutorelease(v3);

  return v4;
}

- (void)playerPath
{
  playerPath = [(_NMRPlaybackQueueRequestProtobuf *)self->_protobuf playerPath];
  v3 = MRNowPlayingPlayerPathCreateFromExternalRepresentation();
  v4 = CFAutorelease(v3);

  return v4;
}

- (void)performWithQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  [(NMRPlaybackQueueRequest *)self request];
  [(NMRPlaybackQueueRequest *)self playerPath];
  v9 = completionCopy;
  v8 = completionCopy;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();
}

- (NMRPlaybackQueueRequest)initWithProtobufData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = NMRPlaybackQueueRequest;
  v5 = [(NMRPlaybackQueueRequest *)&v9 init];
  if (v5)
  {
    v6 = [[_NMRPlaybackQueueRequestProtobuf alloc] initWithData:dataCopy];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;
  }

  return v5;
}

@end