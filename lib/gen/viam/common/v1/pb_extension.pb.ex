defmodule Viam.Common.V1.PbExtension do
  use Protobuf, protoc_gen_elixir_version: "0.14.0"

  extend Google.Protobuf.MethodOptions, :safety_heartbeat_monitored, 84260,
    optional: true,
    type: :bool,
    json_name: "safetyHeartbeatMonitored"
end
