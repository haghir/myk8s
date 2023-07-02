{{/*
 Expand the name of the chart.
 */}}
{{- define "crl.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
 Create a default fully qualified app name.
 We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
 If release name contains chart name it will be used as a full name.
 */}}
{{- define "crl.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
 Create chart name and version as used by the chart label.
 */}}
{{- define "crl.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
 Common labels
 */}}
{{- define "crl.labels" -}}
helm.sh/chart: {{ include "crl.chart" . }}
{{ include "crl.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
 Selector labels
 */}}
{{- define "crl.selectorLabels" -}}
app.kubernetes.io/name: {{ include "crl.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
 Create the name of the service account to use
 */}}
{{- define "crl.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "crl.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
 Create the name of the config storage
 */}}
{{- define "nginx.storages.config.name" -}}
{{- printf "%s-storage-config" (include "crl.fullname" .) -}}
{{- end -}}

{{/*
 Create the name of the crl storage
 */}}
{{- define "nginx.storages.crl.name" -}}
{{- printf "%s-storage-crl" (include "crl.fullname" .) -}}
{{- end -}}
