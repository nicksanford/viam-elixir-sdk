defmodule HelloworldApp do
  use Application

  def start(_type, args) do
    IO.inspect(args)
    children = [
      {
        GRPC.Server.Supervisor,
        endpoint: Helloworld.Endpoint, port: 5858, start_server: true
        # TODO: This will need to be booted up at runtime
        # endpoint: Helloworld.Endpoint, port: 0, ip: {:local, ~c"./other.sock"}, start_server: true
      },
      GrpcReflection
    ]

    opts = [strategy: :one_for_one, name: __MODULE__]
    Supervisor.start_link(children, opts)
  end
end
