@interface SKLastPartitionResizer
- (id)fsResize:(id *)resize;
- (id)partResize:(id *)resize;
- (id)resizeStateMachine:(id *)machine;
- (unint64_t)currentSize;
@end

@implementation SKLastPartitionResizer

- (unint64_t)currentSize
{
  v3 = [SKLastPartitions alloc];
  disk = [(SKDiskResizerBase *)self disk];
  v5 = [(SKLastPartitions *)v3 initWithDisk:disk];

  resizablePart = [(SKLastPartitions *)v5 resizablePart];
  unformattedSize = [resizablePart unformattedSize];

  v18 = unformattedSize;
  resizablePart2 = [(SKLastPartitions *)v5 resizablePart];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  resizablePart3 = [(SKLastPartitions *)v5 resizablePart];
  v11 = resizablePart3;
  if (isKindOfClass)
  {
    container = [resizablePart3 container];

    if (container)
    {
      unformattedSize = [container totalSpace];
      v18 = unformattedSize;
    }
  }

  else
  {
    type = [resizablePart3 type];
    v14 = [type isEqualToString:kSKDiskTypeHFS];

    if (v14)
    {
      resizablePart4 = [(SKLastPartitions *)v5 resizablePart];
      [SKLastPartitions hfsMinimalSizeForDisk:resizablePart4 currentSize:&v18];

      unformattedSize = v18;
    }
  }

  nonResizableSize = [(SKLastPartitions *)v5 nonResizableSize];

  return unformattedSize + nonResizableSize;
}

- (id)partResize:(id *)resize
{
  v5 = [SKLastPartitions alloc];
  disk = [(SKDiskResizerBase *)self disk];
  v7 = [(SKLastPartitions *)v5 initWithDisk:disk];

  resizablePart = [(SKLastPartitions *)v7 resizablePart];
  if (!resizablePart)
  {
    goto LABEL_3;
  }

  v9 = resizablePart;
  resizablePart2 = [(SKLastPartitions *)v7 resizablePart];
  isWholeDisk = [resizablePart2 isWholeDisk];

  if (isWholeDisk)
  {
    goto LABEL_3;
  }

  v15 = +[SKError frameworkBundle];
  v16 = [v15 localizedStringForKey:@"Resizing partition..." value:&stru_10004A890 table:0];
  progress = [(SKDiskResizerBase *)self progress];
  [progress setLocalizedAdditionalDescription:v16];

  requestedSize = [(SKDiskResizerBase *)self requestedSize];
  v19 = requestedSize - [(SKLastPartitions *)v7 nonResizableSize];
  v20 = sub_10000BFD0();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    resizablePart3 = [(SKLastPartitions *)v7 resizablePart];
    v28 = 136315650;
    v29 = "[SKLastPartitionResizer partResize:]";
    v30 = 2112;
    v31 = resizablePart3;
    v32 = 2048;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Resizing partition %@ to %lld bytes", &v28, 0x20u);
  }

  v22 = [SKPartitionTable alloc];
  disk2 = [(SKDiskResizerBase *)self disk];
  v24 = [(SKPartitionTable *)v22 initWithDisk:disk2 error:resize];

  if (!v24)
  {
    eventFromSize = [(SKDiskResizerBase *)self rollbackResize:resize];
    goto LABEL_4;
  }

  resizablePart4 = [(SKLastPartitions *)v7 resizablePart];
  v26 = [SKPartitionTable partitionIDFromDisk:resizablePart4];

  if (v26)
  {
    if ([(SKPartitionTable *)v24 resizePartitionID:v26 size:v19 offset:0 error:resize])
    {

LABEL_3:
      [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 10];
      eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
LABEL_4:
      v13 = eventFromSize;
      goto LABEL_5;
    }
  }

  else
  {
    v27 = [SKError errorWithCode:117 debugDescription:@"Failed to get the ID of the resized partition" error:resize];
  }

  v13 = [(SKDiskResizerBase *)self rollbackResize:resize];

LABEL_5:

  return v13;
}

