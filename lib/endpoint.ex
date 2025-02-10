defmodule Helloworld.Endpoint do
  use GRPC.Endpoint

  intercept(GRPC.Server.Interceptors.Logger)
  run(Viam.Module.V1.Module.Server)
  run(Helloworld.Reflection.Server)
end
