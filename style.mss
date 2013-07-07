Map {
  background-color: #b8dee6;
}
// FC3912 red
// E2DB09 pollen
@pollen: #FC3912;
@genPollen: #70FC12;

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}

#mytrees {
  marker-width:2;
  marker-fill: @pollen;
  marker-line-width: 0;
  marker-allow-overlap:true;
  marker-fill-opacity: .3;
  marker-comp-op: multiply;
}

#genPollen {
  marker-width:3;
  marker-fill: @genPollen;
  marker-line-width: 0;
  marker-allow-overlap:true;
  marker-fill-opacity: .3;
  marker-comp-op: multiply;
}

#genPollen ['POLLSUM' >= 60] {
  marker-width: 2;
}
#genPollen ['POLLSUM' >= 200] {
  marker-width:4;
}
#genPollen ['POLLSUM' >= 600] {
  marker-width:6;
}
#genPollen ['POLLSUM' >= 900] {
  marker-width:8;
}
#genPollen ['POLLSUM' >= 1300] {
  marker-width:10;
}
#genPollen ['POLLSUM' >= 1500] {
  marker-width:12;
}
#genPollen ['POLLSUM' >= 2000] {
  marker-width:14;
}
#genPollen ['POLLSUM' >= 50000] {
  marker-width:20;
}
#genPollen ['POLLSUM' >= 100000] {
  marker-width:25;
  marker-fill: #fc4812;
}

#genPollen ['POACEAE' >= 1000] {
  marker-fill: #FC3912;
}  

