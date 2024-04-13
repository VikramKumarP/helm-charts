########################################################
## Labels for deployment
########################################################
{{- define "deployment.labels" -}}
app: {{ .Values.stage }}-{{ .Values.app_deployment.common_labels.app }}
env: {{ .Values.stage }}
tier: frontned
author: {{ .Values.app_deployment.common_labels.author | default "vikram" }}
platform: oc
owner: {{ .Values.app_deployment.common_labels.owner | default "tracy"}}
project: {{ .Values.app_deployment.common_labels.project | default "demo" }}

release: {{ .Release.Name }}
{{- end -}}


########################################################
## Labels for replica configuration
########################################################
{{- define "replica.labels" -}}
app: {{ .Values.stage }}-{{ .Values.app_deployment.common_labels.app }}
env: {{ .Values.stage }}
tier: frontned
project: {{ .Values.app_deployment.common_labels.project }}
team: PBBSA
release: {{ .Release.Name }}
{{- end -}}


########################################################
## Labels for all pods
########################################################
{{- define "pod.labels" -}}
app: {{ .Values.stage }}-{{ .Values.app_deployment.common_labels.app }}
env: {{ .Values.stage }}
tier: frontned
author: {{ .Values.app_deployment.common_labels.author }}
platform: oc
owner: {{ .Values.app_deployment.common_labels.owner }}
project: {{ .Values.app_deployment.common_labels.project }}
team: PBBSA
release: {{ .Release.Name }}
{{- end -}}
