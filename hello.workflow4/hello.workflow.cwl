cwlVersion: cwl:draft-3
class: Workflow
requirements:
  - class: ScatterFeatureRequirement
inputs:
  - id: input_message
    type: string

outputs:
  - id: finaloutput
    type: File
    source: "#merge/outputfile"

steps:
  - id: hello
    run: hello.cwl
    inputs:
      - id: message
        source: "#input_message"
    outputs:
      - id: output

  - id: wc
    run: wc.cwl
    inputs:
      - id: inputfile
        source: "#hello/output"
    outputs:
      - id: outputfile

  - id: split
    run: split.cwl
    inputs:
      - id: inputfile
        source: "#wc/outputfile"
    outputs:
      - id: outputfile

  - id: print
    run: print.cwl
    inputs:
      - id: inputfile
        source: "#split/outputfile"
    outputs:
      - id: outputfile
    scatter: 
      - '#print/inputfile'
    scatterMethod: dotproduct

  - id: merge
    run: merge.cwl
    inputs:
      - id: inputfiles
        source: "#print/outputfile"
    outputs:
      - id: outputfile

