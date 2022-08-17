cwlVersion: v1.2
class: CommandLineTool
# requirements:
#   - class: DockerRequirement
#     dockerPull: alpine:latest
baseCommand: pup
arguments:
  # div.home <h1>1st</h1> <h2>2nd</h2> <p><a>3rd</a></p>
  - "div.home p:nth-child(3) a text{}"
  - -f
  - $(inputs.file)
inputs:
  - id: file
    type: File
outputs:
  - id: out
    type: stdout
stdout: output.txt
