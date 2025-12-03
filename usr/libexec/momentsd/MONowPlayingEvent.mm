@interface MONowPlayingEvent
- (MONowPlayingEvent)initWithNowPlayingEvent:(id)event name:(id)name isRemote:(BOOL)remote deviceSource:(id)source timestamp:(double)timestamp;
@end

@implementation MONowPlayingEvent

- (MONowPlayingEvent)initWithNowPlayingEvent:(id)event name:(id)name isRemote:(BOOL)remote deviceSource:(id)source timestamp:(double)timestamp
{
  eventCopy = event;
  nameCopy = name;
  sourceCopy = source;
  v34.receiver = self;
  v34.super_class = MONowPlayingEvent;
  v15 = [(MONowPlayingEvent *)&v34 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    v16->_isRemote = remote;
    objc_storeStrong(&v16->_deviceSource, source);
    v16->_timestamp = timestamp;
    bundleID = [eventCopy bundleID];
    v18 = [bundleID isEqualToString:@"com.apple.NanoMusic"];

    if (v18)
    {
      bundleID2 = @"com.apple.Music";
    }

    else
    {
      bundleID2 = [eventCopy bundleID];
    }

    bundleID = v16->_bundleID;
    v16->_bundleID = &bundleID2->isa;

    album = [eventCopy album];
    album = v16->_album;
    v16->_album = album;

    artist = [eventCopy artist];
    artist = v16->_artist;
    v16->_artist = artist;

    v16->_duration = [eventCopy duration];
    genre = [eventCopy genre];
    genre = v16->_genre;
    v16->_genre = genre;

    title = [eventCopy title];
    title = v16->_title;
    v16->_title = title;

    mediaType = [eventCopy mediaType];
    mediaType = v16->_mediaType;
    v16->_mediaType = mediaType;

    iTunesStoreIdentifier = [eventCopy iTunesStoreIdentifier];
    iTunesStoreIdentifier = v16->_iTunesStoreIdentifier;
    v16->_iTunesStoreIdentifier = iTunesStoreIdentifier;

    v16->_playbackState = [eventCopy playbackState];
  }

  return v16;
}

@end