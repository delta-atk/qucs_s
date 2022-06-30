<Qucs Schematic 0.0.23>
<Properties>
  <View=0,0,2198,1438,1,234,780>
  <Grid=10,10,1>
  <DataSet=s_param_wideband_amp_noise.dat>
  <DataDisplay=s_param_wideband_amp_noise.dpl>
  <OpenDisplay=1>
  <Script=s_param_wideband_amp_noise.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <R R6 1 450 430 -61 -42 1 1 "470" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C4 1 500 360 -26 17 0 0 "0.1u" 1 "" 0 "neutral" 0>
  <_BJT T_2N2222_1 1 570 460 12 -32 0 0 "npn" 0 "1e-14" 0 "1" 0 "1" 0 "0.3" 0 "0" 0 "100" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "200" 0 "3" 0 "0" 0 "0" 0 "3" 0 "1" 0 "10" 0 "25e-12" 0 "0.75" 0 "0.33" 0 "8e-12" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "400e-12" 0 "3" 0 "0.0" 0 "2" 0 "100e-9" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <L_SPICE L3 1 570 290 10 -26 0 1 "100u" 1 "" 0 "" 0 "" 0 "" 0>
  <L_SPICE L4 1 670 290 10 -26 0 1 "100u" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 5 830 490 0 0 0 0>
  <C C5 1 750 360 -26 17 0 0 "0.1u" 1 "" 0 "neutral" 0>
  <R R2 1 570 590 15 -26 0 1 "100" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C2 1 650 590 17 -26 0 1 "100n" 1 "" 0 "neutral" 0>
  <GND * 5 570 630 0 0 0 0>
  <GND * 5 650 630 0 0 0 0>
  <C C1 1 400 510 -26 -58 1 0 "10n" 1 "" 0 "neutral" 0>
  <GND * 5 280 640 0 0 0 0>
  <GND * 5 450 640 0 0 0 0>
  <L L2 1 450 600 10 -26 0 1 "100u" 1 "" 0>
  <R R5 1 450 540 15 -26 0 1 "470" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C3 1 760 220 -26 17 0 0 "100n" 1 "" 0 "neutral" 0>
  <R R14 1 670 170 15 -26 0 1 "47" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 780 170 0 0 0 0>
  <Vdc V2 1 780 120 18 -26 0 1 "12" 1>
  <GND * 5 830 250 0 0 0 0>
  <K_SPICE K1 1 590 120 -26 17 0 0 "L3" 1 "L4" 1 "0.99" 1>
  <R R3 1 570 520 15 -26 0 1 "4.7" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R7 1 500 320 -26 -71 1 0 "1.5k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Pac P1 1 280 610 18 -26 0 1 "1" 1 "50 Ohm" 1 "-40 dBm" 1 "8 MHz" 1 "26.85" 0>
  <Pac P2 1 830 460 18 -26 0 1 "2" 1 "50 Ohm" 1 "-40 dBm" 1 "8 MHz" 1 "26.85" 0>
  <NutmegEq NutmegEq1 1 770 550 -30 18 0 0 "sp" 1 "K=db((S_2_1))" 1 "VSWRin=(1+mag(S_1_1))/(1-mag(S_1_1))" 1 "VSWRout=(1+mag(S_2_2))/(1-mag(S_2_2))" 1>
  <.SP SP1 1 270 160 0 79 0 0 "lin" 1 "1 MHz" 1 "20 MHz" 1 "500" 1 "yes" 1 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <530 320 530 360 "" 0 0 0 "">
  <450 340 450 400 "" 0 0 0 "">
  <470 320 470 340 "" 0 0 0 "">
  <470 340 470 360 "" 0 0 0 "">
  <450 340 470 340 "" 0 0 0 "">
  <530 360 620 360 "" 0 0 0 "">
  <450 460 540 460 "" 0 0 0 "">
  <570 320 570 430 "" 0 0 0 "">
  <570 230 570 260 "" 0 0 0 "">
  <570 230 620 230 "" 0 0 0 "">
  <620 230 620 340 "" 0 0 0 "">
  <620 340 670 340 "" 0 0 0 "">
  <670 320 670 340 "" 0 0 0 "">
  <620 340 620 360 "" 0 0 0 "">
  <620 360 720 360 "" 0 0 0 "">
  <570 550 570 560 "" 0 0 0 "">
  <570 550 650 550 "" 0 0 0 "">
  <650 550 650 560 "" 0 0 0 "">
  <570 620 570 630 "" 0 0 0 "">
  <650 620 650 630 "" 0 0 0 "">
  <450 460 450 510 "" 0 0 0 "">
  <280 510 280 580 "" 0 0 0 "">
  <280 510 370 510 "in" 250 460 21 "">
  <430 510 450 510 "" 0 0 0 "">
  <450 630 450 640 "" 0 0 0 "">
  <830 360 830 430 "" 0 0 0 "">
  <780 360 830 360 "out" 840 330 31 "">
  <670 220 670 260 "" 0 0 0 "">
  <670 220 730 220 "" 0 0 0 "">
  <670 200 670 220 "" 0 0 0 "">
  <780 150 780 170 "" 0 0 0 "">
  <670 90 670 140 "" 0 0 0 "">
  <670 90 780 90 "" 0 0 0 "">
  <790 220 830 220 "" 0 0 0 "">
  <830 220 830 250 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 990 214 351 194 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"ngspice/ac.v(cy_1_1)" #0000ff 0 3 0 0 0>
	<"ngspice/ac.v(cy_1_2)" #ff0000 0 3 0 0 0>
	<"ngspice/ac.v(cy_2_1)" #ff00ff 0 3 0 0 0>
	<"ngspice/ac.v(cy_2_2)" #00ff00 0 3 0 0 0>
  </Rect>
  <Rect 1000 510 331 171 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"ngspice/ac.v(nfmin)" #0000ff 0 3 0 0 0>
	<"ngspice/ac.v(nf)" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 300 976 373 226 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"ngspice/ac.v(sopt)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 790 999 442 259 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"ngspice/ac.v(rn)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 310 1230 389 176 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"ngspice/ac.k" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 780 1246 453 186 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"ngspice/ac.v(s_2_1)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 260 40 12 #000000 0 "This example illustrates S-parameter simulation\nNgspice >= 37 is required\nNoise computation is enabled">
</Paintings>
