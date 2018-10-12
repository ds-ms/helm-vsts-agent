{{- define "defaults.serviceAccountName" -}}
    {{- if .Values.serviceAccountName -}} 
        {{- printf "%s" .Values.serviceAccountName }}    
    {{- else -}}
        {{- printf "system:serviceaccount:%s:default" .Release.Namespace }}
    {{- end -}}
{{- end -}}