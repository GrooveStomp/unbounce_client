# UnbounceClient

This is a completely unofficial, partially supported Ruby wrapper around the [Unbounce API](https://api.unbounce.com).  
I'm monitoring for pull requests, but this is entirely outside the blessing of Unbounce proper.  
That said, I hope this makes your life easier.  Enjoy!

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

**First, make sure you have an Unbounce API Key.** See the [Unbounce API Reference Documentation](https://api.unbounce.com/doc) for information on how.

Create a new instance:

```Ruby
ub = UnbounceClient.new(api_key: MY_API_KEY)

# or

ub = UnbounceClient.new(oauth_token: MY_OAUTH_TOKEN)
```

Get your Accounts list:

```Ruby
accounts = ub.accounts
```

Get your Sub Accounts:

```Ruby
# Get a list of Sub Accounts:
sub_accounts = ub.sub_accounts(accounts.first.id)

# Get a specific Sub Account:
sub_account = ub.sub_account(sub_accounts.first.id)
```

Get your Page Groups:

```Ruby
page_groups = ub.page_groups(sub_account.id)
```

Get your Domains:

```Ruby
domains = ub.domains(sub_account.id)
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
leads = ub.leads(page_id: page.id, limit: 50, offset: 10, sort_order: "desc")

# Get a specific Lead:
lead = ub.lead(leads.first.id)

# Create Lead:
lead = ub.create_lead(page_id: page.id, form_submission: { form_data: { first_name: "Test", email: "test@email.com" }, variant_id: "a" })
```

##Contributing
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
