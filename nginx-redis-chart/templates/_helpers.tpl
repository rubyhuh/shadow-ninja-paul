{{/*
Expand the name of the chart.
*/}}
{{- define "nginx-redis-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this.
*/}}
{{- define "nginx-redis-chart.fullname" -}}
{{- $name := default .Chart.Name .Values.fullnameOverride }}
{{- if .Values.nameOverride }}
  {{- $name = .Values.nameOverride }}
{{- end }}
{{- $name | printf "%s-%s" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
