defmodule Viam.Service.Vision.V1.GetDetectionsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetDetectionsRequest",
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "width",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "width",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "height",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "height",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mime_type",
          extendee: nil,
          number: 5,
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
  field :image, 2, type: :bytes
  field :width, 3, type: :int64
  field :height, 4, type: :int64
  field :mime_type, 5, type: :string, json_name: "mimeType"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetDetectionsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetDetectionsResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "detections",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.service.vision.v1.Detection",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "detections",
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

  field :detections, 1, repeated: true, type: Viam.Service.Vision.V1.Detection
end

defmodule Viam.Service.Vision.V1.GetDetectionsFromCameraRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetDetectionsFromCameraRequest",
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
          name: "camera_name",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "cameraName",
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
  field :camera_name, 2, type: :string, json_name: "cameraName"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetDetectionsFromCameraResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetDetectionsFromCameraResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "detections",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.service.vision.v1.Detection",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "detections",
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

  field :detections, 1, repeated: true, type: Viam.Service.Vision.V1.Detection
end

defmodule Viam.Service.Vision.V1.Detection do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Detection",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "x_min",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "xMin",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "y_min",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "yMin",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "x_max",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "xMax",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "y_max",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "yMax",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "confidence",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "confidence",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "class_name",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "className",
          proto3_optional: nil,
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
          name: "_x_min",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_y_min",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_x_max",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_y_max",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :x_min, 1, proto3_optional: true, type: :int64, json_name: "xMin"
  field :y_min, 2, proto3_optional: true, type: :int64, json_name: "yMin"
  field :x_max, 3, proto3_optional: true, type: :int64, json_name: "xMax"
  field :y_max, 4, proto3_optional: true, type: :int64, json_name: "yMax"
  field :confidence, 5, type: :double
  field :class_name, 6, type: :string, json_name: "className"
end

defmodule Viam.Service.Vision.V1.GetClassificationsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetClassificationsRequest",
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "width",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "width",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "height",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "height",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mime_type",
          extendee: nil,
          number: 5,
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
          name: "n",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "n",
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
  field :image, 2, type: :bytes
  field :width, 3, type: :int32
  field :height, 4, type: :int32
  field :mime_type, 5, type: :string, json_name: "mimeType"
  field :n, 6, type: :int32
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetClassificationsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetClassificationsResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "classifications",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.service.vision.v1.Classification",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "classifications",
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

  field :classifications, 1, repeated: true, type: Viam.Service.Vision.V1.Classification
end

defmodule Viam.Service.Vision.V1.GetClassificationsFromCameraRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetClassificationsFromCameraRequest",
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
          name: "camera_name",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "cameraName",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "n",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "n",
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
  field :camera_name, 2, type: :string, json_name: "cameraName"
  field :n, 3, type: :int32
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetClassificationsFromCameraResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetClassificationsFromCameraResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "classifications",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.service.vision.v1.Classification",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "classifications",
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

  field :classifications, 1, repeated: true, type: Viam.Service.Vision.V1.Classification
end

