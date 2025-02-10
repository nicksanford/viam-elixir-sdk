defmodule Viam.Component.Camera.V1.Format do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "Format",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FORMAT_UNSPECIFIED",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FORMAT_RAW_RGBA",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FORMAT_RAW_DEPTH",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FORMAT_JPEG",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FORMAT_PNG",
          number: 4,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :FORMAT_UNSPECIFIED, 0
  field :FORMAT_RAW_RGBA, 1
  field :FORMAT_RAW_DEPTH, 2
  field :FORMAT_JPEG, 3
  field :FORMAT_PNG, 4
end

defmodule Viam.Component.Camera.V1.GetImageRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetImageRequest",
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mime_type",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "mimeType",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "extra",
          extendee: nil,
          number: 99,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Struct",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "extra",
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
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Camera.V1.GetImageResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetImageResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "mime_type",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "mimeType",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "image",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "image",
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

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :image, 2, type: :bytes
end

defmodule Viam.Component.Camera.V1.GetImagesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetImagesRequest",
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

defmodule Viam.Component.Camera.V1.GetImagesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetImagesResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "images",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.component.camera.v1.Image",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "images",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "response_metadata",
          extendee: nil,
          number: 84260,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.ResponseMetadata",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "responseMetadata",
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

  field :images, 1, repeated: true, type: Viam.Component.Camera.V1.Image

  field :response_metadata, 84260,
    type: Viam.Common.V1.ResponseMetadata,
    json_name: "responseMetadata"
end

defmodule Viam.Component.Camera.V1.Image do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Image",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "source_name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "sourceName",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "format",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".viam.component.camera.v1.Format",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "format",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "image",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "image",
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

  field :source_name, 1, type: :string, json_name: "sourceName"
  field :format, 2, type: Viam.Component.Camera.V1.Format, enum: true
  field :image, 3, type: :bytes
end

defmodule Viam.Component.Camera.V1.RenderFrameRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RenderFrameRequest",
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mime_type",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "mimeType",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "extra",
          extendee: nil,
          number: 99,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Struct",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "extra",
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
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Camera.V1.GetPointCloudRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetPointCloudRequest",
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mime_type",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "mimeType",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "extra",
          extendee: nil,
          number: 99,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Struct",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "extra",
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
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Camera.V1.GetPointCloudResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetPointCloudResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "mime_type",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "mimeType",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "point_cloud",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pointCloud",
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

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :point_cloud, 2, type: :bytes, json_name: "pointCloud"
end

defmodule Viam.Component.Camera.V1.GetPropertiesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetPropertiesRequest",
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

defmodule Viam.Component.Camera.V1.GetPropertiesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetPropertiesResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "supports_pcd",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "supportsPcd",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "intrinsic_parameters",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.component.camera.v1.IntrinsicParameters",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "intrinsicParameters",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "distortion_parameters",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.component.camera.v1.DistortionParameters",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "distortionParameters",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mime_types",
          extendee: nil,
          number: 4,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "mimeTypes",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "frame_rate",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_FLOAT,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "frameRate",
          proto3_optional: true,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "_frame_rate",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :supports_pcd, 1, type: :bool, json_name: "supportsPcd"

  field :intrinsic_parameters, 2,
    type: Viam.Component.Camera.V1.IntrinsicParameters,
    json_name: "intrinsicParameters"

  field :distortion_parameters, 3,
    type: Viam.Component.Camera.V1.DistortionParameters,
    json_name: "distortionParameters"

  field :mime_types, 4, repeated: true, type: :string, json_name: "mimeTypes"
  field :frame_rate, 5, proto3_optional: true, type: :float, json_name: "frameRate"
end

defmodule Viam.Component.Camera.V1.Webcams do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Webcams",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "webcams",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.component.camera.v1.Webcam",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "webcams",
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

  field :webcams, 1, repeated: true, type: Viam.Component.Camera.V1.Webcam
end

defmodule Viam.Component.Camera.V1.Webcam do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Webcam",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "label",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "label",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "status",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "status",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "properties",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.component.camera.v1.Property",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "properties",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "name",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "name",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "id",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "id",
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

  field :label, 1, type: :string
  field :status, 2, type: :string
  field :properties, 3, repeated: true, type: Viam.Component.Camera.V1.Property
  field :name, 4, type: :string
  field :id, 5, type: :string
end

defmodule Viam.Component.Camera.V1.Property do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Property",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "width_px",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "widthPx",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "height_px",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "heightPx",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "frame_format",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "frameFormat",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "frame_rate",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_FLOAT,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "frameRate",
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

  field :width_px, 1, type: :int32, json_name: "widthPx"
  field :height_px, 2, type: :int32, json_name: "heightPx"
  field :frame_format, 3, type: :string, json_name: "frameFormat"
  field :frame_rate, 4, type: :float, json_name: "frameRate"
end

