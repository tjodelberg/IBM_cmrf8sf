;; Configuration to use calibre environment
printf("LOADING calibre environment variables\n")

;; Common Techdir that points to Calibre files ##
setShellEnvVar( "TECHDIR=/afs/eecs.umich.edu/kits/IBM_PDK/cmrf8sf/relLM/Calibre" )
;; setShellEnvVar( "TECHDIR=/n/agni/z/techs/cmrf8sf/mgDM/Calibre" )


;; Environment variables for LVS ##
setShellEnvVar( "MGPROCESS=NOMG" )
setShellEnvVar( "LASTMETAL=LM" )
setShellEnvVar( "NUMMETAL=8" )

setShellEnvVar( "NO_TRACE_PROPERTY=FALSE" )
setShellEnvVar( "USE_RESISTANCE_MULTIPLIERS=TRUE" )
setShellEnvVar( "COMPARE_NF_VALUES=FALSE" )
setShellEnvVar( "NO_SUBC_IN_GRLOGIC=TRUE" )
setShellEnvVar( "PEX_RUN=FALSE" )

;; Environment variables for DRC ##
setShellEnvVar( "EXT_LATCHUP=JEDEC78" )
setShellEnvVar( "BEOL_STACK=6_2_0" )
setShellEnvVar( "IOTYPE=WB_INLINE" )
setShellEnvVar( "BURN_IN=1.5vdd" )
setShellEnvVar( "DESIGN_TYPE=CELL" )
;;setShellEnvVar( "DESIGN_TYPE=CHIP" )
setShellEnvVar( "CHECK_RECOMMENDED=OFF" )
setShellEnvVar( "DENSITY_LOCAL=OFF" )


printf("FINISHED LOADING calibre environment variables\n")
