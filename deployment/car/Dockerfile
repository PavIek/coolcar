# 启动编译环境
FROM --platform=$BUILDPLATFORM golang:1.24-alpine AS builder

ARG TARGETOS
ARG TARGETARCH

# 拷贝源代码到镜像中
COPY . /go/src/coolcar/server

# 编译
WORKDIR /go/src/coolcar/server
RUN GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -o /go/bin/car ./car

FROM alpine:3.21
COPY --from=builder /go/bin/car /bin/car
ENV ADDR=:8081
ENV WS_ADDR=:8080

# 申明暴露的端口
EXPOSE 8080
EXPOSE 8081

# 设置服务入口
ENTRYPOINT [ "/bin/car" ]
