@interface MIInstallableParallelPlaceholder
- (BOOL)performInstallationWithError:(id *)error;
@end

@implementation MIInstallableParallelPlaceholder

- (BOOL)performInstallationWithError:(id *)error
{
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    identity = [(MIInstallable *)self identity];
    MOLogWrite();
  }

  progressBlock = [(MIInstallable *)self progressBlock];
  (progressBlock)[2](progressBlock, @"InstallingApplication", 60);

  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
  parallelPlaceholderURL = [existingBundleContainer parallelPlaceholderURL];

  v8 = +[MIFileManager defaultManager];
  [v8 removeItemAtURL:parallelPlaceholderURL error:0];

  v9 = +[MIFileManager defaultManager];
  bundle = [(MIInstallable *)self bundle];
  bundleURL = [bundle bundleURL];
  v38 = 0;
  v12 = [v9 moveItemAtURL:bundleURL toURL:parallelPlaceholderURL error:&v38];
  v13 = v38;

  if ((v12 & 1) == 0)
  {
    v29 = MIInstallerErrorDomain;
    bundle2 = [(MIInstallable *)self bundle];
    bundleURL2 = [bundle2 bundleURL];
    v19 = sub_100010734("[MIInstallableParallelPlaceholder performInstallationWithError:]", 43, v29, 20, v13, &off_10009BD18, @"Could not move %@ to %@", v31, bundleURL2);

    v28 = 0;
LABEL_9:

    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  existingBundleContainer2 = [(MIInstallable *)self existingBundleContainer];
  bundle3 = [existingBundleContainer2 bundle];
  [(MIInstallable *)self setBundle:bundle3];

  existingBundleContainer3 = [(MIInstallable *)self existingBundleContainer];
  [(MIInstallableBundle *)self setBundleContainer:existingBundleContainer3];

  bundle4 = [(MIInstallable *)self bundle];
  v37 = v13;
  v18 = [bundle4 frameworkBundlesWithError:&v37];
  v19 = v37;

  [(MIInstallableBundle *)self setFrameworkBundles:v18];
  frameworkBundles = [(MIInstallableBundle *)self frameworkBundles];

  if (frameworkBundles)
  {
    bundle5 = [(MIInstallable *)self bundle];
    v36 = v19;
    v22 = [bundle5 driverKitExtensionBundlesWithError:&v36];
    v23 = v36;

    [(MIInstallableBundle *)self setDriverKitExtensionBundles:v22];
    driverKitExtensionBundles = [(MIInstallableBundle *)self driverKitExtensionBundles];

    if (!driverKitExtensionBundles)
    {
      v28 = 0;
      v19 = v23;
      if (!error)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    bundle6 = [(MIInstallable *)self bundle];
    v35 = v23;
    v26 = [bundle6 appExtensionBundlesWithError:&v35];
    v19 = v35;

    [(MIInstallableBundle *)self setAppExtensionBundles:v26];
    bundle2 = [(MIInstallableBundle *)self appExtensionBundles];
    v28 = bundle2 != 0;
    goto LABEL_9;
  }

  v28 = 0;
  if (!error)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (!v28)
  {
    v32 = v19;
    *error = v19;
  }

LABEL_16:

  return v28;
}

@end