;; Configuration to use HspiceD thru ADE Environment
printf("LOADING Hspice ADE environment variables\n")
;;envSetVal( "asimenv.startup" "simulator"  'string "hspiceD" )

envSetVal( "asimenv.startup" "projectDir" 'string concat("/tmp/Hspice_",getShellEnvVar("USER")) )

envSetVal( "hspiceD.envOpts" "modelFiles" 'string "/afs/umich.edu/class/eecs427/ibm13/cmrf8sf/relLM/HSPICE/models/allModels.inc;tt /afs/umich.edu/class/eecs427/ibm13/cmrf8sf/relLM/HSPICE/models/design.inc" )

;;envSetVal( "hspiceD.envOpts" "switchViewList" 'string "hspiceD calibre spice cmos_sch cmos.sch schematic" )

;;envSetVal( "hspiceD.envOpts" "stopViewList" 'string "hspiceD spice" )

asiSetSimOptionVal(asiGetTool( 'hspiceD ) 'DCSTEP "1" )

;;To debug use the following command
;;asiDisplayEnvOption( asiGetTool( 'hspiceD ) )
;;asiDisplayEnvOptionFormProperties( asiGetTool('hspiceD))
;;asiDisplaySimOption( asiGetTool( 'hspiceD ) )

printf("Finish Laoding HspiceD ADE Environment variable...\n") 
