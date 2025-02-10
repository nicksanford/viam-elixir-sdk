defmodule Viam.Common.V1.KinematicsFileFormat do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "KinematicsFileFormat",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "KINEMATICS_FILE_FORMAT_UNSPECIFIED",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "KINEMATICS_FILE_FORMAT_SVA",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "KINEMATICS_FILE_FORMAT_URDF",
          number: 2,
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

  field :KINEMATICS_FILE_FORMAT_UNSPECIFIED, 0
  field :KINEMATICS_FILE_FORMAT_SVA, 1
  field :KINEMATICS_FILE_FORMAT_URDF, 2
end

defmodule Viam.Common.V1.ResourceName do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ResourceName",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "namespace",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "namespace",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "type",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "type",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "subtype",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "subtype",
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
          name: "remote_path",
          extendee: nil,
          number: 5,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "remotePath",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "local_name",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "localName",
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

  field :namespace, 1, type: :string
  field :type, 2, type: :string
  field :subtype, 3, type: :string
  field :name, 4, type: :string
  field :remote_path, 5, repeated: true, type: :string, json_name: "remotePath"
  field :local_name, 6, type: :string, json_name: "localName"
end

defmodule Viam.Common.V1.Pose do
  @moduledoc """
  Pose is a combination of location and orientation.
  Location is expressed as distance which is represented by x , y, z coordinates. Orientation is expressed as an orientation vector which
  is represented by o_x, o_y, o_z and theta. The o_x, o_y, o_z coordinates represent the point on the cartesian unit sphere that the end of
  the arm is pointing to (with the origin as reference). That unit vector forms an axis around which theta rotates. This means that
  incrementing / decrementing theta will perform an inline rotation of the end effector.
  Theta is defined as rotation between two planes: the first being defined by the origin, the point (0,0,1), and the rx, ry, rz point, and the
  second being defined by the origin, the rx, ry, rz point and the local Z axis. Therefore, if theta is kept at zero as the north/south pole
  is circled, the Roll will correct itself to remain in-line.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Pose",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "x",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "x",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "y",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "y",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "z",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "z",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "o_x",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "oX",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "o_y",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "oY",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "o_z",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "oZ",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "theta",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "theta",
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

  field :x, 1, type: :double
  field :y, 2, type: :double
  field :z, 3, type: :double
  field :o_x, 4, type: :double, json_name: "oX"
  field :o_y, 5, type: :double, json_name: "oY"
  field :o_z, 6, type: :double, json_name: "oZ"
  field :theta, 7, type: :double
end

defmodule Viam.Common.V1.Orientation do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Orientation",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "o_x",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "oX",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "o_y",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "oY",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "o_z",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "oZ",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "theta",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "theta",
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

  field :o_x, 1, type: :double, json_name: "oX"
  field :o_y, 2, type: :double, json_name: "oY"
  field :o_z, 3, type: :double, json_name: "oZ"
  field :theta, 4, type: :double
end

defmodule Viam.Common.V1.PoseInFrame do
  @moduledoc """
  PoseInFrame contains a pose and the and the reference frame in which it was observed
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PoseInFrame",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "reference_frame",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "referenceFrame",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "pose",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.Pose",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pose",
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

  field :reference_frame, 1, type: :string, json_name: "referenceFrame"
  field :pose, 2, type: Viam.Common.V1.Pose
end

defmodule Viam.Common.V1.Vector3 do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Vector3",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "x",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "x",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "y",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "y",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "z",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "z",
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

  field :x, 1, type: :double
  field :y, 2, type: :double
  field :z, 3, type: :double
end

defmodule Viam.Common.V1.Sphere do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Sphere",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "radius_mm",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "radiusMm",
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

  field :radius_mm, 1, type: :double, json_name: "radiusMm"
end

defmodule Viam.Common.V1.Capsule do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Capsule",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "radius_mm",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "radiusMm",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "length_mm",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "lengthMm",
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

  field :radius_mm, 1, type: :double, json_name: "radiusMm"
  field :length_mm, 2, type: :double, json_name: "lengthMm"
end

