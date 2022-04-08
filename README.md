# Discustimation
A Phoenix LiveView website to encourage discussion during planning poker estimation.

## Getting Started
### Standard Setup
  1. Clone repository
  2. Install dependencies with `mix deps.get`
  3. Create and migrate your database with `mix ecto.setup`
    - To install Postgres run `brew install posgresql`
    - To start Postgres run `brew services start posgresql`
  4. Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`


Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## TODO
  - [ ] Make things look nice with tailwind.css
  - [ ] Set up email password reset
  - [x] Install and set up tailwind.css

## Useful Links
### CSS
  - [Tailwind CSS](https://tailwindcss.com/docs)
  - [Daisy UI](https://daisyui.com/components)

### Dev Environment
  - [LiveView TDD](https://www.youtube.com/watch?v=h8NURVLysrk)
  - [Nix Shell Example](https://gist.github.com/aabs/fba5cd1a8038fb84a46909250d34a5c1)
    - My Version `~/nix_shell_test/shell.nix`
