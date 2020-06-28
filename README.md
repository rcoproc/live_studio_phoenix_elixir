# LiveView Studio (Phoenix Live View Course by Pragmatic)

[Pragmatic Course](https://online.pragmaticstudio.com/courses/liveview)

[Gigalixir Site Demo1 - Light](https://positive-worthwhile-puma.gigalixirapp.com/light)

[Gigalixir Site Demo2 - License](https://positive-worthwhile-puma.gigalixirapp.com/license)

[Gigalixir Site Demo3 - Autocomplete](https://positive-worthwhile-puma.gigalixirapp.com/autocomplete)

[Gigalixir Site Demo4 - Search](https://positive-worthwhile-puma.gigalixirapp.com/search)

[Gigalixir Site Demo5 - Sales Dashboard](https://positive-worthwhile-puma.gigalixirapp.com/sales-dashboard)

[Gigalixir Site Demo6 - Flights](https://positive-worthwhile-puma.gigalixirapp.com/flights)

[Gigalixir Site Demo7 - Filter](https://positive-worthwhile-puma.gigalixirapp.com/filter)

[Gigalixir Site Demo8 - Servers](https://positive-worthwhile-puma.gigalixirapp.com/servers)

[Gigalixir Site Demo9 - Paginate Bank Donations](https://positive-worthwhile-puma.gigalixirapp.com/paginate)

[Gigalixir Site Demo10 - Paginate Vehicles](https://positive-worthwhile-puma.gigalixirapp.com/vehicles)

[Gigalixir Site Demo11 - Paginate With Sort](https://positive-worthwhile-puma.gigalixirapp.com/sort)

| Page Lights  | Page License | Page Sales Dashboard | Page Flights | Page Autocomplete | Filters |
|---| ---| ---| ---| ---| ---|
| ![](https://github.com/rcoproc/live_studio_phoenix_elixir/blob/master/screens/Screen1.png?raw=true) | ![](https://github.com/rcoproc/live_studio_phoenix_elixir/blob/master/screens/screen2.png?raw=true) | ![](https://github.com/rcoproc/live_studio_phoenix_elixir/blob/master/screens/screen3.png?raw=true) | ![](https://github.com/rcoproc/live_studio_phoenix_elixir/blob/master/screens/screen4.png?raw=true) | ![](https://github.com/rcoproc/live_studio_phoenix_elixir/blob/master/screens/screen5.png?raw=true) | ![](https://github.com/rcoproc/live_studio_phoenix_elixir/blob/master/screens/screen6.png?raw=true) |

| Page Servers  | Page Bank Donations | Page Paginate Vehicles | Page Sort | 
|---| ---| ---| ---| 
| ![](https://github.com/rcoproc/live_studio_phoenix_elixir/blob/master/screens/screen_servers.png?raw=true) | ![](https://github.com/rcoproc/live_studio_phoenix_elixir/blob/master/screens/screen_paginate.png?raw=true) | ![](https://github.com/rcoproc/live_studio_phoenix_elixir/blob/master/screens/screen_vehicles.png?raw=true) | ![](https://github.com/rcoproc/live_studio_phoenix_elixir/blob/master/screens/screen_sort.png?raw=true) |


## Installation

1. Set up the project:

    ```sh
    mix setup
    ```

2. Fire up the Phoenix endpoint:

    ```sh
    mix phx.server
    ```

3. Visit [`localhost:4000`](http://localhost:4000) from your browser.

    /light
    
    /license
    
    /sales-dashboard
    
    /search
    
    /flights
    
    /autocomplete

    /servers

    /paginate

    /vehicles

    /sort

4. Deploy to Gigalixir

    git push gigalixir master

5. Run Gigalixir migrations

    gigalixir ps:migrate

6. Run Gigalixir Destilary seeds    

    $>gigalixir ps:ssh

    gigalixirapp:remote>bin/live_view_studio seed

## App Generation

This app was generated using:

```sh
mix phx.new live_view_studio --live
```
