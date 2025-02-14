# Changelog

## 3.9.2 - 2018-02-12
* [#625](https://github.com/stripe/stripe-ruby/pull/625) Skip calling `to_hash` for `nil`

## 3.9.1 - 2017-12-15
* [#616](https://github.com/stripe/stripe-ruby/pull/616) Support all file-like objects for uploads with duck typed checks on `path` and `read` (we previously whitelisted only certain classes)

## 3.9.0 - 2017-12-08
* [#613](https://github.com/stripe/stripe-ruby/pull/613) Introduce new `IdempotencyError` type for idempotency-specific failures

## 3.8.2 - 2017-12-07
* [#612](https://github.com/stripe/stripe-ruby/pull/612) Fix integer-indexed array encoding when sent as query parameter (subscription items can now be used when fetching an upcoming invoice)

## 3.8.1 - 2017-12-06
* [#611](https://github.com/stripe/stripe-ruby/pull/611) Support `Tempfile` (as well as `File`) in file uploads

## 3.8.0 - 2017-10-31
* [#606](https://github.com/stripe/stripe-ruby/pull/606) Support for exchange rates APIs

## 3.7.0 - 2017-10-26
* [#603](https://github.com/stripe/stripe-ruby/pull/603) Support for listing source transactions

## 3.6.0 - 2017-10-17
* [#597](https://github.com/stripe/stripe-ruby/pull/597) Add static methods to manipulate resources from parent
    * `Account` gains methods for external accounts and login links (e.g. `.create_account`, `create_login_link`)
    * `ApplicationFee` gains methods for refunds
    * `Customer` gains methods for sources
    * `Transfer` gains methods for reversals

## 3.5.3 - 2017-10-16
* [#594](https://github.com/stripe/stripe-ruby/pull/594) Make sure that `StripeObject`'s `#deep_copy` maintains original class
* [#595](https://github.com/stripe/stripe-ruby/pull/595) Allow `Object#method` to be called on `StripeObject` even if it conflicts with an accessor
* [#596](https://github.com/stripe/stripe-ruby/pull/596) Encode arrays as integer-indexed hashes where appropriate
* [#598](https://github.com/stripe/stripe-ruby/pull/598) Don't persist `idempotency_key` opt between requests

## 3.5.2 - 2017-10-13
* [#592](https://github.com/stripe/stripe-ruby/pull/592) Bring back `Marshal.dump/load` support with custom marshal encoder/decoder

## 3.5.1 - 2017-10-12
* [#591](https://github.com/stripe/stripe-ruby/pull/591) Use thread-local `StripeClient` instances for thread safety

## 3.5.0 - 2017-10-11
* [#589](https://github.com/stripe/stripe-ruby/pull/589) Rename source `delete` to `detach` (and deprecate the former)

## 3.4.1 - 2017-10-05
* [#586](https://github.com/stripe/stripe-ruby/pull/586) Log query strings as well as form bodies with STRIPE_LOG
* [#588](https://github.com/stripe/stripe-ruby/pull/588) Require minimum Faraday 0.10 for bug fix in parameter encoding

## 3.4.0 - 2017-09-20
* Mark legacy Bitcoin API as deprecated, and remove corresponding tests
* Mark recipients API as deprecated, and remove recipient card tests

## 3.3.2 - 2017-09-20
* Correct minimum required Ruby version in gemspec (it's 2.0.0)

## 3.3.1 - 2017-08-18
* Only parse webhook payload after verification to decrease likelihood of
  attack

## 3.3.0 - 2017-08-11
* Add support for standard library logger interface with `Stripe.logger`
* Error logs now go to stderr if using `Stripe.log_level`/`STRIPE_LOG`
* `Stripe.log_level`/`STRIPE_LOG` now support `Stipe::LEVEL_ERROR`

## 3.2.0 - 2017-08-03
* Add logging for request retry account and `Stripe-Account` header

## 3.1.0 - 2017-08-03
* Implement request logging with `Stripe.log_level` and `STRIPE_LOG`

## 3.0.3 - 2017-07-28
* Revert `nil` to empty string coercion from 3.0.2
* Handle `invalid_client` OAuth error code
* Improve safety of error handling logic safer for unrecognized OAuth error codes

## 3.0.2 - 2017-07-12 (yanked)
* Convert `nil` to empty string when serializing parameters (instead of opaquely dropping it) -- NOTE: this change has since been reverted

## 3.0.1 - 2017-07-11
* Properties set with an API resource will now serialize that resource's ID if possible
* API resources will throw an ArgumentError on save if a property has been with an API resource that cannot be serialized

## 3.0.0 - 2017-06-27
* `#pay` on invoice now takes params as well as opts

## 2.12.0 - 2017-06-20
* Add support for ephemeral keys

## 2.11.0 - 2017-05-26
* Warn when keys that look like opts are included as parameters

## 2.10.0 - 2017-05-25
* Add support for account login links

## 2.9.0 - 2017-05-18
* Support for OAuth operations in `Stripe::OAuth`

## 2.8.0 - 2017-04-28
* Support for checking webhook signatures

## 2.7.0 - 2017-04-26
* Add model `InvoiceLineItem`

## 2.6.0 - 2017-04-26
* Add `OBJECT_NAME` constants to all API resources

## 2.5.0 - 2017-04-24
* Make `opts` argument in `Util.convert_to_stripe_object` optional

## 2.4.0 - 2017-04-18
* Add `Stripe.set_app_info` for use by plugin creators

## 2.3.0 - 2017-04-14
* Add question mark accessor when assigning boolean value to undefined field

## 2.2.1 - 2017-04-07
* Declare minimum required Faraday as 0.9

## 2.2.0 - 2017-04-06
* Add support for payouts and recipient transfers

## 2.1.0 - 2017-03-17
* Support for detaching sources from customers

## 2.0.3 - 2017-03-16
* Fix marshalling of `StripeObjects` that have an embedded client

## 2.0.2 - 2017-03-16
* Fix bad field reference when recovering from a JSON parsing problem

## 2.0.1 - 2017-02-22
* Fix multipart parameter encoding to repair broken file uploads

## 2.0.0 - 2017-02-14
* Drop support for Ruby 1.9
* Allow HTTP client that makes Stripe calls to be configured via Faraday
* Drop RestClient
* Switch to OpenAPI 2.0 spec and generated fixtures in test suite
* Switch to Webmock in test suite

## 1.58.0 - 2017-01-19
* Remove erroneously added list methods for `Source` model

## 1.57.1 - 2016-11-28
* Disallow sending protected fields along with API resource `.update`

## 1.57.0 - 2016-11-21
* Add retrieve method for 3-D Secure resources

## 1.56.2 - 2016-11-17
* Improve `StripeObject`'s `#to_s` to better handle how embedded objects are displayed

## 1.56.1 - 2016-11-09
* Fix (fairly serious) memory like in `StripeObject`

## 1.56.0 - 2016-10-24
* Add accessors for new fields added in `#update_attributes`
* Handle multi-plan subscriptions through new subscription items
* Handle 403 status codes from the API

## 1.55.1 - 2016-10-24
Identical to 1.56.0 above. I incorrectly cut a patch-level release.

## 1.55.0 - 2016-09-15
* Add support for Apple Pay domains

## 1.54.0 - 2016-09-01
* Whitelist errors that should be retried; scope to known socket and HTTP errors

## 1.53.0 - 2016-08-31
* Relax version constraint on rest-client (and by extension mime-types) for users on Ruby 2+

## 1.52.0 - 2016-08-30
* Make sure `Subscription`'s `source` is saved with its parent

## 1.51.1 - 2016-08-30
* Make sure `Account`'s `external_account` is saved with its parent

## 1.51.0 - 2016-08-26
* Error when an array of maps is detected that cannot be accurately encoded
* Start using strings for header names instead of symbols for better clarity

## 1.50.1 - 2016-08-25
* Fix encoding of arrays of maps where maps unequal sets of keys

## 1.50.0 - 2016-08-15
* Allow sources to be created

## 1.49.0 - 2016-07-28
* Add top-level `Source` model

## 1.48.0 - 2016-07-12
* Add `ThreeDSecure` model for 3-D secure payments

## 1.47.0 - 2016-07-11
* Allow rest-client version 2.0+ to be used with the gem

## 1.46.0 - 2016-07-07
* Allow retry when a 409 conflict is encountered

## 1.45.0 - 2016-07-07
* Do not send subresources when updating except when explicitly told to do so (see #433)

## 1.44.0 - 2016-06-29
* Add `update` class method to all resources that can be updated

## 1.43.1 - 2016-06-17
* Fix type of resource returned from `Order#return_order`

## 1.43.0 - 2016-05-20
* Allow Relay orders to be returned and add associated types
* Support Alipay account retrieval and deletion

## 1.42.0 - 2016-05-04
* Add support for the new /v1/subscriptions endpoint (retrieve, list, create, update, and delete)

## 1.41.0 - 2016-04-13
* Add global `stripe_account` option that adds a `Stripe-Account` header to all requests

## 1.40.0 - 2016-04-06
* Fix bug that omitted subresources from serialization

## 1.39.0 - 2016-03-31
* Update CA cert bundle for compatibility with OpenSSL versions below 1.0.1

## 1.38.0 - 2016-03-18
* Allow `opts` to be passed to an API resource's `#save` method

## 1.37.0 - 2016-03-14
* Add `Account#reject` to support the new API feature

## 1.36.2 - 2016-03-14
* Fix reference to non-existent `#url` in `ListObject`

## 1.36.1 - 2016-03-04
* Fix serialization when subhash given to `#save` or `#update_attributes`

## 1.36.0 - 2016-02-08
* Add `CountrySpec` model for looking up country payment information

## 1.35.1 - 2016-02-03
* Add compatibility layer for old API versions on `Charge#refund`

## 1.35.0 - 2016-02-01
* Allow CA cert bundle location to be configured
* Updated bundled CA certs

## 1.34.0 - 2016-01-25
* Add support for deleting products and SKUs

## 1.33.1 - 2016-01-21
* Pass through arguments of `Charge#refund`

## 1.33.0 - 2016-01-19
* Re-implement `Charge#refund` helper to use the modern endpoint suggested by docs

## 1.32.1 - 2016-01-07
* Fix bug where ivar left uninitialized in StripeObject could error on serialization
* Fix bug where a nil customer from API could error Bitcoin model on refresh

## 1.32.0 - 2016-01-05
* Add configuration to optionally retry network failures
* Use modern API endpoint for producing application fee refunds

## 1.31.0 - 2015-10-29
* Add BankAccount#verify convenience method

## 1.30.3 - 2015-10-28
* Fix bug where arrays that were not `additional_owners` were not properly encoded for requests

## 1.30.2 - 2015-10-12
* Fix bug where `opts` didn't properly propagate to descendant `StripeObjects`

## 1.30.1 - 2015-10-10
* Fix bug that prevent lists of hashes from being URI-encoded properly
* Fix bug where filter conditions were not making it past the first instantiated `ListObject`

## 1.30.0 - 2015-10-09
* Add `StripeObject#deleted?` for a reliable way to check whether an object is alive
* Deprecate `StripeObject#refresh_from`
* New parameter encoding scheme that doesn't use `URI.escape`

## 1.29.1 - 2015-10-06
* Fix bug where ampersands were not being properly encoded

## 1.29.0 - 2015-10-05
* Add pagination helpers `#auto_paging_each`, `#previous_page`, and `#next_page`

## 1.28.1 - 2015-10-05
* Fix URI being referenced by file upload resources

## 1.28.0 - 2015-10-05
* Make StripeObject's #save "upsert"-like; creates an object if new
* Add #update_attributes to StripeObject for safe mass assignment
* Properly mass assign attributes on calls to #save
* Add question mark helpers for boolean fields (e.g. #paid? as well as old #paid)
* Fix a bug that broke the API for StripeObject initialization
* Remove use of deprecated URI.escape

## 1.27.2 - 2015-09-25
* Correct the URLs used to fetch Bitcoin transactions.

## 1.27.1 - 2015-09-20
* Use hash rockets for backwards compatibility.

## 1.27.0 - 2015-09-14
* Add Orders, Products, and SKUs for Relay

## 1.26.0 - 2015-09-11
* Add support for 429 Rate Limited response

## 1.25.0 - 2015-08-17
* Added support for refund listing and retrieval without an associated charge

## 1.24.0 - 2015-08-03
* Added support for deleting managed accounts
* Added support for dispute listing and retrieval
* Bugfix: token objects now are the correct class

## 1.23.0 - 2015-07-06
* Added request IDs and HTTP headers to errors

## 1.22.0 - 2015-06-10
* Added support for bank accounts and debit cards in managed accounts (via the `external_accounts` param)

## 1.21.0 - 2015-04-14
* Remove TLS cert revocation check (all pre-heartbleed certs have expired)
* Bugfix: don't unset keys when they don't exist on StripeObject

## 1.20.4 - 2015-03-26
* Raise an error when explicitly passing nil as the API key on resource methods
* Fix error when passing an API key to Balance.retrieve (github issue #232)

## 1.20.3 - 2015-03-13
* Fixed error when updating certain resources (github issue #224)

## 1.20.2 - 2015-03-10
* Added support for updating nested hashes besides `metadata` (which was already supported)
* Fixed bug in balance retrieval

## 1.20.1 - 2015-02-26
* Updated Card to point to customer sources endpoint when customer property is set

## 1.20.0 - 2015-02-19
* Added Update & Delete operations to Bitcoin Receivers

## 1.19.1 - 2015-02-18
* Fixed fetching upcoming invoice/paying invoice methods

## 1.19.0 - 2015-02-15
* Support for new Transfers /reversals endpoint
* Account retrieval now optionally accepts an account ID
* Better support for passing custom headers, like Stripe-Account, through requests

## 1.18.0 - 2015-01-21
* 1 major enhancement:
  * Added support for making bitcoin charges through BitcoinReceiver source object

## 1.17.3 - 2015-01-12
* 1 bugfix:
  * Fixed API key propagation for ApplicationFee#refund

## 1.17.2 - 2015-01-08
* 1 bugfix:
  * Fixed API key propagation for child resources

## 1.17.1 - 2015-01-07
* 2 minor enhacements:
  * Fixed dependencies for Ruby versions less than 1.9.3
  * Added deauthorize method to Account object

## 1.17.0 - 2014-12-15
* 1 major enhacement:
  * File uploads resource was added (for uploading pdf or image documents for disputes)

## 1.16.1 - 2014-12-19
* 2 minor enhancements:
  * Ability to send idempotent requests
  * Ability to specify stripe account as a header

## 1.16.0 - 2014-10-08
* 1 minor enhacement:
  * Coupons now support update operations - useful for manipulating metadata

## 1.15.0 - 2014-07-26
* 1 major enhacement:
  * Application Fee refunds now a list instead of array

## 1.14.0 - 2014-06-17
* 1 major enhancement:
  * Add metadata for refunds and disputes

## 1.13.0 - 2014-05-28
* 1 major enhancement:
  * Support for canceling transfers

## 1.12.0 - 2014-05-21
* 1 major enhancement:
  * Support for cards for recipients

## 1.11.0 - 2014-04-09
* 2 minor enhancements:
  * Update included ca bundles
  * Implement certificate blacklisting

## 1.10.2 - 2014-02-18
* 1 minor enhancement:
  * Add create_subscription on Customer resources, so you can create
    subscriptions without needing to retrieve the customer first (github
    issue #120)

## 1.10.1 - 2014-02-03
* 1 bugfix:
  * Fix marshaling of StripeObjects

## 1.10.0 - 2014-01-29
* 2 major enhancements
  * Support for multiple subscriptions per customer
  * Testing ruby 2.1.0

* 2 minor enhancements
  * Replace multi_json with json
  * Allow #save to take opts (for :expand)

* 1 bugfix
  * Fix #try and #respond_to? on StripeObjects

## 1.9.9 - 2013-12-02
* 1 major enhancement
  * Add ApplicationFee resource

## 1.8.9 - 2013-11-14
* 2 bugfixes:
  * Fix gemspec dependencies so the gem doesn't break for Ruby 1.8 users
  * Fix api_resource_test to not use returns as a way of testing rescue behavior

## 1.8.8 - 2013-10-3
* 1 major enhancement
  * Add support for metadata on resources

## 1.8.7 - 2013-08-18
* 1 minor enhancement
  * Add support for closing disputes.

## 1.8.6 - 2013-08-13
* 1 major enhancement
  * Add Balance and BalanceTransaction resources

## 1.8.5 - 2013-08-12
* 1 major enhancement
  * Add support for unsetting attributes by setting to nil. This permits unsetting email and description on customers and description on charges. Setting properties to a blank string is now an error.
  * Attempting to set an object's id is now an error

## 1.8.4 - 2013-07-11
* 1 major enhancement
  * Add support for new cards API (Stripe API version - 2013-07-05)

## 1.8.3 - 2013-05-06
* 1 bugfix:
  * Fix handling of per-call API keys (github issue #67)

## 1.8.2 - 2013-05-01
* 3 minor enhancements:
  * Use to_sym instead of type checking for minor performance improvement (github issue #59)
  * Handle low-memory situations without throwing an exception (github issue #61)
  * Add an Customer#upcoming_invoice convenience method (github issue #65)

* 1 bugfix:
  * Allow updating resources without first retrieving them (github issue #60)

## 1.8.1 - 2013-04-19
* 1 minor enhancement:
  * Add support for specifying an API key when retrieving an upcoming invoice

## 1.8.0 - 2013-04-11
* 1 major enhancement:
  * Add new Recipient resource
  * Allow Transfers to be createable

## 1.7.11 - 2013-02-21
* 1 minor enhancement
  * Add 'id' to the list of permanent attributes

## 1.7.10 - 2013-02-01
* 1 major enhancement
  * Add support for passing options when retrieving Stripe objects e.g., Stripe::Charge.retrieve({id:"foo", expand:["customer"]}) Stripe::Charge("foo") is still supported as well

## 1.7.9 - 2013-01-15
* 1 major enhancement
  * Add support for setting a Stripe API version override.

## 1.7.8 - 2012-11-21
* 1 bugfix
  * Relax the version constraint on multi_json (github issue #44)

## 1.7.7 - 2012-11-07
* 1 minor enhancement:
  * Add support for updating charge disputes

* 1 bugfix
  * Fix Account API resource bug

## 1.7.6 - 2012-10-30
* 1 major enhancement
  * Add support for creating invoices

## 1.7.5 - 2012-10-25
* 1 major enhancement
  * Add support for new API lists

## 1.7.4 - 2012-10-08
* 1 bugfix
  * Fix bug introduced in 1.7.3 calling API methods that take no
    arguments, like Stripe::Invoice#pay (github issue #42)

## 1.7.3 - 2012-09-14
* 2 bugfixes
  * Make sure that both keys and values of GET params are URL-encoded. NOTE: If you were previously URL-encoding values yourself, you may need to adjust your code.
  * URL-encode POST params directly, instead of allowing rest-client to do it to work around an unfortunate interaction with the hashery gem (github issue #38)

## 1.7.2 - 2012-08-31
* 1 major enhancement
  * Add support for new pay and update methods for Invoice objects

## 1.7.1 - 2012-08-15
* 1 major enhancement
  * Add new Account API resource

## 1.7.0 - 2012-05-17
* 3 major enhancements:
  * Switch from vendored stripe-json to multi_json for all JSON parsing and rendering. This should not impact programmatic usage of the library, but may cause small rendering differences from, e.g., StripeObject#inspect (github issue #22)
  * Add new delete_discount method to Customer objects
  * Add new Transfer API resource

* 2 minor enhancements:
  * Switch from HTTP Basic auth to Bearer auth (Note: Stripe will support Basic auth for the indefinite future, but recommends Bearer auth when possible going forward)
  * Numerous test suite improvements

## 1.6.3 - 2012-03-22
* 1 bugfix:
  * Encode GET query strings ourselves instead of using rest-client to work around a bug

## 1.6.2 - 2012-02-24
* 1 bugfix:
  * Correct argument handling in StripeObject#as_json

## 1.6.1 - 2012-02-22
* 1 bugfix:
  * Fix StripeObject#inspect when ActiveSupport 3.0 is loaded

## 1.6.0 - 2012-02-01
* A whole bunch of releases between 1.5.0 and 1.6.0, but few changes, mainly the addition of plans, coupons, events, and tokens
* 1.6.0 also contains a new inspect/to_string implementation

## 1.5.0 - 2011-05-09
* 1 major enhancement:
  * Update for new RESTful API

## 1.3.4 - 2011-01-07
* 1 major enhancement:
  * Rename to Stripe

## 1.2 - 2010-06-06
* 1 major enhancement:
  * Support for the set_customer_subscription and delete_customer API methods

## 1.1 - 2010-03-14
* 1 major enhancement:
  * Support for recurring billing

## 1.0 - 2010-01-05
* 1 major enhancement:
  * Initial release

<!--
# vim: set tw=0:
-->
