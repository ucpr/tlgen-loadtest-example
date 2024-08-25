.PHONY: metrics
metrics:
	go run github.com/open-telemetry/opentelemetry-collector-contrib/cmd/telemetrygen@latest metrics --duration 1s --otlp-insecure

.PHONY: traces
traces:
	go run github.com/open-telemetry/opentelemetry-collector-contrib/cmd/telemetrygen@latest traces --otlp-insecure --duration 10s --rate 500 --workers 10

.PHONY: logs
logs:
	go run github.com/open-telemetry/opentelemetry-collector-contrib/cmd/telemetrygen@latest logs --otlp-insecure --duration 5s

.PHONY: help
help:
	go run github.com/open-telemetry/opentelemetry-collector-contrib/cmd/telemetrygen@latest --help