defmodule Viam.Common.V1.RectangularPrism do
  @moduledoc """
  RectangularPrism contains a Vector3 field corresponding to the X, Y, Z dimensions of the prism in mms
  These dimensions are with respect to the referenceframe in which the RectangularPrism is defined
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RectangularPrism",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "dims_mm",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.Vector3",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "dimsMm",
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

  field :dims_mm, 1, type: Viam.Common.V1.Vector3, json_name: "dimsMm"
end

defmodule Viam.Common.V1.Geometry do
  @moduledoc """
  Geometry contains the dimensions of a given geometry and the pose of its center. The geometry is one of either a sphere or a box.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Geometry",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "center",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.Pose",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "center",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "sphere",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.Sphere",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "sphere",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "box",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.RectangularPrism",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "box",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "capsule",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.Capsule",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "capsule",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "label",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "label",
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
          name: "geometry_type",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :geometry_type, 0

  field :center, 1, type: Viam.Common.V1.Pose
  field :sphere, 2, type: Viam.Common.V1.Sphere, oneof: 0
  field :box, 3, type: Viam.Common.V1.RectangularPrism, oneof: 0
  field :capsule, 5, type: Viam.Common.V1.Capsule, oneof: 0
  field :label, 4, type: :string
end

defmodule Viam.Common.V1.GeometriesInFrame do
  @moduledoc """
  GeometriesinFrame contains the dimensions of a given geometry, pose of its center point, and the reference frame by which it was
  observed.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GeometriesInFrame",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "reference_frame",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "referenceFrame",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "geometries",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.Geometry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "geometries",
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

  field :reference_frame, 1, type: :string, json_name: "referenceFrame"
  field :geometries, 2, repeated: true, type: Viam.Common.V1.Geometry
end

defmodule Viam.Common.V1.PointCloudObject do
  @moduledoc """
  PointCloudObject contains an image in bytes with point cloud data of all of the objects captured by a given observer as well as a
  repeated list of geometries which respresents the center point and geometry of each of the objects within the point cloud
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PointCloudObject",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "point_cloud",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pointCloud",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "geometries",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.GeometriesInFrame",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "geometries",
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

  field :point_cloud, 1, type: :bytes, json_name: "pointCloud"
  field :geometries, 2, type: Viam.Common.V1.GeometriesInFrame
end

defmodule Viam.Common.V1.GeoPoint do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GeoPoint",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "latitude",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "latitude",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "longitude",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "longitude",
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

  field :latitude, 1, type: :double
  field :longitude, 2, type: :double
end

defmodule Viam.Common.V1.GeoGeometry do
  @moduledoc """
  GeoGeometry contains information describing Geometry(s) that is located at a GeoPoint
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GeoGeometry",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "location",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.GeoPoint",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "location",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "geometries",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.Geometry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "geometries",
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

  field :location, 1, type: Viam.Common.V1.GeoPoint
  field :geometries, 2, repeated: true, type: Viam.Common.V1.Geometry
end

defmodule Viam.Common.V1.Transform do
  @moduledoc """
  Transform contains a pose and two reference frames. The first reference frame is the starting reference frame, and the second reference
  frame is the observer reference frame. The second reference frame has a pose which represents the pose of an object in the first
  reference frame as observed within the second reference frame.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Transform",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "reference_frame",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "referenceFrame",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "pose_in_observer_frame",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.PoseInFrame",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "poseInObserverFrame",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "physical_object",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.Geometry",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "physicalObject",
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
          name: "_physical_object",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :reference_frame, 1, type: :string, json_name: "referenceFrame"

  field :pose_in_observer_frame, 2,
    type: Viam.Common.V1.PoseInFrame,
    json_name: "poseInObserverFrame"

  field :physical_object, 3,
    proto3_optional: true,
    type: Viam.Common.V1.Geometry,
    json_name: "physicalObject"
end

