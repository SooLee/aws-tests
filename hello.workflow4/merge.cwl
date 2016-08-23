cwlVersion: cwl:draft-3
class: CommandLineTool
baseCommand: cat.pl
stdout: wc.merged.txt
inputs:
  - id: inputfiles
    type: 
      type: array
      items: File
    inputBinding:
      position: 1
      itemSeparator: ","
outputs:
  - id: outputfile
    type: File
    outputBinding:
      glob: wc.merged.txt

