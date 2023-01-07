FROM caddy:2.6.2-builder AS builder

RUN xcaddy build \
    --with github.com/runcitadel/caddy-runningcitadel

FROM caddy:2.6.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
