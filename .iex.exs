# Will be using `ANSI`
Application.put_env(:elixir, :ansi_enabled, true)

# Get queue length for the IEx process
# This is fun to see while playing with nodes
queue_length = fn ->
  self()
  |> Process.info()
  |> Keyword.get(:message_queue_len)
end

prefix =
  IO.ANSI.green() <>
    "%prefix" <>
    IO.ANSI.reset()

counter =
  IO.ANSI.green() <>
    "-%node-(%counter)" <>
    IO.ANSI.reset()

info = IO.ANSI.light_green() <> "✉ #{queue_length.()}" <> IO.ANSI.reset()
last = IO.ANSI.cyan() <> "➤➤➤" <> IO.ANSI.reset()

alive =
  IO.ANSI.bright() <>
    IO.ANSI.yellow() <>
    IO.ANSI.blink_rapid() <>
    "⚡" <>
    IO.ANSI.reset()

default_prompt = prefix <> counter <> " | " <> info <> " | " <> last
alive_prompt = prefix <> counter <> " | " <> info <> " | " <> alive <> last

inspect_limit = 5_000
history_size = 1_000

eval_result = [:cyan, :bright]
eval_error = [:red, :bright]
eval_info = [:blue, :bright]

# Configuring IEx
IEx.configure(
  inspect: [limit: inspect_limit],
  history_size: history_size,
  colors: [
    eval_result: eval_result,
    eval_error: eval_error,
    eval_info: eval_info
  ],
  default_prompt: default_prompt,
  alive_prompt: alive_prompt
)

# Phoenix Support
import_if_available(Plug.Conn)
import_if_available(Phoenix.HTML)

# Set Up Ecto Alias
import_if_available(Ecto.Query)
import_if_available(Ecto.Changeset)

# Alias Repo
alias Discustimation.Repo
alias Discustimation.Accounts.{User, UserNotifier, UserToken}
