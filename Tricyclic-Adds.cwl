cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  tricyclic-adds-150mg---primary:
    run: tricyclic-adds-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  tricyclic-adds-solution---primary:
    run: tricyclic-adds-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-150mg---primary/output
  tricyclic-adds-100mg---primary:
    run: tricyclic-adds-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-solution---primary/output
  tricyclic-adds-prothiaden---primary:
    run: tricyclic-adds-prothiaden---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-100mg---primary/output
  tricyclic-adds-trimipramine---primary:
    run: tricyclic-adds-trimipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-prothiaden---primary/output
  tricyclic-adds-bolvidon---primary:
    run: tricyclic-adds-bolvidon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-trimipramine---primary/output
  tricyclic-adds-amitriptyline---primary:
    run: tricyclic-adds-amitriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-bolvidon---primary/output
  tricyclic-adds-dosulepin---primary:
    run: tricyclic-adds-dosulepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-amitriptyline---primary/output
  tricyclic-adds-mianserin---primary:
    run: tricyclic-adds-mianserin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-dosulepin---primary/output
  tricyclic-adds-limbitrol---primary:
    run: tricyclic-adds-limbitrol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-mianserin---primary/output
  tricyclic-adds-suspension---primary:
    run: tricyclic-adds-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-limbitrol---primary/output
  tricyclic-adds-norval---primary:
    run: tricyclic-adds-norval---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-suspension---primary/output
  tricyclic-adds-imipramine---primary:
    run: tricyclic-adds-imipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-norval---primary/output
  tricyclic-adds-triptafen---primary:
    run: tricyclic-adds-triptafen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-imipramine---primary/output
  tricyclic-adds-molipaxin---primary:
    run: tricyclic-adds-molipaxin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-triptafen---primary/output
  tricyclic-adds-sugar---primary:
    run: tricyclic-adds-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-molipaxin---primary/output
  tricyclic-adds-allegron---primary:
    run: tricyclic-adds-allegron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-sugar---primary/output
  domical-tricyclic-adds---primary:
    run: domical-tricyclic-adds---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-allegron---primary/output
  tricyclic-adds-anafranil---primary:
    run: tricyclic-adds-anafranil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: domical-tricyclic-adds---primary/output
  tricyclic-adds-tofranil---primary:
    run: tricyclic-adds-tofranil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-anafranil---primary/output
  tricyclic-adds-surmontil---primary:
    run: tricyclic-adds-surmontil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-tofranil---primary/output
  tricyclic-adds-tablet---primary:
    run: tricyclic-adds-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-surmontil---primary/output
  tricyclic-adds-tryptizol---primary:
    run: tricyclic-adds-tryptizol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-tablet---primary/output
  tricyclic-adds-injection---primary:
    run: tricyclic-adds-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-tryptizol---primary/output
  tricyclic-adds-modifiedrelease---primary:
    run: tricyclic-adds-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-injection---primary/output
  tricyclic-adds-sinequan---primary:
    run: tricyclic-adds-sinequan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-modifiedrelease---primary/output
  tricyclic-adds-lofepramine---primary:
    run: tricyclic-adds-lofepramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-sinequan---primary/output
  tricyclic-adds-dothapax---primary:
    run: tricyclic-adds-dothapax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-lofepramine---primary/output
  tricyclic-adds-prepadine---primary:
    run: tricyclic-adds-prepadine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-dothapax---primary/output
  tricyclic-adds-nortriptyline---primary:
    run: tricyclic-adds-nortriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-prepadine---primary/output
  tricyclic-adds-doxepin---primary:
    run: tricyclic-adds-doxepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-nortriptyline---primary/output
  tricyclic-adds-perphenazine---primary:
    run: tricyclic-adds-perphenazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-doxepin---primary/output
  tricyclic-adds-chlordiazepoxide---primary:
    run: tricyclic-adds-chlordiazepoxide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-perphenazine---primary/output
  tricyclic-adds-thaden---primary:
    run: tricyclic-adds-thaden---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-chlordiazepoxide---primary/output
  tricyclic-adds-sinepin---primary:
    run: tricyclic-adds-sinepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-thaden---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: tricyclic-adds-sinepin---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
