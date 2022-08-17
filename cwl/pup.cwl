cwlVersion: v1.2
class: CommandLineTool
# requirements:
#   - class: DockerRequirement
#     dockerPull: alpine:latest
baseCommand: pup
arguments:
  - "div[class=\"home\"] > p > a[href=\"$(inputs.url)\"] text{}"
  - -f
  - $(inputs.file)
inputs:
  - id: url
    type: string
  - id: file
    type: File
outputs:
  - id: out
    type: stdout
stdout: output.txt
