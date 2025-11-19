@interface SKLastPartitionResizer
- (id)fsResize:(id *)a3;
- (id)partResize:(id *)a3;
- (id)resizeStateMachine:(id *)a3;
- (unint64_t)currentSize;
@end

@implementation SKLastPartitionResizer

- (unint64_t)currentSize
{
  v3 = [SKLastPartitions alloc];
  v4 = [(SKDiskResizerBase *)self disk];
  v5 = [(SKLastPartitions *)v3 initWithDisk:v4];

  v6 = [(SKLastPartitions *)v5 resizablePart];
  v7 = [v6 unformattedSize];

  v18 = v7;
  v8 = [(SKLastPartitions *)v5 resizablePart];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = [(SKLastPartitions *)v5 resizablePart];
  v11 = v10;
  if (isKindOfClass)
  {
    v12 = [v10 container];

    if (v12)
    {
      v7 = [v12 totalSpace];
      v18 = v7;
    }
  }

  else
  {
    v13 = [v10 type];
    v14 = [v13 isEqualToString:kSKDiskTypeHFS];

    if (v14)
    {
      v15 = [(SKLastPartitions *)v5 resizablePart];
      [SKLastPartitions hfsMinimalSizeForDisk:v15 currentSize:&v18];

      v7 = v18;
    }
  }

  v16 = [(SKLastPartitions *)v5 nonResizableSize];

  return v7 + v16;
}

- (id)partResize:(id *)a3
{
  v5 = [SKLastPartitions alloc];
  v6 = [(SKDiskResizerBase *)self disk];
  v7 = [(SKLastPartitions *)v5 initWithDisk:v6];

  v8 = [(SKLastPartitions *)v7 resizablePart];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = v8;
  v10 = [(SKLastPartitions *)v7 resizablePart];
  v11 = [v10 isWholeDisk];

  if (v11)
  {
    goto LABEL_3;
  }

  v15 = +[SKError frameworkBundle];
  v16 = [v15 localizedStringForKey:@"Resizing partition..." value:&stru_10004A890 table:0];
  v17 = [(SKDiskResizerBase *)self progress];
  [v17 setLocalizedAdditionalDescription:v16];

  v18 = [(SKDiskResizerBase *)self requestedSize];
  v19 = v18 - [(SKLastPartitions *)v7 nonResizableSize];
  v20 = sub_10000BFD0();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(SKLastPartitions *)v7 resizablePart];
    v28 = 136315650;
    v29 = "[SKLastPartitionResizer partResize:]";
    v30 = 2112;
    v31 = v21;
    v32 = 2048;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Resizing partition %@ to %lld bytes", &v28, 0x20u);
  }

  v22 = [SKPartitionTable alloc];
  v23 = [(SKDiskResizerBase *)self disk];
  v24 = [(SKPartitionTable *)v22 initWithDisk:v23 error:a3];

  if (!v24)
  {
    v12 = [(SKDiskResizerBase *)self rollbackResize:a3];
    goto LABEL_4;
  }

  v25 = [(SKLastPartitions *)v7 resizablePart];
  v26 = [SKPartitionTable partitionIDFromDisk:v25];

  if (v26)
  {
    if ([(SKPartitionTable *)v24 resizePartitionID:v26 size:v19 offset:0 error:a3])
    {

LABEL_3:
      [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 10];
      v12 = [(SKDiskResizerBase *)self eventFromSize];
LABEL_4:
      v13 = v12;
      goto LABEL_5;
    }
  }

  else
  {
    v27 = [SKError errorWithCode:117 debugDescription:@"Failed to get the ID of the resized partition" error:a3];
  }

  v13 = [(SKDiskResizerBase *)self rollbackResize:a3];

LABEL_5:

  return v13;
}

- (id)fsResize:(id *)a3
{
  v5 = +[SKError frameworkBundle];
  v6 = [v5 localizedStringForKey:@"Resizing file system..." value:&stru_10004A890 table:0];
  v7 = [(SKDiskResizerBase *)self progress];
  [v7 setLocalizedAdditionalDescription:v6];

  v8 = [SKLastPartitions alloc];
  v9 = [(SKDiskResizerBase *)self disk];
  v10 = [(SKLastPartitions *)v8 initWithDisk:v9];

  v11 = [(SKDiskResizerBase *)self requestedSize];
  v12 = v11 - [(SKLastPartitions *)v10 nonResizableSize];
  v13 = sub_10000BFD0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SKLastPartitions *)v10 resizablePart];
    *buf = 136315650;
    v42 = "[SKLastPartitionResizer fsResize:]";
    v43 = 2112;
    v44 = v14;
    v45 = 2048;
    v46 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Resizing filesystem on %@ to %lld", buf, 0x20u);
  }

  v15 = [(SKLastPartitions *)v10 resizablePart];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = [(SKDiskResizerBase *)self progress];
    if ([v17 isCancelled])
    {
      v18 = [(SKDiskResizerBase *)self resizeError];

      if (!v18)
      {
        v19 = sub_10000BFD0();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v42 = "[SKLastPartitionResizer fsResize:]";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Cancelling resize before it starts", buf, 0xCu);
        }

        v20 = [(SKDiskResizerBase *)self cancelWithError:a3];
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
    v30 = [(SKDiskResizerBase *)self progress];
    [v30 setCancellationHandler:v39];

    v31 = [(SKLastPartitions *)v29 resizablePart];
    v32 = [v31 diskIdentifier];
    [v32 UTF8String];
    v33 = APFSContainerResize();

    v34 = [(SKDiskResizerBase *)self progress];
    LODWORD(v32) = [v34 isCancelled];

    if (v32)
    {
      v35 = [(SKDiskResizerBase *)self cancelWithError:a3];
LABEL_19:
      v37 = v35;

      goto LABEL_23;
    }

    if (v33)
    {
      v36 = [SKError nilWithOSStatus:v33 debugDescription:@"APFS container resize failed" error:a3];
      v35 = [(SKDiskResizerBase *)self rollbackResize:a3];
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v21 = [(SKLastPartitions *)v10 resizablePart];
  v22 = [v21 type];
  v23 = [v22 isEqualToString:kSKDiskTypeHFS];

  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = [(SKLastPartitions *)v10 resizablePart];
  v25 = [SKPartitionTable createMediaRefWithDisk:v24 error:a3];

  if (v25)
  {
    v26 = [(SKLastPartitions *)v10 resizablePart];
    [v26 getSectorSize];

    v27 = MKHFSResizeVolume();
    CFRelease(v25);
    if (v27)
    {
      v28 = [SKError errorWithOSStatus:v27 error:a3];
      goto LABEL_13;
    }

LABEL_21:
    [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 80];
    v20 = [(SKDiskResizerBase *)self eventFromSize];
    goto LABEL_22;
  }

LABEL_13:
  v20 = [(SKDiskResizerBase *)self rollbackResize:a3];
LABEL_22:
  v37 = v20;
LABEL_23:

  return v37;
}

- (id)resizeStateMachine:(id *)a3
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

  v13 = [(SKDiskResizerBase *)self eventFromSize];
  if ([v13 isEqualToString:off_100059118])
  {
    v14 = @"kPartitionResize";
  }

  else
  {
    v14 = @"kFSResize";
  }

  v15 = [(SKDiskResizerBase *)self eventFromSize];
  v16 = [SKStateMachine machineWithStateTransitionTable:v12 startState:v14 startEvent:v15];

  return v16;
}

@end