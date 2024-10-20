kikit separate --source "annotation; ref: REF_TOP" ..\2x2-key-SAO.kicad_pcb top.kicad_pcb
kikit separate --source "annotation; ref: REF_MIDDLE" ..\2x2-key-SAO.kicad_pcb middle.kicad_pcb
kikit separate --source "annotation; ref: REF_BOTTOM" ..\2x2-key-SAO.kicad_pcb bottom.kicad_pcb
kikit fab pcbway --drc --nametemplate "2x2-key-SAO-TOP-{date}_rev{boardRevision}" top.kicad_pcb pcbway_top/
kikit fab pcbway --no-drc --nametemplate "2x2-key-SAO-MIDDLE-{date}_rev{boardRevision}" middle.kicad_pcb pcbway_middle/
kikit fab pcbway --drc --nametemplate "2x2-key-SAO-BOTTOM-{date}_rev{boardRevision}" bottom.kicad_pcb pcbway_bottom/

kikit fab jlcpcb --drc --nametemplate "2x2-key-SAO-TOP-{date}_rev{boardRevision}" top.kicad_pcb jlcpcb_top/
kikit fab jlcpcb --no-drc --nametemplate "2x2-key-SAO-MIDDLE-{date}_rev{boardRevision}" middle.kicad_pcb jlcpcb_middle/
kikit fab jlcpcb --drc --nametemplate "2x2-key-SAO-BOTTOM-{date}_rev{boardRevision}" bottom.kicad_pcb jlcpcb_bottom/
