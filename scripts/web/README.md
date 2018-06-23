# web

These terraform scripts create the resources for our website.

## Notes

* Currently, the root domains will not forward to www. Likely fix
[here](https://medium.com/runatlantis/hosting-our-static-site-over-ssl-with-s3-acm-cloudfront-and-terraform-513b799aec0f),
or there might be a solution involving DNS.
* Amazon Lightsail is being used to manage the DNS settings, available
[here](https://lightsail.aws.amazon.com/ls/webapp/domains/goodemporium-com)