defmodule Viam.Service.Vision.V1.Classification do
  @moduledoc """
  the general form of the output from a classifier
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Classification",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "class_name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "className",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "confidence",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "confidence",
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

  field :class_name, 1, type: :string, json_name: "className"
  field :confidence, 2, type: :double
end

defmodule Viam.Service.Vision.V1.GetObjectPointCloudsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetObjectPointCloudsRequest",
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
          name: "camera_name",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "cameraName",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mime_type",
          extendee: nil,
          number: 3,
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
  field :camera_name, 2, type: :string, json_name: "cameraName"
  field :mime_type, 3, type: :string, json_name: "mimeType"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetObjectPointCloudsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetObjectPointCloudsResponse",
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
          name: "objects",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.PointCloudObject",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "objects",
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
  field :objects, 2, repeated: true, type: Viam.Common.V1.PointCloudObject
end

defmodule Viam.Service.Vision.V1.GetPropertiesRequest do
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
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.CaptureAllFromCameraRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CaptureAllFromCameraRequest",
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
          name: "camera_name",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "cameraName",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "return_image",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "returnImage",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "return_classifications",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "returnClassifications",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "return_detections",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "returnDetections",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "return_object_point_clouds",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "returnObjectPointClouds",
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
  field :camera_name, 2, type: :string, json_name: "cameraName"
  field :return_image, 3, type: :bool, json_name: "returnImage"
  field :return_classifications, 4, type: :bool, json_name: "returnClassifications"
  field :return_detections, 5, type: :bool, json_name: "returnDetections"
  field :return_object_point_clouds, 6, type: :bool, json_name: "returnObjectPointClouds"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.CaptureAllFromCameraResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CaptureAllFromCameraResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "image",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.component.camera.v1.Image",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "image",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "detections",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.service.vision.v1.Detection",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "detections",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "classifications",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.service.vision.v1.Classification",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "classifications",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "objects",
          extendee: nil,
          number: 4,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.PointCloudObject",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "objects",
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

  field :image, 1, type: Viam.Component.Camera.V1.Image
  field :detections, 2, repeated: true, type: Viam.Service.Vision.V1.Detection
  field :classifications, 3, repeated: true, type: Viam.Service.Vision.V1.Classification
  field :objects, 4, repeated: true, type: Viam.Common.V1.PointCloudObject
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetPropertiesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetPropertiesResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "classifications_supported",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "classificationsSupported",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "detections_supported",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "detectionsSupported",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "object_point_clouds_supported",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "objectPointCloudsSupported",
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

  field :classifications_supported, 1, type: :bool, json_name: "classificationsSupported"
  field :detections_supported, 2, type: :bool, json_name: "detectionsSupported"
  field :object_point_clouds_supported, 3, type: :bool, json_name: "objectPointCloudsSupported"
end

defmodule Viam.Service.Vision.V1.VisionService.Service do
  @moduledoc """
  VisionService declares the gRPC contract for a vision service
  """

  use GRPC.Service,
    name: "viam.service.vision.v1.VisionService",
    protoc_gen_elixir_version: "0.14.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "VisionService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetDetectionsFromCamera",
          input_type: ".viam.service.vision.v1.GetDetectionsFromCameraRequest",
          output_type: ".viam.service.vision.v1.GetDetectionsFromCameraResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2, "\"4/viam/api/v1/service/vision/{name}/camera_detections"}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetDetections",
          input_type: ".viam.service.vision.v1.GetDetectionsRequest",
          output_type: ".viam.service.vision.v1.GetDetectionsResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2, "\"-/viam/api/v1/service/vision/{name}/detections"}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetClassificationsFromCamera",
          input_type: ".viam.service.vision.v1.GetClassificationsFromCameraRequest",
          output_type: ".viam.service.vision.v1.GetClassificationsFromCameraResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2, "\"9/viam/api/v1/service/vision/{name}/camera_classifications"}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetClassifications",
          input_type: ".viam.service.vision.v1.GetClassificationsRequest",
          output_type: ".viam.service.vision.v1.GetClassificationsResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2, "\"2/viam/api/v1/service/vision/{name}/classifications"}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetObjectPointClouds",
          input_type: ".viam.service.vision.v1.GetObjectPointCloudsRequest",
          output_type: ".viam.service.vision.v1.GetObjectPointCloudsResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2, "\"6/viam/api/v1/service/vision/{name}/object_point_clouds"}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetProperties",
          input_type: ".viam.service.vision.v1.GetPropertiesRequest",
          output_type: ".viam.service.vision.v1.GetPropertiesResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2, "\"1/viam/api/v1/service/vision/{name}/get_properties"}
            ]
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "CaptureAllFromCamera",
          input_type: ".viam.service.vision.v1.CaptureAllFromCameraRequest",
          output_type: ".viam.service.vision.v1.CaptureAllFromCameraResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {72_295_728, 2, "\"./viam/api/v1/service/vision/{name}/capture_all"}
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
              {72_295_728, 2, "\"-/viam/api/v1/service/vision/{name}/do_command"}
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

  rpc :GetDetectionsFromCamera,
      Viam.Service.Vision.V1.GetDetectionsFromCameraRequest,
      Viam.Service.Vision.V1.GetDetectionsFromCameraResponse

  rpc :GetDetections,
      Viam.Service.Vision.V1.GetDetectionsRequest,
      Viam.Service.Vision.V1.GetDetectionsResponse

  rpc :GetClassificationsFromCamera,
      Viam.Service.Vision.V1.GetClassificationsFromCameraRequest,
      Viam.Service.Vision.V1.GetClassificationsFromCameraResponse

  rpc :GetClassifications,
      Viam.Service.Vision.V1.GetClassificationsRequest,
      Viam.Service.Vision.V1.GetClassificationsResponse

  rpc :GetObjectPointClouds,
      Viam.Service.Vision.V1.GetObjectPointCloudsRequest,
      Viam.Service.Vision.V1.GetObjectPointCloudsResponse

  rpc :GetProperties,
      Viam.Service.Vision.V1.GetPropertiesRequest,
      Viam.Service.Vision.V1.GetPropertiesResponse

  rpc :CaptureAllFromCamera,
      Viam.Service.Vision.V1.CaptureAllFromCameraRequest,
      Viam.Service.Vision.V1.CaptureAllFromCameraResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse
end

defmodule Viam.Service.Vision.V1.VisionService.Stub do
  use GRPC.Stub, service: Viam.Service.Vision.V1.VisionService.Service
end
