# UnbounceClient

This is a Ruby wrapper around the [Unbounce API](https://api.unbounce.com).

##Installation
Add this line to your project's Gemfile:

```
gem 'unbounce_client'
```

Then execute:

```
bundle install
```

Or, install it yourself with:

```
$ gem install unbounce_client
```

##Usage

- First, make sure you have an Unbounce API Key.

Create a new instance:

```Ruby
ub = UnbounceClient.new(MY_API_KEY)
```

Get your Accounts list:

```Ruby
uccounts = b.accounts
```

Get your Sub Accounts:

```Ruby
# Get a list of Sub Accounts:
sub_accounts = ub.sub_accounts(accounts.first.id)

# Get a specific Sub Account:
sub_account = ub.sub_account(sub_accounts.first.id)
```

Get your Pages:

```Ruby
# Get a list of Pages:
pages = ub.pages(sub_account_id: sub_account.id)

# Get a specific Page:
page = ub.page(pages.first.id)
```

Get your Leads:

```Ruby
# Get a list of Leads:
leads = ub.leads(page_id: page.id)

# Get a specific Lead:
lead = ub.lead(leads.first.id)
```

##Contributing
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
