@interface MONowPlayingEvent
- (MONowPlayingEvent)initWithNowPlayingEvent:(id)a3 name:(id)a4 isRemote:(BOOL)a5 deviceSource:(id)a6 timestamp:(double)a7;
@end

@implementation MONowPlayingEvent

- (MONowPlayingEvent)initWithNowPlayingEvent:(id)a3 name:(id)a4 isRemote:(BOOL)a5 deviceSource:(id)a6 timestamp:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v34.receiver = self;
  v34.super_class = MONowPlayingEvent;
  v15 = [(MONowPlayingEvent *)&v34 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a4);
    v16->_isRemote = a5;
    objc_storeStrong(&v16->_deviceSource, a6);
    v16->_timestamp = a7;
    v17 = [v12 bundleID];
    v18 = [v17 isEqualToString:@"com.apple.NanoMusic"];

    if (v18)
    {
      v19 = @"com.apple.Music";
    }

    else
    {
      v19 = [v12 bundleID];
    }

    bundleID = v16->_bundleID;
    v16->_bundleID = &v19->isa;

    v21 = [v12 album];
    album = v16->_album;
    v16->_album = v21;

    v23 = [v12 artist];
    artist = v16->_artist;
    v16->_artist = v23;

    v16->_duration = [v12 duration];
    v25 = [v12 genre];
    genre = v16->_genre;
    v16->_genre = v25;

    v27 = [v12 title];
    title = v16->_title;
    v16->_title = v27;

    v29 = [v12 mediaType];
    mediaType = v16->_mediaType;
    v16->_mediaType = v29;

    v31 = [v12 iTunesStoreIdentifier];
    iTunesStoreIdentifier = v16->_iTunesStoreIdentifier;
    v16->_iTunesStoreIdentifier = v31;

    v16->_playbackState = [v12 playbackState];
  }

  return v16;
}

@end