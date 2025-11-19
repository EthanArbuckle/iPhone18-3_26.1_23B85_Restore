@interface MIInstallableParallelPlaceholder
- (BOOL)performInstallationWithError:(id *)a3;
@end

@implementation MIInstallableParallelPlaceholder

- (BOOL)performInstallationWithError:(id *)a3
{
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v34 = [(MIInstallable *)self identity];
    MOLogWrite();
  }

  v5 = [(MIInstallable *)self progressBlock];
  (v5)[2](v5, @"InstallingApplication", 60);

  v6 = [(MIInstallable *)self existingBundleContainer];
  v7 = [v6 parallelPlaceholderURL];

  v8 = +[MIFileManager defaultManager];
  [v8 removeItemAtURL:v7 error:0];

  v9 = +[MIFileManager defaultManager];
  v10 = [(MIInstallable *)self bundle];
  v11 = [v10 bundleURL];
  v38 = 0;
  v12 = [v9 moveItemAtURL:v11 toURL:v7 error:&v38];
  v13 = v38;

  if ((v12 & 1) == 0)
  {
    v29 = MIInstallerErrorDomain;
    v27 = [(MIInstallable *)self bundle];
    v30 = [v27 bundleURL];
    v19 = sub_100010734("[MIInstallableParallelPlaceholder performInstallationWithError:]", 43, v29, 20, v13, &off_10009BD18, @"Could not move %@ to %@", v31, v30);

    v28 = 0;
LABEL_9:

    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v14 = [(MIInstallable *)self existingBundleContainer];
  v15 = [v14 bundle];
  [(MIInstallable *)self setBundle:v15];

  v16 = [(MIInstallable *)self existingBundleContainer];
  [(MIInstallableBundle *)self setBundleContainer:v16];

  v17 = [(MIInstallable *)self bundle];
  v37 = v13;
  v18 = [v17 frameworkBundlesWithError:&v37];
  v19 = v37;

  [(MIInstallableBundle *)self setFrameworkBundles:v18];
  v20 = [(MIInstallableBundle *)self frameworkBundles];

  if (v20)
  {
    v21 = [(MIInstallable *)self bundle];
    v36 = v19;
    v22 = [v21 driverKitExtensionBundlesWithError:&v36];
    v23 = v36;

    [(MIInstallableBundle *)self setDriverKitExtensionBundles:v22];
    v24 = [(MIInstallableBundle *)self driverKitExtensionBundles];

    if (!v24)
    {
      v28 = 0;
      v19 = v23;
      if (!a3)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v25 = [(MIInstallable *)self bundle];
    v35 = v23;
    v26 = [v25 appExtensionBundlesWithError:&v35];
    v19 = v35;

    [(MIInstallableBundle *)self setAppExtensionBundles:v26];
    v27 = [(MIInstallableBundle *)self appExtensionBundles];
    v28 = v27 != 0;
    goto LABEL_9;
  }

  v28 = 0;
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (!v28)
  {
    v32 = v19;
    *a3 = v19;
  }

LABEL_16:

  return v28;
}

@end