@interface OSIMediaPlaybackMonitor
- (BOOL)hasPlaybackStateChangeRecently:(double)recently;
- (BOOL)isEventNextSongPlaying:(id)playing fromPreviousEvent:(id)event;
- (double)playbackDurationOverDuration:(double)duration currentlyPlaying:(BOOL *)playing;
@end

@implementation OSIMediaPlaybackMonitor

- (double)playbackDurationOverDuration:(double)duration currentlyPlaying:(BOOL *)playing
{
  v6 = os_transaction_create();
  v7 = objc_autoreleasePoolPush();
  Current = CFAbsoluteTimeGetCurrent();
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10000325C;
  v41 = sub_100003570;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v9 = os_log_create("com.apple.osintelligence", "inactivity.playbackmonitor");
  v10 = [BMPublisherOptions alloc];
  v11 = [NSDate dateWithTimeIntervalSinceNow:duration * -20.0];
  v12 = +[NSDate distantFuture];
  v13 = [v10 initWithStartDate:v11 endDate:v12 maxEvents:0 lastN:0 reversed:0];

  v14 = BiomeLibrary();
  media = [v14 Media];
  nowPlaying = [media NowPlaying];
  v17 = [nowPlaying publisherWithOptions:v13];
  v18 = Current - duration;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001F2F0;
  v27[3] = &unk_100094F18;
  v29 = &v37;
  v30 = &v33;
  v19 = v9;
  v32 = v18;
  v28 = v19;
  v31 = &v43;
  v20 = [v17 sinkWithCompletion:&stru_100094EF0 receiveInput:v27];

  if (playing)
  {
    *playing = *(v34 + 24);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = *(v34 + 24);
    *buf = 67109120;
    LODWORD(v48) = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Currently playing: %u\n\n\n", buf, 8u);
  }

  if (*(v34 + 24) == 1)
  {
    [v38[5] timestamp];
    if (v22 >= v18)
    {
      [v38[5] timestamp];
      v18 = v23;
    }

    v44[3] = Current - v18 + v44[3];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v24 = v44[3] / 60.0;
    *buf = 134217984;
    v48 = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Total playback duration: %.0lfm", buf, 0xCu);
  }

  v25 = v44[3];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  objc_autoreleasePoolPop(v7);

  return v25;
}

- (BOOL)hasPlaybackStateChangeRecently:(double)recently
{
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  CFAbsoluteTimeGetCurrent();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_10000325C;
  v21[4] = sub_100003570;
  v22 = 0;
  v7 = os_log_create("com.apple.osintelligence", "inactivity.playbackmonitor");
  v8 = [BMPublisherOptions alloc];
  v9 = [NSDate dateWithTimeIntervalSinceNow:-recently];
  v10 = +[NSDate distantFuture];
  v11 = [v8 initWithStartDate:v9 endDate:v10 maxEvents:0 lastN:0 reversed:0];

  v12 = BiomeLibrary();
  media = [v12 Media];
  nowPlaying = [media NowPlaying];
  v15 = [nowPlaying publisherWithOptions:v11];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001F7C8;
  v20[3] = &unk_100094F60;
  v20[4] = self;
  v20[5] = v21;
  v20[6] = &v23;
  v16 = [v15 sinkWithCompletion:&stru_100094F38 receiveInput:v20];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v17 = v24[3];
    *buf = 134218240;
    v28 = v17;
    v29 = 2048;
    v30 = recently / 60.0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Counted %ld unique play/pause state(s) in the last %.1f minutes", buf, 0x16u);
  }

  v18 = v24[3] > 0;

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v23, 8);
  objc_autoreleasePoolPop(v6);

  return v18;
}

- (BOOL)isEventNextSongPlaying:(id)playing fromPreviousEvent:(id)event
{
  playingCopy = playing;
  eventCopy = event;
  playbackState = [playingCopy playbackState];
  v8 = 0;
  if (eventCopy && playbackState == 1)
  {
    if ([eventCopy playbackState] == 3)
    {
      [playingCopy absoluteTimestamp];
      v10 = v9;
      [eventCopy absoluteTimestamp];
      v8 = v10 - v11 < 0.01;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end