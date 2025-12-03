@interface SKEraseDisk
- (id)createStateMachineWithError:(id *)error;
@end

@implementation SKEraseDisk

- (id)createStateMachineWithError:(id *)error
{
  disk = [(SKEraseDisk *)self disk];

  if (disk)
  {
    goto LABEL_3;
  }

  v6 = +[SKDaemonManager sharedManager];
  diskRepresentation = [(SKEraseDisk *)self diskRepresentation];
  v8 = [v6 knownDiskForDictionary:diskRepresentation];
  [(SKEraseDisk *)self setDisk:v8];

  disk2 = [(SKEraseDisk *)self disk];

  if (disk2)
  {
LABEL_3:
    v10 = [(SKEraseDisk *)self validateWithError:error];

    if (v10)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      descriptors = [(SKEraseDisk *)self descriptors];
      v12 = [descriptors countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v44;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v44 != v14)
            {
              objc_enumerationMutation(descriptors);
            }

            v16 = *(*(&v43 + 1) + 8 * i);
            filesystem = [v16 filesystem];
            name = [v16 name];
            v19 = [filesystem isValidName:name error:error];

            if (!v19)
            {

              goto LABEL_14;
            }
          }

          v13 = [descriptors countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100008B7C;
      v41[3] = &unk_100048CA0;
      v41[4] = self;
      v42 = @"done";
      v34 = objc_retainBlock(v41);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100008F04;
      v39[3] = &unk_100048CA0;
      v39[4] = self;
      v40 = @"done";
      v33 = objc_retainBlock(v39);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000092F4;
      v37[3] = &unk_100048CA0;
      v37[4] = self;
      v38 = @"done";
      v32 = objc_retainBlock(v37);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100009524;
      v35[3] = &unk_100048CA0;
      v35[4] = self;
      v36 = @"done";
      v20 = objc_retainBlock(v35);
      v21 = sub_10000A5B8(@"begin", @"begin", v34, @"repartitioned");
      v47[0] = v21;
      v22 = sub_10000A5B8(@"repartitioned", @"done", v33, @"newfsed");
      v47[1] = v22;
      v23 = sub_10000A5B8(@"newfsed", @"done", v32, @"reprobed");
      v47[2] = v23;
      v24 = sub_10000A5B8(@"reprobed", @"done", v20, @"unmountedState");
      v47[3] = v24;
      v25 = sub_10000A608(@"unmountedState", @"done");
      v47[4] = v25;
      v26 = [NSArray arrayWithObjects:v47 count:5];
      v27 = [SKStateTransitionTable tableWithTransitionEntries:v26];
      v28 = [SKStateMachine machineWithStateTransitionTable:v27 startState:@"begin" startEvent:@"begin"];
    }

    else
    {
LABEL_14:
      v28 = 0;
    }
  }

  else
  {
    diskRepresentation2 = [(SKEraseDisk *)self diskRepresentation];
    v31 = [SKError errorWithCode:117 userInfo:diskRepresentation2];
    v28 = [SKError nilWithError:v31 error:error];
  }

  return v28;
}

@end