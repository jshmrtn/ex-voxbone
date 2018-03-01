%{
  configs: [
    %{
      name: "default",
      files: %{
        included: ["lib/", "test", "mix.exs"],
        excluded: [
          "lib/voxbone/api",
          "lib/voxbone/model",
          "lib/voxbone/request_builder.ex",
          "lib/voxbone/deserializer.ex"
        ]
      },
      checks: [
        # For others you can also set parameters
        {Credo.Check.Readability.MaxLineLength, priority: :low, max_length: 120}
      ]
    }
  ]
}
