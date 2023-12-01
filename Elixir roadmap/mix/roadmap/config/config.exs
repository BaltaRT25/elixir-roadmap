import Config

config :roadmap,
  objective: "learn",
  code: System.get_env("CODE")

import_config "#{Mix.env()}.exs"
