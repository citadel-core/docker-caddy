FROM caddy:2.6.4-builder AS builder

RUN xcaddy build \
    --with github.com/runcitadel/caddy-runningcitadel \
    --with github.com/mholt/caddy-l4 \
    --with github.com/RussellLuo/caddy-ext/layer4

FROM caddy:2.6.4

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
