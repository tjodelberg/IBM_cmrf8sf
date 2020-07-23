;This script is intended for post processing any sedsm imported layout.
;A metal is drawn on top of the pin and it is also labeled.
;Script provided by Visvesh Sathe

printf("LOADING FixPins functions\n")
procedure(FixPins()
        printf("************************************\n")
        printf("************************************\n")
        printf("    CLICK on the layout window\n")
        printf("************************************\n")
        printf("************************************\n")
	layout = geGetWindowCellView(hiPickWindow())
	prog((pin clone netName)
		pins = setof(p layout~>shapes cadr(p~>lpp)=="pin")
		foreach( pin pins 
			clone = dbCopyFig(pin pin~>transform)
			clone~>lpp = list(car(clone~>lpp), "drawing")
			clone~>net = pin~>net
			netName=pin~>net~>name
			rexCompile("(")
			netName = rexReplace(netName "[" 0 )
			rexCompile(")")
			netName = rexReplace(netName "]" 0 )
			dbCreateLabel(layout list(car(pin~>lpp), "label") MGgetCornerCoord(pin~>bBox, "centerCenter") netName "centerCenter" "R0" "stick" 0.2 )
		)
	  )	
)

procedure(MGgetCornerCoord(bBox corner)
 prog((coordinate)
  case(corner
   ("lowerLeft"
	coordinate=car(bBox)
;	printf("Hello")
    )
  ("lowerRight"
	coordinate=caadr(bBox):cadar(bBox)
    )
  ("upperRight"
	coordinate=cadr(bBox)
    )
  ("upperLeft"
	coordinate=caar(bBox):cadadr(bBox)
    )
  ("centerLeft"
	coordinate= caar:((cadadr(bBox) + cadar(bBox))/2)
    )
  ("centerRight"
	coordinate= caadr:((cadadr(bBox) + cadar(bBox))/2)
    )
 ("centerTop"
	coordinate= ((caadr(bBox) + caar(bBox))/2):cadadr
    )
 ("centerBottom"
	coordinate= ((caadr(bBox) + caar(bBox))/2):cadar
    )
 ("centerCenter"
	coordinate= ((caadr(bBox) + caar(bBox))/2):((cadadr(bBox) + cadar(bBox))/2)
    )
  (t
	print("Unknown Corner has been given to function NGgetCornerCoord\n")
    )
  )
  return(coordinate) 
 )
)
printf("FINISHED LOADING FixPins functions\n")
