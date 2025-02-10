defmodule Tagger.V1.PbExtension do
  use Protobuf, protoc_gen_elixir_version: "0.14.0"

  extend Google.Protobuf.FieldOptions, :tags, 847_939, optional: true, type: :string

  extend Google.Protobuf.OneofOptions, :oneof_tags, 847_939,
    optional: true,
    type: :string,
    json_name: "oneofTags"
end
