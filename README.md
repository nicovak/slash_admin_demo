# SlashAdmin demo

Require `pg` and env vars

```
ENV["POSTGRES_USERNAME"]
ENV["POSTGRES_PASSWORD"]
ENV["POSTGRES_PORT"]
```

For google_map

```
ENV["GOOGLE_MAP_KEY"]
```

# Start up

run `bundle install`

run `rails db:migrate`

run `rails db:seed`

run `rails import:data`
