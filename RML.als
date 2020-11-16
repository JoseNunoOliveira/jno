sig RailML { meta : Metadata, inf: Infrastructure }

sig Infrastructure {
  id : ID,
  Tracks : set Track,
  Grps: set Group,
  CtlPs : set ControlPoint,
  Sts : set State
}

sig Track { 
  id : ID,
  Topology: set Topol,
  TrackEls : set TElement,
  OcsEls : set OElem  
}

sig Topol { beg: one Endpoint, end: one Endpoint, Cross: set CrossSect}

sig State, ID, Pos, Stop, Name, ControlPoint, Group, Dir, Metadata, Course, Speed, Type {}

abstract sig TElement, OElem { id : ID, pos : Pos }

sig Endpoint { id : ID, pos : Pos, Con: set Connect, Stp : lone Stop }

sig CrossSect {id : ID, pos : Pos, name : Name, type: Type }

abstract sig Connect {}

sig Connection extends Connect { ref : ID, id: ID, Ori: lone Dir, Cor : lone Course }

sig Switch extends Connect { id : ID, pos : Pos, code: ID, con : Connection }

sig PlatFormEdge extends TElement {  }

sig SpeedChange extends TElement {  }

sig Signal extends OElem { dir : Dir,  speed : lone Speed}

sig Detector extends OElem { dir : Dir }


/*
 = Tracks
Track = Topologys x Elements x Ocs
Topology = EndPoint x EndPoint x Connections + Cross + …
Element = Edge + ...
Oc = Signal + Detector + …
Connection = Switch + Sequential
Switch = SId x SId x Pos x Orientation
EndPoint = EPId x Pos x (1 + Stop)
Sequential = EPid x EPId
Signal = SId x Pos x Dir x Type x (1 + Speed)

*/