- (id)fsResize:(id *)resize
{
  v5 = +[SKError frameworkBundle];
  v6 = [v5 localizedStringForKey:@"Resizing file system..." value:&stru_10004A890 table:0];
  progress = [(SKDiskResizerBase *)self progress];
  [progress setLocalizedAdditionalDescription:v6];

  v8 = [SKLastPartitions alloc];
  disk = [(SKDiskResizerBase *)self disk];
  v10 = [(SKLastPartitions *)v8 initWithDisk:disk];

  requestedSize = [(SKDiskResizerBase *)self requestedSize];
  v12 = requestedSize - [(SKLastPartitions *)v10 nonResizableSize];
  v13 = sub_10000BFD0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    resizablePart = [(SKLastPartitions *)v10 resizablePart];
    *buf = 136315650;
    v42 = "[SKLastPartitionResizer fsResize:]";
    v43 = 2112;
    v44 = resizablePart;
    v45 = 2048;
    v46 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Resizing filesystem on %@ to %lld", buf, 0x20u);
  }

  resizablePart2 = [(SKLastPartitions *)v10 resizablePart];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    progress2 = [(SKDiskResizerBase *)self progress];
    if ([progress2 isCancelled])
    {
      resizeError = [(SKDiskResizerBase *)self resizeError];

      if (!resizeError)
      {
        v19 = sub_10000BFD0();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v42 = "[SKLastPartitionResizer fsResize:]";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Cancelling resize before it starts", buf, 0xCu);
        }

        eventFromSize = [(SKDiskResizerBase *)self cancelWithError:resize];
        goto LABEL_22;
      }
    }

    else
    {
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10002D358;
    v39[3] = &unk_100048BB0;
    v29 = v10;
    v40 = v29;
    progress3 = [(SKDiskResizerBase *)self progress];
    [progress3 setCancellationHandler:v39];

    resizablePart3 = [(SKLastPartitions *)v29 resizablePart];
    diskIdentifier = [resizablePart3 diskIdentifier];
    [diskIdentifier UTF8String];
    v33 = APFSContainerResize();

    progress4 = [(SKDiskResizerBase *)self progress];
    LODWORD(diskIdentifier) = [progress4 isCancelled];

    if (diskIdentifier)
    {
      v35 = [(SKDiskResizerBase *)self cancelWithError:resize];
LABEL_19:
      v37 = v35;

      goto LABEL_23;
    }

    if (v33)
    {
      v36 = [SKError nilWithOSStatus:v33 debugDescription:@"APFS container resize failed" error:resize];
      v35 = [(SKDiskResizerBase *)self rollbackResize:resize];
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  resizablePart4 = [(SKLastPartitions *)v10 resizablePart];
  type = [resizablePart4 type];
  v23 = [type isEqualToString:kSKDiskTypeHFS];

  if (!v23)
  {
    goto LABEL_21;
  }

  resizablePart5 = [(SKLastPartitions *)v10 resizablePart];
  v25 = [SKPartitionTable createMediaRefWithDisk:resizablePart5 error:resize];

  if (v25)
  {
    resizablePart6 = [(SKLastPartitions *)v10 resizablePart];
    [resizablePart6 getSectorSize];

    v27 = MKHFSResizeVolume();
    CFRelease(v25);
    if (v27)
    {
      v28 = [SKError errorWithOSStatus:v27 error:resize];
      goto LABEL_13;
    }

LABEL_21:
    [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 80];
    eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
    goto LABEL_22;
  }

LABEL_13:
  eventFromSize = [(SKDiskResizerBase *)self rollbackResize:resize];
LABEL_22:
  v37 = eventFromSize;
LABEL_23:

  return v37;
}

- (id)resizeStateMachine:(id *)machine
{
  v18 = sub_10000A5D4(@"kPartitionResize", off_100059118, "partResize:", @"kFSResize");
  v19[0] = v18;
  v4 = sub_10000A5D4(@"kFSResize", off_100059118, "fsResize:", off_100059130);
  v19[1] = v4;
  v5 = sub_10000A608(off_100059130, off_100059118);
  v19[2] = v5;
  v6 = sub_10000A5D4(off_100059130, off_100059120, "fsResize:", @"kPartitionResize");
  v19[3] = v6;
  v7 = sub_10000A5D4(@"kFSResize", off_100059120, "fsResize:", @"kPartitionResize");
  v19[4] = v7;
  v8 = sub_10000A5D4(@"kPartitionResize", off_100059120, "partResize:", off_100059138);
  v19[5] = v8;
  v9 = sub_10000A608(off_100059138, off_100059120);
  v19[6] = v9;
  v10 = sub_10000A5D4(off_100059138, off_100059118, "partResize:", @"kFSResize");
  v19[7] = v10;
  v11 = [NSArray arrayWithObjects:v19 count:8];
  v12 = [SKStateTransitionTable tableWithTransitionEntries:v11 selectorTarget:self];

  eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
  if ([eventFromSize isEqualToString:off_100059118])
  {
    v14 = @"kPartitionResize";
  }

  else
  {
    v14 = @"kFSResize";
  }

  eventFromSize2 = [(SKDiskResizerBase *)self eventFromSize];
  v16 = [SKStateMachine machineWithStateTransitionTable:v12 startState:v14 startEvent:eventFromSize2];

  return v16;
}

@end