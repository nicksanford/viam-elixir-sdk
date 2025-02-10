defmodule Viam.Component.Sensor.V1.SensorService.Service do
  @moduledoc """
  SensorService services all generic sensors associated with a robot
  """

  use GRPC.Service,
    name: "viam.component.sensor.v1.SensorService",
    protoc_gen_elixir_version: "0.14.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "SensorService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetReadings",
          input_type: ".viam.common.v1.GetReadingsRequest",
          output_type: ".viam.common.v1.GetReadingsResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2,
               <<18, 45, 47, 118, 105, 97, 109, 47, 97, 112, 105, 47, 118, 49, 47, 99, 111, 109,
                 112, 111, 110, 101, 110, 116, 47, 115, 101, 110, 115, 111, 114, 47, 123, 110, 97,
                 109, 101, 125, 47, 114, 101, 97, 100, 105, 110, 103, 115>>}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "DoCommand",
          input_type: ".viam.common.v1.DoCommandRequest",
          output_type: ".viam.common.v1.DoCommandResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2, "\"//viam/api/v1/component/sensor/{name}/do_command"}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetGeometries",
          input_type: ".viam.common.v1.GetGeometriesRequest",
          output_type: ".viam.common.v1.GetGeometriesResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2,
               <<18, 47, 47, 118, 105, 97, 109, 47, 97, 112, 105, 47, 118, 49, 47, 99, 111, 109,
                 112, 111, 110, 101, 110, 116, 47, 115, 101, 110, 115, 111, 114, 47, 123, 110, 97,
                 109, 101, 125, 47, 103, 101, 111, 109, 101, 116, 114, 105, 101, 115>>}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        }
      ],
      options: nil,
      __unknown_fields__: []
    }
  end

  rpc :GetReadings, Viam.Common.V1.GetReadingsRequest, Viam.Common.V1.GetReadingsResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Sensor.V1.SensorService.Stub do
  use GRPC.Stub, service: Viam.Component.Sensor.V1.SensorService.Service
end
