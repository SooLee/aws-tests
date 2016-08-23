cwlVersion: cwl:draft-3
class: CommandLineTool
baseCommand: print.pl
inputs:
  - id: inputfile
    type: File
    inputBinding:
      position: 1
  - id: outdir
    type: string
    default: .
    inputBinding:
      position: 2
outputs:
  - id: outputfile
    type: File
    outputBinding:
      glob:  $(inputs.outdir + '/' + inputs.inputfile.path.split('/').pop() + '.printed')
requirements:
  - class: InlineJavascriptRequirement
