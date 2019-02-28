<p align="center">
  <img width="250" src="https://i.imgur.com/Rok5Ocf.png" />
</p>

# SlashAdmin Demo

Demo of [slash_admin](https://github.com/nicovak/slash_admin) on the theme of Formula 1 🏎️

[LIVE RUNNING](https://slashadmin.herokuapp.com/)

User: `admin`  
Password: `admin@admin`

#### Screenshots

##### Login
![Image of Login screen](https://i.imgur.com/MJerQSR.jpg)
##### Dashboard
![Image of Dashboard](https://i.imgur.com/0g3wSjw.png)
##### List
![Image of List](https://i.imgur.com/s1egSS3.png)
##### Edit / Create
![Image of Create / Edit](https://i.imgur.com/wf72pZz.png)

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

Coming soon.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

Data from [Eargast](http://ergast.com/mrd/)
