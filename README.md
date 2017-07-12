# TFG Template

This is an outdated RoR template, that I formerly used when I was working at The Frontier Group.

Now I use it as a starting point for demonstrating basic Rails functionality and RSpec.

## Usage

```
git clone https://github.com/jordanmaguire/rails-template
cd rails-template
gem install bundler
bundle
bin/setup
# Run this to create a new Rails application from the template
bin/copy_template
```

The output of this script should give you the instructions you will need.

## What does the template include out of the box?

### Configuration

- Mailer configuration for development, staging, production, and test environment (`config/smtp.yml.sample`)
- PostgreSQL configuration (`config/database.yml.sample`).
- RVM Support via `.ruby-gemset` and `.ruby-version`
- Seeds configuration via SeedHelper, including seeding some initial Users

### Functionality

- Script to spin up app (`bin/setup`)
- Admin and Member Users with CRUD for both
- Authorization with CanCanCan with full unit tests
- Custom 404, 500, and maintenance pages
- Custom favicon
- Dashboard for admins and members
- Devise implementation using User, includes feature specs for:
  - Resetting password
  - Signing in
  - Signing up
  - Signing out
- Easy sign in functionality to speed up development
- Responsive and Desktop styles in admin namespace
