cwlVersion: cwl:draft-3
class: CommandLineTool
baseCommand: wc
stdout: wc.output.txt
inputs:
  - id: inputfile
    type: File
    inputBinding:
      position: 1
outputs:
  - id: outputfile
    type: File
    outputBinding:
      glob: wc.output.txt

