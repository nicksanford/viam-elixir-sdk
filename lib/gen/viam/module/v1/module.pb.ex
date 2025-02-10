defmodule Viam.Module.V1.AddResourceRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "AddResourceRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "config",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.app.v1.ComponentConfig",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "config",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "dependencies",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "dependencies",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :config, 1, type: Viam.App.V1.ComponentConfig
  field :dependencies, 2, repeated: true, type: :string
end

defmodule Viam.Module.V1.AddResourceResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "AddResourceResponse",
      field: [],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end
end

defmodule Viam.Module.V1.ReconfigureResourceRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ReconfigureResourceRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "config",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.app.v1.ComponentConfig",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "config",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "dependencies",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "dependencies",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :config, 1, type: Viam.App.V1.ComponentConfig
  field :dependencies, 2, repeated: true, type: :string
end

defmodule Viam.Module.V1.ReconfigureResourceResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ReconfigureResourceResponse",
      field: [],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end
end

defmodule Viam.Module.V1.RemoveResourceRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RemoveResourceRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "name",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :name, 1, type: :string
end

defmodule Viam.Module.V1.RemoveResourceResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RemoveResourceResponse",
      field: [],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end
end

defmodule Viam.Module.V1.HandlerDefinition do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "HandlerDefinition",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "subtype",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.robot.v1.ResourceRPCSubtype",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "subtype",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "models",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "models",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :subtype, 1, type: Viam.Robot.V1.ResourceRPCSubtype
  field :models, 2, repeated: true, type: :string
end

defmodule Viam.Module.V1.HandlerMap do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "HandlerMap",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "handlers",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.module.v1.HandlerDefinition",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "handlers",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :handlers, 1, repeated: true, type: Viam.Module.V1.HandlerDefinition
end

defmodule Viam.Module.V1.ReadyRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ReadyRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "parent_address",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "parentAddress",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "webrtc_offer",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "webrtcOffer",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :parent_address, 1, type: :string, json_name: "parentAddress"
  field :webrtc_offer, 2, type: :string, json_name: "webrtcOffer"
end

defmodule Viam.Module.V1.ReadyResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ReadyResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "ready",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "ready",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "handlermap",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.module.v1.HandlerMap",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "handlermap",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "webrtc_answer",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "webrtcAnswer",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :ready, 1, type: :bool
  field :handlermap, 2, type: Viam.Module.V1.HandlerMap
  field :webrtc_answer, 3, type: :string, json_name: "webrtcAnswer"
end

defmodule Viam.Module.V1.ValidateConfigRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ValidateConfigRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "config",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.app.v1.ComponentConfig",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "config",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :config, 1, type: Viam.App.V1.ComponentConfig
end

defmodule Viam.Module.V1.ValidateConfigResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ValidateConfigResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "dependencies",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "dependencies",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :dependencies, 1, repeated: true, type: :string
end

defmodule Viam.Module.V1.ModuleService.Service do
  @moduledoc """
  ModuleService deals with modular resource registration
  """

  use GRPC.Service, name: "viam.module.v1.ModuleService", protoc_gen_elixir_version: "0.14.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "ModuleService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "AddResource",
          input_type: ".viam.module.v1.AddResourceRequest",
          output_type: ".viam.module.v1.AddResourceResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "ReconfigureResource",
          input_type: ".viam.module.v1.ReconfigureResourceRequest",
          output_type: ".viam.module.v1.ReconfigureResourceResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "RemoveResource",
          input_type: ".viam.module.v1.RemoveResourceRequest",
          output_type: ".viam.module.v1.RemoveResourceResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "Ready",
          input_type: ".viam.module.v1.ReadyRequest",
          output_type: ".viam.module.v1.ReadyResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "ValidateConfig",
          input_type: ".viam.module.v1.ValidateConfigRequest",
          output_type: ".viam.module.v1.ValidateConfigResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        }
      ],
      options: nil,
      __unknown_fields__: []
    }
  end

  rpc :AddResource, Viam.Module.V1.AddResourceRequest, Viam.Module.V1.AddResourceResponse

  rpc :ReconfigureResource,
      Viam.Module.V1.ReconfigureResourceRequest,
      Viam.Module.V1.ReconfigureResourceResponse

  rpc :RemoveResource, Viam.Module.V1.RemoveResourceRequest, Viam.Module.V1.RemoveResourceResponse

  rpc :Ready, Viam.Module.V1.ReadyRequest, Viam.Module.V1.ReadyResponse

  rpc :ValidateConfig, Viam.Module.V1.ValidateConfigRequest, Viam.Module.V1.ValidateConfigResponse
end

defmodule Viam.Module.V1.ModuleService.Stub do
  use GRPC.Stub, service: Viam.Module.V1.ModuleService.Service
end
