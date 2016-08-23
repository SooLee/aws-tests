cwlVersion: cwl:draft-3
class: CommandLineTool
baseCommand: split
inputs:
  - id: byte_size
    type: int
    default: 4
    inputBinding:
      position: 1
      prefix: -b
      separate: true
  - id: inputfile
    type: File
    inputBinding:
      position: 2
outputs:
  - id: outputfile
    type: 
      type: array
      items: File
    outputBinding:
      glob: "x??"

