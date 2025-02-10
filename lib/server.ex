defmodule Viam.Module.V1.Module.Server do
  use GRPC.Server,
    service: Viam.Module.V1.ModuleService.Service,
    http_transcode: true

  @spec add_resource(Viam.Module.V1.AddResourceRequest.t(), GRPC.Server.Stream.t()) ::
          Viam.Module.V1.AddResourceResponse.t()
  def add_resource(
        %Viam.Module.V1.AddResourceRequest{
          config: config,
          dependencies: deps
        },
        _stream
      ) do
    IO.inspect(config)
    IO.inspect(deps)
    %Viam.Module.V1.AddResourceResponse{}
  end

  # rpc :ReconfigureResource,
  #     Viam.Module.V1.ReconfigureResourceRequest,
  #     Viam.Module.V1.ReconfigureResourceResponse

  # rpc :RemoveResource, Viam.Module.V1.RemoveResourceRequest, Viam.Module.V1.RemoveResourceResponse

  # rpc :Ready, Viam.Module.V1.ReadyRequest, Viam.Module.V1.ReadyResponse

  # rpc :ValidateConfig, Viam.Module.V1.ValidateConfigRequest, Viam.Module.V1.ValidateConfigResponse
end