defmodule Viam.Common.V1.WorldState do
  @moduledoc """
  WorldState contains information about the physical environment around a given robot. All of the fields within this message are optional,
  they can include information about the physical dimensions of an obstacle, the freespace of a robot, and any desired transforms between a
  given reference frame and a new target reference frame.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "WorldState",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "obstacles",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.GeometriesInFrame",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "obstacles",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "transforms",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.Transform",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "transforms",
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

  field :obstacles, 1, repeated: true, type: Viam.Common.V1.GeometriesInFrame
  field :transforms, 3, repeated: true, type: Viam.Common.V1.Transform
end

defmodule Viam.Common.V1.ActuatorStatus do
  @moduledoc """
  ActuatorStatus is a generic status for resources that only need to return actuator status.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ActuatorStatus",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "is_moving",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "isMoving",
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

  field :is_moving, 1, type: :bool, json_name: "isMoving"
end

defmodule Viam.Common.V1.ResponseMetadata do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ResponseMetadata",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "captured_at",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "capturedAt",
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
          name: "_captured_at",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :captured_at, 1,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "capturedAt"
end

defmodule Viam.Common.V1.DoCommandRequest do
  @moduledoc """
  DoCommandRequest represents a generic DoCommand input
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DoCommandRequest",
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
          name: "command",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Struct",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "command",
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
  field :command, 2, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.DoCommandResponse do
  @moduledoc """
  DoCommandResponse represents a generic DoCommand output
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DoCommandResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "result",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Struct",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "result",
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

  field :result, 1, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.GetKinematicsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetKinematicsRequest",
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

defmodule Viam.Common.V1.GetKinematicsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetKinematicsResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "format",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".viam.common.v1.KinematicsFileFormat",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "format",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "kinematics_data",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "kinematicsData",
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

  field :format, 1, type: Viam.Common.V1.KinematicsFileFormat, enum: true
  field :kinematics_data, 2, type: :bytes, json_name: "kinematicsData"
end

defmodule Viam.Common.V1.GetGeometriesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetGeometriesRequest",
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

defmodule Viam.Common.V1.GetGeometriesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetGeometriesResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "geometries",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.Geometry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "geometries",
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

  field :geometries, 1, repeated: true, type: Viam.Common.V1.Geometry
end

defmodule Viam.Common.V1.GetReadingsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetReadingsRequest",
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

defmodule Viam.Common.V1.GetReadingsResponse.ReadingsEntry do
  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ReadingsEntry",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "key",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "key",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "value",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Value",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "value",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: %Google.Protobuf.MessageOptions{
        message_set_wire_format: false,
        no_standard_descriptor_accessor: false,
        deprecated: false,
        map_entry: true,
        deprecated_legacy_json_field_conflicts: nil,
        features: nil,
        uninterpreted_option: [],
        __pb_extensions__: %{},
        __unknown_fields__: []
      },
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Viam.Common.V1.GetReadingsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetReadingsResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "readings",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".viam.common.v1.GetReadingsResponse.ReadingsEntry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "readings",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          name: "ReadingsEntry",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "key",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "key",
              proto3_optional: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "value",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".google.protobuf.Value",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "value",
              proto3_optional: nil,
              __unknown_fields__: []
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: %Google.Protobuf.MessageOptions{
            message_set_wire_format: false,
            no_standard_descriptor_accessor: false,
            deprecated: false,
            map_entry: true,
            deprecated_legacy_json_field_conflicts: nil,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        }
      ],
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

  field :readings, 1,
    repeated: true,
    type: Viam.Common.V1.GetReadingsResponse.ReadingsEntry,
    map: true
end

defmodule Viam.Common.V1.LogEntry do
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "LogEntry",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "host",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "host",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "level",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "level",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "time",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "time",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "logger_name",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "loggerName",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "message",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "message",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "caller",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Struct",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "caller",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "stack",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "stack",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "fields",
          extendee: nil,
          number: 8,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Struct",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "fields",
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

  field :host, 1, type: :string
  field :level, 2, type: :string
  field :time, 3, type: Google.Protobuf.Timestamp
  field :logger_name, 4, type: :string, json_name: "loggerName"
  field :message, 5, type: :string
  field :caller, 6, type: Google.Protobuf.Struct
  field :stack, 7, type: :string
  field :fields, 8, repeated: true, type: Google.Protobuf.Struct
end
