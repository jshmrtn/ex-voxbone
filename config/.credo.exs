%{
  configs: [
    %{
      name: "default",
      files: %{
        included: ["lib/", "test", "mix.exs"],
        excluded: [
          "lib/art_core_api/api",
          "lib/art_core_api/model",
          "lib/art_core_api/request_builder.ex",
          "lib/art_core_api/deserializer.ex"
        ]
      },
      checks: [
        # For others you can also set parameters
        {Credo.Check.Readability.MaxLineLength, priority: :low, max_length: 120}
      ]
    }
  ]
}
