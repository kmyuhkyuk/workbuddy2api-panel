FROM alpine:3.20
# python3：login.sh 的 JSON 解析 / 签到 / 落盘；bash：shell 脚本体。
RUN apk add --no-cache wget ca-certificates tzdata python3 bash \
 && adduser -D -u 10001 app \
 && mkdir -p /app/auths /app/data \
 && chown -R app:app /app