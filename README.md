<p align="center">
  <img width="250" src="https://i.imgur.com/mm9gXtL.png" />
</p>

# SlashAdmin Demo

Demo of [slash_admin](https://github.com/nicovak/slash_admin) on the theme of Formula 1 🏎️

🚀 [Live running](https://slashadmin.herokuapp.com/)

User
`admin`

Password
`admin@admin`

#### Screenshots

##### Login
![Image of Login screen](https://i.imgur.com/ftwC0rF.png)
##### Dashboard
![Image of Dashboard](https://i.imgur.com/3JzkvoT.png)
##### List
![Image of List](https://i.imgur.com/y6Vz6S1.png)
##### Edit / Create
![Image of Create / Edit](https://i.imgur.com/S2QqHWF.png)

### Installation

Require `pg` gem and following env vars

```
ENV['POSTGRES_USERNAME']
ENV['POSTGRES_PASSWORD']
ENV['POSTGRES_PORT']
```

For google_map

```
ENV['GOOGLE_MAP_KEY']
```

## Start up

Install gems
`bundle install`

Initialize database
`rails db:migrate`

Seed with data
`rails db:seed`

Import data from CSV
`rails import:data`

### Documentation

[Read the docs](https://github.com/nicovak/slash_admin/tree/master/docs/index.md)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nicovak/slash_admin_demo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the slash_admin project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/nicovak/slash_admin/tree/master/CODE_OF_CONDUCT.md).

