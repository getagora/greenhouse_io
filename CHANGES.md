# greenhouse_io Changelog
This project follows [semantic versioning](http://semver.org/).
This changelog follows suggestions from [keepachangelog.com](http://keepachangelog.com/).

## 3.3.0 - 2021-03-24

### Added
- Method `update_offer` from [@capripot](https://github.com/capripot)

## 3.2.0 - 2021-03-23

### Added
- Method `create_custom_field` from [@capripot](https://github.com/capripot)
- Support for `on_behalf_of` from [@capripot](https://github.com/capripot)
  - In configuration `GreenhouseIo.configure { |config| config.on_behalf_of = 123 }`
  - As an injection `GreenhouseIo::Client.new(api_key, on_behalf_of)`

### Changed
- Updated dev dependencies
- POST requests now have `Content-type: application/json` header by default
- `GreenhouseIo::Error` now contains the actual error message returned by API, with the HTTP Status avaiable via `#code` and in parenthesis. E.g.:
  - `GreenhouseIo::Error.new(nil, 404).message # => "404"`
  - `GreenhouseIo::Error.new("Unrecognized field type", 422).message # => "Unrecognized field type (Status 422)"`

## 3.1.0 - 2021-03-08

### Added
- Method `custom_fields` from [@capripot](https://github.com/capripot)

### Changed
- Use `#success?` instead of `== 200`

## 3.0.0 - 2021-02-09

### Added
- Upped the Ruby version required to last supported branch: Ruby 2.5
- Refreshed and relaxed gem versions requirements
- Switched from HTTMultiParty (unsupported) to HTTParty since multipart uplodad is supported by HTTParty

## Version 2.5.0
Released 2016-05-31.  Contributed by [@theshanx](https://github.com/theshanx).  Thanks!  :)

#### Added
- Added methods for retrieving offers for an application: `current_offer_for_application` and `offers_for_application`

## Version 2.4.0
Released 2016-04-20.  Contributed by [@mariochavez](https://github.com/mariochavez) -- thank you!

#### Added
- Exposed `link` HTTP header in `GreenhouseIo::Client`.

#### Removed
- Removed dependency on `multi_json` in favor of Ruby's `json` module.

## Version 2.3.1
Released 2016-04-20.  In retrospect, this should've been a minor version bump instead of a minor version since this added functionality, not a bug fix.

#### Added
- Added method `create_candidate_note`.  Thanks for contributing, [@jleven](https://github.com/jleven)!

## Version 2.3.0
Released 2016-02-13.

##### Added
- Added support for listing all scorecards belonging to an organization: `all_scorecards`.  Thanks, [@bcoppersmith](https://github.com/bcoppersmith)!

## Version 2.2.0
Released 2016-02-03.

##### Added
- Added support for listing Offers and retrieving them by ID
- Added support for filtering with `job_id` parameter

##### Changed
- Upgraded dependencies: `multi_json` (now ~>1.11.2), and development gems
- Added version dependency for `httmultiparty`: ``'~> 0.3.16'``
