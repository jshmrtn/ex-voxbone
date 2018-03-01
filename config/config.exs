use Mix.Config

config :exvcr,
  vcr_cassette_library_dir: "priv/test/fixture/vcr_cassettes",
  filter_request_headers: ["authorization"]
