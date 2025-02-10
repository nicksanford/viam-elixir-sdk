# assumes you already have elixir 1.18.2+ and erlang 27.2.2+ and protoc available in path
# --elixir_out=gen_descriptors=true,plugins=grpc:./lib/gen 
all:
	rm -rf lib/gen priv/protos priv/protos/viam	
	mkdir -p lib/gen priv/protos/google/api priv/protos/viam priv/protos/viam/app/v1 priv/protos/viam/component priv/protos/viam/service
#priv/protos/viam/service priv/protos/viam/component
	cp -R googleapis/google/api/http.proto googleapis/google/api/httpbody.proto googleapis/google/api/annotations.proto priv/protos/google/api
	cp -r api/proto/viam/common api/proto/viam/robot api/proto/viam/tagger api/proto/viam/module  priv/protos/viam/
	cp api/proto/viam/app/v1/robot.proto priv/protos/viam/app/v1
	cp -R api/proto/viam/component/camera api/proto/viam/component/sensor priv/protos/viam/component
	cp -R api/proto/viam/service/vision priv/protos/viam/service
	# note, this might be osx specific, re-check when you build on linux
	sed -i '' 's|import \"common|import \"viam/common|g' priv/protos/viam/robot/v1/robot.proto
	sed -i '' 's|import \"common|import \"viam/common|g' priv/protos/viam/app/v1/robot.proto
	sed -i '' 's|import \"tagger|import \"viam/tagger|g' priv/protos/viam/app/v1/robot.proto
	sed -i '' 's|import \"app|import \"viam/app|g' priv/protos/viam/module/v1/module.proto
	sed -i '' 's|import \"robot|import \"viam/robot|g' priv/protos/viam/module/v1/module.proto
	sed -i '' 's|import \"common|import \"viam/common|g' priv/protos/viam/component/camera/v1/camera.proto
	sed -i '' 's|import \"common|import \"viam/common|g' priv/protos/viam/component/sensor/v1/sensor.proto
	sed -i '' 's|import \"common|import \"viam/common|g' priv/protos/viam/service/vision/v1/vision.proto
	sed -i '' 's|import \"component|import \"viam/component|g' priv/protos/viam/service/vision/v1/vision.proto
	protoc \
		-I priv/protos \
		--elixir_out=gen_descriptors=true,plugins=grpc:./lib/gen  \
		--elixir_opt=include_docs=true \
		priv/protos/google/api/*.proto \
		priv/protos/viam/common/v1/common.proto \
		priv/protos/viam/robot/v1/robot.proto \
		priv/protos/viam/tagger/v1/tagger.proto \
		priv/protos/viam/app/v1/robot.proto \
		priv/protos/viam/module/v1/module.proto \
		priv/protos/viam/component/camera/v1/camera.proto \
		priv/protos/viam/component/sensor/v1/sensor.proto \
		priv/protos/viam/service/vision/v1/vision.proto
	rm -rf lib/gen/google

setup:
	mix escript.install hex protobuf 0.14.0

test:
	curl -v -H 'Content-type: application/json' -X POST -d '{"hi":"there"}' 127.0.0.1:5858/viam.module.v1.ModuleService/AddResource

start:
	mix deps.get
	mix compile
	iex -S mix