defmodule Viam.Component.Camera.V1.IntrinsicParameters do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "IntrinsicParameters",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "width_px",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "widthPx",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "height_px",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "heightPx",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "focal_x_px",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "focalXPx",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "focal_y_px",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "focalYPx",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "center_x_px",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "centerXPx",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "center_y_px",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "centerYPx",
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

  field :width_px, 1, type: :uint32, json_name: "widthPx"
  field :height_px, 2, type: :uint32, json_name: "heightPx"
  field :focal_x_px, 3, type: :double, json_name: "focalXPx"
  field :focal_y_px, 4, type: :double, json_name: "focalYPx"
  field :center_x_px, 5, type: :double, json_name: "centerXPx"
  field :center_y_px, 6, type: :double, json_name: "centerYPx"
end

defmodule Viam.Component.Camera.V1.DistortionParameters do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DistortionParameters",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "model",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "model",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "parameters",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "parameters",
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

  field :model, 1, type: :string
  field :parameters, 2, repeated: true, type: :double
end

defmodule Viam.Component.Camera.V1.CameraService.Service do
  @moduledoc """
  A CameraService services all cameras associated with a robot
  """

  use GRPC.Service,
    name: "viam.component.camera.v1.CameraService",
    protoc_gen_elixir_version: "0.14.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "CameraService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetImage",
          input_type: ".viam.component.camera.v1.GetImageRequest",
          output_type: ".viam.component.camera.v1.GetImageResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2,
               <<18, 42, 47, 118, 105, 97, 109, 47, 97, 112, 105, 47, 118, 49, 47, 99, 111, 109,
                 112, 111, 110, 101, 110, 116, 47, 99, 97, 109, 101, 114, 97, 47, 123, 110, 97,
                 109, 101, 125, 47, 105, 109, 97, 103, 101>>}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetImages",
          input_type: ".viam.component.camera.v1.GetImagesRequest",
          output_type: ".viam.component.camera.v1.GetImagesResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2,
               <<18, 43, 47, 118, 105, 97, 109, 47, 97, 112, 105, 47, 118, 49, 47, 99, 111, 109,
                 112, 111, 110, 101, 110, 116, 47, 99, 97, 109, 101, 114, 97, 47, 123, 110, 97,
                 109, 101, 125, 47, 105, 109, 97, 103, 101, 115>>}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "RenderFrame",
          input_type: ".viam.component.camera.v1.RenderFrameRequest",
          output_type: ".google.api.HttpBody",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2,
               <<18, 49, 47, 118, 105, 97, 109, 47, 97, 112, 105, 47, 118, 49, 47, 99, 111, 109,
                 112, 111, 110, 101, 110, 116, 47, 99, 97, 109, 101, 114, 97, 47, 123, 110, 97,
                 109, 101, 125, 47, 114, 101, 110, 100, 101, 114, 95, 102, 114, 97, 109, 101>>}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetPointCloud",
          input_type: ".viam.component.camera.v1.GetPointCloudRequest",
          output_type: ".viam.component.camera.v1.GetPointCloudResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2,
               <<18, 48, 47, 118, 105, 97, 109, 47, 97, 112, 105, 47, 118, 49, 47, 99, 111, 109,
                 112, 111, 110, 101, 110, 116, 47, 99, 97, 109, 101, 114, 97, 47, 123, 110, 97,
                 109, 101, 125, 47, 112, 111, 105, 110, 116, 95, 99, 108, 111, 117, 100>>}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetProperties",
          input_type: ".viam.component.camera.v1.GetPropertiesRequest",
          output_type: ".viam.component.camera.v1.GetPropertiesResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2,
               <<18, 47, 47, 118, 105, 97, 109, 47, 97, 112, 105, 47, 118, 49, 47, 99, 111, 109,
                 112, 111, 110, 101, 110, 116, 47, 99, 97, 109, 101, 114, 97, 47, 123, 110, 97,
                 109, 101, 125, 47, 112, 114, 111, 112, 101, 114, 116, 105, 101, 115>>}
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
              {72_295_728, 2, "\"//viam/api/v1/component/camera/{name}/do_command"}
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
                 112, 111, 110, 101, 110, 116, 47, 99, 97, 109, 101, 114, 97, 47, 123, 110, 97,
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

  rpc :GetImage,
      Viam.Component.Camera.V1.GetImageRequest,
      Viam.Component.Camera.V1.GetImageResponse

  rpc :GetImages,
      Viam.Component.Camera.V1.GetImagesRequest,
      Viam.Component.Camera.V1.GetImagesResponse

  rpc :RenderFrame, Viam.Component.Camera.V1.RenderFrameRequest, Google.Api.HttpBody

  rpc :GetPointCloud,
      Viam.Component.Camera.V1.GetPointCloudRequest,
      Viam.Component.Camera.V1.GetPointCloudResponse

  rpc :GetProperties,
      Viam.Component.Camera.V1.GetPropertiesRequest,
      Viam.Component.Camera.V1.GetPropertiesResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Camera.V1.CameraService.Stub do
  use GRPC.Stub, service: Viam.Component.Camera.V1.CameraService.Service
end
