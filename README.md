# Helm Addon Charts

A collection of small charts to add addon features/configurations.

This is intended to be for simple things like policies or setting useful defaults, applications and the like should have their own repository, or be part of the application source.

The included charts are:

* cert-manager-issuers

See below for details.

## cert-manager-issuers

This installs two ClusterIssuer resources for general purpose use, mainly for securing Ingress resources:

* `letsencrypt-staging` is for use with development and test, and allows a relatively high number of certificates to be issued.  
  These certificates do not have a corresponding root CA installed in browsers.
* `letsencrypt-production` is for use when development is over and it's time to deploy for real.
  The production environment has much more restictive rate limiting.
  Production certificates will validate in all browsers.
