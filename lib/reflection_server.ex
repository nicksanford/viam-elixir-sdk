defmodule Helloworld.Reflection.Server do
  use GrpcReflection.Server,
    version: :v1,
    services: [Viam.Module.V1.ModuleService.Service]
end
