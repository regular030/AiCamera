
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.14.0.75.2

-- ldbanno -n VHDL -o AICAM_impl1_vho.vho -w -neg -gui -msgset C:/Users/kunsh/Desktop/AiCamera/Lattice Diamond/promote.xml AICAM_impl1.ncd 
-- Netlist created on Mon Apr 13 19:46:50 2026
-- Netlist written on Mon Apr 13 19:47:23 2026
-- Design is for device LFE5U-25F
-- Design is for package CABGA256
-- Design is for performance grade 6

-- entity sapiobuf
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf : ENTITY IS TRUE;

  end sapiobuf;

  architecture Structure of sapiobuf is
  begin
    INST1: IB
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity M_D0B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity M_D0B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "M_D0B";

      tipd_MD0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_MD0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_MD0 	: VitalDelayType := 0 ns;
      tpw_MD0_posedge	: VitalDelayType := 0 ns;
      tpw_MD0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; MD0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF M_D0B : ENTITY IS TRUE;

  end M_D0B;

  architecture Structure of M_D0B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal MD0_ipd 	: std_logic := 'X';

    component sapiobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    M_D0_pad: sapiobuf
      port map (Z=>PADDI_out, PAD=>MD0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(MD0_ipd, MD0, tipd_MD0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, MD0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_MD0_MD0          	: x01 := '0';
    VARIABLE periodcheckinfo_MD0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => MD0_ipd,
        TestSignalName => "MD0",
        Period => tperiod_MD0,
        PulseWidthHigh => tpw_MD0_posedge,
        PulseWidthLow => tpw_MD0_negedge,
        PeriodData => periodcheckinfo_MD0,
        Violation => tviol_MD0_MD0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => MD0_ipd'last_event,
                           PathDelay => tpd_MD0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0001
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0001 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0001 : ENTITY IS TRUE;

  end sapiobuf0001;

  architecture Structure of sapiobuf0001 is
  begin
    INST1: IBPU
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity RXB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity RXB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "RXB";

      tipd_RXS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_RXS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_RXS 	: VitalDelayType := 0 ns;
      tpw_RXS_posedge	: VitalDelayType := 0 ns;
      tpw_RXS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; RXS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF RXB : ENTITY IS TRUE;

  end RXB;

  architecture Structure of RXB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal RXS_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    RX_pad: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>RXS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(RXS_ipd, RXS, tipd_RXS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, RXS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_RXS_RXS          	: x01 := '0';
    VARIABLE periodcheckinfo_RXS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => RXS_ipd,
        TestSignalName => "RXS",
        Period => tperiod_RXS,
        PulseWidthHigh => tpw_RXS_posedge,
        PulseWidthLow => tpw_RXS_negedge,
        PeriodData => periodcheckinfo_RXS,
        Violation => tviol_RXS_RXS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => RXS_ipd'last_event,
                           PathDelay => tpd_RXS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0002
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0002 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0002 : ENTITY IS TRUE;

  end sapiobuf0002;

  architecture Structure of sapiobuf0002 is
  begin
    INST1: IB
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity PCLKB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity PCLKB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "PCLKB";

      tipd_PCLKS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PCLKS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_PCLKS 	: VitalDelayType := 0 ns;
      tpw_PCLKS_posedge	: VitalDelayType := 0 ns;
      tpw_PCLKS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; PCLKS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF PCLKB : ENTITY IS TRUE;

  end PCLKB;

  architecture Structure of PCLKB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PCLKS_ipd 	: std_logic := 'X';

    component sapiobuf0002
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    PCLK_pad: sapiobuf0002
      port map (Z=>PADDI_out, PAD=>PCLKS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PCLKS_ipd, PCLKS, tipd_PCLKS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PCLKS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_PCLKS_PCLKS          	: x01 := '0';
    VARIABLE periodcheckinfo_PCLKS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => PCLKS_ipd,
        TestSignalName => "PCLKS",
        Period => tperiod_PCLKS,
        PulseWidthHigh => tpw_PCLKS_posedge,
        PulseWidthLow => tpw_PCLKS_negedge,
        PeriodData => periodcheckinfo_PCLKS,
        Violation => tviol_PCLKS_PCLKS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => PCLKS_ipd'last_event,
                           PathDelay => tpd_PCLKS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity VSYNCB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity VSYNCB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "VSYNCB";

      tipd_VSYNCS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_VSYNCS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_VSYNCS 	: VitalDelayType := 0 ns;
      tpw_VSYNCS_posedge	: VitalDelayType := 0 ns;
      tpw_VSYNCS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; VSYNCS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF VSYNCB : ENTITY IS TRUE;

  end VSYNCB;

  architecture Structure of VSYNCB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal VSYNCS_ipd 	: std_logic := 'X';

    component sapiobuf0002
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    VSYNC_pad: sapiobuf0002
      port map (Z=>PADDI_out, PAD=>VSYNCS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(VSYNCS_ipd, VSYNCS, tipd_VSYNCS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, VSYNCS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_VSYNCS_VSYNCS          	: x01 := '0';
    VARIABLE periodcheckinfo_VSYNCS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => VSYNCS_ipd,
        TestSignalName => "VSYNCS",
        Period => tperiod_VSYNCS,
        PulseWidthHigh => tpw_VSYNCS_posedge,
        PulseWidthLow => tpw_VSYNCS_negedge,
        PeriodData => periodcheckinfo_VSYNCS,
        Violation => tviol_VSYNCS_VSYNCS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => VSYNCS_ipd'last_event,
                           PathDelay => tpd_VSYNCS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity CRYSTALB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity CRYSTALB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "CRYSTALB";

      tipd_CRYSTALS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CRYSTALS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_CRYSTALS 	: VitalDelayType := 0 ns;
      tpw_CRYSTALS_posedge	: VitalDelayType := 0 ns;
      tpw_CRYSTALS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; CRYSTALS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF CRYSTALB : ENTITY IS TRUE;

  end CRYSTALB;

  architecture Structure of CRYSTALB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal CRYSTALS_ipd 	: std_logic := 'X';

    component sapiobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    CRYSTAL_pad: sapiobuf
      port map (Z=>PADDI_out, PAD=>CRYSTALS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CRYSTALS_ipd, CRYSTALS, tipd_CRYSTALS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, CRYSTALS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_CRYSTALS_CRYSTALS          	: x01 := '0';
    VARIABLE periodcheckinfo_CRYSTALS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => CRYSTALS_ipd,
        TestSignalName => "CRYSTALS",
        Period => tperiod_CRYSTALS,
        PulseWidthHigh => tpw_CRYSTALS_posedge,
        PulseWidthLow => tpw_CRYSTALS_negedge,
        PeriodData => periodcheckinfo_CRYSTALS,
        Violation => tviol_CRYSTALS_CRYSTALS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => CRYSTALS_ipd'last_event,
                           PathDelay => tpd_CRYSTALS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0003
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0003 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0003 : ENTITY IS TRUE;

  end sapiobuf0003;

  architecture Structure of sapiobuf0003 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity M_CLKB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity M_CLKB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "M_CLKB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_MCLK	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; MCLK: out Std_logic);

    ATTRIBUTE Vital_Level0 OF M_CLKB : ENTITY IS TRUE;

  end M_CLKB;

  architecture Structure of M_CLKB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal MCLK_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    M_CLK_pad: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>MCLK_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, MCLK_out)
    VARIABLE MCLK_zd         	: std_logic := 'X';
    VARIABLE MCLK_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    MCLK_zd 	:= MCLK_out;

    VitalPathDelay01 (
      OutSignal => MCLK, OutSignalName => "MCLK", OutTemp => MCLK_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_MCLK,
                           PathCondition => TRUE)),
      GlitchData => MCLK_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity M_D3B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity M_D3B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "M_D3B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_MD3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; MD3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF M_D3B : ENTITY IS TRUE;

  end M_D3B;

  architecture Structure of M_D3B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal MD3_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    M_D3_pad: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>MD3_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, MD3_out)
    VARIABLE MD3_zd         	: std_logic := 'X';
    VARIABLE MD3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    MD3_zd 	:= MD3_out;

    VitalPathDelay01 (
      OutSignal => MD3, OutSignalName => "MD3", OutTemp => MD3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_MD3,
                           PathCondition => TRUE)),
      GlitchData => MD3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0004
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0004 is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0004 : ENTITY IS TRUE;

  end sapiobuf0004;

  architecture Structure of sapiobuf0004 is
  begin
    INST5: OBZ
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity gnd
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity vcc
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity vcc is
    port (PWR1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vcc : ENTITY IS TRUE;

  end vcc;

  architecture Structure of vcc is
  begin
    INST1: VHI
      port map (Z=>PWR1);
  end Structure;

-- entity M_D2B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity M_D2B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "M_D2B");

    port (MD2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF M_D2B : ENTITY IS TRUE;

  end M_D2B;

  architecture Structure of M_D2B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal MD2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    M_D2_pad: sapiobuf0004
      port map (I=>GNDI, T=>VCCI, PAD=>MD2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (MD2_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    MD2 	<= MD2_out;


    END PROCESS;

  end Structure;

-- entity M_D1B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity M_D1B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "M_D1B");

    port (MD1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF M_D1B : ENTITY IS TRUE;

  end M_D1B;

  architecture Structure of M_D1B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal MD1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    M_D1_pad: sapiobuf0004
      port map (I=>GNDI, T=>VCCI, PAD=>MD1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (MD1_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    MD1 	<= MD1_out;


    END PROCESS;

  end Structure;

-- entity M_CMDB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity M_CMDB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "M_CMDB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_MCMD	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; MCMD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF M_CMDB : ENTITY IS TRUE;

  end M_CMDB;

  architecture Structure of M_CMDB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal MCMD_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    M_CMD_pad: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>MCMD_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, MCMD_out)
    VARIABLE MCMD_zd         	: std_logic := 'X';
    VARIABLE MCMD_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    MCMD_zd 	:= MCMD_out;

    VitalPathDelay01 (
      OutSignal => MCMD, OutSignalName => "MCMD", OutTemp => MCMD_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_MCMD,
                           PathCondition => TRUE)),
      GlitchData => MCMD_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity TXB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity TXB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "TXB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_TXS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; TXS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF TXB : ENTITY IS TRUE;

  end TXB;

  architecture Structure of TXB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal TXS_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    TX_pad: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>TXS_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, TXS_out)
    VARIABLE TXS_zd         	: std_logic := 'X';
    VARIABLE TXS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    TXS_zd 	:= TXS_out;

    VitalPathDelay01 (
      OutSignal => TXS, OutSignalName => "TXS", OutTemp => TXS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_TXS,
                           PathCondition => TRUE)),
      GlitchData => TXS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ESP_D_0_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity ESP_D_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ESP_D_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_ESPD0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; ESPD0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_0_B : ENTITY IS TRUE;

  end ESP_D_0_B;

  architecture Structure of ESP_D_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal ESPD0_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    ESP_D_pad_0: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>ESPD0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, ESPD0_out)
    VARIABLE ESPD0_zd         	: std_logic := 'X';
    VARIABLE ESPD0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD0_zd 	:= ESPD0_out;

    VitalPathDelay01 (
      OutSignal => ESPD0, OutSignalName => "ESPD0", OutTemp => ESPD0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ESPD0,
                           PathCondition => TRUE)),
      GlitchData => ESPD0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ESP_D_1_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity ESP_D_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ESP_D_1_B");

    port (ESPD1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_1_B : ENTITY IS TRUE;

  end ESP_D_1_B;

  architecture Structure of ESP_D_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal ESPD1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_1: sapiobuf0004
      port map (I=>GNDI, T=>VCCI, PAD=>ESPD1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (ESPD1_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD1 	<= ESPD1_out;


    END PROCESS;

  end Structure;

-- entity ESP_D_2_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity ESP_D_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ESP_D_2_B");

    port (ESPD2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_2_B : ENTITY IS TRUE;

  end ESP_D_2_B;

  architecture Structure of ESP_D_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal ESPD2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_2: sapiobuf0004
      port map (I=>GNDI, T=>VCCI, PAD=>ESPD2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (ESPD2_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD2 	<= ESPD2_out;


    END PROCESS;

  end Structure;

-- entity ESP_D_3_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity ESP_D_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ESP_D_3_B");

    port (ESPD3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_3_B : ENTITY IS TRUE;

  end ESP_D_3_B;

  architecture Structure of ESP_D_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal ESPD3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_3: sapiobuf0004
      port map (I=>GNDI, T=>VCCI, PAD=>ESPD3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (ESPD3_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD3 	<= ESPD3_out;


    END PROCESS;

  end Structure;

-- entity ESP_D_4_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity ESP_D_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ESP_D_4_B");

    port (ESPD4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_4_B : ENTITY IS TRUE;

  end ESP_D_4_B;

  architecture Structure of ESP_D_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal ESPD4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_4: sapiobuf0004
      port map (I=>GNDI, T=>VCCI, PAD=>ESPD4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (ESPD4_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD4 	<= ESPD4_out;


    END PROCESS;

  end Structure;

-- entity ESP_D_5_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity ESP_D_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ESP_D_5_B");

    port (ESPD5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_5_B : ENTITY IS TRUE;

  end ESP_D_5_B;

  architecture Structure of ESP_D_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal ESPD5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_5: sapiobuf0004
      port map (I=>GNDI, T=>VCCI, PAD=>ESPD5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (ESPD5_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD5 	<= ESPD5_out;


    END PROCESS;

  end Structure;

-- entity ESP_D_6_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity ESP_D_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ESP_D_6_B");

    port (ESPD6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_6_B : ENTITY IS TRUE;

  end ESP_D_6_B;

  architecture Structure of ESP_D_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal ESPD6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_6: sapiobuf0004
      port map (I=>GNDI, T=>VCCI, PAD=>ESPD6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (ESPD6_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD6 	<= ESPD6_out;


    END PROCESS;

  end Structure;

-- entity ESP_D_7_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity ESP_D_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ESP_D_7_B");

    port (ESPD7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_7_B : ENTITY IS TRUE;

  end ESP_D_7_B;

  architecture Structure of ESP_D_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal ESPD7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_7: sapiobuf0004
      port map (I=>GNDI, T=>VCCI, PAD=>ESPD7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (ESPD7_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD7 	<= ESPD7_out;


    END PROCESS;

  end Structure;

-- entity sapiobuf0005
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0005 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0005 : ENTITY IS TRUE;

  end sapiobuf0005;

  architecture Structure of sapiobuf0005 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity DOUTB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DOUTB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DOUTB");

    port (DOUTS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF DOUTB : ENTITY IS TRUE;

  end DOUTB;

  architecture Structure of DOUTB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DOUTS_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0005
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    DOUT_pad: sapiobuf0005
      port map (I=>GNDI, PAD=>DOUTS_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (DOUTS_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    DOUTS 	<= DOUTS_out;


    END PROCESS;

  end Structure;

-- entity SD_BA_0_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_BA_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_BA_0_B");

    port (SDBA0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_BA_0_B : ENTITY IS TRUE;

  end SD_BA_0_B;

  architecture Structure of SD_BA_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDBA0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_BA_pad_0: sapiobuf0003
      port map (I=>GNDI, PAD=>SDBA0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDBA0_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDBA0 	<= SDBA0_out;


    END PROCESS;

  end Structure;

-- entity SD_BA_1_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_BA_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_BA_1_B");

    port (SDBA1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_BA_1_B : ENTITY IS TRUE;

  end SD_BA_1_B;

  architecture Structure of SD_BA_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDBA1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_BA_pad_1: sapiobuf0003
      port map (I=>GNDI, PAD=>SDBA1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDBA1_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDBA1 	<= SDBA1_out;


    END PROCESS;

  end Structure;

-- entity SD_A_0_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_0_B");

    port (SDA0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_0_B : ENTITY IS TRUE;

  end SD_A_0_B;

  architecture Structure of SD_A_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0005
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_0: sapiobuf0005
      port map (I=>GNDI, PAD=>SDA0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA0_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA0 	<= SDA0_out;


    END PROCESS;

  end Structure;

-- entity SD_A_1_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_1_B");

    port (SDA1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_1_B : ENTITY IS TRUE;

  end SD_A_1_B;

  architecture Structure of SD_A_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_A_pad_1: sapiobuf0003
      port map (I=>GNDI, PAD=>SDA1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA1_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA1 	<= SDA1_out;


    END PROCESS;

  end Structure;

-- entity SD_A_2_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_2_B");

    port (SDA2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_2_B : ENTITY IS TRUE;

  end SD_A_2_B;

  architecture Structure of SD_A_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_A_pad_2: sapiobuf0003
      port map (I=>GNDI, PAD=>SDA2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA2_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA2 	<= SDA2_out;


    END PROCESS;

  end Structure;

-- entity SD_A_3_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_3_B");

    port (SDA3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_3_B : ENTITY IS TRUE;

  end SD_A_3_B;

  architecture Structure of SD_A_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_A_pad_3: sapiobuf0003
      port map (I=>GNDI, PAD=>SDA3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA3_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA3 	<= SDA3_out;


    END PROCESS;

  end Structure;

-- entity SD_A_4_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_4_B");

    port (SDA4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_4_B : ENTITY IS TRUE;

  end SD_A_4_B;

  architecture Structure of SD_A_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_A_pad_4: sapiobuf0003
      port map (I=>GNDI, PAD=>SDA4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA4_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA4 	<= SDA4_out;


    END PROCESS;

  end Structure;

-- entity SD_A_5_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_5_B");

    port (SDA5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_5_B : ENTITY IS TRUE;

  end SD_A_5_B;

  architecture Structure of SD_A_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_A_pad_5: sapiobuf0003
      port map (I=>GNDI, PAD=>SDA5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA5_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA5 	<= SDA5_out;


    END PROCESS;

  end Structure;

-- entity SD_A_6_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_6_B");

    port (SDA6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_6_B : ENTITY IS TRUE;

  end SD_A_6_B;

  architecture Structure of SD_A_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_A_pad_6: sapiobuf0003
      port map (I=>GNDI, PAD=>SDA6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA6_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA6 	<= SDA6_out;


    END PROCESS;

  end Structure;

-- entity SD_A_7_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_7_B");

    port (SDA7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_7_B : ENTITY IS TRUE;

  end SD_A_7_B;

  architecture Structure of SD_A_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_A_pad_7: sapiobuf0003
      port map (I=>GNDI, PAD=>SDA7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA7_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA7 	<= SDA7_out;


    END PROCESS;

  end Structure;

-- entity SD_A_8_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_8_B");

    port (SDA8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_8_B : ENTITY IS TRUE;

  end SD_A_8_B;

  architecture Structure of SD_A_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA8_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_A_pad_8: sapiobuf0003
      port map (I=>GNDI, PAD=>SDA8_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA8_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA8 	<= SDA8_out;


    END PROCESS;

  end Structure;

-- entity SD_A_9_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_9_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_9_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA9	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA9: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_9_B : ENTITY IS TRUE;

  end SD_A_9_B;

  architecture Structure of SD_A_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA9_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_9: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>SDA9_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA9_out)
    VARIABLE SDA9_zd         	: std_logic := 'X';
    VARIABLE SDA9_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA9_zd 	:= SDA9_out;

    VitalPathDelay01 (
      OutSignal => SDA9, OutSignalName => "SDA9", OutTemp => SDA9_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA9,
                           PathCondition => TRUE)),
      GlitchData => SDA9_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_A_10_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_10_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_10_B");

    port (SDA10: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_10_B : ENTITY IS TRUE;

  end SD_A_10_B;

  architecture Structure of SD_A_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA10_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0005
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_10: sapiobuf0005
      port map (I=>GNDI, PAD=>SDA10_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA10_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA10 	<= SDA10_out;


    END PROCESS;

  end Structure;

-- entity SD_A_11_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_11_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_11_B");

    port (SDA11: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_11_B : ENTITY IS TRUE;

  end SD_A_11_B;

  architecture Structure of SD_A_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA11_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_A_pad_11: sapiobuf0003
      port map (I=>GNDI, PAD=>SDA11_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA11_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA11 	<= SDA11_out;


    END PROCESS;

  end Structure;

-- entity SD_A_12_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_A_12_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_A_12_B");

    port (SDA12: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_12_B : ENTITY IS TRUE;

  end SD_A_12_B;

  architecture Structure of SD_A_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA12_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_A_pad_12: sapiobuf0003
      port map (I=>GNDI, PAD=>SDA12_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA12_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA12 	<= SDA12_out;


    END PROCESS;

  end Structure;

-- entity SD_CAS_NB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_CAS_NB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_CAS_NB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDCASN	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDCASN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_CAS_NB : ENTITY IS TRUE;

  end SD_CAS_NB;

  architecture Structure of SD_CAS_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDCASN_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_CAS_N_pad: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>SDCASN_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDCASN_out)
    VARIABLE SDCASN_zd         	: std_logic := 'X';
    VARIABLE SDCASN_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDCASN_zd 	:= SDCASN_out;

    VitalPathDelay01 (
      OutSignal => SDCASN, OutSignalName => "SDCASN", OutTemp => SDCASN_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDCASN,
                           PathCondition => TRUE)),
      GlitchData => SDCASN_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_RAS_NB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_RAS_NB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_RAS_NB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDRASN	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDRASN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_RAS_NB : ENTITY IS TRUE;

  end SD_RAS_NB;

  architecture Structure of SD_RAS_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDRASN_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_RAS_N_pad: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>SDRASN_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDRASN_out)
    VARIABLE SDRASN_zd         	: std_logic := 'X';
    VARIABLE SDRASN_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDRASN_zd 	:= SDRASN_out;

    VitalPathDelay01 (
      OutSignal => SDRASN, OutSignalName => "SDRASN", OutTemp => SDRASN_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDRASN,
                           PathCondition => TRUE)),
      GlitchData => SDRASN_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_WE_NB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_WE_NB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_WE_NB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDWEN	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDWEN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_WE_NB : ENTITY IS TRUE;

  end SD_WE_NB;

  architecture Structure of SD_WE_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDWEN_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_WE_N_pad: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>SDWEN_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDWEN_out)
    VARIABLE SDWEN_zd         	: std_logic := 'X';
    VARIABLE SDWEN_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDWEN_zd 	:= SDWEN_out;

    VitalPathDelay01 (
      OutSignal => SDWEN, OutSignalName => "SDWEN", OutTemp => SDWEN_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDWEN,
                           PathCondition => TRUE)),
      GlitchData => SDWEN_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_CS_NB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_CS_NB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_CS_NB");

    port (SDCSN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_CS_NB : ENTITY IS TRUE;

  end SD_CS_NB;

  architecture Structure of SD_CS_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDCSN_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_CS_N_pad: sapiobuf0003
      port map (I=>GNDI, PAD=>SDCSN_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDCSN_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDCSN 	<= SDCSN_out;


    END PROCESS;

  end Structure;

-- entity SD_CLKB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_CLKB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_CLKB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDCLK	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDCLK: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_CLKB : ENTITY IS TRUE;

  end SD_CLKB;

  architecture Structure of SD_CLKB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDCLK_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_CLK_pad: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>SDCLK_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDCLK_out)
    VARIABLE SDCLK_zd         	: std_logic := 'X';
    VARIABLE SDCLK_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDCLK_zd 	:= SDCLK_out;

    VitalPathDelay01 (
      OutSignal => SDCLK, OutSignalName => "SDCLK", OutTemp => SDCLK_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDCLK,
                           PathCondition => TRUE)),
      GlitchData => SDCLK_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQM_0_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQM_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQM_0_B");

    port (SDDQM0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQM_0_B : ENTITY IS TRUE;

  end SD_DQM_0_B;

  architecture Structure of SD_DQM_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQM0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_DQM_pad_0: sapiobuf0003
      port map (I=>GNDI, PAD=>SDDQM0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQM0_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQM0 	<= SDDQM0_out;


    END PROCESS;

  end Structure;

-- entity SD_DQM_1_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQM_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQM_1_B");

    port (SDDQM1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQM_1_B : ENTITY IS TRUE;

  end SD_DQM_1_B;

  architecture Structure of SD_DQM_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQM1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    SD_DQM_pad_1: sapiobuf0003
      port map (I=>GNDI, PAD=>SDDQM1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQM1_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQM1 	<= SDDQM1_out;


    END PROCESS;

  end Structure;

-- entity sapiobuf0006
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0006 is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0006 : ENTITY IS TRUE;

  end sapiobuf0006;

  architecture Structure of sapiobuf0006 is
  begin
    INST5: OBZ
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity inverter
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity inverter is
    port (I: in Std_logic; Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF inverter : ENTITY IS TRUE;

  end inverter;

  architecture Structure of inverter is
  begin
    INST1: INV
      port map (A=>I, Z=>Z);
  end Structure;

-- entity cam_sdaB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity cam_sdaB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "cam_sdaB";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDT_camsda	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDT: in Std_logic; camsda: out Std_logic);

    ATTRIBUTE Vital_Level0 OF cam_sdaB : ENTITY IS TRUE;

  end cam_sdaB;

  architecture Structure of cam_sdaB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDT_ipd 	: std_logic := 'X';
    signal camsda_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal PADDT_NOTIN: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    cam_sda_pad: sapiobuf0006
      port map (I=>GNDI, T=>PADDT_NOTIN, PAD=>camsda_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDT_ipd, camsda_out)
    VARIABLE camsda_zd         	: std_logic := 'X';
    VARIABLE camsda_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    camsda_zd 	:= camsda_out;

    VitalPathDelay01Z (
      OutSignal => camsda, OutSignalName => "camsda", OutTemp => camsda_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_camsda,
                           PathCondition => TRUE)),
      GlitchData => camsda_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0007
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0007 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0007 : ENTITY IS TRUE;

  end sapiobuf0007;

  architecture Structure of sapiobuf0007 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity cam_sclB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity cam_sclB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "cam_sclB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_camscl	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; camscl: out Std_logic);

    ATTRIBUTE Vital_Level0 OF cam_sclB : ENTITY IS TRUE;

  end cam_sclB;

  architecture Structure of cam_sclB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal camscl_out 	: std_logic := 'X';

    component sapiobuf0007
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    cam_scl_pad: sapiobuf0007
      port map (I=>PADDO_ipd, PAD=>camscl_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, camscl_out)
    VARIABLE camscl_zd         	: std_logic := 'X';
    VARIABLE camscl_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    camscl_zd 	:= camscl_out;

    VitalPathDelay01 (
      OutSignal => camscl, OutSignalName => "camscl", OutTemp => camscl_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_camscl,
                           PathCondition => TRUE)),
      GlitchData => camscl_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0008
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0008 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0008 : ENTITY IS TRUE;

  end sapiobuf0008;

  architecture Structure of sapiobuf0008 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity MCLKB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity MCLKB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "MCLKB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_MCLKS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; MCLKS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF MCLKB : ENTITY IS TRUE;

  end MCLKB;

  architecture Structure of MCLKB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal MCLKS_out 	: std_logic := 'X';

    component sapiobuf0008
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    MCLK_pad: sapiobuf0008
      port map (I=>PADDO_ipd, PAD=>MCLKS_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, MCLKS_out)
    VARIABLE MCLKS_zd         	: std_logic := 'X';
    VARIABLE MCLKS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    MCLKS_zd 	:= MCLKS_out;

    VitalPathDelay01 (
      OutSignal => MCLKS, OutSignalName => "MCLKS", OutTemp => MCLKS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_MCLKS,
                           PathCondition => TRUE)),
      GlitchData => MCLKS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity PDPW16KDB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity PDPW16KDB is
    port (CEW: in Std_logic; CLKW: in Std_logic; CSW0: in Std_logic; 
          CSW1: in Std_logic; CSW2: in Std_logic; CER: in Std_logic; 
          OCER: in Std_logic; CLKR: in Std_logic; CSR0: in Std_logic; 
          CSR1: in Std_logic; CSR2: in Std_logic; RST: in Std_logic; 
          BE0: in Std_logic; BE1: in Std_logic; BE2: in Std_logic; 
          BE3: in Std_logic; DI0: in Std_logic; DI1: in Std_logic; 
          DI2: in Std_logic; DI3: in Std_logic; DI4: in Std_logic; 
          DI5: in Std_logic; DI6: in Std_logic; DI7: in Std_logic; 
          DI8: in Std_logic; DI9: in Std_logic; DI10: in Std_logic; 
          DI11: in Std_logic; DI12: in Std_logic; DI13: in Std_logic; 
          DI14: in Std_logic; DI15: in Std_logic; DI16: in Std_logic; 
          DI17: in Std_logic; DI18: in Std_logic; DI19: in Std_logic; 
          DI20: in Std_logic; DI21: in Std_logic; DI22: in Std_logic; 
          DI23: in Std_logic; DI24: in Std_logic; DI25: in Std_logic; 
          DI26: in Std_logic; DI27: in Std_logic; DI28: in Std_logic; 
          DI29: in Std_logic; DI30: in Std_logic; DI31: in Std_logic; 
          DI32: in Std_logic; DI33: in Std_logic; DI34: in Std_logic; 
          DI35: in Std_logic; ADW0: in Std_logic; ADW1: in Std_logic; 
          ADW2: in Std_logic; ADW3: in Std_logic; ADW4: in Std_logic; 
          ADW5: in Std_logic; ADW6: in Std_logic; ADW7: in Std_logic; 
          ADW8: in Std_logic; ADR0: in Std_logic; ADR1: in Std_logic; 
          ADR2: in Std_logic; ADR3: in Std_logic; ADR4: in Std_logic; 
          ADR5: in Std_logic; ADR6: in Std_logic; ADR7: in Std_logic; 
          ADR8: in Std_logic; ADR9: in Std_logic; ADR10: in Std_logic; 
          ADR11: in Std_logic; ADR12: in Std_logic; ADR13: in Std_logic; 
          DO0: out Std_logic; DO1: out Std_logic; DO2: out Std_logic; 
          DO3: out Std_logic; DO4: out Std_logic; DO5: out Std_logic; 
          DO6: out Std_logic; DO7: out Std_logic; DO8: out Std_logic; 
          DO9: out Std_logic; DO10: out Std_logic; DO11: out Std_logic; 
          DO12: out Std_logic; DO13: out Std_logic; DO14: out Std_logic; 
          DO15: out Std_logic; DO16: out Std_logic; DO17: out Std_logic; 
          DO18: out Std_logic; DO19: out Std_logic; DO20: out Std_logic; 
          DO21: out Std_logic; DO22: out Std_logic; DO23: out Std_logic; 
          DO24: out Std_logic; DO25: out Std_logic; DO26: out Std_logic; 
          DO27: out Std_logic; DO28: out Std_logic; DO29: out Std_logic; 
          DO30: out Std_logic; DO31: out Std_logic; DO32: out Std_logic; 
          DO33: out Std_logic; DO34: out Std_logic; DO35: out Std_logic);

    ATTRIBUTE Vital_Level0 OF PDPW16KDB : ENTITY IS TRUE;

  end PDPW16KDB;

  architecture Structure of PDPW16KDB is
  begin
    INST10: PDPW16KD
      generic map (ASYNC_RESET_RELEASE => "SYNC", CSDECODE_R => "0b000", 
                   CSDECODE_W => "0b000", DATA_WIDTH_R => 36, 
                   DATA_WIDTH_W => 36, GSR => "DISABLED", 
                   INITVAL_00 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_01 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_02 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_03 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_04 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_05 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_06 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_07 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_08 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_09 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_10 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_11 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_12 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_13 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_14 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_15 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_16 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_17 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_18 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_19 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_20 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_21 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_22 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_23 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_24 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_25 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_26 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_27 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_28 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_29 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_30 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_31 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_32 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_33 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_34 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_35 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_36 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_37 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_38 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_39 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , INIT_DATA => "STATIC", REGMODE => "NOREG", 
                   RESETMODE => "ASYNC")
      port map (DI0=>DI0, DI1=>DI1, DI2=>DI2, DI3=>DI3, DI4=>DI4, DI5=>DI5, 
                DI6=>DI6, DI7=>DI7, DI8=>DI8, DI9=>DI9, DI10=>DI10, DI11=>DI11, 
                DI12=>DI12, DI13=>DI13, DI14=>DI14, DI15=>DI15, DI16=>DI16, 
                DI17=>DI17, DI18=>DI18, DI19=>DI19, DI20=>DI20, DI21=>DI21, 
                DI22=>DI22, DI23=>DI23, DI24=>DI24, DI25=>DI25, DI26=>DI26, 
                DI27=>DI27, DI28=>DI28, DI29=>DI29, DI30=>DI30, DI31=>DI31, 
                DI32=>DI32, DI33=>DI33, DI34=>DI34, DI35=>DI35, ADW0=>ADW0, 
                ADW1=>ADW1, ADW2=>ADW2, ADW3=>ADW3, ADW4=>ADW4, ADW5=>ADW5, 
                ADW6=>ADW6, ADW7=>ADW7, ADW8=>ADW8, BE0=>BE0, BE1=>BE1, 
                BE2=>BE2, BE3=>BE3, CEW=>CEW, CLKW=>CLKW, CSW0=>CSW0, 
                CSW1=>CSW1, CSW2=>CSW2, ADR0=>ADR0, ADR1=>ADR1, ADR2=>ADR2, 
                ADR3=>ADR3, ADR4=>ADR4, ADR5=>ADR5, ADR6=>ADR6, ADR7=>ADR7, 
                ADR8=>ADR8, ADR9=>ADR9, ADR10=>ADR10, ADR11=>ADR11, 
                ADR12=>ADR12, ADR13=>ADR13, CER=>CER, OCER=>OCER, CLKR=>CLKR, 
                CSR0=>CSR0, CSR1=>CSR1, CSR2=>CSR2, RST=>RST, DO0=>DO0, 
                DO1=>DO1, DO2=>DO2, DO3=>DO3, DO4=>DO4, DO5=>DO5, DO6=>DO6, 
                DO7=>DO7, DO8=>DO8, DO9=>DO9, DO10=>DO10, DO11=>DO11, 
                DO12=>DO12, DO13=>DO13, DO14=>DO14, DO15=>DO15, DO16=>DO16, 
                DO17=>DO17, DO18=>DO18, DO19=>DO19, DO20=>DO20, DO21=>DO21, 
                DO22=>DO22, DO23=>DO23, DO24=>DO24, DO25=>DO25, DO26=>DO26, 
                DO27=>DO27, DO28=>DO28, DO29=>DO29, DO30=>DO30, DO31=>DO31, 
                DO32=>DO32, DO33=>DO33, DO34=>DO34, DO35=>DO35);
  end Structure;

-- entity u_cam_cfg_u_rom_mux_871
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_cam_cfg_u_rom_mux_871 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_cam_cfg_u_rom_mux_871";

      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB13  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB5	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB6	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB7	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB8	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB9	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB10	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB11	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB12	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB13	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB14	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB15	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB16	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB17	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLKB	: VitalDelayType := 0 ns;
      tisd_CEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB5_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB5_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB5_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB6_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB6_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB6_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB7_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB7_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB7_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB8_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB8_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB8_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB9_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB9_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB9_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB10_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB10_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB10_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB11_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB11_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB11_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB12_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB12_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB12_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB13_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB13_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB13_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (DOA4: out Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
          DOA1: out Std_logic; DOA0: out Std_logic; CLKB: in Std_logic; 
          CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
          DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
          DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
          DOB8: out Std_logic; DOB9: out Std_logic; DOB10: out Std_logic; 
          DOB11: out Std_logic; DOB12: out Std_logic; DOB13: out Std_logic; 
          DOB14: out Std_logic; DOB15: out Std_logic; DOB16: out Std_logic; 
          DOB17: out Std_logic; ADB5: in Std_logic; ADB6: in Std_logic; 
          ADB7: in Std_logic; ADB8: in Std_logic; ADB9: in Std_logic; 
          ADB10: in Std_logic; ADB11: in Std_logic; ADB12: in Std_logic; 
          ADB13: in Std_logic);

    ATTRIBUTE Vital_Level0 OF u_cam_cfg_u_rom_mux_871 : ENTITY IS TRUE;

  end u_cam_cfg_u_rom_mux_871;

  architecture Structure of u_cam_cfg_u_rom_mux_871 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DOA4_out 	: std_logic := 'X';
    signal DOA3_out 	: std_logic := 'X';
    signal DOA2_out 	: std_logic := 'X';
    signal DOA1_out 	: std_logic := 'X';
    signal DOA0_out 	: std_logic := 'X';
    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
    signal CEB_ipd 	: std_logic := 'X';
    signal CEB_dly 	: std_logic := 'X';
    signal DOB0_out 	: std_logic := 'X';
    signal DOB1_out 	: std_logic := 'X';
    signal DOB2_out 	: std_logic := 'X';
    signal DOB3_out 	: std_logic := 'X';
    signal DOB4_out 	: std_logic := 'X';
    signal DOB5_out 	: std_logic := 'X';
    signal DOB6_out 	: std_logic := 'X';
    signal DOB7_out 	: std_logic := 'X';
    signal DOB8_out 	: std_logic := 'X';
    signal DOB9_out 	: std_logic := 'X';
    signal DOB10_out 	: std_logic := 'X';
    signal DOB11_out 	: std_logic := 'X';
    signal DOB12_out 	: std_logic := 'X';
    signal DOB13_out 	: std_logic := 'X';
    signal DOB14_out 	: std_logic := 'X';
    signal DOB15_out 	: std_logic := 'X';
    signal DOB16_out 	: std_logic := 'X';
    signal DOB17_out 	: std_logic := 'X';
    signal ADB5_ipd 	: std_logic := 'X';
    signal ADB5_dly 	: std_logic := 'X';
    signal ADB6_ipd 	: std_logic := 'X';
    signal ADB6_dly 	: std_logic := 'X';
    signal ADB7_ipd 	: std_logic := 'X';
    signal ADB7_dly 	: std_logic := 'X';
    signal ADB8_ipd 	: std_logic := 'X';
    signal ADB8_dly 	: std_logic := 'X';
    signal ADB9_ipd 	: std_logic := 'X';
    signal ADB9_dly 	: std_logic := 'X';
    signal ADB10_ipd 	: std_logic := 'X';
    signal ADB10_dly 	: std_logic := 'X';
    signal ADB11_ipd 	: std_logic := 'X';
    signal ADB11_dly 	: std_logic := 'X';
    signal ADB12_ipd 	: std_logic := 'X';
    signal ADB12_dly 	: std_logic := 'X';
    signal ADB13_ipd 	: std_logic := 'X';
    signal ADB13_dly 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component PDPW16KDB
      port (CEW: in Std_logic; CLKW: in Std_logic; CSW0: in Std_logic; 
            CSW1: in Std_logic; CSW2: in Std_logic; CER: in Std_logic; 
            OCER: in Std_logic; CLKR: in Std_logic; CSR0: in Std_logic; 
            CSR1: in Std_logic; CSR2: in Std_logic; RST: in Std_logic; 
            BE0: in Std_logic; BE1: in Std_logic; BE2: in Std_logic; 
            BE3: in Std_logic; DI0: in Std_logic; DI1: in Std_logic; 
            DI2: in Std_logic; DI3: in Std_logic; DI4: in Std_logic; 
            DI5: in Std_logic; DI6: in Std_logic; DI7: in Std_logic; 
            DI8: in Std_logic; DI9: in Std_logic; DI10: in Std_logic; 
            DI11: in Std_logic; DI12: in Std_logic; DI13: in Std_logic; 
            DI14: in Std_logic; DI15: in Std_logic; DI16: in Std_logic; 
            DI17: in Std_logic; DI18: in Std_logic; DI19: in Std_logic; 
            DI20: in Std_logic; DI21: in Std_logic; DI22: in Std_logic; 
            DI23: in Std_logic; DI24: in Std_logic; DI25: in Std_logic; 
            DI26: in Std_logic; DI27: in Std_logic; DI28: in Std_logic; 
            DI29: in Std_logic; DI30: in Std_logic; DI31: in Std_logic; 
            DI32: in Std_logic; DI33: in Std_logic; DI34: in Std_logic; 
            DI35: in Std_logic; ADW0: in Std_logic; ADW1: in Std_logic; 
            ADW2: in Std_logic; ADW3: in Std_logic; ADW4: in Std_logic; 
            ADW5: in Std_logic; ADW6: in Std_logic; ADW7: in Std_logic; 
            ADW8: in Std_logic; ADR0: in Std_logic; ADR1: in Std_logic; 
            ADR2: in Std_logic; ADR3: in Std_logic; ADR4: in Std_logic; 
            ADR5: in Std_logic; ADR6: in Std_logic; ADR7: in Std_logic; 
            ADR8: in Std_logic; ADR9: in Std_logic; ADR10: in Std_logic; 
            ADR11: in Std_logic; ADR12: in Std_logic; ADR13: in Std_logic; 
            DO0: out Std_logic; DO1: out Std_logic; DO2: out Std_logic; 
            DO3: out Std_logic; DO4: out Std_logic; DO5: out Std_logic; 
            DO6: out Std_logic; DO7: out Std_logic; DO8: out Std_logic; 
            DO9: out Std_logic; DO10: out Std_logic; DO11: out Std_logic; 
            DO12: out Std_logic; DO13: out Std_logic; DO14: out Std_logic; 
            DO15: out Std_logic; DO16: out Std_logic; DO17: out Std_logic; 
            DO18: out Std_logic; DO19: out Std_logic; DO20: out Std_logic; 
            DO21: out Std_logic; DO22: out Std_logic; DO23: out Std_logic; 
            DO24: out Std_logic; DO25: out Std_logic; DO26: out Std_logic; 
            DO27: out Std_logic; DO28: out Std_logic; DO29: out Std_logic; 
            DO30: out Std_logic; DO31: out Std_logic; DO32: out Std_logic; 
            DO33: out Std_logic; DO34: out Std_logic; DO35: out Std_logic);
    end component;
  begin
    u_cam_cfg_u_rom_mux_871_PDPW16KD: PDPW16KDB
      port map (CEW=>VCCI, CLKW=>GNDI, CSW0=>GNDI, CSW1=>GNDI, CSW2=>GNDI, 
                CER=>CEB_dly, OCER=>VCCI, CLKR=>CLKB_dly, CSR0=>GNDI, 
                CSR1=>GNDI, CSR2=>GNDI, RST=>GNDI, BE0=>GNDI, BE1=>GNDI, 
                BE2=>GNDI, BE3=>GNDI, DI0=>GNDI, DI1=>GNDI, DI2=>GNDI, 
                DI3=>GNDI, DI4=>GNDI, DI5=>GNDI, DI6=>GNDI, DI7=>GNDI, 
                DI8=>GNDI, DI9=>GNDI, DI10=>GNDI, DI11=>GNDI, DI12=>GNDI, 
                DI13=>GNDI, DI14=>GNDI, DI15=>GNDI, DI16=>GNDI, DI17=>GNDI, 
                DI18=>GNDI, DI19=>GNDI, DI20=>GNDI, DI21=>GNDI, DI22=>GNDI, 
                DI23=>GNDI, DI24=>GNDI, DI25=>GNDI, DI26=>GNDI, DI27=>GNDI, 
                DI28=>GNDI, DI29=>GNDI, DI30=>GNDI, DI31=>GNDI, DI32=>GNDI, 
                DI33=>GNDI, DI34=>GNDI, DI35=>GNDI, ADW0=>GNDI, ADW1=>GNDI, 
                ADW2=>GNDI, ADW3=>GNDI, ADW4=>GNDI, ADW5=>GNDI, ADW6=>GNDI, 
                ADW7=>GNDI, ADW8=>GNDI, ADR0=>GNDI, ADR1=>GNDI, ADR2=>GNDI, 
                ADR3=>GNDI, ADR4=>GNDI, ADR5=>ADB5_dly, ADR6=>ADB6_dly, 
                ADR7=>ADB7_dly, ADR8=>ADB8_dly, ADR9=>ADB9_dly, 
                ADR10=>ADB10_dly, ADR11=>ADB11_dly, ADR12=>ADB12_dly, 
                ADR13=>ADB13_dly, DO0=>DOB0_out, DO1=>DOB1_out, DO2=>DOB2_out, 
                DO3=>DOB3_out, DO4=>DOB4_out, DO5=>DOB5_out, DO6=>DOB6_out, 
                DO7=>DOB7_out, DO8=>DOB8_out, DO9=>DOB9_out, DO10=>DOB10_out, 
                DO11=>DOB11_out, DO12=>DOB12_out, DO13=>DOB13_out, 
                DO14=>DOB14_out, DO15=>DOB15_out, DO16=>DOB16_out, 
                DO17=>DOB17_out, DO18=>DOA0_out, DO19=>DOA1_out, 
                DO20=>DOA2_out, DO21=>DOA3_out, DO22=>DOA4_out, DO23=>open, 
                DO24=>open, DO25=>open, DO26=>open, DO27=>open, DO28=>open, 
                DO29=>open, DO30=>open, DO31=>open, DO32=>open, DO33=>open, 
                DO34=>open, DO35=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
      VitalWireDelay(CEB_ipd, CEB, tipd_CEB);
      VitalWireDelay(ADB5_ipd, ADB5, tipd_ADB5);
      VitalWireDelay(ADB6_ipd, ADB6, tipd_ADB6);
      VitalWireDelay(ADB7_ipd, ADB7, tipd_ADB7);
      VitalWireDelay(ADB8_ipd, ADB8, tipd_ADB8);
      VitalWireDelay(ADB9_ipd, ADB9, tipd_ADB9);
      VitalWireDelay(ADB10_ipd, ADB10, tipd_ADB10);
      VitalWireDelay(ADB11_ipd, ADB11, tipd_ADB11);
      VitalWireDelay(ADB12_ipd, ADB12, tipd_ADB12);
      VitalWireDelay(ADB13_ipd, ADB13, tipd_ADB13);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
      VitalSignalDelay(CEB_dly, CEB_ipd, tisd_CEB_CLKB);
      VitalSignalDelay(ADB5_dly, ADB5_ipd, tisd_ADB5_CLKB);
      VitalSignalDelay(ADB6_dly, ADB6_ipd, tisd_ADB6_CLKB);
      VitalSignalDelay(ADB7_dly, ADB7_ipd, tisd_ADB7_CLKB);
      VitalSignalDelay(ADB8_dly, ADB8_ipd, tisd_ADB8_CLKB);
      VitalSignalDelay(ADB9_dly, ADB9_ipd, tisd_ADB9_CLKB);
      VitalSignalDelay(ADB10_dly, ADB10_ipd, tisd_ADB10_CLKB);
      VitalSignalDelay(ADB11_dly, ADB11_ipd, tisd_ADB11_CLKB);
      VitalSignalDelay(ADB12_dly, ADB12_ipd, tisd_ADB12_CLKB);
      VitalSignalDelay(ADB13_dly, ADB13_ipd, tisd_ADB13_CLKB);
    END BLOCK;

    VitalBehavior : PROCESS (DOA4_out, DOA3_out, DOA2_out, DOA1_out, DOA0_out, 
      CLKB_dly, CEB_dly, DOB0_out, DOB1_out, DOB2_out, DOB3_out, DOB4_out, 
      DOB5_out, DOB6_out, DOB7_out, DOB8_out, DOB9_out, DOB10_out, DOB11_out, 
      DOB12_out, DOB13_out, DOB14_out, DOB15_out, DOB16_out, DOB17_out, 
      ADB5_dly, ADB6_dly, ADB7_dly, ADB8_dly, ADB9_dly, ADB10_dly, ADB11_dly, 
      ADB12_dly, ADB13_dly)
    VARIABLE DOA4_zd         	: std_logic := 'X';
    VARIABLE DOA4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA3_zd         	: std_logic := 'X';
    VARIABLE DOA3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA2_zd         	: std_logic := 'X';
    VARIABLE DOA2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA1_zd         	: std_logic := 'X';
    VARIABLE DOA1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA0_zd         	: std_logic := 'X';
    VARIABLE DOA0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB0_zd         	: std_logic := 'X';
    VARIABLE DOB0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB1_zd         	: std_logic := 'X';
    VARIABLE DOB1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB2_zd         	: std_logic := 'X';
    VARIABLE DOB2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB3_zd         	: std_logic := 'X';
    VARIABLE DOB3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB4_zd         	: std_logic := 'X';
    VARIABLE DOB4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB5_zd         	: std_logic := 'X';
    VARIABLE DOB5_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB6_zd         	: std_logic := 'X';
    VARIABLE DOB6_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB7_zd         	: std_logic := 'X';
    VARIABLE DOB7_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB8_zd         	: std_logic := 'X';
    VARIABLE DOB8_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB9_zd         	: std_logic := 'X';
    VARIABLE DOB9_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB10_zd         	: std_logic := 'X';
    VARIABLE DOB10_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB11_zd         	: std_logic := 'X';
    VARIABLE DOB11_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB12_zd         	: std_logic := 'X';
    VARIABLE DOB12_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB13_zd         	: std_logic := 'X';
    VARIABLE DOB13_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB14_zd         	: std_logic := 'X';
    VARIABLE DOB14_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB15_zd         	: std_logic := 'X';
    VARIABLE DOB15_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB16_zd         	: std_logic := 'X';
    VARIABLE DOB16_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB17_zd         	: std_logic := 'X';
    VARIABLE DOB17_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_CEB_CLKB       	: x01 := '0';
    VARIABLE CEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB5_CLKB       	: x01 := '0';
    VARIABLE ADB5_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB6_CLKB       	: x01 := '0';
    VARIABLE ADB6_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB7_CLKB       	: x01 := '0';
    VARIABLE ADB7_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB8_CLKB       	: x01 := '0';
    VARIABLE ADB8_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB9_CLKB       	: x01 := '0';
    VARIABLE ADB9_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB10_CLKB       	: x01 := '0';
    VARIABLE ADB10_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB11_CLKB       	: x01 := '0';
    VARIABLE ADB11_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB12_CLKB       	: x01 := '0';
    VARIABLE ADB12_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB13_CLKB       	: x01 := '0';
    VARIABLE ADB13_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => CEB_dly,
        TestSignalName => "CEB",
        TestDelay => tisd_CEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CEB_CLKB_noedge_posedge,
        SetupLow => tsetup_CEB_CLKB_noedge_posedge,
        HoldHigh => thold_CEB_CLKB_noedge_posedge,
        HoldLow => thold_CEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEB_CLKB_TimingDatash,
        Violation => tviol_CEB_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB5_dly,
        TestSignalName => "ADB5",
        TestDelay => tisd_ADB5_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB5_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB5_CLKB_noedge_posedge,
        HoldHigh => thold_ADB5_CLKB_noedge_posedge,
        HoldLow => thold_ADB5_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB5_CLKB_TimingDatash,
        Violation => tviol_ADB5_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB6_dly,
        TestSignalName => "ADB6",
        TestDelay => tisd_ADB6_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB6_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB6_CLKB_noedge_posedge,
        HoldHigh => thold_ADB6_CLKB_noedge_posedge,
        HoldLow => thold_ADB6_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB6_CLKB_TimingDatash,
        Violation => tviol_ADB6_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB7_dly,
        TestSignalName => "ADB7",
        TestDelay => tisd_ADB7_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB7_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB7_CLKB_noedge_posedge,
        HoldHigh => thold_ADB7_CLKB_noedge_posedge,
        HoldLow => thold_ADB7_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB7_CLKB_TimingDatash,
        Violation => tviol_ADB7_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB8_dly,
        TestSignalName => "ADB8",
        TestDelay => tisd_ADB8_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB8_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB8_CLKB_noedge_posedge,
        HoldHigh => thold_ADB8_CLKB_noedge_posedge,
        HoldLow => thold_ADB8_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB8_CLKB_TimingDatash,
        Violation => tviol_ADB8_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB9_dly,
        TestSignalName => "ADB9",
        TestDelay => tisd_ADB9_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB9_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB9_CLKB_noedge_posedge,
        HoldHigh => thold_ADB9_CLKB_noedge_posedge,
        HoldLow => thold_ADB9_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB9_CLKB_TimingDatash,
        Violation => tviol_ADB9_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB10_dly,
        TestSignalName => "ADB10",
        TestDelay => tisd_ADB10_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB10_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB10_CLKB_noedge_posedge,
        HoldHigh => thold_ADB10_CLKB_noedge_posedge,
        HoldLow => thold_ADB10_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB10_CLKB_TimingDatash,
        Violation => tviol_ADB10_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB11_dly,
        TestSignalName => "ADB11",
        TestDelay => tisd_ADB11_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB11_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB11_CLKB_noedge_posedge,
        HoldHigh => thold_ADB11_CLKB_noedge_posedge,
        HoldLow => thold_ADB11_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB11_CLKB_TimingDatash,
        Violation => tviol_ADB11_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB12_dly,
        TestSignalName => "ADB12",
        TestDelay => tisd_ADB12_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB12_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB12_CLKB_noedge_posedge,
        HoldHigh => thold_ADB12_CLKB_noedge_posedge,
        HoldLow => thold_ADB12_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB12_CLKB_TimingDatash,
        Violation => tviol_ADB12_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB13_dly,
        TestSignalName => "ADB13",
        TestDelay => tisd_ADB13_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB13_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB13_CLKB_noedge_posedge,
        HoldHigh => thold_ADB13_CLKB_noedge_posedge,
        HoldLow => thold_ADB13_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB13_CLKB_TimingDatash,
        Violation => tviol_ADB13_CLKB,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKB_ipd,
        TestSignalName => "CLKB",
        Period => tperiod_CLKB,
        PulseWidthHigh => tpw_CLKB_posedge,
        PulseWidthLow => tpw_CLKB_negedge,
        PeriodData => periodcheckinfo_CLKB,
        Violation => tviol_CLKB_CLKB,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOA4_zd 	:= DOA4_out;
    DOA3_zd 	:= DOA3_out;
    DOA2_zd 	:= DOA2_out;
    DOA1_zd 	:= DOA1_out;
    DOA0_zd 	:= DOA0_out;
    DOB0_zd 	:= DOB0_out;
    DOB1_zd 	:= DOB1_out;
    DOB2_zd 	:= DOB2_out;
    DOB3_zd 	:= DOB3_out;
    DOB4_zd 	:= DOB4_out;
    DOB5_zd 	:= DOB5_out;
    DOB6_zd 	:= DOB6_out;
    DOB7_zd 	:= DOB7_out;
    DOB8_zd 	:= DOB8_out;
    DOB9_zd 	:= DOB9_out;
    DOB10_zd 	:= DOB10_out;
    DOB11_zd 	:= DOB11_out;
    DOB12_zd 	:= DOB12_out;
    DOB13_zd 	:= DOB13_out;
    DOB14_zd 	:= DOB14_out;
    DOB15_zd 	:= DOB15_out;
    DOB16_zd 	:= DOB16_out;
    DOB17_zd 	:= DOB17_out;

    VitalPathDelay01 (
      OutSignal => DOA4, OutSignalName => "DOA4", OutTemp => DOA4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA4,
                           PathCondition => TRUE)),
      GlitchData => DOA4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA3, OutSignalName => "DOA3", OutTemp => DOA3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA3,
                           PathCondition => TRUE)),
      GlitchData => DOA3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA2, OutSignalName => "DOA2", OutTemp => DOA2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA2,
                           PathCondition => TRUE)),
      GlitchData => DOA2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA1, OutSignalName => "DOA1", OutTemp => DOA1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA1,
                           PathCondition => TRUE)),
      GlitchData => DOA1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA0, OutSignalName => "DOA0", OutTemp => DOA0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA0,
                           PathCondition => TRUE)),
      GlitchData => DOA0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB0, OutSignalName => "DOB0", OutTemp => DOB0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB0,
                           PathCondition => TRUE)),
      GlitchData => DOB0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB1, OutSignalName => "DOB1", OutTemp => DOB1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB1,
                           PathCondition => TRUE)),
      GlitchData => DOB1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB2, OutSignalName => "DOB2", OutTemp => DOB2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB2,
                           PathCondition => TRUE)),
      GlitchData => DOB2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB3, OutSignalName => "DOB3", OutTemp => DOB3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB3,
                           PathCondition => TRUE)),
      GlitchData => DOB3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB4, OutSignalName => "DOB4", OutTemp => DOB4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB4,
                           PathCondition => TRUE)),
      GlitchData => DOB4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB5, OutSignalName => "DOB5", OutTemp => DOB5_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB5,
                           PathCondition => TRUE)),
      GlitchData => DOB5_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB6, OutSignalName => "DOB6", OutTemp => DOB6_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB6,
                           PathCondition => TRUE)),
      GlitchData => DOB6_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB7, OutSignalName => "DOB7", OutTemp => DOB7_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB7,
                           PathCondition => TRUE)),
      GlitchData => DOB7_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB8, OutSignalName => "DOB8", OutTemp => DOB8_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB8,
                           PathCondition => TRUE)),
      GlitchData => DOB8_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB9, OutSignalName => "DOB9", OutTemp => DOB9_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB9,
                           PathCondition => TRUE)),
      GlitchData => DOB9_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB10, OutSignalName => "DOB10", OutTemp => DOB10_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB10,
                           PathCondition => TRUE)),
      GlitchData => DOB10_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB11, OutSignalName => "DOB11", OutTemp => DOB11_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB11,
                           PathCondition => TRUE)),
      GlitchData => DOB11_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB12, OutSignalName => "DOB12", OutTemp => DOB12_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB12,
                           PathCondition => TRUE)),
      GlitchData => DOB12_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB13, OutSignalName => "DOB13", OutTemp => DOB13_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB13,
                           PathCondition => TRUE)),
      GlitchData => DOB13_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB14, OutSignalName => "DOB14", OutTemp => DOB14_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB14,
                           PathCondition => TRUE)),
      GlitchData => DOB14_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB15, OutSignalName => "DOB15", OutTemp => DOB15_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB15,
                           PathCondition => TRUE)),
      GlitchData => DOB15_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB16, OutSignalName => "DOB16", OutTemp => DOB16_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB16,
                           PathCondition => TRUE)),
      GlitchData => DOB16_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB17, OutSignalName => "DOB17", OutTemp => DOB17_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB17,
                           PathCondition => TRUE)),
      GlitchData => DOB17_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity PDPW16KD0009
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity PDPW16KD0009 is
    port (CEW: in Std_logic; CLKW: in Std_logic; CSW0: in Std_logic; 
          CSW1: in Std_logic; CSW2: in Std_logic; CER: in Std_logic; 
          OCER: in Std_logic; CLKR: in Std_logic; CSR0: in Std_logic; 
          CSR1: in Std_logic; CSR2: in Std_logic; RST: in Std_logic; 
          BE0: in Std_logic; BE1: in Std_logic; BE2: in Std_logic; 
          BE3: in Std_logic; DI0: in Std_logic; DI1: in Std_logic; 
          DI2: in Std_logic; DI3: in Std_logic; DI4: in Std_logic; 
          DI5: in Std_logic; DI6: in Std_logic; DI7: in Std_logic; 
          DI8: in Std_logic; DI9: in Std_logic; DI10: in Std_logic; 
          DI11: in Std_logic; DI12: in Std_logic; DI13: in Std_logic; 
          DI14: in Std_logic; DI15: in Std_logic; DI16: in Std_logic; 
          DI17: in Std_logic; DI18: in Std_logic; DI19: in Std_logic; 
          DI20: in Std_logic; DI21: in Std_logic; DI22: in Std_logic; 
          DI23: in Std_logic; DI24: in Std_logic; DI25: in Std_logic; 
          DI26: in Std_logic; DI27: in Std_logic; DI28: in Std_logic; 
          DI29: in Std_logic; DI30: in Std_logic; DI31: in Std_logic; 
          DI32: in Std_logic; DI33: in Std_logic; DI34: in Std_logic; 
          DI35: in Std_logic; ADW0: in Std_logic; ADW1: in Std_logic; 
          ADW2: in Std_logic; ADW3: in Std_logic; ADW4: in Std_logic; 
          ADW5: in Std_logic; ADW6: in Std_logic; ADW7: in Std_logic; 
          ADW8: in Std_logic; ADR0: in Std_logic; ADR1: in Std_logic; 
          ADR2: in Std_logic; ADR3: in Std_logic; ADR4: in Std_logic; 
          ADR5: in Std_logic; ADR6: in Std_logic; ADR7: in Std_logic; 
          ADR8: in Std_logic; ADR9: in Std_logic; ADR10: in Std_logic; 
          ADR11: in Std_logic; ADR12: in Std_logic; ADR13: in Std_logic; 
          DO0: out Std_logic; DO1: out Std_logic; DO2: out Std_logic; 
          DO3: out Std_logic; DO4: out Std_logic; DO5: out Std_logic; 
          DO6: out Std_logic; DO7: out Std_logic; DO8: out Std_logic; 
          DO9: out Std_logic; DO10: out Std_logic; DO11: out Std_logic; 
          DO12: out Std_logic; DO13: out Std_logic; DO14: out Std_logic; 
          DO15: out Std_logic; DO16: out Std_logic; DO17: out Std_logic; 
          DO18: out Std_logic; DO19: out Std_logic; DO20: out Std_logic; 
          DO21: out Std_logic; DO22: out Std_logic; DO23: out Std_logic; 
          DO24: out Std_logic; DO25: out Std_logic; DO26: out Std_logic; 
          DO27: out Std_logic; DO28: out Std_logic; DO29: out Std_logic; 
          DO30: out Std_logic; DO31: out Std_logic; DO32: out Std_logic; 
          DO33: out Std_logic; DO34: out Std_logic; DO35: out Std_logic);

    ATTRIBUTE Vital_Level0 OF PDPW16KD0009 : ENTITY IS TRUE;

  end PDPW16KD0009;

  architecture Structure of PDPW16KD0009 is
  begin
    INST10: PDPW16KD
      generic map (ASYNC_RESET_RELEASE => "SYNC", CSDECODE_R => "0b000", 
                   CSDECODE_W => "0b000", DATA_WIDTH_R => 36, 
                   DATA_WIDTH_W => 36, GSR => "DISABLED", 
                   INITVAL_00 => "0x30C200001030B350001000E580000602CC200006018FF00006017FF0000608303000060084200006"
                   , 
                   INITVAL_01 => "0x005F700006004EF000060021C000060010800006000100000602E000000602402000070372200011"
                   , 
                   INITVAL_02 => "0x02500000120030800012001A700012000A70001201F00000121803000010007E700006006E300006"
                   , 
                   INITVAL_03 => "0x2091C000072080000007207080000720600000072059800007204280000720100000072000400007"
                   , 
                   INITVAL_04 => "0x103FF000071023F00007117030000710530000071007800007283000000620B400000720A9C00007"
                   , 
                   INITVAL_05 => "0x10D040000710E030000710BF60000710A000000710927000071080100007115FF000071143F00007"
                   , 
                   INITVAL_06 => "0x021010000701531000070143100007119F8000071180000007113430000711F14000071116000007"
                   , 
                   INITVAL_07 => "0x20704000100040200010001020001038C03000063895200006388640000631229000063180000006"
                   , 
                   INITVAL_08 => "0x0010000007000000000708801000060371300006036460000603521000060341A000060398000006"
                   , 
                   INITVAL_09 => "0x009800000700802000070079B0000700607000070053F000070040A0000700304000070020000007"
                   , 
                   INITVAL_0A => "0x0111000007010000000700FD80000700E030000700D680000700C070000700BE00000700A0100007"
                   , 
                   INITVAL_0B => "0x384A000006321E0000063331200006332E2000063310E00006330360000601306000070120000007"
                   , 
                   INITVAL_0C => "0x0810A00007086100000708502000073851A0000638B6000006397010000639578000063835A00006"
                   , 
                   INITVAL_0D => "0x335130000639C500001039B2000006320520000602D6000006301330000630008000063B11200006"
                   , 
                   INITVAL_0E => "0x0C425000120C314000120C200000120C1F2000120C0FF00012322010000633440000063360300006"
                   , 
                   INITVAL_0F => "0x0CCA7000120CBE3000120CA5D000120C980000120C80F000120C70F000120C60F000120C52400012"
                   , 
                   INITVAL_10 => "0x0D4F0000120D370000120D204000120D1F8000120D04E000120CF5E000120CE33000120CD4000012"
                   , 
                   INITVAL_11 => "0x0DC04000120DB00000120DA04000120D9D0000120D806000120D701000120D603000120D5F000012"
                   , 
                   INITVAL_12 => "0x1C688000121C57E000121C40A000121C308000121C25B000121C11E000120DE38000120DD8700012"
                   , 
                   INITVAL_13 => "0x1821000012181300001218008000121CB98000121CA01000121C910000121C86C000121C77C00012"
                   , 
                   INITVAL_14 => "0x18B040001218A3000012189080001218716000121860800012185300001218408000121830000012"
                   , 
                   INITVAL_15 => "0x246710001224565000122445100012243280001224214000122410800012240010001218C0600012"
                   , 
                   INITVAL_16 => "0x24EDD0001224DCD0001224CB80001224BAA0001224A9A00012249910001224887000122477D00012"
                   , 
                   INITVAL_17 => "0x2C910000122C410000122C340000122C809000122C705000122C004000122501D0001224FEA00012"
                   , 
                   INITVAL_18 => "0x0053A000130041E00013003160001300217000130011F000130003D000132CBF8000122CA0000012"
                   , 
                   INITVAL_19 => "0x00D040001300C0B0001300B110001300A0A00013009060001300807000130070A000130061400013"
                   , 
                   INITVAL_1A => "0x0150000013014000001301304000130120B000130110A00013010040001300F000001300E0000013"
                   , 
                   INITVAL_1B => "0x01D120001301C090001301B060001301A06000130190A0001301814000130170A000130160400013"
                   , 
                   INITVAL_1C => "0x025360001302437000130233B000130221F000130211700013020180001301F210001301E3D00013"
                   , 
                   INITVAL_1D => "0x02D260001302C240001302B340001302A25000130293500013028370001302725000130262800013"
                   , 
                   INITVAL_1E => "0x03534000130343500013033360001303216000130314200013030500001302F320001302E2600013"
                   , 
                   INITVAL_1F => "0x03DCE0001303C370001303B360001303A28000130393600013038260001303726000130363400013"
                   , 
                   INITVAL_20 => "0x0000000000000000000000000000000000000000000000000000000000003FFFF0001F0080200006"
                   , 
                   INITVAL_21 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_22 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_23 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_24 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_25 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_26 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_27 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_28 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_29 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_30 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_31 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_32 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_33 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_34 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_35 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_36 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_37 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_38 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_39 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , INIT_DATA => "STATIC", REGMODE => "NOREG", 
                   RESETMODE => "ASYNC")
      port map (DI0=>DI0, DI1=>DI1, DI2=>DI2, DI3=>DI3, DI4=>DI4, DI5=>DI5, 
                DI6=>DI6, DI7=>DI7, DI8=>DI8, DI9=>DI9, DI10=>DI10, DI11=>DI11, 
                DI12=>DI12, DI13=>DI13, DI14=>DI14, DI15=>DI15, DI16=>DI16, 
                DI17=>DI17, DI18=>DI18, DI19=>DI19, DI20=>DI20, DI21=>DI21, 
                DI22=>DI22, DI23=>DI23, DI24=>DI24, DI25=>DI25, DI26=>DI26, 
                DI27=>DI27, DI28=>DI28, DI29=>DI29, DI30=>DI30, DI31=>DI31, 
                DI32=>DI32, DI33=>DI33, DI34=>DI34, DI35=>DI35, ADW0=>ADW0, 
                ADW1=>ADW1, ADW2=>ADW2, ADW3=>ADW3, ADW4=>ADW4, ADW5=>ADW5, 
                ADW6=>ADW6, ADW7=>ADW7, ADW8=>ADW8, BE0=>BE0, BE1=>BE1, 
                BE2=>BE2, BE3=>BE3, CEW=>CEW, CLKW=>CLKW, CSW0=>CSW0, 
                CSW1=>CSW1, CSW2=>CSW2, ADR0=>ADR0, ADR1=>ADR1, ADR2=>ADR2, 
                ADR3=>ADR3, ADR4=>ADR4, ADR5=>ADR5, ADR6=>ADR6, ADR7=>ADR7, 
                ADR8=>ADR8, ADR9=>ADR9, ADR10=>ADR10, ADR11=>ADR11, 
                ADR12=>ADR12, ADR13=>ADR13, CER=>CER, OCER=>OCER, CLKR=>CLKR, 
                CSR0=>CSR0, CSR1=>CSR1, CSR2=>CSR2, RST=>RST, DO0=>DO0, 
                DO1=>DO1, DO2=>DO2, DO3=>DO3, DO4=>DO4, DO5=>DO5, DO6=>DO6, 
                DO7=>DO7, DO8=>DO8, DO9=>DO9, DO10=>DO10, DO11=>DO11, 
                DO12=>DO12, DO13=>DO13, DO14=>DO14, DO15=>DO15, DO16=>DO16, 
                DO17=>DO17, DO18=>DO18, DO19=>DO19, DO20=>DO20, DO21=>DO21, 
                DO22=>DO22, DO23=>DO23, DO24=>DO24, DO25=>DO25, DO26=>DO26, 
                DO27=>DO27, DO28=>DO28, DO29=>DO29, DO30=>DO30, DO31=>DO31, 
                DO32=>DO32, DO33=>DO33, DO34=>DO34, DO35=>DO35);
  end Structure;

-- entity u_cam_cfg_u_rom_mux_867
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_cam_cfg_u_rom_mux_867 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_cam_cfg_u_rom_mux_867";

      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB13  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB5	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB6	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB7	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB8	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB9	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB10	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB11	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB12	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB13	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB14	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB15	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB16	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB17	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLKB	: VitalDelayType := 0 ns;
      tisd_CEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB5_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB5_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB5_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB6_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB6_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB6_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB7_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB7_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB7_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB8_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB8_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB8_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB9_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB9_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB9_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB10_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB10_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB10_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB11_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB11_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB11_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB12_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB12_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB12_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB13_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB13_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB13_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (DOA4: out Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
          DOA1: out Std_logic; DOA0: out Std_logic; CLKB: in Std_logic; 
          CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
          DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
          DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
          DOB8: out Std_logic; DOB9: out Std_logic; DOB10: out Std_logic; 
          DOB11: out Std_logic; DOB12: out Std_logic; DOB13: out Std_logic; 
          DOB14: out Std_logic; DOB15: out Std_logic; DOB16: out Std_logic; 
          DOB17: out Std_logic; ADB5: in Std_logic; ADB6: in Std_logic; 
          ADB7: in Std_logic; ADB8: in Std_logic; ADB9: in Std_logic; 
          ADB10: in Std_logic; ADB11: in Std_logic; ADB12: in Std_logic; 
          ADB13: in Std_logic);

    ATTRIBUTE Vital_Level0 OF u_cam_cfg_u_rom_mux_867 : ENTITY IS TRUE;

  end u_cam_cfg_u_rom_mux_867;

  architecture Structure of u_cam_cfg_u_rom_mux_867 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DOA4_out 	: std_logic := 'X';
    signal DOA3_out 	: std_logic := 'X';
    signal DOA2_out 	: std_logic := 'X';
    signal DOA1_out 	: std_logic := 'X';
    signal DOA0_out 	: std_logic := 'X';
    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
    signal CEB_ipd 	: std_logic := 'X';
    signal CEB_dly 	: std_logic := 'X';
    signal DOB0_out 	: std_logic := 'X';
    signal DOB1_out 	: std_logic := 'X';
    signal DOB2_out 	: std_logic := 'X';
    signal DOB3_out 	: std_logic := 'X';
    signal DOB4_out 	: std_logic := 'X';
    signal DOB5_out 	: std_logic := 'X';
    signal DOB6_out 	: std_logic := 'X';
    signal DOB7_out 	: std_logic := 'X';
    signal DOB8_out 	: std_logic := 'X';
    signal DOB9_out 	: std_logic := 'X';
    signal DOB10_out 	: std_logic := 'X';
    signal DOB11_out 	: std_logic := 'X';
    signal DOB12_out 	: std_logic := 'X';
    signal DOB13_out 	: std_logic := 'X';
    signal DOB14_out 	: std_logic := 'X';
    signal DOB15_out 	: std_logic := 'X';
    signal DOB16_out 	: std_logic := 'X';
    signal DOB17_out 	: std_logic := 'X';
    signal ADB5_ipd 	: std_logic := 'X';
    signal ADB5_dly 	: std_logic := 'X';
    signal ADB6_ipd 	: std_logic := 'X';
    signal ADB6_dly 	: std_logic := 'X';
    signal ADB7_ipd 	: std_logic := 'X';
    signal ADB7_dly 	: std_logic := 'X';
    signal ADB8_ipd 	: std_logic := 'X';
    signal ADB8_dly 	: std_logic := 'X';
    signal ADB9_ipd 	: std_logic := 'X';
    signal ADB9_dly 	: std_logic := 'X';
    signal ADB10_ipd 	: std_logic := 'X';
    signal ADB10_dly 	: std_logic := 'X';
    signal ADB11_ipd 	: std_logic := 'X';
    signal ADB11_dly 	: std_logic := 'X';
    signal ADB12_ipd 	: std_logic := 'X';
    signal ADB12_dly 	: std_logic := 'X';
    signal ADB13_ipd 	: std_logic := 'X';
    signal ADB13_dly 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component PDPW16KD0009
      port (CEW: in Std_logic; CLKW: in Std_logic; CSW0: in Std_logic; 
            CSW1: in Std_logic; CSW2: in Std_logic; CER: in Std_logic; 
            OCER: in Std_logic; CLKR: in Std_logic; CSR0: in Std_logic; 
            CSR1: in Std_logic; CSR2: in Std_logic; RST: in Std_logic; 
            BE0: in Std_logic; BE1: in Std_logic; BE2: in Std_logic; 
            BE3: in Std_logic; DI0: in Std_logic; DI1: in Std_logic; 
            DI2: in Std_logic; DI3: in Std_logic; DI4: in Std_logic; 
            DI5: in Std_logic; DI6: in Std_logic; DI7: in Std_logic; 
            DI8: in Std_logic; DI9: in Std_logic; DI10: in Std_logic; 
            DI11: in Std_logic; DI12: in Std_logic; DI13: in Std_logic; 
            DI14: in Std_logic; DI15: in Std_logic; DI16: in Std_logic; 
            DI17: in Std_logic; DI18: in Std_logic; DI19: in Std_logic; 
            DI20: in Std_logic; DI21: in Std_logic; DI22: in Std_logic; 
            DI23: in Std_logic; DI24: in Std_logic; DI25: in Std_logic; 
            DI26: in Std_logic; DI27: in Std_logic; DI28: in Std_logic; 
            DI29: in Std_logic; DI30: in Std_logic; DI31: in Std_logic; 
            DI32: in Std_logic; DI33: in Std_logic; DI34: in Std_logic; 
            DI35: in Std_logic; ADW0: in Std_logic; ADW1: in Std_logic; 
            ADW2: in Std_logic; ADW3: in Std_logic; ADW4: in Std_logic; 
            ADW5: in Std_logic; ADW6: in Std_logic; ADW7: in Std_logic; 
            ADW8: in Std_logic; ADR0: in Std_logic; ADR1: in Std_logic; 
            ADR2: in Std_logic; ADR3: in Std_logic; ADR4: in Std_logic; 
            ADR5: in Std_logic; ADR6: in Std_logic; ADR7: in Std_logic; 
            ADR8: in Std_logic; ADR9: in Std_logic; ADR10: in Std_logic; 
            ADR11: in Std_logic; ADR12: in Std_logic; ADR13: in Std_logic; 
            DO0: out Std_logic; DO1: out Std_logic; DO2: out Std_logic; 
            DO3: out Std_logic; DO4: out Std_logic; DO5: out Std_logic; 
            DO6: out Std_logic; DO7: out Std_logic; DO8: out Std_logic; 
            DO9: out Std_logic; DO10: out Std_logic; DO11: out Std_logic; 
            DO12: out Std_logic; DO13: out Std_logic; DO14: out Std_logic; 
            DO15: out Std_logic; DO16: out Std_logic; DO17: out Std_logic; 
            DO18: out Std_logic; DO19: out Std_logic; DO20: out Std_logic; 
            DO21: out Std_logic; DO22: out Std_logic; DO23: out Std_logic; 
            DO24: out Std_logic; DO25: out Std_logic; DO26: out Std_logic; 
            DO27: out Std_logic; DO28: out Std_logic; DO29: out Std_logic; 
            DO30: out Std_logic; DO31: out Std_logic; DO32: out Std_logic; 
            DO33: out Std_logic; DO34: out Std_logic; DO35: out Std_logic);
    end component;
  begin
    u_cam_cfg_u_rom_mux_867_PDPW16KD: PDPW16KD0009
      port map (CEW=>VCCI, CLKW=>GNDI, CSW0=>GNDI, CSW1=>GNDI, CSW2=>GNDI, 
                CER=>CEB_dly, OCER=>VCCI, CLKR=>CLKB_dly, CSR0=>GNDI, 
                CSR1=>GNDI, CSR2=>GNDI, RST=>GNDI, BE0=>GNDI, BE1=>GNDI, 
                BE2=>GNDI, BE3=>GNDI, DI0=>GNDI, DI1=>GNDI, DI2=>GNDI, 
                DI3=>GNDI, DI4=>GNDI, DI5=>GNDI, DI6=>GNDI, DI7=>GNDI, 
                DI8=>GNDI, DI9=>GNDI, DI10=>GNDI, DI11=>GNDI, DI12=>GNDI, 
                DI13=>GNDI, DI14=>GNDI, DI15=>GNDI, DI16=>GNDI, DI17=>GNDI, 
                DI18=>GNDI, DI19=>GNDI, DI20=>GNDI, DI21=>GNDI, DI22=>GNDI, 
                DI23=>GNDI, DI24=>GNDI, DI25=>GNDI, DI26=>GNDI, DI27=>GNDI, 
                DI28=>GNDI, DI29=>GNDI, DI30=>GNDI, DI31=>GNDI, DI32=>GNDI, 
                DI33=>GNDI, DI34=>GNDI, DI35=>GNDI, ADW0=>GNDI, ADW1=>GNDI, 
                ADW2=>GNDI, ADW3=>GNDI, ADW4=>GNDI, ADW5=>GNDI, ADW6=>GNDI, 
                ADW7=>GNDI, ADW8=>GNDI, ADR0=>GNDI, ADR1=>GNDI, ADR2=>GNDI, 
                ADR3=>GNDI, ADR4=>GNDI, ADR5=>ADB5_dly, ADR6=>ADB6_dly, 
                ADR7=>ADB7_dly, ADR8=>ADB8_dly, ADR9=>ADB9_dly, 
                ADR10=>ADB10_dly, ADR11=>ADB11_dly, ADR12=>ADB12_dly, 
                ADR13=>ADB13_dly, DO0=>DOB0_out, DO1=>DOB1_out, DO2=>DOB2_out, 
                DO3=>DOB3_out, DO4=>DOB4_out, DO5=>DOB5_out, DO6=>DOB6_out, 
                DO7=>DOB7_out, DO8=>DOB8_out, DO9=>DOB9_out, DO10=>DOB10_out, 
                DO11=>DOB11_out, DO12=>DOB12_out, DO13=>DOB13_out, 
                DO14=>DOB14_out, DO15=>DOB15_out, DO16=>DOB16_out, 
                DO17=>DOB17_out, DO18=>DOA0_out, DO19=>DOA1_out, 
                DO20=>DOA2_out, DO21=>DOA3_out, DO22=>DOA4_out, DO23=>open, 
                DO24=>open, DO25=>open, DO26=>open, DO27=>open, DO28=>open, 
                DO29=>open, DO30=>open, DO31=>open, DO32=>open, DO33=>open, 
                DO34=>open, DO35=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
      VitalWireDelay(CEB_ipd, CEB, tipd_CEB);
      VitalWireDelay(ADB5_ipd, ADB5, tipd_ADB5);
      VitalWireDelay(ADB6_ipd, ADB6, tipd_ADB6);
      VitalWireDelay(ADB7_ipd, ADB7, tipd_ADB7);
      VitalWireDelay(ADB8_ipd, ADB8, tipd_ADB8);
      VitalWireDelay(ADB9_ipd, ADB9, tipd_ADB9);
      VitalWireDelay(ADB10_ipd, ADB10, tipd_ADB10);
      VitalWireDelay(ADB11_ipd, ADB11, tipd_ADB11);
      VitalWireDelay(ADB12_ipd, ADB12, tipd_ADB12);
      VitalWireDelay(ADB13_ipd, ADB13, tipd_ADB13);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
      VitalSignalDelay(CEB_dly, CEB_ipd, tisd_CEB_CLKB);
      VitalSignalDelay(ADB5_dly, ADB5_ipd, tisd_ADB5_CLKB);
      VitalSignalDelay(ADB6_dly, ADB6_ipd, tisd_ADB6_CLKB);
      VitalSignalDelay(ADB7_dly, ADB7_ipd, tisd_ADB7_CLKB);
      VitalSignalDelay(ADB8_dly, ADB8_ipd, tisd_ADB8_CLKB);
      VitalSignalDelay(ADB9_dly, ADB9_ipd, tisd_ADB9_CLKB);
      VitalSignalDelay(ADB10_dly, ADB10_ipd, tisd_ADB10_CLKB);
      VitalSignalDelay(ADB11_dly, ADB11_ipd, tisd_ADB11_CLKB);
      VitalSignalDelay(ADB12_dly, ADB12_ipd, tisd_ADB12_CLKB);
      VitalSignalDelay(ADB13_dly, ADB13_ipd, tisd_ADB13_CLKB);
    END BLOCK;

    VitalBehavior : PROCESS (DOA4_out, DOA3_out, DOA2_out, DOA1_out, DOA0_out, 
      CLKB_dly, CEB_dly, DOB0_out, DOB1_out, DOB2_out, DOB3_out, DOB4_out, 
      DOB5_out, DOB6_out, DOB7_out, DOB8_out, DOB9_out, DOB10_out, DOB11_out, 
      DOB12_out, DOB13_out, DOB14_out, DOB15_out, DOB16_out, DOB17_out, 
      ADB5_dly, ADB6_dly, ADB7_dly, ADB8_dly, ADB9_dly, ADB10_dly, ADB11_dly, 
      ADB12_dly, ADB13_dly)
    VARIABLE DOA4_zd         	: std_logic := 'X';
    VARIABLE DOA4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA3_zd         	: std_logic := 'X';
    VARIABLE DOA3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA2_zd         	: std_logic := 'X';
    VARIABLE DOA2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA1_zd         	: std_logic := 'X';
    VARIABLE DOA1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA0_zd         	: std_logic := 'X';
    VARIABLE DOA0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB0_zd         	: std_logic := 'X';
    VARIABLE DOB0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB1_zd         	: std_logic := 'X';
    VARIABLE DOB1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB2_zd         	: std_logic := 'X';
    VARIABLE DOB2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB3_zd         	: std_logic := 'X';
    VARIABLE DOB3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB4_zd         	: std_logic := 'X';
    VARIABLE DOB4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB5_zd         	: std_logic := 'X';
    VARIABLE DOB5_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB6_zd         	: std_logic := 'X';
    VARIABLE DOB6_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB7_zd         	: std_logic := 'X';
    VARIABLE DOB7_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB8_zd         	: std_logic := 'X';
    VARIABLE DOB8_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB9_zd         	: std_logic := 'X';
    VARIABLE DOB9_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB10_zd         	: std_logic := 'X';
    VARIABLE DOB10_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB11_zd         	: std_logic := 'X';
    VARIABLE DOB11_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB12_zd         	: std_logic := 'X';
    VARIABLE DOB12_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB13_zd         	: std_logic := 'X';
    VARIABLE DOB13_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB14_zd         	: std_logic := 'X';
    VARIABLE DOB14_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB15_zd         	: std_logic := 'X';
    VARIABLE DOB15_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB16_zd         	: std_logic := 'X';
    VARIABLE DOB16_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB17_zd         	: std_logic := 'X';
    VARIABLE DOB17_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_CEB_CLKB       	: x01 := '0';
    VARIABLE CEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB5_CLKB       	: x01 := '0';
    VARIABLE ADB5_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB6_CLKB       	: x01 := '0';
    VARIABLE ADB6_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB7_CLKB       	: x01 := '0';
    VARIABLE ADB7_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB8_CLKB       	: x01 := '0';
    VARIABLE ADB8_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB9_CLKB       	: x01 := '0';
    VARIABLE ADB9_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB10_CLKB       	: x01 := '0';
    VARIABLE ADB10_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB11_CLKB       	: x01 := '0';
    VARIABLE ADB11_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB12_CLKB       	: x01 := '0';
    VARIABLE ADB12_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB13_CLKB       	: x01 := '0';
    VARIABLE ADB13_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => CEB_dly,
        TestSignalName => "CEB",
        TestDelay => tisd_CEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CEB_CLKB_noedge_posedge,
        SetupLow => tsetup_CEB_CLKB_noedge_posedge,
        HoldHigh => thold_CEB_CLKB_noedge_posedge,
        HoldLow => thold_CEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEB_CLKB_TimingDatash,
        Violation => tviol_CEB_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB5_dly,
        TestSignalName => "ADB5",
        TestDelay => tisd_ADB5_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB5_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB5_CLKB_noedge_posedge,
        HoldHigh => thold_ADB5_CLKB_noedge_posedge,
        HoldLow => thold_ADB5_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB5_CLKB_TimingDatash,
        Violation => tviol_ADB5_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB6_dly,
        TestSignalName => "ADB6",
        TestDelay => tisd_ADB6_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB6_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB6_CLKB_noedge_posedge,
        HoldHigh => thold_ADB6_CLKB_noedge_posedge,
        HoldLow => thold_ADB6_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB6_CLKB_TimingDatash,
        Violation => tviol_ADB6_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB7_dly,
        TestSignalName => "ADB7",
        TestDelay => tisd_ADB7_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB7_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB7_CLKB_noedge_posedge,
        HoldHigh => thold_ADB7_CLKB_noedge_posedge,
        HoldLow => thold_ADB7_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB7_CLKB_TimingDatash,
        Violation => tviol_ADB7_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB8_dly,
        TestSignalName => "ADB8",
        TestDelay => tisd_ADB8_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB8_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB8_CLKB_noedge_posedge,
        HoldHigh => thold_ADB8_CLKB_noedge_posedge,
        HoldLow => thold_ADB8_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB8_CLKB_TimingDatash,
        Violation => tviol_ADB8_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB9_dly,
        TestSignalName => "ADB9",
        TestDelay => tisd_ADB9_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB9_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB9_CLKB_noedge_posedge,
        HoldHigh => thold_ADB9_CLKB_noedge_posedge,
        HoldLow => thold_ADB9_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB9_CLKB_TimingDatash,
        Violation => tviol_ADB9_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB10_dly,
        TestSignalName => "ADB10",
        TestDelay => tisd_ADB10_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB10_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB10_CLKB_noedge_posedge,
        HoldHigh => thold_ADB10_CLKB_noedge_posedge,
        HoldLow => thold_ADB10_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB10_CLKB_TimingDatash,
        Violation => tviol_ADB10_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB11_dly,
        TestSignalName => "ADB11",
        TestDelay => tisd_ADB11_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB11_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB11_CLKB_noedge_posedge,
        HoldHigh => thold_ADB11_CLKB_noedge_posedge,
        HoldLow => thold_ADB11_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB11_CLKB_TimingDatash,
        Violation => tviol_ADB11_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB12_dly,
        TestSignalName => "ADB12",
        TestDelay => tisd_ADB12_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB12_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB12_CLKB_noedge_posedge,
        HoldHigh => thold_ADB12_CLKB_noedge_posedge,
        HoldLow => thold_ADB12_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB12_CLKB_TimingDatash,
        Violation => tviol_ADB12_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB13_dly,
        TestSignalName => "ADB13",
        TestDelay => tisd_ADB13_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB13_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB13_CLKB_noedge_posedge,
        HoldHigh => thold_ADB13_CLKB_noedge_posedge,
        HoldLow => thold_ADB13_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB13_CLKB_TimingDatash,
        Violation => tviol_ADB13_CLKB,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKB_ipd,
        TestSignalName => "CLKB",
        Period => tperiod_CLKB,
        PulseWidthHigh => tpw_CLKB_posedge,
        PulseWidthLow => tpw_CLKB_negedge,
        PeriodData => periodcheckinfo_CLKB,
        Violation => tviol_CLKB_CLKB,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOA4_zd 	:= DOA4_out;
    DOA3_zd 	:= DOA3_out;
    DOA2_zd 	:= DOA2_out;
    DOA1_zd 	:= DOA1_out;
    DOA0_zd 	:= DOA0_out;
    DOB0_zd 	:= DOB0_out;
    DOB1_zd 	:= DOB1_out;
    DOB2_zd 	:= DOB2_out;
    DOB3_zd 	:= DOB3_out;
    DOB4_zd 	:= DOB4_out;
    DOB5_zd 	:= DOB5_out;
    DOB6_zd 	:= DOB6_out;
    DOB7_zd 	:= DOB7_out;
    DOB8_zd 	:= DOB8_out;
    DOB9_zd 	:= DOB9_out;
    DOB10_zd 	:= DOB10_out;
    DOB11_zd 	:= DOB11_out;
    DOB12_zd 	:= DOB12_out;
    DOB13_zd 	:= DOB13_out;
    DOB14_zd 	:= DOB14_out;
    DOB15_zd 	:= DOB15_out;
    DOB16_zd 	:= DOB16_out;
    DOB17_zd 	:= DOB17_out;

    VitalPathDelay01 (
      OutSignal => DOA4, OutSignalName => "DOA4", OutTemp => DOA4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA4,
                           PathCondition => TRUE)),
      GlitchData => DOA4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA3, OutSignalName => "DOA3", OutTemp => DOA3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA3,
                           PathCondition => TRUE)),
      GlitchData => DOA3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA2, OutSignalName => "DOA2", OutTemp => DOA2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA2,
                           PathCondition => TRUE)),
      GlitchData => DOA2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA1, OutSignalName => "DOA1", OutTemp => DOA1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA1,
                           PathCondition => TRUE)),
      GlitchData => DOA1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA0, OutSignalName => "DOA0", OutTemp => DOA0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA0,
                           PathCondition => TRUE)),
      GlitchData => DOA0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB0, OutSignalName => "DOB0", OutTemp => DOB0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB0,
                           PathCondition => TRUE)),
      GlitchData => DOB0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB1, OutSignalName => "DOB1", OutTemp => DOB1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB1,
                           PathCondition => TRUE)),
      GlitchData => DOB1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB2, OutSignalName => "DOB2", OutTemp => DOB2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB2,
                           PathCondition => TRUE)),
      GlitchData => DOB2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB3, OutSignalName => "DOB3", OutTemp => DOB3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB3,
                           PathCondition => TRUE)),
      GlitchData => DOB3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB4, OutSignalName => "DOB4", OutTemp => DOB4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB4,
                           PathCondition => TRUE)),
      GlitchData => DOB4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB5, OutSignalName => "DOB5", OutTemp => DOB5_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB5,
                           PathCondition => TRUE)),
      GlitchData => DOB5_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB6, OutSignalName => "DOB6", OutTemp => DOB6_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB6,
                           PathCondition => TRUE)),
      GlitchData => DOB6_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB7, OutSignalName => "DOB7", OutTemp => DOB7_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB7,
                           PathCondition => TRUE)),
      GlitchData => DOB7_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB8, OutSignalName => "DOB8", OutTemp => DOB8_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB8,
                           PathCondition => TRUE)),
      GlitchData => DOB8_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB9, OutSignalName => "DOB9", OutTemp => DOB9_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB9,
                           PathCondition => TRUE)),
      GlitchData => DOB9_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB10, OutSignalName => "DOB10", OutTemp => DOB10_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB10,
                           PathCondition => TRUE)),
      GlitchData => DOB10_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB11, OutSignalName => "DOB11", OutTemp => DOB11_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB11,
                           PathCondition => TRUE)),
      GlitchData => DOB11_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB12, OutSignalName => "DOB12", OutTemp => DOB12_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB12,
                           PathCondition => TRUE)),
      GlitchData => DOB12_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB13, OutSignalName => "DOB13", OutTemp => DOB13_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB13,
                           PathCondition => TRUE)),
      GlitchData => DOB13_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB14, OutSignalName => "DOB14", OutTemp => DOB14_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB14,
                           PathCondition => TRUE)),
      GlitchData => DOB14_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB15, OutSignalName => "DOB15", OutTemp => DOB15_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB15,
                           PathCondition => TRUE)),
      GlitchData => DOB15_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB16, OutSignalName => "DOB16", OutTemp => DOB16_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB16,
                           PathCondition => TRUE)),
      GlitchData => DOB16_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB17, OutSignalName => "DOB17", OutTemp => DOB17_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB17,
                           PathCondition => TRUE)),
      GlitchData => DOB17_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity PDPW16KD0010
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity PDPW16KD0010 is
    port (CEW: in Std_logic; CLKW: in Std_logic; CSW0: in Std_logic; 
          CSW1: in Std_logic; CSW2: in Std_logic; CER: in Std_logic; 
          OCER: in Std_logic; CLKR: in Std_logic; CSR0: in Std_logic; 
          CSR1: in Std_logic; CSR2: in Std_logic; RST: in Std_logic; 
          BE0: in Std_logic; BE1: in Std_logic; BE2: in Std_logic; 
          BE3: in Std_logic; DI0: in Std_logic; DI1: in Std_logic; 
          DI2: in Std_logic; DI3: in Std_logic; DI4: in Std_logic; 
          DI5: in Std_logic; DI6: in Std_logic; DI7: in Std_logic; 
          DI8: in Std_logic; DI9: in Std_logic; DI10: in Std_logic; 
          DI11: in Std_logic; DI12: in Std_logic; DI13: in Std_logic; 
          DI14: in Std_logic; DI15: in Std_logic; DI16: in Std_logic; 
          DI17: in Std_logic; DI18: in Std_logic; DI19: in Std_logic; 
          DI20: in Std_logic; DI21: in Std_logic; DI22: in Std_logic; 
          DI23: in Std_logic; DI24: in Std_logic; DI25: in Std_logic; 
          DI26: in Std_logic; DI27: in Std_logic; DI28: in Std_logic; 
          DI29: in Std_logic; DI30: in Std_logic; DI31: in Std_logic; 
          DI32: in Std_logic; DI33: in Std_logic; DI34: in Std_logic; 
          DI35: in Std_logic; ADW0: in Std_logic; ADW1: in Std_logic; 
          ADW2: in Std_logic; ADW3: in Std_logic; ADW4: in Std_logic; 
          ADW5: in Std_logic; ADW6: in Std_logic; ADW7: in Std_logic; 
          ADW8: in Std_logic; ADR0: in Std_logic; ADR1: in Std_logic; 
          ADR2: in Std_logic; ADR3: in Std_logic; ADR4: in Std_logic; 
          ADR5: in Std_logic; ADR6: in Std_logic; ADR7: in Std_logic; 
          ADR8: in Std_logic; ADR9: in Std_logic; ADR10: in Std_logic; 
          ADR11: in Std_logic; ADR12: in Std_logic; ADR13: in Std_logic; 
          DO0: out Std_logic; DO1: out Std_logic; DO2: out Std_logic; 
          DO3: out Std_logic; DO4: out Std_logic; DO5: out Std_logic; 
          DO6: out Std_logic; DO7: out Std_logic; DO8: out Std_logic; 
          DO9: out Std_logic; DO10: out Std_logic; DO11: out Std_logic; 
          DO12: out Std_logic; DO13: out Std_logic; DO14: out Std_logic; 
          DO15: out Std_logic; DO16: out Std_logic; DO17: out Std_logic; 
          DO18: out Std_logic; DO19: out Std_logic; DO20: out Std_logic; 
          DO21: out Std_logic; DO22: out Std_logic; DO23: out Std_logic; 
          DO24: out Std_logic; DO25: out Std_logic; DO26: out Std_logic; 
          DO27: out Std_logic; DO28: out Std_logic; DO29: out Std_logic; 
          DO30: out Std_logic; DO31: out Std_logic; DO32: out Std_logic; 
          DO33: out Std_logic; DO34: out Std_logic; DO35: out Std_logic);

    ATTRIBUTE Vital_Level0 OF PDPW16KD0010 : ENTITY IS TRUE;

  end PDPW16KD0010;

  architecture Structure of PDPW16KD0010 is
  begin
    INST10: PDPW16KD
      generic map (ASYNC_RESET_RELEASE => "SYNC", CSDECODE_R => "0b000", 
                   CSDECODE_W => "0b000", DATA_WIDTH_R => 36, 
                   DATA_WIDTH_W => 36, GSR => "DISABLED", 
                   INITVAL_00 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_01 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_02 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_03 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_04 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_05 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_06 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_07 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_08 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_09 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_10 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_11 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_12 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_13 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_14 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_15 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_16 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_17 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_18 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_19 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_20 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_21 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_22 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_23 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_24 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_25 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_26 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_27 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_28 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_29 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_30 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_31 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_32 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_33 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_34 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_35 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_36 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_37 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_38 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_39 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , INIT_DATA => "STATIC", REGMODE => "NOREG", 
                   RESETMODE => "ASYNC")
      port map (DI0=>DI0, DI1=>DI1, DI2=>DI2, DI3=>DI3, DI4=>DI4, DI5=>DI5, 
                DI6=>DI6, DI7=>DI7, DI8=>DI8, DI9=>DI9, DI10=>DI10, DI11=>DI11, 
                DI12=>DI12, DI13=>DI13, DI14=>DI14, DI15=>DI15, DI16=>DI16, 
                DI17=>DI17, DI18=>DI18, DI19=>DI19, DI20=>DI20, DI21=>DI21, 
                DI22=>DI22, DI23=>DI23, DI24=>DI24, DI25=>DI25, DI26=>DI26, 
                DI27=>DI27, DI28=>DI28, DI29=>DI29, DI30=>DI30, DI31=>DI31, 
                DI32=>DI32, DI33=>DI33, DI34=>DI34, DI35=>DI35, ADW0=>ADW0, 
                ADW1=>ADW1, ADW2=>ADW2, ADW3=>ADW3, ADW4=>ADW4, ADW5=>ADW5, 
                ADW6=>ADW6, ADW7=>ADW7, ADW8=>ADW8, BE0=>BE0, BE1=>BE1, 
                BE2=>BE2, BE3=>BE3, CEW=>CEW, CLKW=>CLKW, CSW0=>CSW0, 
                CSW1=>CSW1, CSW2=>CSW2, ADR0=>ADR0, ADR1=>ADR1, ADR2=>ADR2, 
                ADR3=>ADR3, ADR4=>ADR4, ADR5=>ADR5, ADR6=>ADR6, ADR7=>ADR7, 
                ADR8=>ADR8, ADR9=>ADR9, ADR10=>ADR10, ADR11=>ADR11, 
                ADR12=>ADR12, ADR13=>ADR13, CER=>CER, OCER=>OCER, CLKR=>CLKR, 
                CSR0=>CSR0, CSR1=>CSR1, CSR2=>CSR2, RST=>RST, DO0=>DO0, 
                DO1=>DO1, DO2=>DO2, DO3=>DO3, DO4=>DO4, DO5=>DO5, DO6=>DO6, 
                DO7=>DO7, DO8=>DO8, DO9=>DO9, DO10=>DO10, DO11=>DO11, 
                DO12=>DO12, DO13=>DO13, DO14=>DO14, DO15=>DO15, DO16=>DO16, 
                DO17=>DO17, DO18=>DO18, DO19=>DO19, DO20=>DO20, DO21=>DO21, 
                DO22=>DO22, DO23=>DO23, DO24=>DO24, DO25=>DO25, DO26=>DO26, 
                DO27=>DO27, DO28=>DO28, DO29=>DO29, DO30=>DO30, DO31=>DO31, 
                DO32=>DO32, DO33=>DO33, DO34=>DO34, DO35=>DO35);
  end Structure;

-- entity u_cam_cfg_u_rom_mux_870
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_cam_cfg_u_rom_mux_870 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_cam_cfg_u_rom_mux_870";

      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB13  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB5	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB6	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB7	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB8	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB9	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB10	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB11	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB12	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB13	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB14	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB15	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB16	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB17	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLKB	: VitalDelayType := 0 ns;
      tisd_CEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB5_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB5_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB5_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB6_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB6_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB6_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB7_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB7_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB7_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB8_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB8_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB8_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB9_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB9_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB9_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB10_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB10_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB10_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB11_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB11_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB11_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB12_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB12_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB12_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB13_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB13_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB13_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (DOA4: out Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
          DOA1: out Std_logic; DOA0: out Std_logic; CLKB: in Std_logic; 
          CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
          DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
          DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
          DOB8: out Std_logic; DOB9: out Std_logic; DOB10: out Std_logic; 
          DOB11: out Std_logic; DOB12: out Std_logic; DOB13: out Std_logic; 
          DOB14: out Std_logic; DOB15: out Std_logic; DOB16: out Std_logic; 
          DOB17: out Std_logic; ADB5: in Std_logic; ADB6: in Std_logic; 
          ADB7: in Std_logic; ADB8: in Std_logic; ADB9: in Std_logic; 
          ADB10: in Std_logic; ADB11: in Std_logic; ADB12: in Std_logic; 
          ADB13: in Std_logic);

    ATTRIBUTE Vital_Level0 OF u_cam_cfg_u_rom_mux_870 : ENTITY IS TRUE;

  end u_cam_cfg_u_rom_mux_870;

  architecture Structure of u_cam_cfg_u_rom_mux_870 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DOA4_out 	: std_logic := 'X';
    signal DOA3_out 	: std_logic := 'X';
    signal DOA2_out 	: std_logic := 'X';
    signal DOA1_out 	: std_logic := 'X';
    signal DOA0_out 	: std_logic := 'X';
    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
    signal CEB_ipd 	: std_logic := 'X';
    signal CEB_dly 	: std_logic := 'X';
    signal DOB0_out 	: std_logic := 'X';
    signal DOB1_out 	: std_logic := 'X';
    signal DOB2_out 	: std_logic := 'X';
    signal DOB3_out 	: std_logic := 'X';
    signal DOB4_out 	: std_logic := 'X';
    signal DOB5_out 	: std_logic := 'X';
    signal DOB6_out 	: std_logic := 'X';
    signal DOB7_out 	: std_logic := 'X';
    signal DOB8_out 	: std_logic := 'X';
    signal DOB9_out 	: std_logic := 'X';
    signal DOB10_out 	: std_logic := 'X';
    signal DOB11_out 	: std_logic := 'X';
    signal DOB12_out 	: std_logic := 'X';
    signal DOB13_out 	: std_logic := 'X';
    signal DOB14_out 	: std_logic := 'X';
    signal DOB15_out 	: std_logic := 'X';
    signal DOB16_out 	: std_logic := 'X';
    signal DOB17_out 	: std_logic := 'X';
    signal ADB5_ipd 	: std_logic := 'X';
    signal ADB5_dly 	: std_logic := 'X';
    signal ADB6_ipd 	: std_logic := 'X';
    signal ADB6_dly 	: std_logic := 'X';
    signal ADB7_ipd 	: std_logic := 'X';
    signal ADB7_dly 	: std_logic := 'X';
    signal ADB8_ipd 	: std_logic := 'X';
    signal ADB8_dly 	: std_logic := 'X';
    signal ADB9_ipd 	: std_logic := 'X';
    signal ADB9_dly 	: std_logic := 'X';
    signal ADB10_ipd 	: std_logic := 'X';
    signal ADB10_dly 	: std_logic := 'X';
    signal ADB11_ipd 	: std_logic := 'X';
    signal ADB11_dly 	: std_logic := 'X';
    signal ADB12_ipd 	: std_logic := 'X';
    signal ADB12_dly 	: std_logic := 'X';
    signal ADB13_ipd 	: std_logic := 'X';
    signal ADB13_dly 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component PDPW16KD0010
      port (CEW: in Std_logic; CLKW: in Std_logic; CSW0: in Std_logic; 
            CSW1: in Std_logic; CSW2: in Std_logic; CER: in Std_logic; 
            OCER: in Std_logic; CLKR: in Std_logic; CSR0: in Std_logic; 
            CSR1: in Std_logic; CSR2: in Std_logic; RST: in Std_logic; 
            BE0: in Std_logic; BE1: in Std_logic; BE2: in Std_logic; 
            BE3: in Std_logic; DI0: in Std_logic; DI1: in Std_logic; 
            DI2: in Std_logic; DI3: in Std_logic; DI4: in Std_logic; 
            DI5: in Std_logic; DI6: in Std_logic; DI7: in Std_logic; 
            DI8: in Std_logic; DI9: in Std_logic; DI10: in Std_logic; 
            DI11: in Std_logic; DI12: in Std_logic; DI13: in Std_logic; 
            DI14: in Std_logic; DI15: in Std_logic; DI16: in Std_logic; 
            DI17: in Std_logic; DI18: in Std_logic; DI19: in Std_logic; 
            DI20: in Std_logic; DI21: in Std_logic; DI22: in Std_logic; 
            DI23: in Std_logic; DI24: in Std_logic; DI25: in Std_logic; 
            DI26: in Std_logic; DI27: in Std_logic; DI28: in Std_logic; 
            DI29: in Std_logic; DI30: in Std_logic; DI31: in Std_logic; 
            DI32: in Std_logic; DI33: in Std_logic; DI34: in Std_logic; 
            DI35: in Std_logic; ADW0: in Std_logic; ADW1: in Std_logic; 
            ADW2: in Std_logic; ADW3: in Std_logic; ADW4: in Std_logic; 
            ADW5: in Std_logic; ADW6: in Std_logic; ADW7: in Std_logic; 
            ADW8: in Std_logic; ADR0: in Std_logic; ADR1: in Std_logic; 
            ADR2: in Std_logic; ADR3: in Std_logic; ADR4: in Std_logic; 
            ADR5: in Std_logic; ADR6: in Std_logic; ADR7: in Std_logic; 
            ADR8: in Std_logic; ADR9: in Std_logic; ADR10: in Std_logic; 
            ADR11: in Std_logic; ADR12: in Std_logic; ADR13: in Std_logic; 
            DO0: out Std_logic; DO1: out Std_logic; DO2: out Std_logic; 
            DO3: out Std_logic; DO4: out Std_logic; DO5: out Std_logic; 
            DO6: out Std_logic; DO7: out Std_logic; DO8: out Std_logic; 
            DO9: out Std_logic; DO10: out Std_logic; DO11: out Std_logic; 
            DO12: out Std_logic; DO13: out Std_logic; DO14: out Std_logic; 
            DO15: out Std_logic; DO16: out Std_logic; DO17: out Std_logic; 
            DO18: out Std_logic; DO19: out Std_logic; DO20: out Std_logic; 
            DO21: out Std_logic; DO22: out Std_logic; DO23: out Std_logic; 
            DO24: out Std_logic; DO25: out Std_logic; DO26: out Std_logic; 
            DO27: out Std_logic; DO28: out Std_logic; DO29: out Std_logic; 
            DO30: out Std_logic; DO31: out Std_logic; DO32: out Std_logic; 
            DO33: out Std_logic; DO34: out Std_logic; DO35: out Std_logic);
    end component;
  begin
    u_cam_cfg_u_rom_mux_870_PDPW16KD: PDPW16KD0010
      port map (CEW=>VCCI, CLKW=>GNDI, CSW0=>GNDI, CSW1=>GNDI, CSW2=>GNDI, 
                CER=>CEB_dly, OCER=>VCCI, CLKR=>CLKB_dly, CSR0=>GNDI, 
                CSR1=>GNDI, CSR2=>GNDI, RST=>GNDI, BE0=>GNDI, BE1=>GNDI, 
                BE2=>GNDI, BE3=>GNDI, DI0=>GNDI, DI1=>GNDI, DI2=>GNDI, 
                DI3=>GNDI, DI4=>GNDI, DI5=>GNDI, DI6=>GNDI, DI7=>GNDI, 
                DI8=>GNDI, DI9=>GNDI, DI10=>GNDI, DI11=>GNDI, DI12=>GNDI, 
                DI13=>GNDI, DI14=>GNDI, DI15=>GNDI, DI16=>GNDI, DI17=>GNDI, 
                DI18=>GNDI, DI19=>GNDI, DI20=>GNDI, DI21=>GNDI, DI22=>GNDI, 
                DI23=>GNDI, DI24=>GNDI, DI25=>GNDI, DI26=>GNDI, DI27=>GNDI, 
                DI28=>GNDI, DI29=>GNDI, DI30=>GNDI, DI31=>GNDI, DI32=>GNDI, 
                DI33=>GNDI, DI34=>GNDI, DI35=>GNDI, ADW0=>GNDI, ADW1=>GNDI, 
                ADW2=>GNDI, ADW3=>GNDI, ADW4=>GNDI, ADW5=>GNDI, ADW6=>GNDI, 
                ADW7=>GNDI, ADW8=>GNDI, ADR0=>GNDI, ADR1=>GNDI, ADR2=>GNDI, 
                ADR3=>GNDI, ADR4=>GNDI, ADR5=>ADB5_dly, ADR6=>ADB6_dly, 
                ADR7=>ADB7_dly, ADR8=>ADB8_dly, ADR9=>ADB9_dly, 
                ADR10=>ADB10_dly, ADR11=>ADB11_dly, ADR12=>ADB12_dly, 
                ADR13=>ADB13_dly, DO0=>DOB0_out, DO1=>DOB1_out, DO2=>DOB2_out, 
                DO3=>DOB3_out, DO4=>DOB4_out, DO5=>DOB5_out, DO6=>DOB6_out, 
                DO7=>DOB7_out, DO8=>DOB8_out, DO9=>DOB9_out, DO10=>DOB10_out, 
                DO11=>DOB11_out, DO12=>DOB12_out, DO13=>DOB13_out, 
                DO14=>DOB14_out, DO15=>DOB15_out, DO16=>DOB16_out, 
                DO17=>DOB17_out, DO18=>DOA0_out, DO19=>DOA1_out, 
                DO20=>DOA2_out, DO21=>DOA3_out, DO22=>DOA4_out, DO23=>open, 
                DO24=>open, DO25=>open, DO26=>open, DO27=>open, DO28=>open, 
                DO29=>open, DO30=>open, DO31=>open, DO32=>open, DO33=>open, 
                DO34=>open, DO35=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
      VitalWireDelay(CEB_ipd, CEB, tipd_CEB);
      VitalWireDelay(ADB5_ipd, ADB5, tipd_ADB5);
      VitalWireDelay(ADB6_ipd, ADB6, tipd_ADB6);
      VitalWireDelay(ADB7_ipd, ADB7, tipd_ADB7);
      VitalWireDelay(ADB8_ipd, ADB8, tipd_ADB8);
      VitalWireDelay(ADB9_ipd, ADB9, tipd_ADB9);
      VitalWireDelay(ADB10_ipd, ADB10, tipd_ADB10);
      VitalWireDelay(ADB11_ipd, ADB11, tipd_ADB11);
      VitalWireDelay(ADB12_ipd, ADB12, tipd_ADB12);
      VitalWireDelay(ADB13_ipd, ADB13, tipd_ADB13);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
      VitalSignalDelay(CEB_dly, CEB_ipd, tisd_CEB_CLKB);
      VitalSignalDelay(ADB5_dly, ADB5_ipd, tisd_ADB5_CLKB);
      VitalSignalDelay(ADB6_dly, ADB6_ipd, tisd_ADB6_CLKB);
      VitalSignalDelay(ADB7_dly, ADB7_ipd, tisd_ADB7_CLKB);
      VitalSignalDelay(ADB8_dly, ADB8_ipd, tisd_ADB8_CLKB);
      VitalSignalDelay(ADB9_dly, ADB9_ipd, tisd_ADB9_CLKB);
      VitalSignalDelay(ADB10_dly, ADB10_ipd, tisd_ADB10_CLKB);
      VitalSignalDelay(ADB11_dly, ADB11_ipd, tisd_ADB11_CLKB);
      VitalSignalDelay(ADB12_dly, ADB12_ipd, tisd_ADB12_CLKB);
      VitalSignalDelay(ADB13_dly, ADB13_ipd, tisd_ADB13_CLKB);
    END BLOCK;

    VitalBehavior : PROCESS (DOA4_out, DOA3_out, DOA2_out, DOA1_out, DOA0_out, 
      CLKB_dly, CEB_dly, DOB0_out, DOB1_out, DOB2_out, DOB3_out, DOB4_out, 
      DOB5_out, DOB6_out, DOB7_out, DOB8_out, DOB9_out, DOB10_out, DOB11_out, 
      DOB12_out, DOB13_out, DOB14_out, DOB15_out, DOB16_out, DOB17_out, 
      ADB5_dly, ADB6_dly, ADB7_dly, ADB8_dly, ADB9_dly, ADB10_dly, ADB11_dly, 
      ADB12_dly, ADB13_dly)
    VARIABLE DOA4_zd         	: std_logic := 'X';
    VARIABLE DOA4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA3_zd         	: std_logic := 'X';
    VARIABLE DOA3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA2_zd         	: std_logic := 'X';
    VARIABLE DOA2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA1_zd         	: std_logic := 'X';
    VARIABLE DOA1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA0_zd         	: std_logic := 'X';
    VARIABLE DOA0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB0_zd         	: std_logic := 'X';
    VARIABLE DOB0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB1_zd         	: std_logic := 'X';
    VARIABLE DOB1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB2_zd         	: std_logic := 'X';
    VARIABLE DOB2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB3_zd         	: std_logic := 'X';
    VARIABLE DOB3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB4_zd         	: std_logic := 'X';
    VARIABLE DOB4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB5_zd         	: std_logic := 'X';
    VARIABLE DOB5_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB6_zd         	: std_logic := 'X';
    VARIABLE DOB6_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB7_zd         	: std_logic := 'X';
    VARIABLE DOB7_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB8_zd         	: std_logic := 'X';
    VARIABLE DOB8_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB9_zd         	: std_logic := 'X';
    VARIABLE DOB9_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB10_zd         	: std_logic := 'X';
    VARIABLE DOB10_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB11_zd         	: std_logic := 'X';
    VARIABLE DOB11_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB12_zd         	: std_logic := 'X';
    VARIABLE DOB12_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB13_zd         	: std_logic := 'X';
    VARIABLE DOB13_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB14_zd         	: std_logic := 'X';
    VARIABLE DOB14_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB15_zd         	: std_logic := 'X';
    VARIABLE DOB15_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB16_zd         	: std_logic := 'X';
    VARIABLE DOB16_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB17_zd         	: std_logic := 'X';
    VARIABLE DOB17_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_CEB_CLKB       	: x01 := '0';
    VARIABLE CEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB5_CLKB       	: x01 := '0';
    VARIABLE ADB5_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB6_CLKB       	: x01 := '0';
    VARIABLE ADB6_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB7_CLKB       	: x01 := '0';
    VARIABLE ADB7_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB8_CLKB       	: x01 := '0';
    VARIABLE ADB8_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB9_CLKB       	: x01 := '0';
    VARIABLE ADB9_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB10_CLKB       	: x01 := '0';
    VARIABLE ADB10_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB11_CLKB       	: x01 := '0';
    VARIABLE ADB11_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB12_CLKB       	: x01 := '0';
    VARIABLE ADB12_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB13_CLKB       	: x01 := '0';
    VARIABLE ADB13_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => CEB_dly,
        TestSignalName => "CEB",
        TestDelay => tisd_CEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CEB_CLKB_noedge_posedge,
        SetupLow => tsetup_CEB_CLKB_noedge_posedge,
        HoldHigh => thold_CEB_CLKB_noedge_posedge,
        HoldLow => thold_CEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEB_CLKB_TimingDatash,
        Violation => tviol_CEB_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB5_dly,
        TestSignalName => "ADB5",
        TestDelay => tisd_ADB5_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB5_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB5_CLKB_noedge_posedge,
        HoldHigh => thold_ADB5_CLKB_noedge_posedge,
        HoldLow => thold_ADB5_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB5_CLKB_TimingDatash,
        Violation => tviol_ADB5_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB6_dly,
        TestSignalName => "ADB6",
        TestDelay => tisd_ADB6_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB6_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB6_CLKB_noedge_posedge,
        HoldHigh => thold_ADB6_CLKB_noedge_posedge,
        HoldLow => thold_ADB6_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB6_CLKB_TimingDatash,
        Violation => tviol_ADB6_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB7_dly,
        TestSignalName => "ADB7",
        TestDelay => tisd_ADB7_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB7_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB7_CLKB_noedge_posedge,
        HoldHigh => thold_ADB7_CLKB_noedge_posedge,
        HoldLow => thold_ADB7_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB7_CLKB_TimingDatash,
        Violation => tviol_ADB7_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB8_dly,
        TestSignalName => "ADB8",
        TestDelay => tisd_ADB8_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB8_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB8_CLKB_noedge_posedge,
        HoldHigh => thold_ADB8_CLKB_noedge_posedge,
        HoldLow => thold_ADB8_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB8_CLKB_TimingDatash,
        Violation => tviol_ADB8_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB9_dly,
        TestSignalName => "ADB9",
        TestDelay => tisd_ADB9_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB9_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB9_CLKB_noedge_posedge,
        HoldHigh => thold_ADB9_CLKB_noedge_posedge,
        HoldLow => thold_ADB9_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB9_CLKB_TimingDatash,
        Violation => tviol_ADB9_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB10_dly,
        TestSignalName => "ADB10",
        TestDelay => tisd_ADB10_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB10_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB10_CLKB_noedge_posedge,
        HoldHigh => thold_ADB10_CLKB_noedge_posedge,
        HoldLow => thold_ADB10_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB10_CLKB_TimingDatash,
        Violation => tviol_ADB10_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB11_dly,
        TestSignalName => "ADB11",
        TestDelay => tisd_ADB11_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB11_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB11_CLKB_noedge_posedge,
        HoldHigh => thold_ADB11_CLKB_noedge_posedge,
        HoldLow => thold_ADB11_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB11_CLKB_TimingDatash,
        Violation => tviol_ADB11_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB12_dly,
        TestSignalName => "ADB12",
        TestDelay => tisd_ADB12_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB12_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB12_CLKB_noedge_posedge,
        HoldHigh => thold_ADB12_CLKB_noedge_posedge,
        HoldLow => thold_ADB12_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB12_CLKB_TimingDatash,
        Violation => tviol_ADB12_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB13_dly,
        TestSignalName => "ADB13",
        TestDelay => tisd_ADB13_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB13_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB13_CLKB_noedge_posedge,
        HoldHigh => thold_ADB13_CLKB_noedge_posedge,
        HoldLow => thold_ADB13_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB13_CLKB_TimingDatash,
        Violation => tviol_ADB13_CLKB,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKB_ipd,
        TestSignalName => "CLKB",
        Period => tperiod_CLKB,
        PulseWidthHigh => tpw_CLKB_posedge,
        PulseWidthLow => tpw_CLKB_negedge,
        PeriodData => periodcheckinfo_CLKB,
        Violation => tviol_CLKB_CLKB,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOA4_zd 	:= DOA4_out;
    DOA3_zd 	:= DOA3_out;
    DOA2_zd 	:= DOA2_out;
    DOA1_zd 	:= DOA1_out;
    DOA0_zd 	:= DOA0_out;
    DOB0_zd 	:= DOB0_out;
    DOB1_zd 	:= DOB1_out;
    DOB2_zd 	:= DOB2_out;
    DOB3_zd 	:= DOB3_out;
    DOB4_zd 	:= DOB4_out;
    DOB5_zd 	:= DOB5_out;
    DOB6_zd 	:= DOB6_out;
    DOB7_zd 	:= DOB7_out;
    DOB8_zd 	:= DOB8_out;
    DOB9_zd 	:= DOB9_out;
    DOB10_zd 	:= DOB10_out;
    DOB11_zd 	:= DOB11_out;
    DOB12_zd 	:= DOB12_out;
    DOB13_zd 	:= DOB13_out;
    DOB14_zd 	:= DOB14_out;
    DOB15_zd 	:= DOB15_out;
    DOB16_zd 	:= DOB16_out;
    DOB17_zd 	:= DOB17_out;

    VitalPathDelay01 (
      OutSignal => DOA4, OutSignalName => "DOA4", OutTemp => DOA4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA4,
                           PathCondition => TRUE)),
      GlitchData => DOA4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA3, OutSignalName => "DOA3", OutTemp => DOA3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA3,
                           PathCondition => TRUE)),
      GlitchData => DOA3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA2, OutSignalName => "DOA2", OutTemp => DOA2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA2,
                           PathCondition => TRUE)),
      GlitchData => DOA2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA1, OutSignalName => "DOA1", OutTemp => DOA1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA1,
                           PathCondition => TRUE)),
      GlitchData => DOA1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA0, OutSignalName => "DOA0", OutTemp => DOA0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA0,
                           PathCondition => TRUE)),
      GlitchData => DOA0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB0, OutSignalName => "DOB0", OutTemp => DOB0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB0,
                           PathCondition => TRUE)),
      GlitchData => DOB0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB1, OutSignalName => "DOB1", OutTemp => DOB1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB1,
                           PathCondition => TRUE)),
      GlitchData => DOB1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB2, OutSignalName => "DOB2", OutTemp => DOB2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB2,
                           PathCondition => TRUE)),
      GlitchData => DOB2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB3, OutSignalName => "DOB3", OutTemp => DOB3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB3,
                           PathCondition => TRUE)),
      GlitchData => DOB3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB4, OutSignalName => "DOB4", OutTemp => DOB4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB4,
                           PathCondition => TRUE)),
      GlitchData => DOB4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB5, OutSignalName => "DOB5", OutTemp => DOB5_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB5,
                           PathCondition => TRUE)),
      GlitchData => DOB5_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB6, OutSignalName => "DOB6", OutTemp => DOB6_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB6,
                           PathCondition => TRUE)),
      GlitchData => DOB6_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB7, OutSignalName => "DOB7", OutTemp => DOB7_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB7,
                           PathCondition => TRUE)),
      GlitchData => DOB7_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB8, OutSignalName => "DOB8", OutTemp => DOB8_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB8,
                           PathCondition => TRUE)),
      GlitchData => DOB8_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB9, OutSignalName => "DOB9", OutTemp => DOB9_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB9,
                           PathCondition => TRUE)),
      GlitchData => DOB9_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB10, OutSignalName => "DOB10", OutTemp => DOB10_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB10,
                           PathCondition => TRUE)),
      GlitchData => DOB10_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB11, OutSignalName => "DOB11", OutTemp => DOB11_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB11,
                           PathCondition => TRUE)),
      GlitchData => DOB11_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB12, OutSignalName => "DOB12", OutTemp => DOB12_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB12,
                           PathCondition => TRUE)),
      GlitchData => DOB12_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB13, OutSignalName => "DOB13", OutTemp => DOB13_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB13,
                           PathCondition => TRUE)),
      GlitchData => DOB13_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB14, OutSignalName => "DOB14", OutTemp => DOB14_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB14,
                           PathCondition => TRUE)),
      GlitchData => DOB14_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB15, OutSignalName => "DOB15", OutTemp => DOB15_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB15,
                           PathCondition => TRUE)),
      GlitchData => DOB15_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB16, OutSignalName => "DOB16", OutTemp => DOB16_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB16,
                           PathCondition => TRUE)),
      GlitchData => DOB16_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB17, OutSignalName => "DOB17", OutTemp => DOB17_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB17,
                           PathCondition => TRUE)),
      GlitchData => DOB17_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity PDPW16KD0011
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity PDPW16KD0011 is
    port (CEW: in Std_logic; CLKW: in Std_logic; CSW0: in Std_logic; 
          CSW1: in Std_logic; CSW2: in Std_logic; CER: in Std_logic; 
          OCER: in Std_logic; CLKR: in Std_logic; CSR0: in Std_logic; 
          CSR1: in Std_logic; CSR2: in Std_logic; RST: in Std_logic; 
          BE0: in Std_logic; BE1: in Std_logic; BE2: in Std_logic; 
          BE3: in Std_logic; DI0: in Std_logic; DI1: in Std_logic; 
          DI2: in Std_logic; DI3: in Std_logic; DI4: in Std_logic; 
          DI5: in Std_logic; DI6: in Std_logic; DI7: in Std_logic; 
          DI8: in Std_logic; DI9: in Std_logic; DI10: in Std_logic; 
          DI11: in Std_logic; DI12: in Std_logic; DI13: in Std_logic; 
          DI14: in Std_logic; DI15: in Std_logic; DI16: in Std_logic; 
          DI17: in Std_logic; DI18: in Std_logic; DI19: in Std_logic; 
          DI20: in Std_logic; DI21: in Std_logic; DI22: in Std_logic; 
          DI23: in Std_logic; DI24: in Std_logic; DI25: in Std_logic; 
          DI26: in Std_logic; DI27: in Std_logic; DI28: in Std_logic; 
          DI29: in Std_logic; DI30: in Std_logic; DI31: in Std_logic; 
          DI32: in Std_logic; DI33: in Std_logic; DI34: in Std_logic; 
          DI35: in Std_logic; ADW0: in Std_logic; ADW1: in Std_logic; 
          ADW2: in Std_logic; ADW3: in Std_logic; ADW4: in Std_logic; 
          ADW5: in Std_logic; ADW6: in Std_logic; ADW7: in Std_logic; 
          ADW8: in Std_logic; ADR0: in Std_logic; ADR1: in Std_logic; 
          ADR2: in Std_logic; ADR3: in Std_logic; ADR4: in Std_logic; 
          ADR5: in Std_logic; ADR6: in Std_logic; ADR7: in Std_logic; 
          ADR8: in Std_logic; ADR9: in Std_logic; ADR10: in Std_logic; 
          ADR11: in Std_logic; ADR12: in Std_logic; ADR13: in Std_logic; 
          DO0: out Std_logic; DO1: out Std_logic; DO2: out Std_logic; 
          DO3: out Std_logic; DO4: out Std_logic; DO5: out Std_logic; 
          DO6: out Std_logic; DO7: out Std_logic; DO8: out Std_logic; 
          DO9: out Std_logic; DO10: out Std_logic; DO11: out Std_logic; 
          DO12: out Std_logic; DO13: out Std_logic; DO14: out Std_logic; 
          DO15: out Std_logic; DO16: out Std_logic; DO17: out Std_logic; 
          DO18: out Std_logic; DO19: out Std_logic; DO20: out Std_logic; 
          DO21: out Std_logic; DO22: out Std_logic; DO23: out Std_logic; 
          DO24: out Std_logic; DO25: out Std_logic; DO26: out Std_logic; 
          DO27: out Std_logic; DO28: out Std_logic; DO29: out Std_logic; 
          DO30: out Std_logic; DO31: out Std_logic; DO32: out Std_logic; 
          DO33: out Std_logic; DO34: out Std_logic; DO35: out Std_logic);

    ATTRIBUTE Vital_Level0 OF PDPW16KD0011 : ENTITY IS TRUE;

  end PDPW16KD0011;

  architecture Structure of PDPW16KD0011 is
  begin
    INST10: PDPW16KD
      generic map (ASYNC_RESET_RELEASE => "SYNC", CSDECODE_R => "0b000", 
                   CSDECODE_W => "0b000", DATA_WIDTH_R => 36, 
                   DATA_WIDTH_W => 36, GSR => "DISABLED", 
                   INITVAL_00 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_01 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_02 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_03 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_04 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_05 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_06 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_07 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_08 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_09 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_10 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_11 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_12 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_13 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_14 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_15 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_16 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_17 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_18 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_19 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_20 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_21 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_22 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_23 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_24 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_25 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_26 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_27 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_28 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_29 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_30 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_31 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_32 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_33 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_34 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_35 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_36 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_37 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_38 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_39 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , INIT_DATA => "STATIC", REGMODE => "NOREG", 
                   RESETMODE => "ASYNC")
      port map (DI0=>DI0, DI1=>DI1, DI2=>DI2, DI3=>DI3, DI4=>DI4, DI5=>DI5, 
                DI6=>DI6, DI7=>DI7, DI8=>DI8, DI9=>DI9, DI10=>DI10, DI11=>DI11, 
                DI12=>DI12, DI13=>DI13, DI14=>DI14, DI15=>DI15, DI16=>DI16, 
                DI17=>DI17, DI18=>DI18, DI19=>DI19, DI20=>DI20, DI21=>DI21, 
                DI22=>DI22, DI23=>DI23, DI24=>DI24, DI25=>DI25, DI26=>DI26, 
                DI27=>DI27, DI28=>DI28, DI29=>DI29, DI30=>DI30, DI31=>DI31, 
                DI32=>DI32, DI33=>DI33, DI34=>DI34, DI35=>DI35, ADW0=>ADW0, 
                ADW1=>ADW1, ADW2=>ADW2, ADW3=>ADW3, ADW4=>ADW4, ADW5=>ADW5, 
                ADW6=>ADW6, ADW7=>ADW7, ADW8=>ADW8, BE0=>BE0, BE1=>BE1, 
                BE2=>BE2, BE3=>BE3, CEW=>CEW, CLKW=>CLKW, CSW0=>CSW0, 
                CSW1=>CSW1, CSW2=>CSW2, ADR0=>ADR0, ADR1=>ADR1, ADR2=>ADR2, 
                ADR3=>ADR3, ADR4=>ADR4, ADR5=>ADR5, ADR6=>ADR6, ADR7=>ADR7, 
                ADR8=>ADR8, ADR9=>ADR9, ADR10=>ADR10, ADR11=>ADR11, 
                ADR12=>ADR12, ADR13=>ADR13, CER=>CER, OCER=>OCER, CLKR=>CLKR, 
                CSR0=>CSR0, CSR1=>CSR1, CSR2=>CSR2, RST=>RST, DO0=>DO0, 
                DO1=>DO1, DO2=>DO2, DO3=>DO3, DO4=>DO4, DO5=>DO5, DO6=>DO6, 
                DO7=>DO7, DO8=>DO8, DO9=>DO9, DO10=>DO10, DO11=>DO11, 
                DO12=>DO12, DO13=>DO13, DO14=>DO14, DO15=>DO15, DO16=>DO16, 
                DO17=>DO17, DO18=>DO18, DO19=>DO19, DO20=>DO20, DO21=>DO21, 
                DO22=>DO22, DO23=>DO23, DO24=>DO24, DO25=>DO25, DO26=>DO26, 
                DO27=>DO27, DO28=>DO28, DO29=>DO29, DO30=>DO30, DO31=>DO31, 
                DO32=>DO32, DO33=>DO33, DO34=>DO34, DO35=>DO35);
  end Structure;

-- entity u_cam_cfg_u_rom_mux_868
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_cam_cfg_u_rom_mux_868 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_cam_cfg_u_rom_mux_868";

      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB13  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOA0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB5	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB6	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB7	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB8	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB9	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB10	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB11	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB12	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB13	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB14	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB15	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB16	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB17	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLKB	: VitalDelayType := 0 ns;
      tisd_CEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB5_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB5_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB5_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB6_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB6_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB6_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB7_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB7_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB7_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB8_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB8_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB8_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB9_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB9_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB9_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB10_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB10_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB10_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB11_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB11_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB11_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB12_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB12_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB12_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB13_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB13_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB13_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (DOA4: out Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
          DOA1: out Std_logic; DOA0: out Std_logic; CLKB: in Std_logic; 
          CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
          DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
          DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
          DOB8: out Std_logic; DOB9: out Std_logic; DOB10: out Std_logic; 
          DOB11: out Std_logic; DOB12: out Std_logic; DOB13: out Std_logic; 
          DOB14: out Std_logic; DOB15: out Std_logic; DOB16: out Std_logic; 
          DOB17: out Std_logic; ADB5: in Std_logic; ADB6: in Std_logic; 
          ADB7: in Std_logic; ADB8: in Std_logic; ADB9: in Std_logic; 
          ADB10: in Std_logic; ADB11: in Std_logic; ADB12: in Std_logic; 
          ADB13: in Std_logic);

    ATTRIBUTE Vital_Level0 OF u_cam_cfg_u_rom_mux_868 : ENTITY IS TRUE;

  end u_cam_cfg_u_rom_mux_868;

  architecture Structure of u_cam_cfg_u_rom_mux_868 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DOA4_out 	: std_logic := 'X';
    signal DOA3_out 	: std_logic := 'X';
    signal DOA2_out 	: std_logic := 'X';
    signal DOA1_out 	: std_logic := 'X';
    signal DOA0_out 	: std_logic := 'X';
    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
    signal CEB_ipd 	: std_logic := 'X';
    signal CEB_dly 	: std_logic := 'X';
    signal DOB0_out 	: std_logic := 'X';
    signal DOB1_out 	: std_logic := 'X';
    signal DOB2_out 	: std_logic := 'X';
    signal DOB3_out 	: std_logic := 'X';
    signal DOB4_out 	: std_logic := 'X';
    signal DOB5_out 	: std_logic := 'X';
    signal DOB6_out 	: std_logic := 'X';
    signal DOB7_out 	: std_logic := 'X';
    signal DOB8_out 	: std_logic := 'X';
    signal DOB9_out 	: std_logic := 'X';
    signal DOB10_out 	: std_logic := 'X';
    signal DOB11_out 	: std_logic := 'X';
    signal DOB12_out 	: std_logic := 'X';
    signal DOB13_out 	: std_logic := 'X';
    signal DOB14_out 	: std_logic := 'X';
    signal DOB15_out 	: std_logic := 'X';
    signal DOB16_out 	: std_logic := 'X';
    signal DOB17_out 	: std_logic := 'X';
    signal ADB5_ipd 	: std_logic := 'X';
    signal ADB5_dly 	: std_logic := 'X';
    signal ADB6_ipd 	: std_logic := 'X';
    signal ADB6_dly 	: std_logic := 'X';
    signal ADB7_ipd 	: std_logic := 'X';
    signal ADB7_dly 	: std_logic := 'X';
    signal ADB8_ipd 	: std_logic := 'X';
    signal ADB8_dly 	: std_logic := 'X';
    signal ADB9_ipd 	: std_logic := 'X';
    signal ADB9_dly 	: std_logic := 'X';
    signal ADB10_ipd 	: std_logic := 'X';
    signal ADB10_dly 	: std_logic := 'X';
    signal ADB11_ipd 	: std_logic := 'X';
    signal ADB11_dly 	: std_logic := 'X';
    signal ADB12_ipd 	: std_logic := 'X';
    signal ADB12_dly 	: std_logic := 'X';
    signal ADB13_ipd 	: std_logic := 'X';
    signal ADB13_dly 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component PDPW16KD0011
      port (CEW: in Std_logic; CLKW: in Std_logic; CSW0: in Std_logic; 
            CSW1: in Std_logic; CSW2: in Std_logic; CER: in Std_logic; 
            OCER: in Std_logic; CLKR: in Std_logic; CSR0: in Std_logic; 
            CSR1: in Std_logic; CSR2: in Std_logic; RST: in Std_logic; 
            BE0: in Std_logic; BE1: in Std_logic; BE2: in Std_logic; 
            BE3: in Std_logic; DI0: in Std_logic; DI1: in Std_logic; 
            DI2: in Std_logic; DI3: in Std_logic; DI4: in Std_logic; 
            DI5: in Std_logic; DI6: in Std_logic; DI7: in Std_logic; 
            DI8: in Std_logic; DI9: in Std_logic; DI10: in Std_logic; 
            DI11: in Std_logic; DI12: in Std_logic; DI13: in Std_logic; 
            DI14: in Std_logic; DI15: in Std_logic; DI16: in Std_logic; 
            DI17: in Std_logic; DI18: in Std_logic; DI19: in Std_logic; 
            DI20: in Std_logic; DI21: in Std_logic; DI22: in Std_logic; 
            DI23: in Std_logic; DI24: in Std_logic; DI25: in Std_logic; 
            DI26: in Std_logic; DI27: in Std_logic; DI28: in Std_logic; 
            DI29: in Std_logic; DI30: in Std_logic; DI31: in Std_logic; 
            DI32: in Std_logic; DI33: in Std_logic; DI34: in Std_logic; 
            DI35: in Std_logic; ADW0: in Std_logic; ADW1: in Std_logic; 
            ADW2: in Std_logic; ADW3: in Std_logic; ADW4: in Std_logic; 
            ADW5: in Std_logic; ADW6: in Std_logic; ADW7: in Std_logic; 
            ADW8: in Std_logic; ADR0: in Std_logic; ADR1: in Std_logic; 
            ADR2: in Std_logic; ADR3: in Std_logic; ADR4: in Std_logic; 
            ADR5: in Std_logic; ADR6: in Std_logic; ADR7: in Std_logic; 
            ADR8: in Std_logic; ADR9: in Std_logic; ADR10: in Std_logic; 
            ADR11: in Std_logic; ADR12: in Std_logic; ADR13: in Std_logic; 
            DO0: out Std_logic; DO1: out Std_logic; DO2: out Std_logic; 
            DO3: out Std_logic; DO4: out Std_logic; DO5: out Std_logic; 
            DO6: out Std_logic; DO7: out Std_logic; DO8: out Std_logic; 
            DO9: out Std_logic; DO10: out Std_logic; DO11: out Std_logic; 
            DO12: out Std_logic; DO13: out Std_logic; DO14: out Std_logic; 
            DO15: out Std_logic; DO16: out Std_logic; DO17: out Std_logic; 
            DO18: out Std_logic; DO19: out Std_logic; DO20: out Std_logic; 
            DO21: out Std_logic; DO22: out Std_logic; DO23: out Std_logic; 
            DO24: out Std_logic; DO25: out Std_logic; DO26: out Std_logic; 
            DO27: out Std_logic; DO28: out Std_logic; DO29: out Std_logic; 
            DO30: out Std_logic; DO31: out Std_logic; DO32: out Std_logic; 
            DO33: out Std_logic; DO34: out Std_logic; DO35: out Std_logic);
    end component;
  begin
    u_cam_cfg_u_rom_mux_868_PDPW16KD: PDPW16KD0011
      port map (CEW=>VCCI, CLKW=>GNDI, CSW0=>GNDI, CSW1=>GNDI, CSW2=>GNDI, 
                CER=>CEB_dly, OCER=>VCCI, CLKR=>CLKB_dly, CSR0=>GNDI, 
                CSR1=>GNDI, CSR2=>GNDI, RST=>GNDI, BE0=>GNDI, BE1=>GNDI, 
                BE2=>GNDI, BE3=>GNDI, DI0=>GNDI, DI1=>GNDI, DI2=>GNDI, 
                DI3=>GNDI, DI4=>GNDI, DI5=>GNDI, DI6=>GNDI, DI7=>GNDI, 
                DI8=>GNDI, DI9=>GNDI, DI10=>GNDI, DI11=>GNDI, DI12=>GNDI, 
                DI13=>GNDI, DI14=>GNDI, DI15=>GNDI, DI16=>GNDI, DI17=>GNDI, 
                DI18=>GNDI, DI19=>GNDI, DI20=>GNDI, DI21=>GNDI, DI22=>GNDI, 
                DI23=>GNDI, DI24=>GNDI, DI25=>GNDI, DI26=>GNDI, DI27=>GNDI, 
                DI28=>GNDI, DI29=>GNDI, DI30=>GNDI, DI31=>GNDI, DI32=>GNDI, 
                DI33=>GNDI, DI34=>GNDI, DI35=>GNDI, ADW0=>GNDI, ADW1=>GNDI, 
                ADW2=>GNDI, ADW3=>GNDI, ADW4=>GNDI, ADW5=>GNDI, ADW6=>GNDI, 
                ADW7=>GNDI, ADW8=>GNDI, ADR0=>GNDI, ADR1=>GNDI, ADR2=>GNDI, 
                ADR3=>GNDI, ADR4=>GNDI, ADR5=>ADB5_dly, ADR6=>ADB6_dly, 
                ADR7=>ADB7_dly, ADR8=>ADB8_dly, ADR9=>ADB9_dly, 
                ADR10=>ADB10_dly, ADR11=>ADB11_dly, ADR12=>ADB12_dly, 
                ADR13=>ADB13_dly, DO0=>DOB0_out, DO1=>DOB1_out, DO2=>DOB2_out, 
                DO3=>DOB3_out, DO4=>DOB4_out, DO5=>DOB5_out, DO6=>DOB6_out, 
                DO7=>DOB7_out, DO8=>DOB8_out, DO9=>DOB9_out, DO10=>DOB10_out, 
                DO11=>DOB11_out, DO12=>DOB12_out, DO13=>DOB13_out, 
                DO14=>DOB14_out, DO15=>DOB15_out, DO16=>DOB16_out, 
                DO17=>DOB17_out, DO18=>DOA0_out, DO19=>DOA1_out, 
                DO20=>DOA2_out, DO21=>DOA3_out, DO22=>DOA4_out, DO23=>open, 
                DO24=>open, DO25=>open, DO26=>open, DO27=>open, DO28=>open, 
                DO29=>open, DO30=>open, DO31=>open, DO32=>open, DO33=>open, 
                DO34=>open, DO35=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
      VitalWireDelay(CEB_ipd, CEB, tipd_CEB);
      VitalWireDelay(ADB5_ipd, ADB5, tipd_ADB5);
      VitalWireDelay(ADB6_ipd, ADB6, tipd_ADB6);
      VitalWireDelay(ADB7_ipd, ADB7, tipd_ADB7);
      VitalWireDelay(ADB8_ipd, ADB8, tipd_ADB8);
      VitalWireDelay(ADB9_ipd, ADB9, tipd_ADB9);
      VitalWireDelay(ADB10_ipd, ADB10, tipd_ADB10);
      VitalWireDelay(ADB11_ipd, ADB11, tipd_ADB11);
      VitalWireDelay(ADB12_ipd, ADB12, tipd_ADB12);
      VitalWireDelay(ADB13_ipd, ADB13, tipd_ADB13);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
      VitalSignalDelay(CEB_dly, CEB_ipd, tisd_CEB_CLKB);
      VitalSignalDelay(ADB5_dly, ADB5_ipd, tisd_ADB5_CLKB);
      VitalSignalDelay(ADB6_dly, ADB6_ipd, tisd_ADB6_CLKB);
      VitalSignalDelay(ADB7_dly, ADB7_ipd, tisd_ADB7_CLKB);
      VitalSignalDelay(ADB8_dly, ADB8_ipd, tisd_ADB8_CLKB);
      VitalSignalDelay(ADB9_dly, ADB9_ipd, tisd_ADB9_CLKB);
      VitalSignalDelay(ADB10_dly, ADB10_ipd, tisd_ADB10_CLKB);
      VitalSignalDelay(ADB11_dly, ADB11_ipd, tisd_ADB11_CLKB);
      VitalSignalDelay(ADB12_dly, ADB12_ipd, tisd_ADB12_CLKB);
      VitalSignalDelay(ADB13_dly, ADB13_ipd, tisd_ADB13_CLKB);
    END BLOCK;

    VitalBehavior : PROCESS (DOA4_out, DOA3_out, DOA2_out, DOA1_out, DOA0_out, 
      CLKB_dly, CEB_dly, DOB0_out, DOB1_out, DOB2_out, DOB3_out, DOB4_out, 
      DOB5_out, DOB6_out, DOB7_out, DOB8_out, DOB9_out, DOB10_out, DOB11_out, 
      DOB12_out, DOB13_out, DOB14_out, DOB15_out, DOB16_out, DOB17_out, 
      ADB5_dly, ADB6_dly, ADB7_dly, ADB8_dly, ADB9_dly, ADB10_dly, ADB11_dly, 
      ADB12_dly, ADB13_dly)
    VARIABLE DOA4_zd         	: std_logic := 'X';
    VARIABLE DOA4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA3_zd         	: std_logic := 'X';
    VARIABLE DOA3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA2_zd         	: std_logic := 'X';
    VARIABLE DOA2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA1_zd         	: std_logic := 'X';
    VARIABLE DOA1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA0_zd         	: std_logic := 'X';
    VARIABLE DOA0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB0_zd         	: std_logic := 'X';
    VARIABLE DOB0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB1_zd         	: std_logic := 'X';
    VARIABLE DOB1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB2_zd         	: std_logic := 'X';
    VARIABLE DOB2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB3_zd         	: std_logic := 'X';
    VARIABLE DOB3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB4_zd         	: std_logic := 'X';
    VARIABLE DOB4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB5_zd         	: std_logic := 'X';
    VARIABLE DOB5_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB6_zd         	: std_logic := 'X';
    VARIABLE DOB6_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB7_zd         	: std_logic := 'X';
    VARIABLE DOB7_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB8_zd         	: std_logic := 'X';
    VARIABLE DOB8_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB9_zd         	: std_logic := 'X';
    VARIABLE DOB9_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB10_zd         	: std_logic := 'X';
    VARIABLE DOB10_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB11_zd         	: std_logic := 'X';
    VARIABLE DOB11_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB12_zd         	: std_logic := 'X';
    VARIABLE DOB12_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB13_zd         	: std_logic := 'X';
    VARIABLE DOB13_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB14_zd         	: std_logic := 'X';
    VARIABLE DOB14_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB15_zd         	: std_logic := 'X';
    VARIABLE DOB15_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB16_zd         	: std_logic := 'X';
    VARIABLE DOB16_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB17_zd         	: std_logic := 'X';
    VARIABLE DOB17_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_CEB_CLKB       	: x01 := '0';
    VARIABLE CEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB5_CLKB       	: x01 := '0';
    VARIABLE ADB5_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB6_CLKB       	: x01 := '0';
    VARIABLE ADB6_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB7_CLKB       	: x01 := '0';
    VARIABLE ADB7_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB8_CLKB       	: x01 := '0';
    VARIABLE ADB8_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB9_CLKB       	: x01 := '0';
    VARIABLE ADB9_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB10_CLKB       	: x01 := '0';
    VARIABLE ADB10_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB11_CLKB       	: x01 := '0';
    VARIABLE ADB11_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB12_CLKB       	: x01 := '0';
    VARIABLE ADB12_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB13_CLKB       	: x01 := '0';
    VARIABLE ADB13_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => CEB_dly,
        TestSignalName => "CEB",
        TestDelay => tisd_CEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CEB_CLKB_noedge_posedge,
        SetupLow => tsetup_CEB_CLKB_noedge_posedge,
        HoldHigh => thold_CEB_CLKB_noedge_posedge,
        HoldLow => thold_CEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEB_CLKB_TimingDatash,
        Violation => tviol_CEB_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB5_dly,
        TestSignalName => "ADB5",
        TestDelay => tisd_ADB5_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB5_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB5_CLKB_noedge_posedge,
        HoldHigh => thold_ADB5_CLKB_noedge_posedge,
        HoldLow => thold_ADB5_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB5_CLKB_TimingDatash,
        Violation => tviol_ADB5_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB6_dly,
        TestSignalName => "ADB6",
        TestDelay => tisd_ADB6_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB6_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB6_CLKB_noedge_posedge,
        HoldHigh => thold_ADB6_CLKB_noedge_posedge,
        HoldLow => thold_ADB6_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB6_CLKB_TimingDatash,
        Violation => tviol_ADB6_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB7_dly,
        TestSignalName => "ADB7",
        TestDelay => tisd_ADB7_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB7_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB7_CLKB_noedge_posedge,
        HoldHigh => thold_ADB7_CLKB_noedge_posedge,
        HoldLow => thold_ADB7_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB7_CLKB_TimingDatash,
        Violation => tviol_ADB7_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB8_dly,
        TestSignalName => "ADB8",
        TestDelay => tisd_ADB8_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB8_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB8_CLKB_noedge_posedge,
        HoldHigh => thold_ADB8_CLKB_noedge_posedge,
        HoldLow => thold_ADB8_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB8_CLKB_TimingDatash,
        Violation => tviol_ADB8_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB9_dly,
        TestSignalName => "ADB9",
        TestDelay => tisd_ADB9_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB9_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB9_CLKB_noedge_posedge,
        HoldHigh => thold_ADB9_CLKB_noedge_posedge,
        HoldLow => thold_ADB9_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB9_CLKB_TimingDatash,
        Violation => tviol_ADB9_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB10_dly,
        TestSignalName => "ADB10",
        TestDelay => tisd_ADB10_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB10_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB10_CLKB_noedge_posedge,
        HoldHigh => thold_ADB10_CLKB_noedge_posedge,
        HoldLow => thold_ADB10_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB10_CLKB_TimingDatash,
        Violation => tviol_ADB10_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB11_dly,
        TestSignalName => "ADB11",
        TestDelay => tisd_ADB11_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB11_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB11_CLKB_noedge_posedge,
        HoldHigh => thold_ADB11_CLKB_noedge_posedge,
        HoldLow => thold_ADB11_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB11_CLKB_TimingDatash,
        Violation => tviol_ADB11_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB12_dly,
        TestSignalName => "ADB12",
        TestDelay => tisd_ADB12_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB12_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB12_CLKB_noedge_posedge,
        HoldHigh => thold_ADB12_CLKB_noedge_posedge,
        HoldLow => thold_ADB12_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB12_CLKB_TimingDatash,
        Violation => tviol_ADB12_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB13_dly,
        TestSignalName => "ADB13",
        TestDelay => tisd_ADB13_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB13_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB13_CLKB_noedge_posedge,
        HoldHigh => thold_ADB13_CLKB_noedge_posedge,
        HoldLow => thold_ADB13_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB13_CLKB_TimingDatash,
        Violation => tviol_ADB13_CLKB,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKB_ipd,
        TestSignalName => "CLKB",
        Period => tperiod_CLKB,
        PulseWidthHigh => tpw_CLKB_posedge,
        PulseWidthLow => tpw_CLKB_negedge,
        PeriodData => periodcheckinfo_CLKB,
        Violation => tviol_CLKB_CLKB,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOA4_zd 	:= DOA4_out;
    DOA3_zd 	:= DOA3_out;
    DOA2_zd 	:= DOA2_out;
    DOA1_zd 	:= DOA1_out;
    DOA0_zd 	:= DOA0_out;
    DOB0_zd 	:= DOB0_out;
    DOB1_zd 	:= DOB1_out;
    DOB2_zd 	:= DOB2_out;
    DOB3_zd 	:= DOB3_out;
    DOB4_zd 	:= DOB4_out;
    DOB5_zd 	:= DOB5_out;
    DOB6_zd 	:= DOB6_out;
    DOB7_zd 	:= DOB7_out;
    DOB8_zd 	:= DOB8_out;
    DOB9_zd 	:= DOB9_out;
    DOB10_zd 	:= DOB10_out;
    DOB11_zd 	:= DOB11_out;
    DOB12_zd 	:= DOB12_out;
    DOB13_zd 	:= DOB13_out;
    DOB14_zd 	:= DOB14_out;
    DOB15_zd 	:= DOB15_out;
    DOB16_zd 	:= DOB16_out;
    DOB17_zd 	:= DOB17_out;

    VitalPathDelay01 (
      OutSignal => DOA4, OutSignalName => "DOA4", OutTemp => DOA4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA4,
                           PathCondition => TRUE)),
      GlitchData => DOA4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA3, OutSignalName => "DOA3", OutTemp => DOA3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA3,
                           PathCondition => TRUE)),
      GlitchData => DOA3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA2, OutSignalName => "DOA2", OutTemp => DOA2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA2,
                           PathCondition => TRUE)),
      GlitchData => DOA2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA1, OutSignalName => "DOA1", OutTemp => DOA1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA1,
                           PathCondition => TRUE)),
      GlitchData => DOA1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA0, OutSignalName => "DOA0", OutTemp => DOA0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOA0,
                           PathCondition => TRUE)),
      GlitchData => DOA0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB0, OutSignalName => "DOB0", OutTemp => DOB0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB0,
                           PathCondition => TRUE)),
      GlitchData => DOB0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB1, OutSignalName => "DOB1", OutTemp => DOB1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB1,
                           PathCondition => TRUE)),
      GlitchData => DOB1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB2, OutSignalName => "DOB2", OutTemp => DOB2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB2,
                           PathCondition => TRUE)),
      GlitchData => DOB2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB3, OutSignalName => "DOB3", OutTemp => DOB3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB3,
                           PathCondition => TRUE)),
      GlitchData => DOB3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB4, OutSignalName => "DOB4", OutTemp => DOB4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB4,
                           PathCondition => TRUE)),
      GlitchData => DOB4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB5, OutSignalName => "DOB5", OutTemp => DOB5_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB5,
                           PathCondition => TRUE)),
      GlitchData => DOB5_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB6, OutSignalName => "DOB6", OutTemp => DOB6_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB6,
                           PathCondition => TRUE)),
      GlitchData => DOB6_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB7, OutSignalName => "DOB7", OutTemp => DOB7_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB7,
                           PathCondition => TRUE)),
      GlitchData => DOB7_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB8, OutSignalName => "DOB8", OutTemp => DOB8_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB8,
                           PathCondition => TRUE)),
      GlitchData => DOB8_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB9, OutSignalName => "DOB9", OutTemp => DOB9_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB9,
                           PathCondition => TRUE)),
      GlitchData => DOB9_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB10, OutSignalName => "DOB10", OutTemp => DOB10_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB10,
                           PathCondition => TRUE)),
      GlitchData => DOB10_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB11, OutSignalName => "DOB11", OutTemp => DOB11_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB11,
                           PathCondition => TRUE)),
      GlitchData => DOB11_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB12, OutSignalName => "DOB12", OutTemp => DOB12_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB12,
                           PathCondition => TRUE)),
      GlitchData => DOB12_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB13, OutSignalName => "DOB13", OutTemp => DOB13_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB13,
                           PathCondition => TRUE)),
      GlitchData => DOB13_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB14, OutSignalName => "DOB14", OutTemp => DOB14_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB14,
                           PathCondition => TRUE)),
      GlitchData => DOB14_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB15, OutSignalName => "DOB15", OutTemp => DOB15_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB15,
                           PathCondition => TRUE)),
      GlitchData => DOB15_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB16, OutSignalName => "DOB16", OutTemp => DOB16_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB16,
                           PathCondition => TRUE)),
      GlitchData => DOB16_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB17, OutSignalName => "DOB17", OutTemp => DOB17_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB17,
                           PathCondition => TRUE)),
      GlitchData => DOB17_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity PDPW16KD0012
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity PDPW16KD0012 is
    port (CEW: in Std_logic; CLKW: in Std_logic; CSW0: in Std_logic; 
          CSW1: in Std_logic; CSW2: in Std_logic; CER: in Std_logic; 
          OCER: in Std_logic; CLKR: in Std_logic; CSR0: in Std_logic; 
          CSR1: in Std_logic; CSR2: in Std_logic; RST: in Std_logic; 
          BE0: in Std_logic; BE1: in Std_logic; BE2: in Std_logic; 
          BE3: in Std_logic; DI0: in Std_logic; DI1: in Std_logic; 
          DI2: in Std_logic; DI3: in Std_logic; DI4: in Std_logic; 
          DI5: in Std_logic; DI6: in Std_logic; DI7: in Std_logic; 
          DI8: in Std_logic; DI9: in Std_logic; DI10: in Std_logic; 
          DI11: in Std_logic; DI12: in Std_logic; DI13: in Std_logic; 
          DI14: in Std_logic; DI15: in Std_logic; DI16: in Std_logic; 
          DI17: in Std_logic; DI18: in Std_logic; DI19: in Std_logic; 
          DI20: in Std_logic; DI21: in Std_logic; DI22: in Std_logic; 
          DI23: in Std_logic; DI24: in Std_logic; DI25: in Std_logic; 
          DI26: in Std_logic; DI27: in Std_logic; DI28: in Std_logic; 
          DI29: in Std_logic; DI30: in Std_logic; DI31: in Std_logic; 
          DI32: in Std_logic; DI33: in Std_logic; DI34: in Std_logic; 
          DI35: in Std_logic; ADW0: in Std_logic; ADW1: in Std_logic; 
          ADW2: in Std_logic; ADW3: in Std_logic; ADW4: in Std_logic; 
          ADW5: in Std_logic; ADW6: in Std_logic; ADW7: in Std_logic; 
          ADW8: in Std_logic; ADR0: in Std_logic; ADR1: in Std_logic; 
          ADR2: in Std_logic; ADR3: in Std_logic; ADR4: in Std_logic; 
          ADR5: in Std_logic; ADR6: in Std_logic; ADR7: in Std_logic; 
          ADR8: in Std_logic; ADR9: in Std_logic; ADR10: in Std_logic; 
          ADR11: in Std_logic; ADR12: in Std_logic; ADR13: in Std_logic; 
          DO0: out Std_logic; DO1: out Std_logic; DO2: out Std_logic; 
          DO3: out Std_logic; DO4: out Std_logic; DO5: out Std_logic; 
          DO6: out Std_logic; DO7: out Std_logic; DO8: out Std_logic; 
          DO9: out Std_logic; DO10: out Std_logic; DO11: out Std_logic; 
          DO12: out Std_logic; DO13: out Std_logic; DO14: out Std_logic; 
          DO15: out Std_logic; DO16: out Std_logic; DO17: out Std_logic; 
          DO18: out Std_logic; DO19: out Std_logic; DO20: out Std_logic; 
          DO21: out Std_logic; DO22: out Std_logic; DO23: out Std_logic; 
          DO24: out Std_logic; DO25: out Std_logic; DO26: out Std_logic; 
          DO27: out Std_logic; DO28: out Std_logic; DO29: out Std_logic; 
          DO30: out Std_logic; DO31: out Std_logic; DO32: out Std_logic; 
          DO33: out Std_logic; DO34: out Std_logic; DO35: out Std_logic);

    ATTRIBUTE Vital_Level0 OF PDPW16KD0012 : ENTITY IS TRUE;

  end PDPW16KD0012;

  architecture Structure of PDPW16KD0012 is
  begin
    INST10: PDPW16KD
      generic map (ASYNC_RESET_RELEASE => "SYNC", CSDECODE_R => "0b000", 
                   CSDECODE_W => "0b000", DATA_WIDTH_R => 9, 
                   DATA_WIDTH_W => 36, GSR => "DISABLED", 
                   INITVAL_00 => "0x038000100013028000040000814EA7000301CEE31EEEF038080200000422040350B0C21FEFF00642"
                   , 
                   INITVAL_01 => "0x00802004030A4640520000231062F80004302860008031EC0004E011FE3F1FE3F006300F0000809C"
                   , 
                   INITVAL_02 => "0x140E0024E201C3600C00020001B0030D0071C001100021360707E0A00800000000021308C2103480"
                   , 
                   INITVAL_03 => "0x14EE30BA8001E0F01E2404A14000F21FE010800302650040520C03301012014100041A0C0010F05A"
                   , 
                   INITVAL_04 => "0x0203001098002100D87C1107E014080B61E0708700800008D000C01006F01E070008F809C5E06640"
                   , 
                   INITVAL_05 => "0x020100800900A0403AEA1BACD170AA1349110E7D0E2650A228028080020600830010160103001000"
                   , 
                   INITVAL_06 => "0x0240900C060141401404000000080B01404000000080B0220A00C07014140741E02C1703E3D1F000"
                   , 
                   INITVAL_07 => "0x19C3706C2806C2604C340683506C16084500642604C240682506A3704A2806C370761F02E180423D"
                   , 
                   INITVAL_08 => "0x0000000000000000000000000000000000000000000000000000000000000000000000000001FE02"
                   , 
                   INITVAL_09 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_0F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_10 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_11 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_12 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_13 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_14 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_15 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_16 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_17 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_18 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_19 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_20 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_21 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_22 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_23 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_24 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_25 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_26 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_27 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_28 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_29 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_30 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_31 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_32 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_33 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_34 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_35 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_36 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_37 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_38 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_39 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , INIT_DATA => "STATIC", REGMODE => "NOREG", 
                   RESETMODE => "ASYNC")
      port map (DI0=>DI0, DI1=>DI1, DI2=>DI2, DI3=>DI3, DI4=>DI4, DI5=>DI5, 
                DI6=>DI6, DI7=>DI7, DI8=>DI8, DI9=>DI9, DI10=>DI10, DI11=>DI11, 
                DI12=>DI12, DI13=>DI13, DI14=>DI14, DI15=>DI15, DI16=>DI16, 
                DI17=>DI17, DI18=>DI18, DI19=>DI19, DI20=>DI20, DI21=>DI21, 
                DI22=>DI22, DI23=>DI23, DI24=>DI24, DI25=>DI25, DI26=>DI26, 
                DI27=>DI27, DI28=>DI28, DI29=>DI29, DI30=>DI30, DI31=>DI31, 
                DI32=>DI32, DI33=>DI33, DI34=>DI34, DI35=>DI35, ADW0=>ADW0, 
                ADW1=>ADW1, ADW2=>ADW2, ADW3=>ADW3, ADW4=>ADW4, ADW5=>ADW5, 
                ADW6=>ADW6, ADW7=>ADW7, ADW8=>ADW8, BE0=>BE0, BE1=>BE1, 
                BE2=>BE2, BE3=>BE3, CEW=>CEW, CLKW=>CLKW, CSW0=>CSW0, 
                CSW1=>CSW1, CSW2=>CSW2, ADR0=>ADR0, ADR1=>ADR1, ADR2=>ADR2, 
                ADR3=>ADR3, ADR4=>ADR4, ADR5=>ADR5, ADR6=>ADR6, ADR7=>ADR7, 
                ADR8=>ADR8, ADR9=>ADR9, ADR10=>ADR10, ADR11=>ADR11, 
                ADR12=>ADR12, ADR13=>ADR13, CER=>CER, OCER=>OCER, CLKR=>CLKR, 
                CSR0=>CSR0, CSR1=>CSR1, CSR2=>CSR2, RST=>RST, DO0=>DO0, 
                DO1=>DO1, DO2=>DO2, DO3=>DO3, DO4=>DO4, DO5=>DO5, DO6=>DO6, 
                DO7=>DO7, DO8=>DO8, DO9=>DO9, DO10=>DO10, DO11=>DO11, 
                DO12=>DO12, DO13=>DO13, DO14=>DO14, DO15=>DO15, DO16=>DO16, 
                DO17=>DO17, DO18=>DO18, DO19=>DO19, DO20=>DO20, DO21=>DO21, 
                DO22=>DO22, DO23=>DO23, DO24=>DO24, DO25=>DO25, DO26=>DO26, 
                DO27=>DO27, DO28=>DO28, DO29=>DO29, DO30=>DO30, DO31=>DO31, 
                DO32=>DO32, DO33=>DO33, DO34=>DO34, DO35=>DO35);
  end Structure;

-- entity mux_367
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity mux_367 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "mux_367";

      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB13  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB5	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB6	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB7	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLKB	: VitalDelayType := 0 ns;
      tisd_CEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB3_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB3_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB3_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB4_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB4_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB4_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB5_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB5_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB5_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB6_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB6_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB6_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB7_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB7_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB7_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB8_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB8_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB8_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB9_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB9_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB9_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB10_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB10_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB10_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB11_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB11_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB11_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB12_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB12_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB12_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADB13_CLKB	: VitalDelayType := 0 ns;
      tsetup_ADB13_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADB13_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (CLKB: in Std_logic; CEB: in Std_logic; DOB0: out Std_logic; 
          DOB1: out Std_logic; DOB2: out Std_logic; DOB3: out Std_logic; 
          DOB4: out Std_logic; DOB5: out Std_logic; DOB6: out Std_logic; 
          DOB7: out Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
          ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
          ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
          ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic);

    ATTRIBUTE Vital_Level0 OF mux_367 : ENTITY IS TRUE;

  end mux_367;

  architecture Structure of mux_367 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
    signal CEB_ipd 	: std_logic := 'X';
    signal CEB_dly 	: std_logic := 'X';
    signal DOB0_out 	: std_logic := 'X';
    signal DOB1_out 	: std_logic := 'X';
    signal DOB2_out 	: std_logic := 'X';
    signal DOB3_out 	: std_logic := 'X';
    signal DOB4_out 	: std_logic := 'X';
    signal DOB5_out 	: std_logic := 'X';
    signal DOB6_out 	: std_logic := 'X';
    signal DOB7_out 	: std_logic := 'X';
    signal ADB3_ipd 	: std_logic := 'X';
    signal ADB3_dly 	: std_logic := 'X';
    signal ADB4_ipd 	: std_logic := 'X';
    signal ADB4_dly 	: std_logic := 'X';
    signal ADB5_ipd 	: std_logic := 'X';
    signal ADB5_dly 	: std_logic := 'X';
    signal ADB6_ipd 	: std_logic := 'X';
    signal ADB6_dly 	: std_logic := 'X';
    signal ADB7_ipd 	: std_logic := 'X';
    signal ADB7_dly 	: std_logic := 'X';
    signal ADB8_ipd 	: std_logic := 'X';
    signal ADB8_dly 	: std_logic := 'X';
    signal ADB9_ipd 	: std_logic := 'X';
    signal ADB9_dly 	: std_logic := 'X';
    signal ADB10_ipd 	: std_logic := 'X';
    signal ADB10_dly 	: std_logic := 'X';
    signal ADB11_ipd 	: std_logic := 'X';
    signal ADB11_dly 	: std_logic := 'X';
    signal ADB12_ipd 	: std_logic := 'X';
    signal ADB12_dly 	: std_logic := 'X';
    signal ADB13_ipd 	: std_logic := 'X';
    signal ADB13_dly 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component PDPW16KD0012
      port (CEW: in Std_logic; CLKW: in Std_logic; CSW0: in Std_logic; 
            CSW1: in Std_logic; CSW2: in Std_logic; CER: in Std_logic; 
            OCER: in Std_logic; CLKR: in Std_logic; CSR0: in Std_logic; 
            CSR1: in Std_logic; CSR2: in Std_logic; RST: in Std_logic; 
            BE0: in Std_logic; BE1: in Std_logic; BE2: in Std_logic; 
            BE3: in Std_logic; DI0: in Std_logic; DI1: in Std_logic; 
            DI2: in Std_logic; DI3: in Std_logic; DI4: in Std_logic; 
            DI5: in Std_logic; DI6: in Std_logic; DI7: in Std_logic; 
            DI8: in Std_logic; DI9: in Std_logic; DI10: in Std_logic; 
            DI11: in Std_logic; DI12: in Std_logic; DI13: in Std_logic; 
            DI14: in Std_logic; DI15: in Std_logic; DI16: in Std_logic; 
            DI17: in Std_logic; DI18: in Std_logic; DI19: in Std_logic; 
            DI20: in Std_logic; DI21: in Std_logic; DI22: in Std_logic; 
            DI23: in Std_logic; DI24: in Std_logic; DI25: in Std_logic; 
            DI26: in Std_logic; DI27: in Std_logic; DI28: in Std_logic; 
            DI29: in Std_logic; DI30: in Std_logic; DI31: in Std_logic; 
            DI32: in Std_logic; DI33: in Std_logic; DI34: in Std_logic; 
            DI35: in Std_logic; ADW0: in Std_logic; ADW1: in Std_logic; 
            ADW2: in Std_logic; ADW3: in Std_logic; ADW4: in Std_logic; 
            ADW5: in Std_logic; ADW6: in Std_logic; ADW7: in Std_logic; 
            ADW8: in Std_logic; ADR0: in Std_logic; ADR1: in Std_logic; 
            ADR2: in Std_logic; ADR3: in Std_logic; ADR4: in Std_logic; 
            ADR5: in Std_logic; ADR6: in Std_logic; ADR7: in Std_logic; 
            ADR8: in Std_logic; ADR9: in Std_logic; ADR10: in Std_logic; 
            ADR11: in Std_logic; ADR12: in Std_logic; ADR13: in Std_logic; 
            DO0: out Std_logic; DO1: out Std_logic; DO2: out Std_logic; 
            DO3: out Std_logic; DO4: out Std_logic; DO5: out Std_logic; 
            DO6: out Std_logic; DO7: out Std_logic; DO8: out Std_logic; 
            DO9: out Std_logic; DO10: out Std_logic; DO11: out Std_logic; 
            DO12: out Std_logic; DO13: out Std_logic; DO14: out Std_logic; 
            DO15: out Std_logic; DO16: out Std_logic; DO17: out Std_logic; 
            DO18: out Std_logic; DO19: out Std_logic; DO20: out Std_logic; 
            DO21: out Std_logic; DO22: out Std_logic; DO23: out Std_logic; 
            DO24: out Std_logic; DO25: out Std_logic; DO26: out Std_logic; 
            DO27: out Std_logic; DO28: out Std_logic; DO29: out Std_logic; 
            DO30: out Std_logic; DO31: out Std_logic; DO32: out Std_logic; 
            DO33: out Std_logic; DO34: out Std_logic; DO35: out Std_logic);
    end component;
  begin
    mux_367_PDPW16KD: PDPW16KD0012
      port map (CEW=>VCCI, CLKW=>GNDI, CSW0=>GNDI, CSW1=>GNDI, CSW2=>GNDI, 
                CER=>CEB_dly, OCER=>VCCI, CLKR=>CLKB_dly, CSR0=>GNDI, 
                CSR1=>GNDI, CSR2=>GNDI, RST=>GNDI, BE0=>GNDI, BE1=>GNDI, 
                BE2=>GNDI, BE3=>GNDI, DI0=>GNDI, DI1=>GNDI, DI2=>GNDI, 
                DI3=>GNDI, DI4=>GNDI, DI5=>GNDI, DI6=>GNDI, DI7=>GNDI, 
                DI8=>GNDI, DI9=>GNDI, DI10=>GNDI, DI11=>GNDI, DI12=>GNDI, 
                DI13=>GNDI, DI14=>GNDI, DI15=>GNDI, DI16=>GNDI, DI17=>GNDI, 
                DI18=>GNDI, DI19=>GNDI, DI20=>GNDI, DI21=>GNDI, DI22=>GNDI, 
                DI23=>GNDI, DI24=>GNDI, DI25=>GNDI, DI26=>GNDI, DI27=>GNDI, 
                DI28=>GNDI, DI29=>GNDI, DI30=>GNDI, DI31=>GNDI, DI32=>GNDI, 
                DI33=>GNDI, DI34=>GNDI, DI35=>GNDI, ADW0=>GNDI, ADW1=>GNDI, 
                ADW2=>GNDI, ADW3=>GNDI, ADW4=>GNDI, ADW5=>GNDI, ADW6=>GNDI, 
                ADW7=>GNDI, ADW8=>GNDI, ADR0=>GNDI, ADR1=>GNDI, ADR2=>GNDI, 
                ADR3=>ADB3_dly, ADR4=>ADB4_dly, ADR5=>ADB5_dly, ADR6=>ADB6_dly, 
                ADR7=>ADB7_dly, ADR8=>ADB8_dly, ADR9=>ADB9_dly, 
                ADR10=>ADB10_dly, ADR11=>ADB11_dly, ADR12=>ADB12_dly, 
                ADR13=>ADB13_dly, DO0=>DOB0_out, DO1=>DOB1_out, DO2=>DOB2_out, 
                DO3=>DOB3_out, DO4=>DOB4_out, DO5=>DOB5_out, DO6=>DOB6_out, 
                DO7=>DOB7_out, DO8=>open, DO9=>open, DO10=>open, DO11=>open, 
                DO12=>open, DO13=>open, DO14=>open, DO15=>open, DO16=>open, 
                DO17=>open, DO18=>open, DO19=>open, DO20=>open, DO21=>open, 
                DO22=>open, DO23=>open, DO24=>open, DO25=>open, DO26=>open, 
                DO27=>open, DO28=>open, DO29=>open, DO30=>open, DO31=>open, 
                DO32=>open, DO33=>open, DO34=>open, DO35=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
      VitalWireDelay(CEB_ipd, CEB, tipd_CEB);
      VitalWireDelay(ADB3_ipd, ADB3, tipd_ADB3);
      VitalWireDelay(ADB4_ipd, ADB4, tipd_ADB4);
      VitalWireDelay(ADB5_ipd, ADB5, tipd_ADB5);
      VitalWireDelay(ADB6_ipd, ADB6, tipd_ADB6);
      VitalWireDelay(ADB7_ipd, ADB7, tipd_ADB7);
      VitalWireDelay(ADB8_ipd, ADB8, tipd_ADB8);
      VitalWireDelay(ADB9_ipd, ADB9, tipd_ADB9);
      VitalWireDelay(ADB10_ipd, ADB10, tipd_ADB10);
      VitalWireDelay(ADB11_ipd, ADB11, tipd_ADB11);
      VitalWireDelay(ADB12_ipd, ADB12, tipd_ADB12);
      VitalWireDelay(ADB13_ipd, ADB13, tipd_ADB13);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
      VitalSignalDelay(CEB_dly, CEB_ipd, tisd_CEB_CLKB);
      VitalSignalDelay(ADB3_dly, ADB3_ipd, tisd_ADB3_CLKB);
      VitalSignalDelay(ADB4_dly, ADB4_ipd, tisd_ADB4_CLKB);
      VitalSignalDelay(ADB5_dly, ADB5_ipd, tisd_ADB5_CLKB);
      VitalSignalDelay(ADB6_dly, ADB6_ipd, tisd_ADB6_CLKB);
      VitalSignalDelay(ADB7_dly, ADB7_ipd, tisd_ADB7_CLKB);
      VitalSignalDelay(ADB8_dly, ADB8_ipd, tisd_ADB8_CLKB);
      VitalSignalDelay(ADB9_dly, ADB9_ipd, tisd_ADB9_CLKB);
      VitalSignalDelay(ADB10_dly, ADB10_ipd, tisd_ADB10_CLKB);
      VitalSignalDelay(ADB11_dly, ADB11_ipd, tisd_ADB11_CLKB);
      VitalSignalDelay(ADB12_dly, ADB12_ipd, tisd_ADB12_CLKB);
      VitalSignalDelay(ADB13_dly, ADB13_ipd, tisd_ADB13_CLKB);
    END BLOCK;

    VitalBehavior : PROCESS (CLKB_dly, CEB_dly, DOB0_out, DOB1_out, DOB2_out, 
      DOB3_out, DOB4_out, DOB5_out, DOB6_out, DOB7_out, ADB3_dly, ADB4_dly, 
      ADB5_dly, ADB6_dly, ADB7_dly, ADB8_dly, ADB9_dly, ADB10_dly, ADB11_dly, 
      ADB12_dly, ADB13_dly)
    VARIABLE DOB0_zd         	: std_logic := 'X';
    VARIABLE DOB0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB1_zd         	: std_logic := 'X';
    VARIABLE DOB1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB2_zd         	: std_logic := 'X';
    VARIABLE DOB2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB3_zd         	: std_logic := 'X';
    VARIABLE DOB3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB4_zd         	: std_logic := 'X';
    VARIABLE DOB4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB5_zd         	: std_logic := 'X';
    VARIABLE DOB5_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB6_zd         	: std_logic := 'X';
    VARIABLE DOB6_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB7_zd         	: std_logic := 'X';
    VARIABLE DOB7_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_CEB_CLKB       	: x01 := '0';
    VARIABLE CEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB3_CLKB       	: x01 := '0';
    VARIABLE ADB3_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB4_CLKB       	: x01 := '0';
    VARIABLE ADB4_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB5_CLKB       	: x01 := '0';
    VARIABLE ADB5_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB6_CLKB       	: x01 := '0';
    VARIABLE ADB6_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB7_CLKB       	: x01 := '0';
    VARIABLE ADB7_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB8_CLKB       	: x01 := '0';
    VARIABLE ADB8_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB9_CLKB       	: x01 := '0';
    VARIABLE ADB9_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB10_CLKB       	: x01 := '0';
    VARIABLE ADB10_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB11_CLKB       	: x01 := '0';
    VARIABLE ADB11_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB12_CLKB       	: x01 := '0';
    VARIABLE ADB12_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADB13_CLKB       	: x01 := '0';
    VARIABLE ADB13_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => CEB_dly,
        TestSignalName => "CEB",
        TestDelay => tisd_CEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CEB_CLKB_noedge_posedge,
        SetupLow => tsetup_CEB_CLKB_noedge_posedge,
        HoldHigh => thold_CEB_CLKB_noedge_posedge,
        HoldLow => thold_CEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEB_CLKB_TimingDatash,
        Violation => tviol_CEB_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB3_dly,
        TestSignalName => "ADB3",
        TestDelay => tisd_ADB3_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB3_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB3_CLKB_noedge_posedge,
        HoldHigh => thold_ADB3_CLKB_noedge_posedge,
        HoldLow => thold_ADB3_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB3_CLKB_TimingDatash,
        Violation => tviol_ADB3_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB4_dly,
        TestSignalName => "ADB4",
        TestDelay => tisd_ADB4_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB4_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB4_CLKB_noedge_posedge,
        HoldHigh => thold_ADB4_CLKB_noedge_posedge,
        HoldLow => thold_ADB4_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB4_CLKB_TimingDatash,
        Violation => tviol_ADB4_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB5_dly,
        TestSignalName => "ADB5",
        TestDelay => tisd_ADB5_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB5_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB5_CLKB_noedge_posedge,
        HoldHigh => thold_ADB5_CLKB_noedge_posedge,
        HoldLow => thold_ADB5_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB5_CLKB_TimingDatash,
        Violation => tviol_ADB5_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB6_dly,
        TestSignalName => "ADB6",
        TestDelay => tisd_ADB6_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB6_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB6_CLKB_noedge_posedge,
        HoldHigh => thold_ADB6_CLKB_noedge_posedge,
        HoldLow => thold_ADB6_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB6_CLKB_TimingDatash,
        Violation => tviol_ADB6_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB7_dly,
        TestSignalName => "ADB7",
        TestDelay => tisd_ADB7_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB7_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB7_CLKB_noedge_posedge,
        HoldHigh => thold_ADB7_CLKB_noedge_posedge,
        HoldLow => thold_ADB7_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB7_CLKB_TimingDatash,
        Violation => tviol_ADB7_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB8_dly,
        TestSignalName => "ADB8",
        TestDelay => tisd_ADB8_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB8_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB8_CLKB_noedge_posedge,
        HoldHigh => thold_ADB8_CLKB_noedge_posedge,
        HoldLow => thold_ADB8_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB8_CLKB_TimingDatash,
        Violation => tviol_ADB8_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB9_dly,
        TestSignalName => "ADB9",
        TestDelay => tisd_ADB9_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB9_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB9_CLKB_noedge_posedge,
        HoldHigh => thold_ADB9_CLKB_noedge_posedge,
        HoldLow => thold_ADB9_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB9_CLKB_TimingDatash,
        Violation => tviol_ADB9_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB10_dly,
        TestSignalName => "ADB10",
        TestDelay => tisd_ADB10_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB10_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB10_CLKB_noedge_posedge,
        HoldHigh => thold_ADB10_CLKB_noedge_posedge,
        HoldLow => thold_ADB10_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB10_CLKB_TimingDatash,
        Violation => tviol_ADB10_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB11_dly,
        TestSignalName => "ADB11",
        TestDelay => tisd_ADB11_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB11_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB11_CLKB_noedge_posedge,
        HoldHigh => thold_ADB11_CLKB_noedge_posedge,
        HoldLow => thold_ADB11_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB11_CLKB_TimingDatash,
        Violation => tviol_ADB11_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB12_dly,
        TestSignalName => "ADB12",
        TestDelay => tisd_ADB12_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB12_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB12_CLKB_noedge_posedge,
        HoldHigh => thold_ADB12_CLKB_noedge_posedge,
        HoldLow => thold_ADB12_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB12_CLKB_TimingDatash,
        Violation => tviol_ADB12_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADB13_dly,
        TestSignalName => "ADB13",
        TestDelay => tisd_ADB13_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_ADB13_CLKB_noedge_posedge,
        SetupLow => tsetup_ADB13_CLKB_noedge_posedge,
        HoldHigh => thold_ADB13_CLKB_noedge_posedge,
        HoldLow => thold_ADB13_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADB13_CLKB_TimingDatash,
        Violation => tviol_ADB13_CLKB,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKB_ipd,
        TestSignalName => "CLKB",
        Period => tperiod_CLKB,
        PulseWidthHigh => tpw_CLKB_posedge,
        PulseWidthLow => tpw_CLKB_negedge,
        PeriodData => periodcheckinfo_CLKB,
        Violation => tviol_CLKB_CLKB,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOB0_zd 	:= DOB0_out;
    DOB1_zd 	:= DOB1_out;
    DOB2_zd 	:= DOB2_out;
    DOB3_zd 	:= DOB3_out;
    DOB4_zd 	:= DOB4_out;
    DOB5_zd 	:= DOB5_out;
    DOB6_zd 	:= DOB6_out;
    DOB7_zd 	:= DOB7_out;

    VitalPathDelay01 (
      OutSignal => DOB0, OutSignalName => "DOB0", OutTemp => DOB0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB0,
                           PathCondition => TRUE)),
      GlitchData => DOB0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB1, OutSignalName => "DOB1", OutTemp => DOB1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB1,
                           PathCondition => TRUE)),
      GlitchData => DOB1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB2, OutSignalName => "DOB2", OutTemp => DOB2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB2,
                           PathCondition => TRUE)),
      GlitchData => DOB2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB3, OutSignalName => "DOB3", OutTemp => DOB3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB3,
                           PathCondition => TRUE)),
      GlitchData => DOB3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB4, OutSignalName => "DOB4", OutTemp => DOB4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB4,
                           PathCondition => TRUE)),
      GlitchData => DOB4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB5, OutSignalName => "DOB5", OutTemp => DOB5_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB5,
                           PathCondition => TRUE)),
      GlitchData => DOB5_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB6, OutSignalName => "DOB6", OutTemp => DOB6_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB6,
                           PathCondition => TRUE)),
      GlitchData => DOB6_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB7, OutSignalName => "DOB7", OutTemp => DOB7_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB7,
                           PathCondition => TRUE)),
      GlitchData => DOB7_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity EHXPLLLB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity EHXPLLLB is
    port (CLKI: in Std_logic; CLKFB: in Std_logic; PHASESEL1: in Std_logic; 
          PHASESEL0: in Std_logic; PHASEDIR: in Std_logic; 
          PHASESTEP: in Std_logic; PHASELOADREG: in Std_logic; 
          STDBY: in Std_logic; PLLWAKESYNC: in Std_logic; RST: in Std_logic; 
          ENCLKOP: in Std_logic; ENCLKOS: in Std_logic; ENCLKOS2: in Std_logic; 
          ENCLKOS3: in Std_logic; CLKOP: out Std_logic; CLKOS: out Std_logic; 
          CLKOS2: out Std_logic; CLKOS3: out Std_logic; LOCK: out Std_logic; 
          INTLOCK: out Std_logic; REFCLK: out Std_logic; 
          CLKINTFB: out Std_logic);



  end EHXPLLLB;

  architecture Structure of EHXPLLLB is
  begin
    INST10: EHXPLLL
      generic map (CLKFB_DIV => 2, CLKI_DIV => 1, CLKOP_CPHASE => 11, 
                   CLKOP_DIV => 12, CLKOP_ENABLE => "ENABLED", 
                   CLKOP_FPHASE => 0, CLKOP_TRIM_DELAY => 0, 
                   CLKOP_TRIM_POL => "FALLING", CLKOS2_CPHASE => 0, 
                   CLKOS2_DIV => 1, CLKOS2_ENABLE => "DISABLED", 
                   CLKOS2_FPHASE => 0, CLKOS3_CPHASE => 0, CLKOS3_DIV => 1, 
                   CLKOS3_ENABLE => "DISABLED", CLKOS3_FPHASE => 0, 
                   CLKOS_CPHASE => 23, CLKOS_DIV => 24, 
                   CLKOS_ENABLE => "ENABLED", CLKOS_FPHASE => 0, 
                   CLKOS_TRIM_DELAY => 0, CLKOS_TRIM_POL => "FALLING", 
                   DPHASE_SOURCE => "DISABLED", FEEDBK_PATH => "CLKOP", 
                   INTFB_WAKE => "DISABLED", INT_LOCK_STICKY => "ENABLED", 
                   OUTDIVIDER_MUXA => "DIVA", OUTDIVIDER_MUXB => "DIVB", 
                   OUTDIVIDER_MUXC => "DIVC", OUTDIVIDER_MUXD => "DIVD", 
                   PLLRST_ENA => "DISABLED", PLL_LOCK_DELAY => 200, 
                   PLL_LOCK_MODE => 0, REFIN_RESET => "DISABLED", 
                   STDBY_ENABLE => "DISABLED", SYNC_ENABLE => "DISABLED")
      port map (CLKI=>CLKI, CLKFB=>CLKFB, PHASESEL1=>PHASESEL1, 
                PHASESEL0=>PHASESEL0, PHASEDIR=>PHASEDIR, PHASESTEP=>PHASESTEP, 
                PHASELOADREG=>PHASELOADREG, STDBY=>STDBY, 
                PLLWAKESYNC=>PLLWAKESYNC, RST=>RST, ENCLKOP=>ENCLKOP, 
                ENCLKOS=>ENCLKOS, ENCLKOS2=>ENCLKOS2, ENCLKOS3=>ENCLKOS3, 
                CLKOP=>CLKOP, CLKOS=>CLKOS, CLKOS2=>CLKOS2, CLKOS3=>CLKOS3, 
                LOCK=>LOCK, INTLOCK=>INTLOCK, REFCLK=>REFCLK, 
                CLKINTFB=>CLKINTFB);
  end Structure;

-- entity u_pll_PLLInst_0
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_pll_PLLInst_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_pll_PLLInst_0";

      tipd_CLKI  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKFB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_STDBY  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKI_CLKOS	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKI_CLKOP	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKFB_CLKOS	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKFB_CLKOP	 : VitalDelayType01 := (0 ns, 0 ns));

    port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
          CLKOS: out Std_logic; CLKOP: out Std_logic);



  end u_pll_PLLInst_0;

  architecture Structure of u_pll_PLLInst_0 is
    signal CLKI_ipd 	: std_logic := 'X';
    signal CLKFB_ipd 	: std_logic := 'X';
    signal STDBY_ipd 	: std_logic := 'X';
    signal CLKOS_out 	: std_logic := 'X';
    signal CLKOP_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component EHXPLLLB
      port (CLKI: in Std_logic; CLKFB: in Std_logic; PHASESEL1: in Std_logic; 
            PHASESEL0: in Std_logic; PHASEDIR: in Std_logic; 
            PHASESTEP: in Std_logic; PHASELOADREG: in Std_logic; 
            STDBY: in Std_logic; PLLWAKESYNC: in Std_logic; RST: in Std_logic; 
            ENCLKOP: in Std_logic; ENCLKOS: in Std_logic; 
            ENCLKOS2: in Std_logic; ENCLKOS3: in Std_logic; 
            CLKOP: out Std_logic; CLKOS: out Std_logic; CLKOS2: out Std_logic; 
            CLKOS3: out Std_logic; LOCK: out Std_logic; INTLOCK: out Std_logic; 
            REFCLK: out Std_logic; CLKINTFB: out Std_logic);
    end component;
  begin
    u_pll_PLLInst_0_EHXPLLL: EHXPLLLB
      port map (CLKI=>CLKI_ipd, CLKFB=>CLKFB_ipd, PHASESEL1=>GNDI, 
                PHASESEL0=>GNDI, PHASEDIR=>GNDI, PHASESTEP=>GNDI, 
                PHASELOADREG=>GNDI, STDBY=>STDBY_ipd, PLLWAKESYNC=>GNDI, 
                RST=>GNDI, ENCLKOP=>GNDI, ENCLKOS=>GNDI, ENCLKOS2=>GNDI, 
                ENCLKOS3=>GNDI, CLKOP=>CLKOP_out, CLKOS=>CLKOS_out, 
                CLKOS2=>open, CLKOS3=>open, LOCK=>open, INTLOCK=>open, 
                REFCLK=>open, CLKINTFB=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLKI_ipd, CLKI, tipd_CLKI);
      VitalWireDelay(CLKFB_ipd, CLKFB, tipd_CLKFB);
      VitalWireDelay(STDBY_ipd, STDBY, tipd_STDBY);
    END BLOCK;

    VitalBehavior : PROCESS (CLKI_ipd, CLKFB_ipd, STDBY_ipd, CLKOS_out, 
      CLKOP_out)
    VARIABLE CLKOS_zd         	: std_logic := 'X';
    VARIABLE CLKOS_GlitchData 	: VitalGlitchDataType;
    VARIABLE CLKOP_zd         	: std_logic := 'X';
    VARIABLE CLKOP_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    CLKOS_zd 	:= CLKOS_out;
    CLKOP_zd 	:= CLKOP_out;

    VitalPathDelay01 (
      OutSignal => CLKOS, OutSignalName => "CLKOS", OutTemp => CLKOS_zd,
      Paths      => (0 => (InputChangeTime => CLKI_ipd'last_event,
                           PathDelay => tpd_CLKI_CLKOS,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => CLKFB_ipd'last_event,
                           PathDelay => tpd_CLKFB_CLKOS,
                           PathCondition => TRUE)),
      GlitchData => CLKOS_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => CLKOP, OutSignalName => "CLKOP", OutTemp => CLKOP_zd,
      Paths      => (0 => (InputChangeTime => CLKI_ipd'last_event,
                           PathDelay => tpd_CLKI_CLKOP,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => CLKFB_ipd'last_event,
                           PathDelay => tpd_CLKFB_CLKOP,
                           PathCondition => TRUE)),
      GlitchData => CLKOP_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity fpga_top
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity fpga_top is
    port (CRYSTAL: in Std_logic; VSYNC: in Std_logic; HREF: in Std_logic; 
          PCLK: in Std_logic; Y9: in Std_logic; Y8: in Std_logic; 
          Y7: in Std_logic; Y6: in Std_logic; Y5: in Std_logic; 
          Y4: in Std_logic; Y3: in Std_logic; Y2: in Std_logic; 
          MCLK: out Std_logic; cam_scl: out Std_logic; cam_sda: out Std_logic; 
          SD_DQ: inout Std_logic_vector (15 downto 0); 
          SD_DQM: out Std_logic_vector (1 downto 0); SD_CLK: out Std_logic; 
          SD_CS_N: out Std_logic; SD_WE_N: out Std_logic; 
          SD_RAS_N: out Std_logic; SD_CAS_N: out Std_logic; 
          SD_A: out Std_logic_vector (12 downto 0); 
          SD_BA: out Std_logic_vector (1 downto 0); DIN: in Std_logic; 
          DOUT: out Std_logic; CCLK: in Std_logic; SSPI_CS_n: in Std_logic; 
          ESP_D: out Std_logic_vector (7 downto 0); RX: in Std_logic; 
          TX: out Std_logic; M_CMD: out Std_logic; M_D0: in Std_logic; 
          M_D1: out Std_logic; M_D2: out Std_logic; M_D3: out Std_logic; 
          M_CLK: out Std_logic);



  end fpga_top;

  architecture Structure of fpga_top is
    signal u_dbg_status_msg_idx_0: Std_logic;
    signal u_dbg_status_n40: Std_logic;
    signal u_dbg_status_start_req_N_12413: Std_logic;
    signal u_dbg_status_n76454: Std_logic;
    signal MCLK_c: Std_logic;
    signal u_dbg_status_n69878: Std_logic;
    signal u_dbg_status_sec_ctr_31: Std_logic;
    signal u_dbg_status_n134: Std_logic;
    signal u_dbg_status_sec_ctr_31_N_12302: Std_logic;
    signal u_dbg_status_n69877: Std_logic;
    signal u_dbg_status_sec_ctr_30: Std_logic;
    signal u_dbg_status_sec_ctr_29: Std_logic;
    signal u_dbg_status_n135: Std_logic;
    signal u_dbg_status_n136: Std_logic;
    signal u_dbg_status_n69876: Std_logic;
    signal u_dbg_status_sec_ctr_28: Std_logic;
    signal u_dbg_status_sec_ctr_27: Std_logic;
    signal u_dbg_status_n137: Std_logic;
    signal u_dbg_status_n138: Std_logic;
    signal u_dbg_status_n69875: Std_logic;
    signal u_dbg_status_sec_ctr_26: Std_logic;
    signal u_dbg_status_sec_ctr_25: Std_logic;
    signal u_dbg_status_n139: Std_logic;
    signal u_dbg_status_n140: Std_logic;
    signal u_dbg_status_n69874: Std_logic;
    signal u_dbg_status_sec_ctr_24: Std_logic;
    signal u_dbg_status_sec_ctr_23: Std_logic;
    signal u_dbg_status_n141: Std_logic;
    signal u_dbg_status_n142: Std_logic;
    signal u_dbg_status_n69873: Std_logic;
    signal u_dbg_status_sec_ctr_22: Std_logic;
    signal u_dbg_status_sec_ctr_21: Std_logic;
    signal u_dbg_status_n143: Std_logic;
    signal u_dbg_status_n144: Std_logic;
    signal u_dbg_status_n69872: Std_logic;
    signal u_dbg_status_sec_ctr_20: Std_logic;
    signal u_dbg_status_sec_ctr_19: Std_logic;
    signal u_dbg_status_n145: Std_logic;
    signal u_dbg_status_n146: Std_logic;
    signal u_dbg_status_n69871: Std_logic;
    signal u_dbg_status_sec_ctr_18: Std_logic;
    signal u_dbg_status_sec_ctr_17: Std_logic;
    signal u_dbg_status_n147: Std_logic;
    signal u_dbg_status_n148: Std_logic;
    signal u_dbg_status_n69870: Std_logic;
    signal u_dbg_status_sec_ctr_16: Std_logic;
    signal u_dbg_status_sec_ctr_15: Std_logic;
    signal u_dbg_status_n149: Std_logic;
    signal u_dbg_status_n150: Std_logic;
    signal u_dbg_status_n69869: Std_logic;
    signal u_dbg_status_sec_ctr_14: Std_logic;
    signal u_dbg_status_sec_ctr_13: Std_logic;
    signal u_dbg_status_n151: Std_logic;
    signal u_dbg_status_n152: Std_logic;
    signal u_dbg_status_n69868: Std_logic;
    signal u_dbg_status_sec_ctr_12: Std_logic;
    signal u_dbg_status_sec_ctr_11: Std_logic;
    signal u_dbg_status_n153: Std_logic;
    signal u_dbg_status_n154: Std_logic;
    signal u_dbg_status_n69867: Std_logic;
    signal u_dbg_status_sec_ctr_10: Std_logic;
    signal u_dbg_status_sec_ctr_9: Std_logic;
    signal u_dbg_status_n155: Std_logic;
    signal u_dbg_status_n156: Std_logic;
    signal u_dbg_status_n69866: Std_logic;
    signal u_dbg_status_sec_ctr_8: Std_logic;
    signal u_dbg_status_sec_ctr_7: Std_logic;
    signal u_dbg_status_n157: Std_logic;
    signal u_dbg_status_n158: Std_logic;
    signal u_dbg_status_n69865: Std_logic;
    signal u_dbg_status_sec_ctr_6: Std_logic;
    signal u_dbg_status_sec_ctr_5: Std_logic;
    signal u_dbg_status_n159: Std_logic;
    signal u_dbg_status_n160: Std_logic;
    signal u_dbg_status_n69864: Std_logic;
    signal u_dbg_status_sec_ctr_4: Std_logic;
    signal u_dbg_status_sec_ctr_3: Std_logic;
    signal u_dbg_status_n161: Std_logic;
    signal u_dbg_status_n162: Std_logic;
    signal u_dbg_status_n69863: Std_logic;
    signal u_dbg_status_sec_ctr_2: Std_logic;
    signal u_dbg_status_sec_ctr_1: Std_logic;
    signal u_dbg_status_n163: Std_logic;
    signal u_dbg_status_n164: Std_logic;
    signal u_dbg_status_n69862: Std_logic;
    signal u_dbg_status_sec_ctr_0: Std_logic;
    signal u_dbg_status_n165: Std_logic;
    signal u_dbg_status_n72810: Std_logic;
    signal u_dbg_status_n72809: Std_logic;
    signal u_dbg_status_n72804: Std_logic;
    signal u_dbg_status_n72808: Std_logic;
    signal u_dbg_status_n74112: Std_logic;
    signal u_dbg_status_sec_tick: Std_logic;
    signal u_dbg_status_n72802: Std_logic;
    signal u_dbg_status_n72798: Std_logic;
    signal u_dbg_status_n72797: Std_logic;
    signal u_dbg_status_n72803: Std_logic;
    signal u_dbg_status_n72793: Std_logic;
    signal u_dbg_status_n72795: Std_logic;
    signal u_dbg_status_n72796: Std_logic;
    signal u_dbg_status_n72794: Std_logic;
    signal u_dbg_status_n74111: Std_logic;
    signal u_dbg_status_n72792: Std_logic;
    signal u_dbg_status_n74110: Std_logic;
    signal u_dbg_status_n70384: Std_logic;
    signal u_dbg_status_n74109: Std_logic;
    signal u_dbg_status_n72807: Std_logic;
    signal u_dbg_status_n70401: Std_logic;
    signal u_dbg_status_n72791: Std_logic;
    signal u_dbg_status_n72801: Std_logic;
    signal u_dbg_status_msg_idx_6: Std_logic;
    signal u_dbg_status_msg_idx_5: Std_logic;
    signal u_dbg_status_n34: Std_logic;
    signal u_dbg_status_n35: Std_logic;
    signal u_dbg_status_n69880: Std_logic;
    signal u_dbg_status_msg_idx_4: Std_logic;
    signal u_dbg_status_msg_idx_3: Std_logic;
    signal u_dbg_status_n36_adj_12535: Std_logic;
    signal u_dbg_status_n37: Std_logic;
    signal u_dbg_status_n69879: Std_logic;
    signal u_dbg_status_msg_idx_2: Std_logic;
    signal u_dbg_status_msg_idx_1: Std_logic;
    signal u_dbg_status_n38: Std_logic;
    signal u_dbg_status_n39_adj_12534: Std_logic;
    signal u_cam_cfg_divc_2: Std_logic;
    signal u_cam_cfg_divc_1: Std_logic;
    signal u_cam_cfg_n48: Std_logic;
    signal u_cam_cfg_n49: Std_logic;
    signal u_cam_cfg_tick_N_393: Std_logic;
    signal SD_CLK_c: Std_logic;
    signal u_cam_cfg_n69790: Std_logic;
    signal u_cam_cfg_n69791: Std_logic;
    signal u_cam_cfg_divc_0: Std_logic;
    signal u_cam_cfg_n50: Std_logic;
    signal u_cam_cfg_divc_8: Std_logic;
    signal u_cam_cfg_divc_7: Std_logic;
    signal u_cam_cfg_n42: Std_logic;
    signal u_cam_cfg_n43: Std_logic;
    signal u_cam_cfg_n69793: Std_logic;
    signal u_cam_cfg_divc_6: Std_logic;
    signal u_cam_cfg_divc_5: Std_logic;
    signal u_cam_cfg_n44: Std_logic;
    signal u_cam_cfg_n45: Std_logic;
    signal u_cam_cfg_n69792: Std_logic;
    signal u_cam_cfg_divc_4: Std_logic;
    signal u_cam_cfg_divc_3: Std_logic;
    signal u_cam_cfg_n46: Std_logic;
    signal u_cam_cfg_n47: Std_logic;
    signal dummy_left_7: Std_logic;
    signal n13: Std_logic;
    signal n14: Std_logic;
    signal dummy_left_6: Std_logic;
    signal n69788: Std_logic;
    signal n25: Std_logic;
    signal n22: Std_logic;
    signal dummy_left_5: Std_logic;
    signal dummy_left_4: Std_logic;
    signal n69787: Std_logic;
    signal n31: Std_logic;
    signal n28: Std_logic;
    signal resp_tries_7: Std_logic;
    signal n76414: Std_logic;
    signal spi_done: Std_logic;
    signal n69572: Std_logic;
    signal resp_tries_6: Std_logic;
    signal n69574: Std_logic;
    signal n69852: Std_logic;
    signal n23: Std_logic;
    signal n20: Std_logic;
    signal resp_tries_5: Std_logic;
    signal n69576: Std_logic;
    signal resp_tries_4: Std_logic;
    signal n69578: Std_logic;
    signal n69851: Std_logic;
    signal n29: Std_logic;
    signal n26: Std_logic;
    signal resp_tries_3: Std_logic;
    signal n69580: Std_logic;
    signal resp_tries_2: Std_logic;
    signal n69582: Std_logic;
    signal n69850: Std_logic;
    signal n35: Std_logic;
    signal n32: Std_logic;
    signal dummy_left_3: Std_logic;
    signal dummy_left_2: Std_logic;
    signal n69786: Std_logic;
    signal n37: Std_logic;
    signal n34: Std_logic;
    signal resp_tries_1: Std_logic;
    signal n69584: Std_logic;
    signal resp_tries_0: Std_logic;
    signal n69586: Std_logic;
    signal n69849: Std_logic;
    signal n41: Std_logic;
    signal n38: Std_logic;
    signal n65860: Std_logic;
    signal n71517: Std_logic;
    signal n76482: Std_logic;
    signal dummy_left_1: Std_logic;
    signal dummy_left_0: Std_logic;
    signal n69785: Std_logic;
    signal n43_adj_12536: Std_logic;
    signal n40: Std_logic;
    signal wr_count_9: Std_logic;
    signal n69845: Std_logic;
    signal n24: Std_logic;
    signal wr_count_8: Std_logic;
    signal wr_count_7: Std_logic;
    signal n69844: Std_logic;
    signal n30: Std_logic;
    signal n27: Std_logic;
    signal wr_count_6: Std_logic;
    signal wr_count_5: Std_logic;
    signal n69843: Std_logic;
    signal n36_adj_12542: Std_logic;
    signal n33: Std_logic;
    signal wr_count_4: Std_logic;
    signal wr_count_3: Std_logic;
    signal n69842: Std_logic;
    signal n42_adj_12540: Std_logic;
    signal n39_adj_12541: Std_logic;
    signal wr_count_2: Std_logic;
    signal wr_count_1: Std_logic;
    signal n69841: Std_logic;
    signal n48_adj_12538: Std_logic;
    signal n45_adj_12539: Std_logic;
    signal wr_count_0: Std_logic;
    signal n66465: Std_logic;
    signal n51_adj_12537: Std_logic;
    signal rom_addr_10: Std_logic;
    signal st_3: Std_logic;
    signal n76441: Std_logic;
    signal st_0: Std_logic;
    signal rom_addr_9: Std_logic;
    signal n308: Std_logic;
    signal n309: Std_logic;
    signal tick: Std_logic;
    signal n69839: Std_logic;
    signal rom_addr_8: Std_logic;
    signal rom_addr_7: Std_logic;
    signal n310: Std_logic;
    signal n311: Std_logic;
    signal n69838: Std_logic;
    signal rom_addr_6: Std_logic;
    signal rom_addr_5: Std_logic;
    signal n312: Std_logic;
    signal n313: Std_logic;
    signal n69837: Std_logic;
    signal rom_addr_4: Std_logic;
    signal rom_addr_3: Std_logic;
    signal n314: Std_logic;
    signal n315: Std_logic;
    signal n69836: Std_logic;
    signal rom_addr_2: Std_logic;
    signal rom_addr_1: Std_logic;
    signal n316: Std_logic;
    signal n317: Std_logic;
    signal n69835: Std_logic;
    signal n66095: Std_logic;
    signal n72696: Std_logic;
    signal rom_addr_0: Std_logic;
    signal n318: Std_logic;
    signal baud_ctr_15: Std_logic;
    signal n36: Std_logic;
    signal u_dbg_status_MCLK_c_enable_17: Std_logic;
    signal u_dbg_status_MCLK_c_enable_25: Std_logic;
    signal n69834: Std_logic;
    signal baud_ctr_14: Std_logic;
    signal baud_ctr_13: Std_logic;
    signal n39: Std_logic;
    signal n42: Std_logic;
    signal n69833: Std_logic;
    signal baud_ctr_12: Std_logic;
    signal baud_ctr_11: Std_logic;
    signal n45: Std_logic;
    signal n48: Std_logic;
    signal n69832: Std_logic;
    signal baud_ctr_10: Std_logic;
    signal baud_ctr_9: Std_logic;
    signal n51: Std_logic;
    signal n54: Std_logic;
    signal n69831: Std_logic;
    signal baud_ctr_8: Std_logic;
    signal baud_ctr_7: Std_logic;
    signal n57: Std_logic;
    signal n60: Std_logic;
    signal n69830: Std_logic;
    signal baud_ctr_6: Std_logic;
    signal baud_ctr_5: Std_logic;
    signal n63: Std_logic;
    signal n66: Std_logic;
    signal n69829: Std_logic;
    signal baud_ctr_4: Std_logic;
    signal baud_ctr_3: Std_logic;
    signal n69: Std_logic;
    signal n72: Std_logic;
    signal n69828: Std_logic;
    signal baud_ctr_2: Std_logic;
    signal baud_ctr_1: Std_logic;
    signal n75: Std_logic;
    signal n78: Std_logic;
    signal n69827: Std_logic;
    signal baud_ctr_0: Std_logic;
    signal n81: Std_logic;
    signal div_cnt_15: Std_logic;
    signal n36_adj_12559: Std_logic;
    signal u_sd_SD_CLK_c_enable_234: Std_logic;
    signal u_sd_n37437: Std_logic;
    signal n69897: Std_logic;
    signal u_sdram_refresh_cnt_15: Std_logic;
    signal u_sdram_n70: Std_logic;
    signal u_sdram_n28678: Std_logic;
    signal u_sdram_n69826: Std_logic;
    signal u_sdram_refresh_cnt_14: Std_logic;
    signal u_sdram_refresh_cnt_13: Std_logic;
    signal u_sdram_n71: Std_logic;
    signal u_sdram_n72: Std_logic;
    signal u_sdram_n69825: Std_logic;
    signal u_sdram_refresh_cnt_12: Std_logic;
    signal u_sdram_refresh_cnt_11: Std_logic;
    signal u_sdram_n73: Std_logic;
    signal u_sdram_n74: Std_logic;
    signal u_sdram_n69824: Std_logic;
    signal u_sdram_refresh_cnt_10: Std_logic;
    signal u_sdram_refresh_cnt_9: Std_logic;
    signal u_sdram_n75: Std_logic;
    signal u_sdram_n76: Std_logic;
    signal u_sdram_n69823: Std_logic;
    signal u_sdram_refresh_cnt_8: Std_logic;
    signal u_sdram_refresh_cnt_7: Std_logic;
    signal u_sdram_n77: Std_logic;
    signal u_sdram_n78: Std_logic;
    signal u_sdram_n69822: Std_logic;
    signal u_sdram_refresh_cnt_6: Std_logic;
    signal u_sdram_refresh_cnt_5: Std_logic;
    signal u_sdram_n79: Std_logic;
    signal u_sdram_n80: Std_logic;
    signal u_sdram_n69821: Std_logic;
    signal u_sdram_refresh_cnt_4: Std_logic;
    signal u_sdram_n13: Std_logic;
    signal u_sdram_n81: Std_logic;
    signal u_sdram_n82: Std_logic;
    signal u_sdram_n69820: Std_logic;
    signal u_sdram_n14: Std_logic;
    signal u_sdram_n15: Std_logic;
    signal u_sdram_n83: Std_logic;
    signal u_sdram_n84: Std_logic;
    signal u_sdram_n69819: Std_logic;
    signal u_sdram_n16_adj_12526: Std_logic;
    signal u_sdram_n85: Std_logic;
    signal div_cnt_14: Std_logic;
    signal div_cnt_13: Std_logic;
    signal n39_adj_12560: Std_logic;
    signal n42_adj_12561: Std_logic;
    signal n69896: Std_logic;
    signal div_cnt_12: Std_logic;
    signal div_cnt_11: Std_logic;
    signal n45_adj_12545: Std_logic;
    signal n48_adj_12546: Std_logic;
    signal n69895: Std_logic;
    signal div_cnt_10: Std_logic;
    signal div_cnt_9: Std_logic;
    signal n51_adj_12543: Std_logic;
    signal n54_adj_12547: Std_logic;
    signal n69894: Std_logic;
    signal div_cnt_8: Std_logic;
    signal div_cnt_7: Std_logic;
    signal n57_adj_12544: Std_logic;
    signal n60_adj_12548: Std_logic;
    signal n69893: Std_logic;
    signal div_cnt_6: Std_logic;
    signal div_cnt_5: Std_logic;
    signal n63_adj_12549: Std_logic;
    signal n66_adj_12550: Std_logic;
    signal n69892: Std_logic;
    signal div_cnt_4: Std_logic;
    signal div_cnt_3: Std_logic;
    signal n69_adj_12551: Std_logic;
    signal n72_adj_12552: Std_logic;
    signal n69891: Std_logic;
    signal div_cnt_2: Std_logic;
    signal div_cnt_1: Std_logic;
    signal n75_adj_12553: Std_logic;
    signal n78_adj_12554: Std_logic;
    signal n69890: Std_logic;
    signal div_cnt_0: Std_logic;
    signal n81_adj_12555: Std_logic;
    signal u_sd_sck_N_10288_3: Std_logic;
    signal u_sd_n69565: Std_logic;
    signal u_sd_n69566: Std_logic;
    signal u_sd_sck_N_10287: Std_logic;
    signal n162: Std_logic;
    signal n99: Std_logic;
    signal PCLK_c_enable_22: Std_logic;
    signal PCLK_c: Std_logic;
    signal u_ctrl_hb_counter_20: Std_logic;
    signal u_ctrl_hb_counter_19: Std_logic;
    signal u_ctrl_n145: Std_logic;
    signal u_ctrl_n146: Std_logic;
    signal u_ctrl_SD_CLK_c_enable_249: Std_logic;
    signal u_ctrl_n69804: Std_logic;
    signal u_ctrl_n69805: Std_logic;
    signal u_ctrl_hb_counter_18: Std_logic;
    signal u_ctrl_hb_counter_17: Std_logic;
    signal u_ctrl_n147: Std_logic;
    signal u_ctrl_n148: Std_logic;
    signal u_ctrl_n69803: Std_logic;
    signal u_ctrl_hb_counter_16: Std_logic;
    signal u_ctrl_hb_counter_15: Std_logic;
    signal u_ctrl_n149: Std_logic;
    signal u_ctrl_n150: Std_logic;
    signal u_ctrl_n69802: Std_logic;
    signal u_ctrl_hb_counter_14: Std_logic;
    signal u_ctrl_hb_counter_13: Std_logic;
    signal u_ctrl_n151: Std_logic;
    signal u_ctrl_n152: Std_logic;
    signal u_ctrl_n69801: Std_logic;
    signal u_ctrl_hb_counter_12: Std_logic;
    signal u_ctrl_hb_counter_11: Std_logic;
    signal u_ctrl_n153: Std_logic;
    signal u_ctrl_n154: Std_logic;
    signal u_ctrl_n69800: Std_logic;
    signal u_ctrl_hb_counter_10: Std_logic;
    signal u_ctrl_hb_counter_9: Std_logic;
    signal u_ctrl_n155: Std_logic;
    signal u_ctrl_n156: Std_logic;
    signal u_ctrl_n69799: Std_logic;
    signal u_ctrl_hb_counter_8: Std_logic;
    signal u_ctrl_hb_counter_7: Std_logic;
    signal u_ctrl_n157: Std_logic;
    signal u_ctrl_n158: Std_logic;
    signal u_ctrl_n69798: Std_logic;
    signal u_ctrl_hb_counter_6: Std_logic;
    signal u_ctrl_hb_counter_5: Std_logic;
    signal u_ctrl_n159: Std_logic;
    signal u_ctrl_n160: Std_logic;
    signal u_ctrl_n69797: Std_logic;
    signal u_ctrl_hb_counter_0: Std_logic;
    signal u_ctrl_n165: Std_logic;
    signal u_ctrl_n69795: Std_logic;
    signal u_ctrl_hb_counter_2: Std_logic;
    signal u_ctrl_hb_counter_1: Std_logic;
    signal u_ctrl_n163: Std_logic;
    signal u_ctrl_n164: Std_logic;
    signal u_ctrl_n69796: Std_logic;
    signal u_ctrl_n72786: Std_logic;
    signal u_ctrl_n72782: Std_logic;
    signal u_ctrl_n72772: Std_logic;
    signal u_ctrl_n72771: Std_logic;
    signal u_ctrl_n74116: Std_logic;
    signal u_ctrl_n72767: Std_logic;
    signal u_ctrl_n72768: Std_logic;
    signal u_ctrl_n72769: Std_logic;
    signal u_ctrl_n72770: Std_logic;
    signal u_ctrl_n72760: Std_logic;
    signal u_ctrl_n72761: Std_logic;
    signal u_ctrl_n72766: Std_logic;
    signal u_ctrl_n72762: Std_logic;
    signal u_ctrl_n74115: Std_logic;
    signal u_ctrl_n72756: Std_logic;
    signal u_ctrl_n72757: Std_logic;
    signal u_ctrl_n72758: Std_logic;
    signal u_ctrl_n72759: Std_logic;
    signal u_ctrl_hb_counter_22: Std_logic;
    signal u_ctrl_n74114: Std_logic;
    signal u_ctrl_hb_counter_25: Std_logic;
    signal u_ctrl_hb_counter_26: Std_logic;
    signal u_ctrl_hb_counter_23: Std_logic;
    signal u_ctrl_n70404: Std_logic;
    signal u_ctrl_n72785: Std_logic;
    signal u_ctrl_hb_counter_31: Std_logic;
    signal u_ctrl_hb_counter_30: Std_logic;
    signal u_ctrl_n74113: Std_logic;
    signal u_ctrl_n72765: Std_logic;
    signal u_ctrl_n72755: Std_logic;
    signal u_ctrl_n72781: Std_logic;
    signal u_ctrl_hb_counter_4: Std_logic;
    signal u_ctrl_hb_counter_3: Std_logic;
    signal u_ctrl_n161: Std_logic;
    signal u_ctrl_n162: Std_logic;
    signal u_ctrl_hb_seq_7: Std_logic;
    signal u_ctrl_n38: Std_logic;
    signal u_ctrl_send_hb: Std_logic;
    signal u_ctrl_n69814: Std_logic;
    signal u_ctrl_hb_seq_6: Std_logic;
    signal u_ctrl_hb_seq_5: Std_logic;
    signal u_ctrl_n39: Std_logic;
    signal u_ctrl_n40: Std_logic;
    signal u_ctrl_n69813: Std_logic;
    signal u_ctrl_hb_seq_4: Std_logic;
    signal u_ctrl_hb_seq_3: Std_logic;
    signal u_ctrl_n41: Std_logic;
    signal u_ctrl_n42: Std_logic;
    signal u_ctrl_n69812: Std_logic;
    signal u_ctrl_hb_seq_2: Std_logic;
    signal u_ctrl_hb_seq_1: Std_logic;
    signal u_ctrl_n43: Std_logic;
    signal u_ctrl_n44: Std_logic;
    signal u_ctrl_n69811: Std_logic;
    signal u_ctrl_hb_seq_0: Std_logic;
    signal u_ctrl_n45: Std_logic;
    signal u_ctrl_n134: Std_logic;
    signal u_ctrl_n69810: Std_logic;
    signal u_ctrl_hb_counter_29: Std_logic;
    signal u_ctrl_n135: Std_logic;
    signal u_ctrl_n136: Std_logic;
    signal u_ctrl_n69809: Std_logic;
    signal u_ctrl_hb_counter_28: Std_logic;
    signal u_ctrl_hb_counter_27: Std_logic;
    signal u_ctrl_n137: Std_logic;
    signal u_ctrl_n138: Std_logic;
    signal u_ctrl_n69808: Std_logic;
    signal u_ctrl_n139: Std_logic;
    signal u_ctrl_n140: Std_logic;
    signal u_ctrl_n69807: Std_logic;
    signal u_ctrl_hb_counter_24: Std_logic;
    signal u_ctrl_n141: Std_logic;
    signal u_ctrl_n142: Std_logic;
    signal u_ctrl_n69806: Std_logic;
    signal u_ctrl_hb_counter_21: Std_logic;
    signal u_ctrl_n143: Std_logic;
    signal u_ctrl_n144: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_15: Std_logic;
    signal u_ctrl_u_tx_n70: Std_logic;
    signal u_ctrl_u_tx_n28585: Std_logic;
    signal u_ctrl_u_tx_n69889: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_14: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_13: Std_logic;
    signal u_ctrl_u_tx_n71: Std_logic;
    signal u_ctrl_u_tx_n72: Std_logic;
    signal u_ctrl_u_tx_n69888: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_12: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_11: Std_logic;
    signal u_ctrl_u_tx_n73: Std_logic;
    signal u_ctrl_u_tx_n74: Std_logic;
    signal u_ctrl_u_tx_n69887: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_10: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_9: Std_logic;
    signal u_ctrl_u_tx_n75: Std_logic;
    signal u_ctrl_u_tx_n76: Std_logic;
    signal u_ctrl_u_tx_n69886: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_8: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_7: Std_logic;
    signal u_ctrl_u_tx_n77: Std_logic;
    signal u_ctrl_u_tx_n78: Std_logic;
    signal u_ctrl_u_tx_n69885: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_6: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_5: Std_logic;
    signal u_ctrl_u_tx_n79: Std_logic;
    signal u_ctrl_u_tx_n80: Std_logic;
    signal u_ctrl_u_tx_n69884: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_4: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_3: Std_logic;
    signal u_ctrl_u_tx_n81: Std_logic;
    signal u_ctrl_u_tx_n82: Std_logic;
    signal u_ctrl_u_tx_n69883: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_2: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_1: Std_logic;
    signal u_ctrl_u_tx_n83: Std_logic;
    signal u_ctrl_u_tx_n84: Std_logic;
    signal u_ctrl_u_tx_n69882: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_0: Std_logic;
    signal u_ctrl_u_tx_n85: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_15: Std_logic;
    signal u_ctrl_u_rx_n70: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_213: Std_logic;
    signal u_ctrl_u_rx_n63190: Std_logic;
    signal u_ctrl_u_rx_n69861: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_14: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_13: Std_logic;
    signal u_ctrl_u_rx_n71: Std_logic;
    signal u_ctrl_u_rx_n72: Std_logic;
    signal u_ctrl_u_rx_n69860: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_12: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_11: Std_logic;
    signal u_ctrl_u_rx_n73: Std_logic;
    signal u_ctrl_u_rx_n74: Std_logic;
    signal u_ctrl_u_rx_n69859: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_10: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_9: Std_logic;
    signal u_ctrl_u_rx_n75: Std_logic;
    signal u_ctrl_u_rx_n76: Std_logic;
    signal u_ctrl_u_rx_n69858: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_8: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_7: Std_logic;
    signal u_ctrl_u_rx_n77: Std_logic;
    signal u_ctrl_u_rx_n78: Std_logic;
    signal u_ctrl_u_rx_n69857: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_6: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_5: Std_logic;
    signal u_ctrl_u_rx_n79: Std_logic;
    signal u_ctrl_u_rx_n80: Std_logic;
    signal u_ctrl_u_rx_n69856: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_4: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_3: Std_logic;
    signal u_ctrl_u_rx_n81: Std_logic;
    signal u_ctrl_u_rx_n82: Std_logic;
    signal u_ctrl_u_rx_n69855: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_2: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_1: Std_logic;
    signal u_ctrl_u_rx_n83: Std_logic;
    signal u_ctrl_u_rx_n84: Std_logic;
    signal u_ctrl_u_rx_n69854: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_0: Std_logic;
    signal u_ctrl_u_rx_n85: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_0: Std_logic;
    signal u_ctrl_rx_data_0: Std_logic;
    signal u_ctrl_rx_data_1: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_1: Std_logic;
    signal u_ctrl_u_cmd_n69568: Std_logic;
    signal u_ctrl_u_cmd_cmd_valid_N_820: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_2: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_3: Std_logic;
    signal u_ctrl_rx_data_3: Std_logic;
    signal u_ctrl_rx_data_2: Std_logic;
    signal u_ctrl_rx_data_4: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_5: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_4: Std_logic;
    signal u_ctrl_rx_data_5: Std_logic;
    signal u_ctrl_u_cmd_n69567: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_6: Std_logic;
    signal u_ctrl_rx_data_6: Std_logic;
    signal u_ctrl_rx_data_7: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_7: Std_logic;
    signal u_raw_cap_stride_count_p_7: Std_logic;
    signal u_raw_cap_n38: Std_logic;
    signal u_raw_cap_PCLK_c_enable_18: Std_logic;
    signal u_raw_cap_n69818: Std_logic;
    signal u_raw_cap_stride_count_p_6: Std_logic;
    signal u_raw_cap_stride_count_p_5: Std_logic;
    signal u_raw_cap_n39: Std_logic;
    signal u_raw_cap_n40: Std_logic;
    signal u_raw_cap_n69817: Std_logic;
    signal u_raw_cap_stride_count_p_4: Std_logic;
    signal u_raw_cap_stride_count_p_3: Std_logic;
    signal u_raw_cap_n41: Std_logic;
    signal u_raw_cap_n42: Std_logic;
    signal u_raw_cap_n69816: Std_logic;
    signal u_raw_cap_stride_count_p_2: Std_logic;
    signal u_raw_cap_stride_count_p_1: Std_logic;
    signal u_raw_cap_n43: Std_logic;
    signal u_raw_cap_n44: Std_logic;
    signal u_raw_cap_n69815: Std_logic;
    signal u_raw_cap_stride_count_p_0: Std_logic;
    signal u_raw_cap_n45: Std_logic;
    signal raw_done_frame_id_p_0: Std_logic;
    signal n48008: Std_logic;
    signal GND_net: Std_logic;
    signal n48007: Std_logic;
    signal raw_done_frame_id_s1_sft00000_WAD0_INT: Std_logic;
    signal raw_done_frame_id_s1_sft00000_WAD1_INT: Std_logic;
    signal raw_done_frame_id_s1_sft00000_WAD2_INT: Std_logic;
    signal raw_done_frame_id_s1_sft00000_WAD3_INT: Std_logic;
    signal raw_done_frame_id_s1_sft00000_WD0_INT: Std_logic;
    signal n48016: Std_logic;
    signal n48015: Std_logic;
    signal raw_done_frame_id_s3_0: Std_logic;
    signal u_raw_cap_raw_done_pulse_sys: Std_logic;
    signal raw_frame_id_0: Std_logic;
    signal u_dbg_status_shreg_1: Std_logic;
    signal u_dbg_status_busy: Std_logic;
    signal u_dbg_status_n60489: Std_logic;
    signal u_dbg_status_start_req: Std_logic;
    signal u_dbg_status_n52932: Std_logic;
    signal u_dbg_status_MCLK_c_enable_29: Std_logic;
    signal ESP_D_c_0: Std_logic;
    signal M_CLK_c: Std_logic;
    signal u_sd_sck_N_10286: Std_logic;
    signal u_sd_n76493: Std_logic;
    signal u_sd_spi_busy: Std_logic;
    signal u_sd_n74395: Std_logic;
    signal u_sd_spi_tx_7: Std_logic;
    signal bit_cnt_0: Std_logic;
    signal u_sd_spi_tx_5: Std_logic;
    signal u_sd_spi_tx_4: Std_logic;
    signal u_sd_n52970: Std_logic;
    signal u_sd_n74455: Std_logic;
    signal u_sd_n74457: Std_logic;
    signal u_sd_n68275: Std_logic;
    signal u_sd_n74394: Std_logic;
    signal u_sd_SD_CLK_c_enable_230: Std_logic;
    signal M_CMD_c: Std_logic;
    signal st_2_adj_12557: Std_logic;
    signal u_sd_st_4: Std_logic;
    signal st_0_adj_12558: Std_logic;
    signal u_sd_n27_adj_12516: Std_logic;
    signal u_sd_n76502: Std_logic;
    signal u_sd_n78014: Std_logic;
    signal u_sd_n23_adj_12494: Std_logic;
    signal u_sd_cs_n_N_10133: Std_logic;
    signal M_D3_c: Std_logic;
    signal u_sdram_SD_A_12_N_2268_9: Std_logic;
    signal SD_A_c_9: Std_logic;
    signal u_sdram_n19231: Std_logic;
    signal u_sdram_n76424: Std_logic;
    signal u_sdram_st_2: Std_logic;
    signal u_sdram_wait_cnt_3: Std_logic;
    signal u_sdram_wait_cnt_2: Std_logic;
    signal u_sdram_wait_cnt_1: Std_logic;
    signal u_sdram_wait_cnt_0: Std_logic;
    signal SD_CAS_N_c: Std_logic;
    signal u_sdram_n36332: Std_logic;
    signal u_sdram_n19233: Std_logic;
    signal u_sdram_SD_RAS_N_N_2474: Std_logic;
    signal SD_RAS_N_c: Std_logic;
    signal u_sdram_SD_CLK_c_enable_198: Std_logic;
    signal u_sdram_n76490: Std_logic;
    signal SD_WE_N_c: Std_logic;
    signal u_ctrl_u_tx_n24590: Std_logic;
    signal u_ctrl_u_tx_n24589: Std_logic;
    signal u_ctrl_u_tx_tx_N_1194: Std_logic;
    signal u_ctrl_u_tx_tx_N_1193: Std_logic;
    signal TX_c: Std_logic;
    signal bit_cnt_1: Std_logic;
    signal u_sd_n76462: Std_logic;
    signal u_sd_SD_CLK_c_enable_185: Std_logic;
    signal u_sd_SD_CLK_c_enable_242: Std_logic;
    signal u_cam_cfg_st_1: Std_logic;
    signal u_cam_cfg_phase_0: Std_logic;
    signal u_cam_cfg_phase_1: Std_logic;
    signal n76433: Std_logic;
    signal st_2: Std_logic;
    signal byte_idx_1: Std_logic;
    signal byte_idx_0: Std_logic;
    signal n74412: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_4: Std_logic;
    signal u_cam_cfg_n7_adj_12529: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_38: Std_logic;
    signal cam_init_done: Std_logic;
    signal u_cam_cfg_n6: Std_logic;
    signal u_cam_cfg_n72633: Std_logic;
    signal u_cam_cfg_scl_N_370: Std_logic;
    signal u_cam_cfg_n74465: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_30: Std_logic;
    signal cam_scl_c: Std_logic;
    signal u_sd_n60671: Std_logic;
    signal u_sd_n13_adj_12442: Std_logic;
    signal u_sd_dummy_left_7_N_10079_1: Std_logic;
    signal u_sd_dummy_left_7_N_10079_0: Std_logic;
    signal u_sd_dummy_left_7_N_10079_3: Std_logic;
    signal u_sd_dummy_left_7_N_10079_2: Std_logic;
    signal u_sd_dummy_left_7_N_10079_5: Std_logic;
    signal u_sd_dummy_left_7_N_10079_4: Std_logic;
    signal u_sd_dummy_left_7_N_10079_7: Std_logic;
    signal u_sd_dummy_left_7_N_10079_6: Std_logic;
    signal u_cam_cfg_n72734: Std_logic;
    signal post_delay_3: Std_logic;
    signal post_delay_5: Std_logic;
    signal u_cam_cfg_n73083: Std_logic;
    signal post_delay_0: Std_logic;
    signal n15: Std_logic;
    signal n43: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_250: Std_logic;
    signal u_cam_cfg_n63241: Std_logic;
    signal post_delay_2: Std_logic;
    signal n76328: Std_logic;
    signal n76448: Std_logic;
    signal post_delay_1: Std_logic;
    signal n71623: Std_logic;
    signal n71626: Std_logic;
    signal n76353: Std_logic;
    signal u_cam_cfg_n75626: Std_logic;
    signal n76320: Std_logic;
    signal post_delay_4: Std_logic;
    signal u_cam_cfg_n72003: Std_logic;
    signal post_delay_6: Std_logic;
    signal n76321: Std_logic;
    signal n70149: Std_logic;
    signal n70151: Std_logic;
    signal post_delay_7: Std_logic;
    signal n76318: Std_logic;
    signal n70147: Std_logic;
    signal u_raw_cap_active_frame_id_p_0: Std_logic;
    signal u_raw_cap_PCLK_c_enable_21: Std_logic;
    signal u_raw_cap_raw_done_s3: Std_logic;
    signal u_raw_cap_raw_done_s2: Std_logic;
    signal raw_frame_ready: Std_logic;
    signal u_sd_n61_adj_12462: Std_logic;
    signal u_sd_n63: Std_logic;
    signal u_sd_n77997: Std_logic;
    signal u_sd_n77996: Std_logic;
    signal u_sd_n64: Std_logic;
    signal u_sd_n60_adj_12513: Std_logic;
    signal u_sd_resp_tries_7_N_10055_1: Std_logic;
    signal u_sd_resp_tries_7_N_10055_0: Std_logic;
    signal u_sd_n61_adj_12454: Std_logic;
    signal u_sd_n75988: Std_logic;
    signal u_sd_n75965: Std_logic;
    signal u_sd_n61_adj_12458: Std_logic;
    signal u_sd_resp_tries_7_N_10055_3: Std_logic;
    signal u_sd_resp_tries_7_N_10055_2: Std_logic;
    signal u_sd_n61_adj_12449: Std_logic;
    signal u_sd_n77995: Std_logic;
    signal u_sd_n61_adj_12451: Std_logic;
    signal u_sd_n76007: Std_logic;
    signal u_sd_resp_tries_7_N_10055_5: Std_logic;
    signal u_sd_resp_tries_7_N_10055_4: Std_logic;
    signal u_sd_n61: Std_logic;
    signal u_sd_n76076: Std_logic;
    signal u_sd_n76045: Std_logic;
    signal u_sd_n61_adj_12447: Std_logic;
    signal u_sd_resp_tries_7_N_10055_7: Std_logic;
    signal u_sd_resp_tries_7_N_10055_6: Std_logic;
    signal u_sd_n72634: Std_logic;
    signal sd_err: Std_logic;
    signal u_sd_st_1: Std_logic;
    signal u_sd_n72519: Std_logic;
    signal u_sd_n17: Std_logic;
    signal u_sd_sd_err_N_10339: Std_logic;
    signal st_3_adj_12556: Std_logic;
    signal u_sd_n74237: Std_logic;
    signal u_sd_n73615: Std_logic;
    signal u_sd_cs_n_N_10197: Std_logic;
    signal u_sd_n76333: Std_logic;
    signal u_sd_cs_n_N_10136: Std_logic;
    signal sd_w_start_N_12177: Std_logic;
    signal u_cam_cfg_n73983: Std_logic;
    signal u_cam_cfg_n76451: Std_logic;
    signal u_cam_cfg_sda_oe_N_381: Std_logic;
    signal u_cam_cfg_sda_oe_N_375: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_27: Std_logic;
    signal sda_oe: Std_logic;
    signal sh_rx_1: Std_logic;
    signal M_D0_c: Std_logic;
    signal n74414: Std_logic;
    signal u_sd_SD_CLK_c_enable_243: Std_logic;
    signal sh_rx_5: Std_logic;
    signal n74418: Std_logic;
    signal u_sd_SD_CLK_c_enable_187: Std_logic;
    signal u_ctrl_u_rx_n74152: Std_logic;
    signal u_ctrl_u_rx_n73707: Std_logic;
    signal u_ctrl_u_rx_n76498: Std_logic;
    signal u_ctrl_u_rx_n73327: Std_logic;
    signal shreg_7: Std_logic;
    signal n28696: Std_logic;
    signal rx_s2: Std_logic;
    signal n74413: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_155: Std_logic;
    signal u_sd_half_phase: Std_logic;
    signal u_sd_n76425: Std_logic;
    signal u_sd_bit_cnt_2: Std_logic;
    signal u_sd_bit_cnt_3: Std_logic;
    signal u_sd_n76322: Std_logic;
    signal u_sd_SD_CLK_c_enable_177: Std_logic;
    signal u_cam_cfg_n75071: Std_logic;
    signal u_cam_cfg_n75073: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_245: Std_logic;
    signal u_cam_cfg_n76354: Std_logic;
    signal u_cam_cfg_n77999: Std_logic;
    signal u_cam_cfg_n28: Std_logic;
    signal u_cam_cfg_n76508: Std_logic;
    signal u_cam_cfg_n301: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_247: Std_logic;
    signal u_cam_cfg_n18: Std_logic;
    signal u_cam_cfg_n300: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_248: Std_logic;
    signal u_sd_n78: Std_logic;
    signal u_sd_n75272: Std_logic;
    signal u_sd_n72854: Std_logic;
    signal u_sd_n40_adj_12501: Std_logic;
    signal u_sd_n72555: Std_logic;
    signal u_sd_st_5: Std_logic;
    signal u_sd_n72040: Std_logic;
    signal u_sd_n84: Std_logic;
    signal n76457: Std_logic;
    signal u_sd_n76350: Std_logic;
    signal u_sd_n72569: Std_logic;
    signal u_sd_n70637: Std_logic;
    signal u_sd_n76795: Std_logic;
    signal u_sd_n76798: Std_logic;
    signal u_cam_cfg_n74184: Std_logic;
    signal u_cam_cfg_n74262: Std_logic;
    signal u_cam_cfg_n74087: Std_logic;
    signal u_cam_cfg_n74182: Std_logic;
    signal u_cam_cfg_bitn_2: Std_logic;
    signal u_cam_cfg_bitn_0: Std_logic;
    signal u_cam_cfg_bitn_1: Std_logic;
    signal u_cam_cfg_n71479: Std_logic;
    signal u_cam_cfg_n172: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_251: Std_logic;
    signal u_cam_cfg_n63253: Std_logic;
    signal u_cam_cfg_n71301: Std_logic;
    signal u_cam_cfg_u_rom_n28097: Std_logic;
    signal u_cam_cfg_u_rom_n28121: Std_logic;
    signal u_cam_cfg_u_rom_n28049: Std_logic;
    signal u_cam_cfg_u_rom_n28025: Std_logic;
    signal u_cam_cfg_rom_entry_8: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_244: Std_logic;
    signal u_cam_cfg_cur_reg_0: Std_logic;
    signal u_cam_cfg_u_rom_n28120: Std_logic;
    signal u_cam_cfg_u_rom_n28096: Std_logic;
    signal u_cam_cfg_u_rom_n28048: Std_logic;
    signal u_cam_cfg_u_rom_n28024: Std_logic;
    signal u_cam_cfg_rom_entry_9: Std_logic;
    signal u_cam_cfg_cur_reg_1: Std_logic;
    signal u_cam_cfg_u_rom_n28119: Std_logic;
    signal u_cam_cfg_u_rom_n28095: Std_logic;
    signal u_cam_cfg_u_rom_n28023: Std_logic;
    signal u_cam_cfg_u_rom_n28047: Std_logic;
    signal u_cam_cfg_rom_entry_10: Std_logic;
    signal u_cam_cfg_cur_reg_2: Std_logic;
    signal u_cam_cfg_u_rom_n28118: Std_logic;
    signal u_cam_cfg_u_rom_n28094: Std_logic;
    signal u_cam_cfg_u_rom_n28046: Std_logic;
    signal u_cam_cfg_u_rom_n28022: Std_logic;
    signal u_cam_cfg_rom_entry_11: Std_logic;
    signal u_cam_cfg_cur_reg_3: Std_logic;
    signal u_cam_cfg_u_rom_n28117: Std_logic;
    signal u_cam_cfg_u_rom_n28093: Std_logic;
    signal u_cam_cfg_u_rom_n28021: Std_logic;
    signal u_cam_cfg_u_rom_n28045: Std_logic;
    signal u_cam_cfg_rom_entry_12: Std_logic;
    signal u_cam_cfg_cur_reg_4: Std_logic;
    signal u_cam_cfg_u_rom_n28116: Std_logic;
    signal u_cam_cfg_u_rom_n28092: Std_logic;
    signal u_cam_cfg_u_rom_n28020: Std_logic;
    signal u_cam_cfg_u_rom_n28044: Std_logic;
    signal u_cam_cfg_rom_entry_13: Std_logic;
    signal u_cam_cfg_cur_reg_5: Std_logic;
    signal u_cam_cfg_u_rom_n28115: Std_logic;
    signal u_cam_cfg_u_rom_n28091: Std_logic;
    signal u_cam_cfg_u_rom_n28019: Std_logic;
    signal u_cam_cfg_u_rom_n28043: Std_logic;
    signal u_cam_cfg_rom_entry_15: Std_logic;
    signal u_cam_cfg_cur_reg_7: Std_logic;
    signal u_cam_cfg_u_rom_n28090: Std_logic;
    signal u_cam_cfg_u_rom_n28114: Std_logic;
    signal u_cam_cfg_u_rom_n28018: Std_logic;
    signal u_cam_cfg_u_rom_n28042: Std_logic;
    signal u_cam_cfg_rom_entry_16: Std_logic;
    signal u_cam_cfg_cur_reg_8: Std_logic;
    signal u_cam_cfg_u_rom_n28113: Std_logic;
    signal u_cam_cfg_u_rom_n28089: Std_logic;
    signal u_cam_cfg_u_rom_n28017: Std_logic;
    signal u_cam_cfg_u_rom_n28041: Std_logic;
    signal u_cam_cfg_rom_entry_17: Std_logic;
    signal u_cam_cfg_cur_reg_9: Std_logic;
    signal u_cam_cfg_u_rom_n28088: Std_logic;
    signal u_cam_cfg_u_rom_n28112: Std_logic;
    signal u_cam_cfg_u_rom_n28040: Std_logic;
    signal u_cam_cfg_u_rom_n28016: Std_logic;
    signal u_cam_cfg_rom_entry_18: Std_logic;
    signal u_cam_cfg_cur_reg_10: Std_logic;
    signal u_cam_cfg_u_rom_n28111: Std_logic;
    signal u_cam_cfg_u_rom_n28087: Std_logic;
    signal u_cam_cfg_u_rom_n28039: Std_logic;
    signal u_cam_cfg_u_rom_n28015: Std_logic;
    signal u_cam_cfg_rom_entry_19: Std_logic;
    signal u_cam_cfg_cur_reg_11: Std_logic;
    signal u_cam_cfg_u_rom_n28086: Std_logic;
    signal u_cam_cfg_u_rom_n28110: Std_logic;
    signal u_cam_cfg_u_rom_n28014: Std_logic;
    signal u_cam_cfg_u_rom_n28038: Std_logic;
    signal u_cam_cfg_rom_entry_20: Std_logic;
    signal u_cam_cfg_cur_reg_12: Std_logic;
    signal u_cam_cfg_u_rom_n28109: Std_logic;
    signal u_cam_cfg_u_rom_n28085: Std_logic;
    signal u_cam_cfg_u_rom_n28037: Std_logic;
    signal u_cam_cfg_u_rom_n28013: Std_logic;
    signal u_cam_cfg_rom_entry_21: Std_logic;
    signal u_cam_cfg_cur_reg_13: Std_logic;
    signal u_cam_cfg_u_rom_n28107: Std_logic;
    signal u_cam_cfg_u_rom_n28083: Std_logic;
    signal u_cam_cfg_u_rom_n28035: Std_logic;
    signal u_cam_cfg_u_rom_n28011: Std_logic;
    signal u_cam_cfg_rom_entry_22: Std_logic;
    signal u_cam_cfg_cur_reg_14: Std_logic;
    signal u_cam_cfg_u_rom_n28108: Std_logic;
    signal u_cam_cfg_u_rom_n28084: Std_logic;
    signal u_cam_cfg_u_rom_n28012: Std_logic;
    signal u_cam_cfg_u_rom_n28036: Std_logic;
    signal u_cam_cfg_rom_entry_23: Std_logic;
    signal u_cam_cfg_cur_reg_15: Std_logic;
    signal n27875: Std_logic;
    signal n27876: Std_logic;
    signal u_cam_cfg_cur_val_0: Std_logic;
    signal u_cam_cfg_cur_val_1: Std_logic;
    signal n27873: Std_logic;
    signal n27874: Std_logic;
    signal u_cam_cfg_cur_val_2: Std_logic;
    signal u_cam_cfg_cur_val_3: Std_logic;
    signal n27871: Std_logic;
    signal n27872: Std_logic;
    signal u_cam_cfg_cur_val_4: Std_logic;
    signal u_cam_cfg_cur_val_5: Std_logic;
    signal n27869: Std_logic;
    signal n27870: Std_logic;
    signal u_cam_cfg_cur_val_6: Std_logic;
    signal u_cam_cfg_cur_val_7: Std_logic;
    signal u_cam_cfg_n7: Std_logic;
    signal u_cam_cfg_n61804: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_219: Std_logic;
    signal u_cam_cfg_n64226: Std_logic;
    signal u_cam_cfg_n64234: Std_logic;
    signal u_cam_cfg_n242: Std_logic;
    signal u_cam_cfg_n243: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_252: Std_logic;
    signal u_cam_cfg_n68901: Std_logic;
    signal u_cam_cfg_sh_0: Std_logic;
    signal u_cam_cfg_sh_1: Std_logic;
    signal u_cam_cfg_n64230: Std_logic;
    signal u_cam_cfg_n64232: Std_logic;
    signal u_cam_cfg_n240: Std_logic;
    signal u_cam_cfg_n241: Std_logic;
    signal u_cam_cfg_sh_2: Std_logic;
    signal u_cam_cfg_sh_3: Std_logic;
    signal u_cam_cfg_n8_adj_12530: Std_logic;
    signal u_cam_cfg_n8: Std_logic;
    signal u_cam_cfg_n71431: Std_logic;
    signal u_cam_cfg_n71433: Std_logic;
    signal u_cam_cfg_sh_4: Std_logic;
    signal u_cam_cfg_sh_5: Std_logic;
    signal u_cam_cfg_n76567: Std_logic;
    signal u_cam_cfg_sh_6: Std_logic;
    signal u_cam_cfg_n64228: Std_logic;
    signal u_cam_cfg_n236: Std_logic;
    signal u_cam_cfg_sh_7: Std_logic;
    signal u_cam_cfg_n63118: Std_logic;
    signal u_cam_cfg_n302: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_246: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_0: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_237: Std_logic;
    signal u_ctrl_cmd_seq_0: Std_logic;
    signal u_ctrl_cmd_seq_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_2: Std_logic;
    signal u_ctrl_cmd_seq_2: Std_logic;
    signal u_ctrl_cmd_seq_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_4: Std_logic;
    signal u_ctrl_cmd_seq_4: Std_logic;
    signal u_ctrl_cmd_seq_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_7: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_6: Std_logic;
    signal u_ctrl_cmd_seq_6: Std_logic;
    signal u_ctrl_cmd_seq_7: Std_logic;
    signal u_ctrl_u_cmd_n24364: Std_logic;
    signal u_ctrl_rx_valid: Std_logic;
    signal u_ctrl_u_cmd_n76510: Std_logic;
    signal u_ctrl_cmd_valid: Std_logic;
    signal VCC_net_000_BUF1: Std_logic;
    signal u_ctrl_hb_pending: Std_logic;
    signal u_ctrl_n24591: Std_logic;
    signal u_ctrl_u_tx_n24574: Std_logic;
    signal u_ctrl_n76486: Std_logic;
    signal u_ctrl_u_tx_n24588: Std_logic;
    signal u_ctrl_u_tx_n52466: Std_logic;
    signal u_ctrl_tx_busy: Std_logic;
    signal u_ctrl_u_ack_idx_2: Std_logic;
    signal u_ctrl_u_ack_idx_0: Std_logic;
    signal u_ctrl_pkt_busy: Std_logic;
    signal u_ctrl_u_ack_idx_1: Std_logic;
    signal u_ctrl_u_ack_n74069: Std_logic;
    signal u_ctrl_u_ack_n58960: Std_logic;
    signal u_ctrl_u_ack_SD_CLK_c_enable_238: Std_logic;
    signal u_ctrl_reg_ack_seq_0: Std_logic;
    signal u_ctrl_reg_ack_seq_1: Std_logic;
    signal u_ctrl_reg_ack_seq_2: Std_logic;
    signal u_ctrl_reg_ack_seq_3: Std_logic;
    signal u_ctrl_reg_ack_seq_4: Std_logic;
    signal u_ctrl_reg_ack_seq_5: Std_logic;
    signal u_ctrl_reg_ack_seq_6: Std_logic;
    signal u_ctrl_reg_ack_seq_7: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_4: Std_logic;
    signal u_ctrl_u_cmd_n12: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_1: Std_logic;
    signal u_ctrl_u_cmd_n76386: Std_logic;
    signal u_ctrl_u_cmd_n29: Std_logic;
    signal u_ctrl_u_cmd_n72019: Std_logic;
    signal u_ctrl_u_cmd_n71823: Std_logic;
    signal u_ctrl_n72748: Std_logic;
    signal u_ctrl_n71640: Std_logic;
    signal u_ctrl_reg_ack_type_0: Std_logic;
    signal u_ctrl_reg_ack_type_1: Std_logic;
    signal u_ctrl_u_cmd_n74995: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_5: Std_logic;
    signal u_ctrl_n64019: Std_logic;
    signal u_ctrl_u_cmd_n98: Std_logic;
    signal u_ctrl_u_cmd_n76355: Std_logic;
    signal u_ctrl_n74996: Std_logic;
    signal u_ctrl_n60615: Std_logic;
    signal u_ctrl_reg_ack_value_0: Std_logic;
    signal u_ctrl_reg_ack_value_1: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_0: Std_logic;
    signal u_ctrl_u_cmd_n71660: Std_logic;
    signal u_ctrl_u_cmd_cmd_arg_3: Std_logic;
    signal u_ctrl_u_cmd_n76330: Std_logic;
    signal u_ctrl_u_cmd_cmd_arg_2: Std_logic;
    signal u_ctrl_n60780: Std_logic;
    signal u_ctrl_n60614: Std_logic;
    signal u_ctrl_reg_ack_value_2: Std_logic;
    signal u_ctrl_reg_ack_value_3: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_2: Std_logic;
    signal u_ctrl_u_cmd_n44: Std_logic;
    signal u_ctrl_u_cmd_n40_adj_12421: Std_logic;
    signal u_ctrl_u_cmd_cmd_arg_4: Std_logic;
    signal u_ctrl_n71641: Std_logic;
    signal u_ctrl_n60781: Std_logic;
    signal u_ctrl_reg_ack_value_4: Std_logic;
    signal u_ctrl_reg_ack_value_5: Std_logic;
    signal u_ctrl_u_cmd_n40: Std_logic;
    signal u_ctrl_u_cmd_n76517: Std_logic;
    signal u_ctrl_n71642: Std_logic;
    signal u_ctrl_n71643: Std_logic;
    signal u_ctrl_reg_ack_value_6: Std_logic;
    signal u_ctrl_reg_ack_value_7: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_6: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_3: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_7: Std_logic;
    signal u_ctrl_u_cmd_n74946: Std_logic;
    signal u_ctrl_u_cmd_n74945: Std_logic;
    signal u_ctrl_n71639: Std_logic;
    signal u_ctrl_n63174: Std_logic;
    signal u_ctrl_reg_ack_value_28: Std_logic;
    signal u_ctrl_u_cmd_n73735: Std_logic;
    signal u_ctrl_reg_ack_value_30: Std_logic;
    signal u_ctrl_reg_ack_value_31: Std_logic;
    signal u_ctrl_u_rx_shreg_1: Std_logic;
    signal u_ctrl_u_rx_shreg_0: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_154: Std_logic;
    signal u_ctrl_u_rx_shreg_3: Std_logic;
    signal u_ctrl_u_rx_shreg_2: Std_logic;
    signal u_ctrl_u_rx_shreg_5: Std_logic;
    signal u_ctrl_u_rx_shreg_4: Std_logic;
    signal u_ctrl_u_rx_shreg_6: Std_logic;
    signal u_ctrl_u_rx_n76496: Std_logic;
    signal u_ctrl_u_rx_n73635: Std_logic;
    signal u_ctrl_u_rx_n76497: Std_logic;
    signal u_ctrl_u_rx_n74232: Std_logic;
    signal u_ctrl_u_rx_n24226: Std_logic;
    signal u_ctrl_u_rx_valid_N_566: Std_logic;
    signal u_ctrl_u_rx_n52947: Std_logic;
    signal u_ctrl_tx_pkt_valid: Std_logic;
    signal u_ctrl_u_ack_pkt_7_0: Std_logic;
    signal u_ctrl_u_ack_pkt_6_0: Std_logic;
    signal u_ctrl_u_ack_pkt_5_6: Std_logic;
    signal u_ctrl_u_ack_n74387: Std_logic;
    signal u_ctrl_u_ack_n74386: Std_logic;
    signal u_ctrl_u_ack_n74385: Std_logic;
    signal u_ctrl_u_ack_SD_CLK_c_enable_239: Std_logic;
    signal u_ctrl_tx_pkt_data_0: Std_logic;
    signal u_ctrl_u_ack_pkt_6_1: Std_logic;
    signal u_ctrl_u_ack_pkt_7_1: Std_logic;
    signal u_ctrl_u_ack_pkt_5_1: Std_logic;
    signal u_ctrl_u_ack_n74955: Std_logic;
    signal u_ctrl_u_ack_n74951: Std_logic;
    signal u_ctrl_u_ack_n74954: Std_logic;
    signal u_ctrl_tx_pkt_data_1: Std_logic;
    signal u_ctrl_u_ack_pkt_1_2: Std_logic;
    signal u_ctrl_u_ack_n74969: Std_logic;
    signal u_ctrl_u_ack_n74970: Std_logic;
    signal u_ctrl_u_ack_n74971: Std_logic;
    signal u_ctrl_tx_pkt_data_2: Std_logic;
    signal u_ctrl_u_ack_n3: Std_logic;
    signal u_ctrl_u_ack_n74398: Std_logic;
    signal u_ctrl_u_ack_pkt_5_4: Std_logic;
    signal u_ctrl_u_ack_n65: Std_logic;
    signal u_ctrl_u_ack_n74446: Std_logic;
    signal u_ctrl_tx_pkt_data_3: Std_logic;
    signal u_ctrl_u_ack_n74401: Std_logic;
    signal u_ctrl_u_ack_n72478: Std_logic;
    signal u_ctrl_u_ack_n64: Std_logic;
    signal u_ctrl_tx_pkt_data_4: Std_logic;
    signal u_ctrl_u_ack_pkt_7_5: Std_logic;
    signal u_ctrl_u_ack_pkt_2_5: Std_logic;
    signal u_ctrl_u_ack_pkt_6_5: Std_logic;
    signal u_ctrl_u_ack_n76564: Std_logic;
    signal u_ctrl_tx_pkt_data_5: Std_logic;
    signal u_ctrl_u_ack_n74404: Std_logic;
    signal u_ctrl_u_ack_n3_adj_12417: Std_logic;
    signal u_ctrl_u_ack_n62: Std_logic;
    signal u_ctrl_tx_pkt_data_6: Std_logic;
    signal u_ctrl_u_ack_n2_adj_12418: Std_logic;
    signal u_ctrl_u_ack_pkt_6_7: Std_logic;
    signal u_ctrl_u_ack_pkt_7_7: Std_logic;
    signal u_ctrl_u_ack_n61: Std_logic;
    signal u_ctrl_u_ack_n74447: Std_logic;
    signal u_ctrl_tx_pkt_data_7: Std_logic;
    signal u_ctrl_u_ack_n76440: Std_logic;
    signal u_ctrl_reg_ack_valid: Std_logic;
    signal u_ctrl_u_ack_n76495: Std_logic;
    signal u_ctrl_u_ack_n8: Std_logic;
    signal u_ctrl_u_ack_n72: Std_logic;
    signal u_ctrl_u_ack_n73: Std_logic;
    signal u_ctrl_u_ack_SD_CLK_c_enable_241: Std_logic;
    signal u_ctrl_u_ack_pkt_1_0: Std_logic;
    signal u_ctrl_n76445: Std_logic;
    signal u_ctrl_merged_ack_type_1: Std_logic;
    signal u_ctrl_u_ack_pkt_1_1: Std_logic;
    signal u_ctrl_u_ack_pkt_2_0: Std_logic;
    signal u_ctrl_merged_ack_value_1: Std_logic;
    signal u_ctrl_u_ack_pkt_2_1: Std_logic;
    signal u_ctrl_u_ack_pkt_2_2: Std_logic;
    signal u_ctrl_u_ack_pkt_2_3: Std_logic;
    signal u_ctrl_merged_ack_value_5: Std_logic;
    signal u_ctrl_u_ack_pkt_2_6: Std_logic;
    signal u_ctrl_u_ack_pkt_2_7: Std_logic;
    signal u_ctrl_merged_ack_value_28: Std_logic;
    signal u_ctrl_merged_ack_value_25: Std_logic;
    signal u_ctrl_merged_ack_value_30: Std_logic;
    signal u_ctrl_merged_ack_seq_1: Std_logic;
    signal u_ctrl_merged_ack_seq_0: Std_logic;
    signal u_ctrl_merged_ack_seq_3: Std_logic;
    signal u_ctrl_merged_ack_seq_2: Std_logic;
    signal u_ctrl_u_ack_pkt_6_2: Std_logic;
    signal u_ctrl_u_ack_pkt_6_3: Std_logic;
    signal u_ctrl_merged_ack_seq_5: Std_logic;
    signal u_ctrl_merged_ack_seq_4: Std_logic;
    signal u_ctrl_u_ack_pkt_6_4: Std_logic;
    signal u_ctrl_merged_ack_seq_7: Std_logic;
    signal u_ctrl_merged_ack_seq_6: Std_logic;
    signal u_ctrl_u_ack_pkt_6_6: Std_logic;
    signal u_ctrl_u_ack_n73965: Std_logic;
    signal u_ctrl_u_ack_n61047: Std_logic;
    signal u_ctrl_u_ack_n74051: Std_logic;
    signal u_ctrl_u_ack_chk_1: Std_logic;
    signal u_ctrl_u_ack_chk_0: Std_logic;
    signal u_ctrl_u_ack_n4: Std_logic;
    signal u_ctrl_u_ack_n60056: Std_logic;
    signal u_ctrl_u_ack_chk_3: Std_logic;
    signal u_ctrl_u_ack_chk_2: Std_logic;
    signal u_ctrl_u_ack_pkt_7_2: Std_logic;
    signal u_ctrl_u_ack_pkt_7_3: Std_logic;
    signal u_ctrl_u_ack_n74103: Std_logic;
    signal u_ctrl_u_ack_chk_5: Std_logic;
    signal u_ctrl_u_ack_chk_4: Std_logic;
    signal u_ctrl_u_ack_pkt_7_4: Std_logic;
    signal u_ctrl_u_ack_n4_adj_12419: Std_logic;
    signal u_ctrl_u_ack_chk_7: Std_logic;
    signal u_ctrl_u_ack_chk_6: Std_logic;
    signal u_ctrl_u_ack_pkt_7_6: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_83: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_0: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_7: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_91: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_0: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_7: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_99: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_0: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_7: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_107: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_0: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_7: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_115: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_0: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_7: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_123: Std_logic;
    signal u_ctrl_u_cmd_cmd_arg_0: Std_logic;
    signal u_ctrl_u_cmd_cmd_arg_1: Std_logic;
    signal u_ctrl_u_cmd_cmd_arg_5: Std_logic;
    signal u_ctrl_u_cmd_cmd_arg_6: Std_logic;
    signal u_ctrl_u_cmd_cmd_arg_7: Std_logic;
    signal u_ctrl_u_cmd_n24366: Std_logic;
    signal u_ctrl_u_cmd_n24365: Std_logic;
    signal u_ctrl_u_cmd_n24368: Std_logic;
    signal u_ctrl_u_cmd_n24367: Std_logic;
    signal u_ctrl_u_cmd_n24370: Std_logic;
    signal u_ctrl_u_cmd_n24369: Std_logic;
    signal u_ctrl_u_cmd_n24371: Std_logic;
    signal u_ctrl_u_cmd_n15: Std_logic;
    signal u_ctrl_u_cmd_n52522: Std_logic;
    signal u_ctrl_u_cmd_n24386: Std_logic;
    signal u_ctrl_u_rx_bit_idx_0: Std_logic;
    signal u_ctrl_u_rx_bit_idx_1: Std_logic;
    signal u_ctrl_u_rx_n19: Std_logic;
    signal u_ctrl_u_rx_n76483: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_215: Std_logic;
    signal u_ctrl_u_rx_n63185: Std_logic;
    signal u_ctrl_u_rx_bit_idx_2: Std_logic;
    signal u_ctrl_u_rx_n18: Std_logic;
    signal u_ctrl_u_rx_n24227: Std_logic;
    signal u_ctrl_u_rx_n76327: Std_logic;
    signal u_ctrl_u_rx_n24220: Std_logic;
    signal u_ctrl_u_rx_n31: Std_logic;
    signal u_ctrl_u_rx_n52638: Std_logic;
    signal u_ctrl_u_rx_n71401: Std_logic;
    signal u_ctrl_u_rx_n74009: Std_logic;
    signal u_ctrl_u_rx_n76427: Std_logic;
    signal u_ctrl_u_rx_n52662: Std_logic;
    signal u_ctrl_u_rx_n36110: Std_logic;
    signal u_ctrl_u_rx_n24228: Std_logic;
    signal u_ctrl_u_rx_n76346: Std_logic;
    signal u_ctrl_u_rx_n24229: Std_logic;
    signal u_ctrl_u_rx_n72584: Std_logic;
    signal u_ctrl_u_rx_n52640: Std_logic;
    signal u_ctrl_u_rx_rx_s1: Std_logic;
    signal RX_c: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_231: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_192: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_193: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_194: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_195: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_196: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_197: Std_logic;
    signal u_ctrl_u_tx_bit_idx_0: Std_logic;
    signal u_ctrl_u_tx_bit_idx_1: Std_logic;
    signal u_ctrl_u_tx_n19: Std_logic;
    signal u_ctrl_u_tx_n20: Std_logic;
    signal u_ctrl_u_tx_SD_CLK_c_enable_222: Std_logic;
    signal u_ctrl_u_tx_n63183: Std_logic;
    signal u_ctrl_u_tx_bit_idx_2: Std_logic;
    signal u_ctrl_u_tx_n18: Std_logic;
    signal u_ctrl_u_tx_n66070: Std_logic;
    signal u_ctrl_u_tx_n52460: Std_logic;
    signal u_ctrl_u_tx_n71397: Std_logic;
    signal u_ctrl_u_tx_n52461: Std_logic;
    signal u_ctrl_SD_CLK_c_enable_240: Std_logic;
    signal u_ctrl_u_tx_shreg_0: Std_logic;
    signal u_ctrl_u_tx_shreg_1: Std_logic;
    signal u_ctrl_u_tx_shreg_2: Std_logic;
    signal u_ctrl_u_tx_shreg_3: Std_logic;
    signal u_ctrl_u_tx_shreg_4: Std_logic;
    signal u_ctrl_u_tx_shreg_5: Std_logic;
    signal u_ctrl_u_tx_shreg_6: Std_logic;
    signal u_ctrl_u_tx_shreg_7: Std_logic;
    signal u_dbg_status_bit_idx_1: Std_logic;
    signal u_dbg_status_bit_idx_0: Std_logic;
    signal u_dbg_status_n31: Std_logic;
    signal u_dbg_status_n24: Std_logic;
    signal u_dbg_status_n70163: Std_logic;
    signal u_dbg_status_MCLK_c_enable_28: Std_logic;
    signal u_dbg_status_n64282: Std_logic;
    signal u_dbg_status_n76332: Std_logic;
    signal u_dbg_status_bit_idx_2: Std_logic;
    signal u_dbg_status_bit_idx_3: Std_logic;
    signal u_dbg_status_n22: Std_logic;
    signal u_dbg_status_n23: Std_logic;
    signal u_dbg_status_n63115: Std_logic;
    signal u_dbg_status_n76392: Std_logic;
    signal u_dbg_status_n76452: Std_logic;
    signal u_dbg_status_sending: Std_logic;
    signal u_dbg_status_n73449: Std_logic;
    signal u_dbg_status_n67: Std_logic;
    signal u_dbg_status_n63117: Std_logic;
    signal u_dbg_status_start_data_1: Std_logic;
    signal u_dbg_status_shreg_3: Std_logic;
    signal u_dbg_status_start_data_0: Std_logic;
    signal u_dbg_status_shreg_2: Std_logic;
    signal u_dbg_status_n34099: Std_logic;
    signal u_dbg_status_n34100: Std_logic;
    signal u_dbg_status_start_data_3: Std_logic;
    signal u_dbg_status_shreg_5: Std_logic;
    signal u_dbg_status_shreg_4: Std_logic;
    signal u_dbg_status_start_data_2: Std_logic;
    signal u_dbg_status_n34097: Std_logic;
    signal u_dbg_status_n34098: Std_logic;
    signal u_dbg_status_shreg_7: Std_logic;
    signal u_dbg_status_start_data_5: Std_logic;
    signal u_dbg_status_start_data_4: Std_logic;
    signal u_dbg_status_shreg_6: Std_logic;
    signal u_dbg_status_n34095: Std_logic;
    signal u_dbg_status_n34096: Std_logic;
    signal u_dbg_status_shreg_8: Std_logic;
    signal u_dbg_status_start_data_6: Std_logic;
    signal u_dbg_status_n76347: Std_logic;
    signal u_dbg_status_n34094: Std_logic;
    signal u_dbg_status_n76391: Std_logic;
    signal u_dbg_status_n76476: Std_logic;
    signal u_dbg_status_n71538: Std_logic;
    signal u_dbg_status_n76365: Std_logic;
    signal u_dbg_status_n76359: Std_logic;
    signal u_dbg_status_n73297: Std_logic;
    signal u_dbg_status_n107: Std_logic;
    signal u_dbg_status_n71540: Std_logic;
    signal u_dbg_status_n72868: Std_logic;
    signal u_dbg_status_n71978: Std_logic;
    signal u_dbg_status_n74244: Std_logic;
    signal u_dbg_status_n76358: Std_logic;
    signal u_dbg_status_n24_adj_12533: Std_logic;
    signal u_dbg_status_n71999: Std_logic;
    signal u_dbg_status_n71879: Std_logic;
    signal u_dbg_status_n76545: Std_logic;
    signal u_dbg_status_n66235: Std_logic;
    signal u_dbg_status_n72878: Std_logic;
    signal u_dbg_status_n72852: Std_logic;
    signal u_dbg_status_n76533: Std_logic;
    signal u_dbg_status_n73075: Std_logic;
    signal u_dbg_status_n66563: Std_logic;
    signal u_dbg_status_n73073: Std_logic;
    signal u_dbg_status_n71681: Std_logic;
    signal u_dbg_status_n71694: Std_logic;
    signal u_dbg_status_n72735: Std_logic;
    signal u_dbg_status_n72463: Std_logic;
    signal u_dbg_status_n59: Std_logic;
    signal u_dbg_status_n73201: Std_logic;
    signal u_dbg_status_n72710: Std_logic;
    signal u_dbg_status_busy_d: Std_logic;
    signal u_raw_cap_n74081: Std_logic;
    signal u_raw_cap_n74083: Std_logic;
    signal u_raw_cap_capture_this_frame_p_N_2024: Std_logic;
    signal u_raw_cap_capture_this_frame_p: Std_logic;
    signal vsync_d: Std_logic;
    signal VSYNC_c: Std_logic;
    signal u_raw_cap_frame_end: Std_logic;
    signal u_raw_cap_raw_done_pending_p: Std_logic;
    signal u_raw_cap_raw_done_s1: Std_logic;
    signal u_raw_cap_raw_done_tog_p: Std_logic;
    signal u_raw_cap_raw_done_tog_p_N_2028: Std_logic;
    signal u_sd_n74509: Std_logic;
    signal u_sd_mosi_N_10327_2: Std_logic;
    signal u_sd_n78001: Std_logic;
    signal u_sd_n23_adj_12487: Std_logic;
    signal u_sd_n19: Std_logic;
    signal u_sd_n24_adj_12470: Std_logic;
    signal u_sd_n28_adj_12488: Std_logic;
    signal u_sd_n31_adj_12489: Std_logic;
    signal u_sd_n76422: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_3: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_1: Std_logic;
    signal u_sd_cmd_frame_1: Std_logic;
    signal u_sd_cmd_frame_3: Std_logic;
    signal u_sd_n24: Std_logic;
    signal u_sd_n27_adj_12484: Std_logic;
    signal u_sd_n29_adj_12482: Std_logic;
    signal u_sd_cmd_frame_5: Std_logic;
    signal u_sd_n25_adj_12485: Std_logic;
    signal u_sd_cmd_frame_4: Std_logic;
    signal u_sd_n39: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_5: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_4: Std_logic;
    signal u_sd_cmd_frame_7: Std_logic;
    signal u_sd_n36: Std_logic;
    signal u_sd_n76314: Std_logic;
    signal u_sd_n76431: Std_logic;
    signal u_sd_cmd_frame_6: Std_logic;
    signal u_sd_n27_adj_12481: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_7: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_6: Std_logic;
    signal u_sd_n25_adj_12475: Std_logic;
    signal u_sd_cmd_frame_11: Std_logic;
    signal u_sd_cmd_frame_9: Std_logic;
    signal u_sd_n26_adj_12479: Std_logic;
    signal u_sd_n26_adj_12480: Std_logic;
    signal u_sd_n60665: Std_logic;
    signal u_sd_cmd_frame_15: Std_logic;
    signal u_sd_cmd_frame_13: Std_logic;
    signal u_sd_n26_adj_12477: Std_logic;
    signal u_sd_n26_adj_12478: Std_logic;
    signal u_sd_cmd_frame_16: Std_logic;
    signal u_sd_n26_adj_12476: Std_logic;
    signal u_sd_n29_adj_12473: Std_logic;
    signal u_sd_n76503: Std_logic;
    signal u_sd_n18: Std_logic;
    signal u_sd_n73777: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_41: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_38: Std_logic;
    signal u_sd_cmd_frame_38: Std_logic;
    signal u_sd_cmd_frame_41: Std_logic;
    signal u_sd_n77482: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_40: Std_logic;
    signal u_sd_cmd_frame_40: Std_logic;
    signal u_sd_n75722: Std_logic;
    signal u_sd_n31_adj_12469: Std_logic;
    signal u_sd_n71596: Std_logic;
    signal u_sd_n73525: Std_logic;
    signal u_sd_cmd_frame_42: Std_logic;
    signal u_sd_n20_adj_12472: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_44: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_42: Std_logic;
    signal u_sd_cmd_frame_44: Std_logic;
    signal u_sd_n14_adj_12483: Std_logic;
    signal u_sd_cmd_frame_43: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_43: Std_logic;
    signal u_sd_n71720: Std_logic;
    signal u_sd_n38_adj_12466: Std_logic;
    signal u_sd_cmd_frame_45: Std_logic;
    signal u_sd_cmd_frame_47_N_9996_45: Std_logic;
    signal u_sd_n34: Std_logic;
    signal u_sd_n50: Std_logic;
    signal u_sd_cmd_i_2: Std_logic;
    signal u_sd_cmd_i_0: Std_logic;
    signal u_sd_n11_adj_12509: Std_logic;
    signal u_sd_cmd_i_2_N_10044_2: Std_logic;
    signal u_sd_cmd_i_2_N_10044_0: Std_logic;
    signal u_sd_cmd_i_1: Std_logic;
    signal u_sd_n76428: Std_logic;
    signal u_sd_n76348: Std_logic;
    signal u_sd_cmd_i_2_N_10044_1: Std_logic;
    signal u_sd_n75911: Std_logic;
    signal u_sd_n75915: Std_logic;
    signal u_sd_div_val_2: Std_logic;
    signal n76455: Std_logic;
    signal u_sd_n76456: Std_logic;
    signal u_sd_speed_fast_N_10379: Std_logic;
    signal u_sd_half_phase_N_10318: Std_logic;
    signal u_sd_n72199: Std_logic;
    signal u_sd_n72919: Std_logic;
    signal u_sd_n71814: Std_logic;
    signal u_sd_n10_adj_12490: Std_logic;
    signal u_sd_st_5_N_9990_5: Std_logic;
    signal u_sd_sh_rx_0: Std_logic;
    signal u_sd_n74421: Std_logic;
    signal u_sd_sh_rx_2: Std_logic;
    signal u_sd_n74415: Std_logic;
    signal u_sd_n6: Std_logic;
    signal u_sd_sh_rx_3: Std_logic;
    signal u_sd_n74416: Std_logic;
    signal u_sd_sh_rx_6: Std_logic;
    signal u_sd_sh_rx_4: Std_logic;
    signal u_sd_n74419: Std_logic;
    signal u_sd_n74417: Std_logic;
    signal u_sd_SD_CLK_c_enable_188: Std_logic;
    signal u_sd_sh_rx_7: Std_logic;
    signal u_sd_n74420: Std_logic;
    signal u_sd_n76477: Std_logic;
    signal u_sd_spi_start: Std_logic;
    signal u_sd_n76344: Std_logic;
    signal u_sd_n61762: Std_logic;
    signal u_sd_spi_rx_0: Std_logic;
    signal u_sd_spi_rx_1: Std_logic;
    signal u_sd_spi_rx_2: Std_logic;
    signal u_sd_spi_rx_3: Std_logic;
    signal u_sd_spi_rx_4: Std_logic;
    signal u_sd_spi_rx_5: Std_logic;
    signal u_sd_spi_rx_6: Std_logic;
    signal u_sd_spi_rx_7: Std_logic;
    signal u_sd_n31_adj_12510: Std_logic;
    signal u_sd_n72828: Std_logic;
    signal u_sd_n70951: Std_logic;
    signal u_sd_n76964: Std_logic;
    signal u_sd_spi_tx_1: Std_logic;
    signal u_sd_n77: Std_logic;
    signal u_sd_n80_adj_12492: Std_logic;
    signal u_sd_spi_tx_0: Std_logic;
    signal u_sd_spi_tx_7_N_9962_1: Std_logic;
    signal u_sd_spi_tx_7_N_9962_0: Std_logic;
    signal u_sd_n77031: Std_logic;
    signal u_sd_spi_tx_3: Std_logic;
    signal u_sd_n76864: Std_logic;
    signal u_sd_spi_tx_2: Std_logic;
    signal u_sd_spi_tx_7_N_9962_3: Std_logic;
    signal u_sd_spi_tx_7_N_9962_2: Std_logic;
    signal u_sd_n76929: Std_logic;
    signal u_sd_n76998: Std_logic;
    signal u_sd_spi_tx_7_N_9962_5: Std_logic;
    signal u_sd_spi_tx_7_N_9962_4: Std_logic;
    signal u_sd_n77006: Std_logic;
    signal u_sd_n80: Std_logic;
    signal u_sd_spi_tx_6: Std_logic;
    signal u_sd_spi_tx_7_N_9962_7: Std_logic;
    signal u_sd_spi_tx_7_N_9962_6: Std_logic;
    signal u_sd_n76520: Std_logic;
    signal u_sd_n75288: Std_logic;
    signal u_sd_n70673: Std_logic;
    signal u_sd_n76542: Std_logic;
    signal u_sd_n74277: Std_logic;
    signal u_sd_n76352: Std_logic;
    signal n78000: Std_logic;
    signal u_sd_n72963: Std_logic;
    signal u_sd_n72949: Std_logic;
    signal u_sd_st_5_N_9990_4: Std_logic;
    signal u_sdram_n76491: Std_logic;
    signal u_sdram_n76379: Std_logic;
    signal VCC_net_001_BUF1: Std_logic;
    signal u_sdram_refresh_req_N_2484: Std_logic;
    signal u_sdram_n58488: Std_logic;
    signal u_sdram_refresh_req: Std_logic;
    signal u_sdram_n4: Std_logic;
    signal u_sdram_n71415: Std_logic;
    signal u_sdram_n30: Std_logic;
    signal u_sdram_n31: Std_logic;
    signal u_sdram_n76293: Std_logic;
    signal u_sdram_n76000: Std_logic;
    signal u_sd_n31: Std_logic;
    signal u_sd_n28_adj_12441: Std_logic;
    signal u_sd_n76313: Std_logic;
    signal u_sd_wr_count_9_N_10119_1: Std_logic;
    signal u_sd_wr_count_9_N_10119_0: Std_logic;
    signal u_sd_n28_adj_12436: Std_logic;
    signal u_sd_n28_adj_12438: Std_logic;
    signal u_sd_wr_count_9_N_10119_3: Std_logic;
    signal u_sd_wr_count_9_N_10119_2: Std_logic;
    signal u_sd_n28_adj_12432: Std_logic;
    signal u_sd_n28_adj_12435: Std_logic;
    signal u_sd_wr_count_9_N_10119_5: Std_logic;
    signal u_sd_wr_count_9_N_10119_4: Std_logic;
    signal u_sd_n28_adj_12424: Std_logic;
    signal u_sd_n28_adj_12431: Std_logic;
    signal u_sd_wr_count_9_N_10119_7: Std_logic;
    signal u_sd_wr_count_9_N_10119_6: Std_logic;
    signal u_sd_n28: Std_logic;
    signal u_sd_n28_adj_12425: Std_logic;
    signal u_sd_wr_count_9_N_10119_9: Std_logic;
    signal u_sd_wr_count_9_N_10119_8: Std_logic;
    signal u_dbg_status_n75021: Std_logic;
    signal u_dbg_status_n76290: Std_logic;
    signal u_dbg_status_n71606: Std_logic;
    signal u_dbg_status_n72377: Std_logic;
    signal u_dbg_status_n76336: Std_logic;
    signal u_dbg_status_n76407: Std_logic;
    signal u_dbg_status_n75275: Std_logic;
    signal u_dbg_status_n76413: Std_logic;
    signal u_dbg_status_n76403: Std_logic;
    signal u_dbg_status_n76405: Std_logic;
    signal u_cam_cfg_n76464: Std_logic;
    signal u_cam_cfg_n76555: Std_logic;
    signal u_cam_cfg_n37: Std_logic;
    signal u_cam_cfg_n74471: Std_logic;
    signal u_cam_cfg_n74472: Std_logic;
    signal u_cam_cfg_n76558: Std_logic;
    signal u_cam_cfg_n76398: Std_logic;
    signal u_cam_cfg_u_rom_n28105: Std_logic;
    signal u_cam_cfg_u_rom_n28129: Std_logic;
    signal u_cam_cfg_u_rom_n28033: Std_logic;
    signal u_cam_cfg_u_rom_n28057: Std_logic;
    signal u_cam_cfg_u_rom_rom_entry_0: Std_logic;
    signal u_cam_cfg_u_rom_n28122: Std_logic;
    signal u_cam_cfg_u_rom_n28098: Std_logic;
    signal u_cam_cfg_u_rom_n28050: Std_logic;
    signal u_cam_cfg_u_rom_n28026: Std_logic;
    signal u_cam_cfg_u_rom_rom_entry_7: Std_logic;
    signal u_cam_cfg_u_rom_n28124: Std_logic;
    signal u_cam_cfg_u_rom_n28100: Std_logic;
    signal u_cam_cfg_u_rom_n28028: Std_logic;
    signal u_cam_cfg_u_rom_n28052: Std_logic;
    signal u_cam_cfg_u_rom_rom_entry_5: Std_logic;
    signal u_cam_cfg_u_rom_n28125: Std_logic;
    signal u_cam_cfg_u_rom_n28101: Std_logic;
    signal u_cam_cfg_u_rom_n28029: Std_logic;
    signal u_cam_cfg_u_rom_n28053: Std_logic;
    signal u_cam_cfg_u_rom_rom_entry_4: Std_logic;
    signal u_cam_cfg_u_rom_n28126: Std_logic;
    signal u_cam_cfg_u_rom_n28102: Std_logic;
    signal u_cam_cfg_u_rom_n28030: Std_logic;
    signal u_cam_cfg_u_rom_n28054: Std_logic;
    signal u_cam_cfg_u_rom_rom_entry_3: Std_logic;
    signal u_cam_cfg_u_rom_n28127: Std_logic;
    signal u_cam_cfg_u_rom_n28103: Std_logic;
    signal u_cam_cfg_u_rom_n28055: Std_logic;
    signal u_cam_cfg_u_rom_n28031: Std_logic;
    signal u_cam_cfg_u_rom_rom_entry_2: Std_logic;
    signal u_cam_cfg_u_rom_n28099: Std_logic;
    signal u_cam_cfg_u_rom_n28104: Std_logic;
    signal u_cam_cfg_u_rom_n28027: Std_logic;
    signal u_cam_cfg_u_rom_n28032: Std_logic;
    signal u_cam_cfg_u_rom_n76286: Std_logic;
    signal u_cam_cfg_u_rom_n28128: Std_logic;
    signal u_cam_cfg_u_rom_n28123: Std_logic;
    signal u_cam_cfg_u_rom_n28056: Std_logic;
    signal u_cam_cfg_u_rom_n28051: Std_logic;
    signal u_cam_cfg_u_rom_n76283: Std_logic;
    signal u_cam_cfg_u_rom_n76287: Std_logic;
    signal u_sd_n151: Std_logic;
    signal n76458: Std_logic;
    signal u_sd_n69917: Std_logic;
    signal u_sd_n76356: Std_logic;
    signal u_sd_n74308: Std_logic;
    signal u_sd_n76390: Std_logic;
    signal u_sd_n74306: Std_logic;
    signal u_sd_n76389: Std_logic;
    signal u_sd_n62: Std_logic;
    signal u_sd_n129: Std_logic;
    signal u_sd_n76331: Std_logic;
    signal u_sd_n74303: Std_logic;
    signal u_sd_n74300: Std_logic;
    signal u_sd_n76384: Std_logic;
    signal u_sd_n3: Std_logic;
    signal u_sd_n71678: Std_logic;
    signal u_sd_n12: Std_logic;
    signal u_sd_n73399: Std_logic;
    signal u_sd_n74305: Std_logic;
    signal u_sd_n76434: Std_logic;
    signal u_sd_n74298: Std_logic;
    signal u_sd_n76443: Std_logic;
    signal u_sd_n76338: Std_logic;
    signal u_sd_n74158: Std_logic;
    signal u_sd_n73433: Std_logic;
    signal u_sd_n75283: Std_logic;
    signal u_sd_n75286: Std_logic;
    signal u_sd_n16: Std_logic;
    signal u_sd_n16_adj_12426: Std_logic;
    signal n75266: Std_logic;
    signal n75267: Std_logic;
    signal u_sd_n75270: Std_logic;
    signal u_sd_n16_adj_12517: Std_logic;
    signal u_sd_n95_adj_12437: Std_logic;
    signal u_sd_n77027: Std_logic;
    signal u_sd_n77028: Std_logic;
    signal u_sd_n425: Std_logic;
    signal u_sd_n76417: Std_logic;
    signal u_sd_n95: Std_logic;
    signal u_sd_n77002: Std_logic;
    signal u_sd_n77003: Std_logic;
    signal u_sd_n421: Std_logic;
    signal u_sd_n76420: Std_logic;
    signal u_sd_n76382: Std_logic;
    signal u_sd_n76073: Std_logic;
    signal u_sd_n95_adj_12429: Std_logic;
    signal u_sd_n76994: Std_logic;
    signal u_sd_n76995: Std_logic;
    signal u_sd_n76042: Std_logic;
    signal u_sd_n424: Std_logic;
    signal u_sd_n76418: Std_logic;
    signal u_sd_n95_adj_12428: Std_logic;
    signal u_sd_n76960: Std_logic;
    signal u_sd_n76961: Std_logic;
    signal u_sd_n76415: Std_logic;
    signal u_sd_n74317: Std_logic;
    signal u_sd_n95_adj_12427: Std_logic;
    signal u_sd_n76925: Std_logic;
    signal u_sd_n76926: Std_logic;
    signal u_sd_n76419: Std_logic;
    signal u_sd_n65527: Std_logic;
    signal u_sd_n95_adj_12422: Std_logic;
    signal u_sd_n76860: Std_logic;
    signal u_sd_n76861: Std_logic;
    signal u_sd_n426: Std_logic;
    signal u_sd_n76416: Std_logic;
    signal u_sd_n75985: Std_logic;
    signal u_sd_n75912: Std_logic;
    signal u_sd_n71589: Std_logic;
    signal u_sd_n76541: Std_logic;
    signal u_sd_n76530: Std_logic;
    signal u_sd_n26_adj_12474: Std_logic;
    signal u_ctrl_u_tx_n74478: Std_logic;
    signal u_ctrl_u_tx_n74479: Std_logic;
    signal u_sd_n62877: Std_logic;
    signal u_sd_n60631: Std_logic;
    signal u_sd_n60632: Std_logic;
    signal u_sd_n95_adj_12423: Std_logic;
    signal u_sd_n60627: Std_logic;
    signal u_sd_n60634: Std_logic;
    signal u_sd_n60630: Std_logic;
    signal u_sd_n60628: Std_logic;
    signal u_sd_n60633: Std_logic;
    signal u_sd_n60629: Std_logic;
    signal u_sd_n95_adj_12493: Std_logic;
    signal u_sd_n76484: Std_logic;
    signal u_sd_n78002: Std_logic;
    signal u_sd_n76412: Std_logic;
    signal u_sd_n76376: Std_logic;
    signal u_sd_n72899: Std_logic;
    signal u_dbg_status_n9: Std_logic;
    signal u_dbg_status_n76411: Std_logic;
    signal u_dbg_status_n71745: Std_logic;
    signal u_dbg_status_n76408: Std_logic;
    signal u_dbg_status_n76453: Std_logic;
    signal u_dbg_status_n76473: Std_logic;
    signal u_dbg_status_n75003: Std_logic;
    signal u_dbg_status_n72660: Std_logic;
    signal u_dbg_status_n72408: Std_logic;
    signal u_dbg_status_n73293: Std_logic;
    signal u_cam_cfg_n72616: Std_logic;
    signal u_cam_cfg_n76388: Std_logic;
    signal u_cam_cfg_n76460: Std_logic;
    signal u_cam_cfg_n76513: Std_logic;
    signal u_cam_cfg_n71655: Std_logic;
    signal n75282: Std_logic;
    signal u_sd_n75281: Std_logic;
    signal n76378: Std_logic;
    signal u_sdram_wr_ready_N_2466: Std_logic;
    signal u_sd_n76410: Std_logic;
    signal u_sd_n73171: Std_logic;
    signal u_sd_n1316: Std_logic;
    signal u_sd_n76442: Std_logic;
    signal u_sd_n427: Std_logic;
    signal u_sd_n60068: Std_logic;
    signal u_sd_n6_adj_12461: Std_logic;
    signal u_sd_n29: Std_logic;
    signal u_sd_n76439: Std_logic;
    signal u_sd_n73597: Std_logic;
    signal u_sd_n73605: Std_logic;
    signal u_sd_n76409: Std_logic;
    signal u_sd_n74213: Std_logic;
    signal u_sd_n76364: Std_logic;
    signal u_sd_n76368: Std_logic;
    signal u_sd_n76360: Std_logic;
    signal u_sd_n73281: Std_logic;
    signal u_sd_n73289: Std_logic;
    signal u_sd_n73215: Std_logic;
    signal u_sd_n73217: Std_logic;
    signal n32073: Std_logic;
    signal u_sd_n76519: Std_logic;
    signal u_sd_n47: Std_logic;
    signal u_sd_n76487: Std_logic;
    signal u_sd_n76488: Std_logic;
    signal u_sd_n73317: Std_logic;
    signal u_sd_n73507: Std_logic;
    signal u_sd_n76399: Std_logic;
    signal u_sd_n76397: Std_logic;
    signal u_sd_n4_adj_12499: Std_logic;
    signal u_sd_n48: Std_logic;
    signal u_sd_n74122: Std_logic;
    signal u_sd_n73775: Std_logic;
    signal u_sd_n55: Std_logic;
    signal u_sd_n4: Std_logic;
    signal u_sd_n73: Std_logic;
    signal u_sd_n76478: Std_logic;
    signal u_sd_n76465: Std_logic;
    signal u_sd_n74211: Std_logic;
    signal u_sd_n55_adj_12508: Std_logic;
    signal u_sd_n73_adj_12515: Std_logic;
    signal u_sd_n52748: Std_logic;
    signal u_sd_n72_adj_12511: Std_logic;
    signal u_sd_n76489: Std_logic;
    signal u_sd_n72231: Std_logic;
    signal u_ctrl_u_cmd_n76447: Std_logic;
    signal u_ctrl_u_cmd_n52: Std_logic;
    signal u_dbg_status_n73435: Std_logic;
    signal u_dbg_status_n76335: Std_logic;
    signal u_dbg_status_n5: Std_logic;
    signal u_dbg_status_n76469: Std_logic;
    signal u_dbg_status_n66256: Std_logic;
    signal u_dbg_status_n73559: Std_logic;
    signal u_dbg_status_n73557: Std_logic;
    signal u_dbg_status_n74242: Std_logic;
    signal u_dbg_status_n76474: Std_logic;
    signal u_dbg_status_n76472: Std_logic;
    signal u_dbg_status_n55: Std_logic;
    signal u_dbg_status_n76334: Std_logic;
    signal u_dbg_status_n73199: Std_logic;
    signal u_dbg_status_n76466: Std_logic;
    signal u_dbg_status_n76471: Std_logic;
    signal u_dbg_status_n13: Std_logic;
    signal u_dbg_status_n76402: Std_logic;
    signal u_dbg_status_n76361: Std_logic;
    signal u_dbg_status_n76475: Std_logic;
    signal u_dbg_status_n66260: Std_logic;
    signal u_dbg_status_n65: Std_logic;
    signal u_dbg_status_n76468: Std_logic;
    signal u_dbg_status_n73549: Std_logic;
    signal u_dbg_status_n73545: Std_logic;
    signal u_dbg_status_n73543: Std_logic;
    signal u_dbg_status_n75022: Std_logic;
    signal u_dbg_status_n75017: Std_logic;
    signal u_dbg_status_n76363: Std_logic;
    signal u_dbg_status_n71768: Std_logic;
    signal u_dbg_status_n20: Std_logic;
    signal u_cam_cfg_n71654: Std_logic;
    signal u_cam_cfg_n73643: Std_logic;
    signal u_cam_cfg_n76446: Std_logic;
    signal u_cam_cfg_n72493: Std_logic;
    signal u_cam_cfg_n58324: Std_logic;
    signal u_cam_cfg_n71930: Std_logic;
    signal u_cam_cfg_n12: Std_logic;
    signal u_cam_cfg_n16: Std_logic;
    signal u_cam_cfg_n76444: Std_logic;
    signal u_cam_cfg_n72503: Std_logic;
    signal u_cam_cfg_n76385: Std_logic;
    signal u_cam_cfg_n56359: Std_logic;
    signal u_cam_cfg_n75002: Std_logic;
    signal u_cam_cfg_n77990: Std_logic;
    signal u_cam_cfg_n73907: Std_logic;
    signal u_cam_cfg_n19: Std_logic;
    signal u_cam_cfg_n76507: Std_logic;
    signal u_cam_cfg_n4_adj_12531: Std_logic;
    signal u_cam_cfg_u_rom_n73367: Std_logic;
    signal u_cam_cfg_u_rom_n73361: Std_logic;
    signal u_cam_cfg_u_rom_n73363: Std_logic;
    signal u_cam_cfg_u_rom_n72676: Std_logic;
    signal u_cam_cfg_u_rom_n73365: Std_logic;
    signal u_cam_cfg_u_rom_n73341: Std_logic;
    signal n71619: Std_logic;
    signal n76400: Std_logic;
    signal n73405: Std_logic;
    signal n76345: Std_logic;
    signal u_sdram_n16: Std_logic;
    signal u_sdram_n73593: Std_logic;
    signal u_sdram_n73585: Std_logic;
    signal u_sdram_n73589: Std_logic;
    signal u_sd_n74172: Std_logic;
    signal u_sd_n76373: Std_logic;
    signal u_sd_n73283: Std_logic;
    signal u_sd_n76370: Std_logic;
    signal u_sd_n74291: Std_logic;
    signal u_sd_n76004: Std_logic;
    signal u_sd_n76002: Std_logic;
    signal u_sd_n77991: Std_logic;
    signal u_sd_n76001: Std_logic;
    signal u_sd_n75960: Std_logic;
    signal u_sd_n75962: Std_logic;
    signal u_sd_n75959: Std_logic;
    signal u_sd_n77992: Std_logic;
    signal u_sd_n70457: Std_logic;
    signal u_sd_n71522: Std_logic;
    signal u_sd_n72470: Std_logic;
    signal u_sd_n73515: Std_logic;
    signal u_sd_n72209: Std_logic;
    signal u_sd_n76538: Std_logic;
    signal u_sd_n72959: Std_logic;
    signal u_sd_n706: Std_logic;
    signal u_sd_n65894: Std_logic;
    signal u_sd_n76470: Std_logic;
    signal u_sd_n76372: Std_logic;
    signal u_sd_n10: Std_logic;
    signal u_sd_n71627: Std_logic;
    signal u_sd_n76070: Std_logic;
    signal u_sd_n76039: Std_logic;
    signal u_sd_n77989: Std_logic;
    signal u_sd_n292: Std_logic;
    signal u_sd_n72469: Std_logic;
    signal u_sd_n71520: Std_logic;
    signal u_sd_n75971: Std_logic;
    signal u_sd_n75972: Std_logic;
    signal u_sd_n291: Std_logic;
    signal u_sd_n11: Std_logic;
    signal u_sd_n288: Std_logic;
    signal u_sd_n73221: Std_logic;
    signal u_sd_n293: Std_logic;
    signal u_sd_n72524: Std_logic;
    signal u_sd_n71521: Std_logic;
    signal u_sd_n73111: Std_logic;
    signal u_sd_n73113: Std_logic;
    signal u_sd_n73107: Std_logic;
    signal u_sd_n73115: Std_logic;
    signal u_sd_n76341: Std_logic;
    signal u_sd_n71644: Std_logic;
    signal u_sd_n75957: Std_logic;
    signal u_sd_n75958: Std_logic;
    signal u_sd_n75982: Std_logic;
    signal u_sd_n77993: Std_logic;
    signal u_sd_n75989: Std_logic;
    signal u_sd_n75990: Std_logic;
    signal u_sd_n290: Std_logic;
    signal u_sd_n294: Std_logic;
    signal u_sd_n73785: Std_logic;
    signal u_sd_n76026: Std_logic;
    signal u_sd_n76027: Std_logic;
    signal u_sd_n76426: Std_logic;
    signal u_sd_n74150: Std_logic;
    signal u_sd_n73415: Std_logic;
    signal u_sd_n77988: Std_logic;
    signal u_sd_n76063: Std_logic;
    signal u_sd_n76064: Std_logic;
    signal u_sd_n60683: Std_logic;
    signal u_sd_n69: Std_logic;
    signal u_sd_n69_adj_12448: Std_logic;
    signal u_sd_n69_adj_12450: Std_logic;
    signal u_sd_n69_adj_12453: Std_logic;
    signal u_sd_n76421: Std_logic;
    signal u_sd_n73393: Std_logic;
    signal u_sd_n69_adj_12456: Std_logic;
    signal u_sd_n20_adj_12457: Std_logic;
    signal u_sd_n73411: Std_logic;
    signal u_sd_n69_adj_12459: Std_logic;
    signal u_sd_n76357: Std_logic;
    signal u_sd_n69_adj_12463: Std_logic;
    signal u_sd_n76326: Std_logic;
    signal u_sd_n295: Std_logic;
    signal u_sd_n76481: Std_logic;
    signal u_sd_n6_adj_12471: Std_logic;
    signal u_sd_n76340: Std_logic;
    signal u_sd_n76430: Std_logic;
    signal u_sd_n73173: Std_logic;
    signal u_sd_n73179: Std_logic;
    signal u_sd_n31_adj_12486: Std_logic;
    signal u_sd_n76395: Std_logic;
    signal u_sd_n76437: Std_logic;
    signal u_sd_n60800: Std_logic;
    signal u_sd_n74288: Std_logic;
    signal u_sd_n74297: Std_logic;
    signal u_sd_n76374: Std_logic;
    signal u_sd_n72915: Std_logic;
    signal u_sd_n72217: Std_logic;
    signal u_sd_n73191: Std_logic;
    signal u_sd_n76423: Std_logic;
    signal u_sd_n73159: Std_logic;
    signal u_sd_n72238: Std_logic;
    signal u_sd_n73421: Std_logic;
    signal u_sd_n4_adj_12491: Std_logic;
    signal u_sd_n73407: Std_logic;
    signal u_sd_n74255: Std_logic;
    signal u_sd_n76366: Std_logic;
    signal u_sd_n20_adj_12495: Std_logic;
    signal u_sd_n13_adj_12496: Std_logic;
    signal u_sd_n72911: Std_logic;
    signal u_sd_n73019: Std_logic;
    signal u_sd_n72973: Std_logic;
    signal u_sd_n19_adj_12498: Std_logic;
    signal u_sd_n74289: Std_logic;
    signal u_sd_n73007: Std_logic;
    signal u_sd_n76375: Std_logic;
    signal u_sd_n72939: Std_logic;
    signal u_sd_n73229: Std_logic;
    signal u_sd_n73243: Std_logic;
    signal u_sd_n73265: Std_logic;
    signal u_sd_n72566: Std_logic;
    signal u_sd_n71537: Std_logic;
    signal u_sd_n73259: Std_logic;
    signal u_sd_n73483: Std_logic;
    signal u_sd_n73493: Std_logic;
    signal u_sd_n72640: Std_logic;
    signal u_sd_n73389: Std_logic;
    signal u_sd_n53042: Std_logic;
    signal u_sd_n72643: Std_logic;
    signal u_sd_n72458: Std_logic;
    signal u_sd_n76371: Std_logic;
    signal u_sd_n69_adj_12512: Std_logic;
    signal u_sd_n5_adj_12514: Std_logic;
    signal u_sd_n76485: Std_logic;
    signal u_sd_n76: Std_logic;
    signal u_sd_n76393: Std_logic;
    signal u_ctrl_u_tx_n74132: Std_logic;
    signal u_ctrl_u_tx_n73769: Std_logic;
    signal u_ctrl_u_tx_n73759: Std_logic;
    signal u_ctrl_u_tx_n73751: Std_logic;
    signal u_ctrl_u_tx_n73753: Std_logic;
    signal u_ctrl_u_tx_n73757: Std_logic;
    signal u_ctrl_u_rx_n73325: Std_logic;
    signal u_ctrl_u_rx_n70276: Std_logic;
    signal u_ctrl_u_rx_n70443: Std_logic;
    signal u_ctrl_u_rx_n76536: Std_logic;
    signal u_ctrl_u_rx_n71951: Std_logic;
    signal u_ctrl_u_rx_n73849: Std_logic;
    signal u_ctrl_u_rx_n73467: Std_logic;
    signal u_ctrl_u_rx_n76499: Std_logic;
    signal u_ctrl_u_rx_n73669: Std_logic;
    signal u_ctrl_u_rx_n73863: Std_logic;
    signal u_ctrl_u_rx_n73993: Std_logic;
    signal u_ctrl_u_rx_n74003: Std_logic;
    signal u_ctrl_u_rx_n76501: Std_logic;
    signal u_ctrl_u_rx_n76509: Std_logic;
    signal u_ctrl_u_rx_n73423: Std_logic;
    signal u_ctrl_u_rx_n73801: Std_logic;
    signal u_ctrl_u_rx_n76461: Std_logic;
    signal u_ctrl_u_rx_n73885: Std_logic;
    signal u_ctrl_u_rx_n76480: Std_logic;
    signal u_ctrl_u_rx_n76494: Std_logic;
    signal u_ctrl_u_rx_n73875: Std_logic;
    signal u_ctrl_u_rx_n73891: Std_logic;
    signal u_ctrl_u_rx_n73839: Std_logic;
    signal u_ctrl_u_rx_n74220: Std_logic;
    signal u_ctrl_u_rx_n76396: Std_logic;
    signal u_ctrl_u_rx_n76459: Std_logic;
    signal u_ctrl_u_rx_n73787: Std_logic;
    signal u_ctrl_u_rx_n76500: Std_logic;
    signal u_ctrl_u_rx_n73661: Std_logic;
    signal u_ctrl_u_rx_n60891: Std_logic;
    signal u_ctrl_u_rx_n73827: Std_logic;
    signal u_ctrl_u_rx_n73819: Std_logic;
    signal u_ctrl_u_rx_n73813: Std_logic;
    signal u_ctrl_u_rx_n73821: Std_logic;
    signal u_ctrl_u_cmd_n76511: Std_logic;
    signal u_ctrl_u_cmd_n76351: Std_logic;
    signal u_ctrl_u_cmd_n76380: Std_logic;
    signal u_ctrl_u_cmd_n76436: Std_logic;
    signal u_ctrl_u_cmd_n76438: Std_logic;
    signal u_ctrl_u_cmd_n74017: Std_logic;
    signal u_ctrl_u_cmd_n74021: Std_logic;
    signal u_ctrl_u_cmd_n73937: Std_logic;
    signal u_ctrl_u_cmd_n73935: Std_logic;
    signal u_ctrl_u_cmd_n74037: Std_logic;
    signal u_ctrl_u_cmd_n74035: Std_logic;
    signal u_ctrl_u_cmd_n74045: Std_logic;
    signal u_ctrl_u_cmd_n74043: Std_logic;
    signal u_ctrl_u_cmd_n73945: Std_logic;
    signal u_ctrl_u_cmd_n73943: Std_logic;
    signal u_ctrl_u_cmd_n73925: Std_logic;
    signal u_ctrl_u_cmd_n73923: Std_logic;
    signal u_ctrl_u_cmd_n74029: Std_logic;
    signal u_ctrl_u_cmd_n74027: Std_logic;
    signal u_ctrl_u_cmd_n74055: Std_logic;
    signal u_ctrl_u_cmd_n74053: Std_logic;
    signal u_ctrl_u_cmd_n73973: Std_logic;
    signal u_ctrl_u_cmd_n73971: Std_logic;
    signal u_ctrl_u_cmd_n73687: Std_logic;
    signal u_ctrl_u_cmd_n72397: Std_logic;
    signal u_ctrl_u_ack_pkt_2_4: Std_logic;
    signal CRYSTAL_c: Std_logic;
    signal VCCI: Std_logic;
    component M_D0B
      port (PADDI: out Std_logic; MD0: in Std_logic);
    end component;
    component RXB
      port (PADDI: out Std_logic; RXS: in Std_logic);
    end component;
    component PCLKB
      port (PADDI: out Std_logic; PCLKS: in Std_logic);
    end component;
    component VSYNCB
      port (PADDI: out Std_logic; VSYNCS: in Std_logic);
    end component;
    component CRYSTALB
      port (PADDI: out Std_logic; CRYSTALS: in Std_logic);
    end component;
    component M_CLKB
      port (PADDO: in Std_logic; MCLK: out Std_logic);
    end component;
    component M_D3B
      port (PADDO: in Std_logic; MD3: out Std_logic);
    end component;
    component M_D2B
      port (MD2: out Std_logic);
    end component;
    component M_D1B
      port (MD1: out Std_logic);
    end component;
    component M_CMDB
      port (PADDO: in Std_logic; MCMD: out Std_logic);
    end component;
    component TXB
      port (PADDO: in Std_logic; TXS: out Std_logic);
    end component;
    component ESP_D_0_B
      port (PADDO: in Std_logic; ESPD0: out Std_logic);
    end component;
    component ESP_D_1_B
      port (ESPD1: out Std_logic);
    end component;
    component ESP_D_2_B
      port (ESPD2: out Std_logic);
    end component;
    component ESP_D_3_B
      port (ESPD3: out Std_logic);
    end component;
    component ESP_D_4_B
      port (ESPD4: out Std_logic);
    end component;
    component ESP_D_5_B
      port (ESPD5: out Std_logic);
    end component;
    component ESP_D_6_B
      port (ESPD6: out Std_logic);
    end component;
    component ESP_D_7_B
      port (ESPD7: out Std_logic);
    end component;
    component DOUTB
      port (DOUTS: out Std_logic);
    end component;
    component SD_BA_0_B
      port (SDBA0: out Std_logic);
    end component;
    component SD_BA_1_B
      port (SDBA1: out Std_logic);
    end component;
    component SD_A_0_B
      port (SDA0: out Std_logic);
    end component;
    component SD_A_1_B
      port (SDA1: out Std_logic);
    end component;
    component SD_A_2_B
      port (SDA2: out Std_logic);
    end component;
    component SD_A_3_B
      port (SDA3: out Std_logic);
    end component;
    component SD_A_4_B
      port (SDA4: out Std_logic);
    end component;
    component SD_A_5_B
      port (SDA5: out Std_logic);
    end component;
    component SD_A_6_B
      port (SDA6: out Std_logic);
    end component;
    component SD_A_7_B
      port (SDA7: out Std_logic);
    end component;
    component SD_A_8_B
      port (SDA8: out Std_logic);
    end component;
    component SD_A_9_B
      port (PADDO: in Std_logic; SDA9: out Std_logic);
    end component;
    component SD_A_10_B
      port (SDA10: out Std_logic);
    end component;
    component SD_A_11_B
      port (SDA11: out Std_logic);
    end component;
    component SD_A_12_B
      port (SDA12: out Std_logic);
    end component;
    component SD_CAS_NB
      port (PADDO: in Std_logic; SDCASN: out Std_logic);
    end component;
    component SD_RAS_NB
      port (PADDO: in Std_logic; SDRASN: out Std_logic);
    end component;
    component SD_WE_NB
      port (PADDO: in Std_logic; SDWEN: out Std_logic);
    end component;
    component SD_CS_NB
      port (SDCSN: out Std_logic);
    end component;
    component SD_CLKB
      port (PADDO: in Std_logic; SDCLK: out Std_logic);
    end component;
    component SD_DQM_0_B
      port (SDDQM0: out Std_logic);
    end component;
    component SD_DQM_1_B
      port (SDDQM1: out Std_logic);
    end component;
    component cam_sdaB
      port (PADDT: in Std_logic; camsda: out Std_logic);
    end component;
    component cam_sclB
      port (PADDO: in Std_logic; camscl: out Std_logic);
    end component;
    component MCLKB
      port (PADDO: in Std_logic; MCLKS: out Std_logic);
    end component;
    component u_cam_cfg_u_rom_mux_871
      port (DOA4: out Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
            DOA1: out Std_logic; DOA0: out Std_logic; CLKB: in Std_logic; 
            CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
            DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
            DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
            DOB8: out Std_logic; DOB9: out Std_logic; DOB10: out Std_logic; 
            DOB11: out Std_logic; DOB12: out Std_logic; DOB13: out Std_logic; 
            DOB14: out Std_logic; DOB15: out Std_logic; DOB16: out Std_logic; 
            DOB17: out Std_logic; ADB5: in Std_logic; ADB6: in Std_logic; 
            ADB7: in Std_logic; ADB8: in Std_logic; ADB9: in Std_logic; 
            ADB10: in Std_logic; ADB11: in Std_logic; ADB12: in Std_logic; 
            ADB13: in Std_logic);
    end component;
    component u_cam_cfg_u_rom_mux_867
      port (DOA4: out Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
            DOA1: out Std_logic; DOA0: out Std_logic; CLKB: in Std_logic; 
            CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
            DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
            DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
            DOB8: out Std_logic; DOB9: out Std_logic; DOB10: out Std_logic; 
            DOB11: out Std_logic; DOB12: out Std_logic; DOB13: out Std_logic; 
            DOB14: out Std_logic; DOB15: out Std_logic; DOB16: out Std_logic; 
            DOB17: out Std_logic; ADB5: in Std_logic; ADB6: in Std_logic; 
            ADB7: in Std_logic; ADB8: in Std_logic; ADB9: in Std_logic; 
            ADB10: in Std_logic; ADB11: in Std_logic; ADB12: in Std_logic; 
            ADB13: in Std_logic);
    end component;
    component u_cam_cfg_u_rom_mux_870
      port (DOA4: out Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
            DOA1: out Std_logic; DOA0: out Std_logic; CLKB: in Std_logic; 
            CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
            DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
            DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
            DOB8: out Std_logic; DOB9: out Std_logic; DOB10: out Std_logic; 
            DOB11: out Std_logic; DOB12: out Std_logic; DOB13: out Std_logic; 
            DOB14: out Std_logic; DOB15: out Std_logic; DOB16: out Std_logic; 
            DOB17: out Std_logic; ADB5: in Std_logic; ADB6: in Std_logic; 
            ADB7: in Std_logic; ADB8: in Std_logic; ADB9: in Std_logic; 
            ADB10: in Std_logic; ADB11: in Std_logic; ADB12: in Std_logic; 
            ADB13: in Std_logic);
    end component;
    component u_cam_cfg_u_rom_mux_868
      port (DOA4: out Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
            DOA1: out Std_logic; DOA0: out Std_logic; CLKB: in Std_logic; 
            CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
            DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
            DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
            DOB8: out Std_logic; DOB9: out Std_logic; DOB10: out Std_logic; 
            DOB11: out Std_logic; DOB12: out Std_logic; DOB13: out Std_logic; 
            DOB14: out Std_logic; DOB15: out Std_logic; DOB16: out Std_logic; 
            DOB17: out Std_logic; ADB5: in Std_logic; ADB6: in Std_logic; 
            ADB7: in Std_logic; ADB8: in Std_logic; ADB9: in Std_logic; 
            ADB10: in Std_logic; ADB11: in Std_logic; ADB12: in Std_logic; 
            ADB13: in Std_logic);
    end component;
    component mux_367
      port (CLKB: in Std_logic; CEB: in Std_logic; DOB0: out Std_logic; 
            DOB1: out Std_logic; DOB2: out Std_logic; DOB3: out Std_logic; 
            DOB4: out Std_logic; DOB5: out Std_logic; DOB6: out Std_logic; 
            DOB7: out Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
            ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
            ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
            ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic);
    end component;
    component u_pll_PLLInst_0
      port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
            CLKOS: out Std_logic; CLKOP: out Std_logic);
    end component;
  begin
    u_dbg_status_SLICE_0I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_dbg_status_msg_idx_0, C1=>'X', D1=>'1', 
                DI1=>u_dbg_status_n40, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>u_dbg_status_start_req_N_12413, 
                CLK=>MCLK_c, LSR=>u_dbg_status_n76454, 
                FCO=>u_dbg_status_n69878, F1=>u_dbg_status_n40, 
                Q1=>u_dbg_status_msg_idx_0, F0=>open, Q0=>open);
    u_dbg_status_SLICE_1I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_dbg_status_n134, A0=>'X', B0=>u_dbg_status_sec_ctr_31, 
                C0=>'X', D0=>'1', FCI=>u_dbg_status_n69877, M0=>'X', CE=>'X', 
                CLK=>MCLK_c, LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>open, 
                F1=>open, Q1=>open, F0=>u_dbg_status_n134, 
                Q0=>u_dbg_status_sec_ctr_31);
    u_dbg_status_SLICE_2I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_dbg_status_sec_ctr_30, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n135, DI0=>u_dbg_status_n136, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_29, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69876, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69877, 
                F1=>u_dbg_status_n135, Q1=>u_dbg_status_sec_ctr_30, 
                F0=>u_dbg_status_n136, Q0=>u_dbg_status_sec_ctr_29);
    u_dbg_status_SLICE_3I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_dbg_status_sec_ctr_28, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n137, DI0=>u_dbg_status_n138, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_27, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69875, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69876, 
                F1=>u_dbg_status_n137, Q1=>u_dbg_status_sec_ctr_28, 
                F0=>u_dbg_status_n138, Q0=>u_dbg_status_sec_ctr_27);
    u_dbg_status_SLICE_4I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_dbg_status_sec_ctr_26, C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n139, DI0=>u_dbg_status_n140, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_25, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69874, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69875, 
                F1=>u_dbg_status_n139, Q1=>u_dbg_status_sec_ctr_26, 
                F0=>u_dbg_status_n140, Q0=>u_dbg_status_sec_ctr_25);
    u_dbg_status_SLICE_5I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_dbg_status_sec_ctr_24, C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n141, DI0=>u_dbg_status_n142, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_23, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69873, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69874, 
                F1=>u_dbg_status_n141, Q1=>u_dbg_status_sec_ctr_24, 
                F0=>u_dbg_status_n142, Q0=>u_dbg_status_sec_ctr_23);
    u_dbg_status_SLICE_6I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_dbg_status_sec_ctr_22, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n143, DI0=>u_dbg_status_n144, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_21, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69872, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69873, 
                F1=>u_dbg_status_n143, Q1=>u_dbg_status_sec_ctr_22, 
                F0=>u_dbg_status_n144, Q0=>u_dbg_status_sec_ctr_21);
    u_dbg_status_SLICE_7I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_dbg_status_sec_ctr_20, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n145, DI0=>u_dbg_status_n146, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_19, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69871, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69872, 
                F1=>u_dbg_status_n145, Q1=>u_dbg_status_sec_ctr_20, 
                F0=>u_dbg_status_n146, Q0=>u_dbg_status_sec_ctr_19);
    u_dbg_status_SLICE_8I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_dbg_status_sec_ctr_18, C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n147, DI0=>u_dbg_status_n148, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_17, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69870, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69871, 
                F1=>u_dbg_status_n147, Q1=>u_dbg_status_sec_ctr_18, 
                F0=>u_dbg_status_n148, Q0=>u_dbg_status_sec_ctr_17);
    u_dbg_status_SLICE_9I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_dbg_status_sec_ctr_16, C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n149, DI0=>u_dbg_status_n150, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_15, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69869, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69870, 
                F1=>u_dbg_status_n149, Q1=>u_dbg_status_sec_ctr_16, 
                F0=>u_dbg_status_n150, Q0=>u_dbg_status_sec_ctr_15);
    u_dbg_status_SLICE_10I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_dbg_status_sec_ctr_14, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n151, DI0=>u_dbg_status_n152, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_13, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69868, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69869, 
                F1=>u_dbg_status_n151, Q1=>u_dbg_status_sec_ctr_14, 
                F0=>u_dbg_status_n152, Q0=>u_dbg_status_sec_ctr_13);
    u_dbg_status_SLICE_11I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_dbg_status_sec_ctr_12, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n153, DI0=>u_dbg_status_n154, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_11, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69867, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69868, 
                F1=>u_dbg_status_n153, Q1=>u_dbg_status_sec_ctr_12, 
                F0=>u_dbg_status_n154, Q0=>u_dbg_status_sec_ctr_11);
    u_dbg_status_SLICE_12I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_dbg_status_sec_ctr_10, C1=>'X', 
                D1=>'1', DI1=>u_dbg_status_n155, DI0=>u_dbg_status_n156, 
                A0=>'X', B0=>u_dbg_status_sec_ctr_9, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69866, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69867, 
                F1=>u_dbg_status_n155, Q1=>u_dbg_status_sec_ctr_10, 
                F0=>u_dbg_status_n156, Q0=>u_dbg_status_sec_ctr_9);
    u_dbg_status_SLICE_13I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_dbg_status_sec_ctr_8, C1=>'X', D1=>'1', 
                DI1=>u_dbg_status_n157, DI0=>u_dbg_status_n158, A0=>'X', 
                B0=>u_dbg_status_sec_ctr_7, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69865, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69866, 
                F1=>u_dbg_status_n157, Q1=>u_dbg_status_sec_ctr_8, 
                F0=>u_dbg_status_n158, Q0=>u_dbg_status_sec_ctr_7);
    u_dbg_status_SLICE_14I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_dbg_status_sec_ctr_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_dbg_status_n159, DI0=>u_dbg_status_n160, A0=>'X', 
                B0=>u_dbg_status_sec_ctr_5, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69864, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69865, 
                F1=>u_dbg_status_n159, Q1=>u_dbg_status_sec_ctr_6, 
                F0=>u_dbg_status_n160, Q0=>u_dbg_status_sec_ctr_5);
    u_dbg_status_SLICE_15I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_dbg_status_sec_ctr_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_dbg_status_n161, DI0=>u_dbg_status_n162, A0=>'X', 
                B0=>u_dbg_status_sec_ctr_3, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69863, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69864, 
                F1=>u_dbg_status_n161, Q1=>u_dbg_status_sec_ctr_4, 
                F0=>u_dbg_status_n162, Q0=>u_dbg_status_sec_ctr_3);
    u_dbg_status_SLICE_16I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_dbg_status_sec_ctr_2, C1=>'X', D1=>'1', 
                DI1=>u_dbg_status_n163, DI0=>u_dbg_status_n164, A0=>'X', 
                B0=>u_dbg_status_sec_ctr_1, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69862, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69863, 
                F1=>u_dbg_status_n163, Q1=>u_dbg_status_sec_ctr_2, 
                F0=>u_dbg_status_n164, Q0=>u_dbg_status_sec_ctr_1);
    u_dbg_status_SLICE_17I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_dbg_status_sec_ctr_0, C1=>'X', D1=>'1', 
                DI1=>u_dbg_status_n165, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>u_dbg_status_sec_ctr_31_N_12302, FCO=>u_dbg_status_n69862, 
                F1=>u_dbg_status_n165, Q1=>u_dbg_status_sec_ctr_0, F0=>open, 
                Q0=>open);
    u_dbg_status_SLICE_18I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_1=>"NO", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", INIT0_INITVAL=>X"0001", 
                   INIT1_INITVAL=>X"0000", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', 
                DI1=>u_dbg_status_sec_ctr_31_N_12302, DI0=>'X', 
                A0=>u_dbg_status_n72808, B0=>u_dbg_status_n72804, 
                C0=>u_dbg_status_n72809, D0=>u_dbg_status_n72810, 
                FCI=>u_dbg_status_n74112, M0=>'X', CE=>'X', CLK=>MCLK_c, 
                LSR=>'X', FCO=>open, F1=>u_dbg_status_sec_ctr_31_N_12302, 
                Q1=>u_dbg_status_sec_tick, F0=>open, Q0=>open);
    u_dbg_status_SLICE_19I: SCCU2C
      generic map (INIT0_INITVAL=>X"0001", INIT1_INITVAL=>X"0001")
      port map (M1=>'X', A1=>u_dbg_status_n72803, B1=>u_dbg_status_n72797, 
                C1=>u_dbg_status_n72798, D1=>u_dbg_status_n72802, DI1=>'X', 
                DI0=>'X', A0=>u_dbg_status_n72794, B0=>u_dbg_status_n72796, 
                C0=>u_dbg_status_n72795, D0=>u_dbg_status_n72793, 
                FCI=>u_dbg_status_n74111, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>u_dbg_status_n74112, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    u_dbg_status_SLICE_20I: SCCU2C
      generic map (INIT0_INITVAL=>X"0001", INIT1_INITVAL=>X"0001")
      port map (M1=>'X', A1=>u_dbg_status_sec_ctr_28, B1=>u_dbg_status_n72792, 
                C1=>u_dbg_status_sec_ctr_15, D1=>u_dbg_status_sec_ctr_11, 
                DI1=>'X', DI0=>'X', A0=>u_dbg_status_sec_ctr_20, 
                B0=>u_dbg_status_sec_ctr_26, C0=>u_dbg_status_sec_ctr_29, 
                D0=>u_dbg_status_sec_ctr_23, FCI=>u_dbg_status_n74110, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_dbg_status_n74111, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_dbg_status_SLICE_21I: SCCU2C
      generic map (INIT0_INITVAL=>X"0001", INIT1_INITVAL=>X"0001")
      port map (M1=>'X', A1=>u_dbg_status_sec_ctr_9, 
                B1=>u_dbg_status_sec_ctr_16, C1=>u_dbg_status_sec_ctr_27, 
                D1=>u_dbg_status_sec_ctr_31, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_sec_ctr_30, B0=>u_dbg_status_sec_ctr_14, 
                C0=>u_dbg_status_sec_ctr_25, D0=>u_dbg_status_n70384, 
                FCI=>u_dbg_status_n74109, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>u_dbg_status_n74110, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    u_dbg_status_SLICE_22I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"00FF", 
                   INIT1_INITVAL=>X"0001")
      port map (M1=>'X', A1=>u_dbg_status_n72801, B1=>u_dbg_status_n72791, 
                C1=>u_dbg_status_n70401, D1=>u_dbg_status_n72807, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_dbg_status_n74109, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_dbg_status_SLICE_23I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_dbg_status_msg_idx_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_dbg_status_n34, DI0=>u_dbg_status_n35, A0=>'X', 
                B0=>u_dbg_status_msg_idx_5, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69880, M0=>'X', 
                CE=>u_dbg_status_start_req_N_12413, CLK=>MCLK_c, 
                LSR=>u_dbg_status_n76454, FCO=>open, F1=>u_dbg_status_n34, 
                Q1=>u_dbg_status_msg_idx_6, F0=>u_dbg_status_n35, 
                Q0=>u_dbg_status_msg_idx_5);
    u_dbg_status_SLICE_24I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_dbg_status_msg_idx_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_dbg_status_n36_adj_12535, DI0=>u_dbg_status_n37, 
                A0=>'X', B0=>u_dbg_status_msg_idx_3, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69879, M0=>'X', 
                CE=>u_dbg_status_start_req_N_12413, CLK=>MCLK_c, 
                LSR=>u_dbg_status_n76454, FCO=>u_dbg_status_n69880, 
                F1=>u_dbg_status_n36_adj_12535, Q1=>u_dbg_status_msg_idx_4, 
                F0=>u_dbg_status_n37, Q0=>u_dbg_status_msg_idx_3);
    u_dbg_status_SLICE_25I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_dbg_status_msg_idx_2, C1=>'X', D1=>'1', 
                DI1=>u_dbg_status_n38, DI0=>u_dbg_status_n39_adj_12534, 
                A0=>'X', B0=>u_dbg_status_msg_idx_1, C0=>'X', D0=>'1', 
                FCI=>u_dbg_status_n69878, M0=>'X', 
                CE=>u_dbg_status_start_req_N_12413, CLK=>MCLK_c, 
                LSR=>u_dbg_status_n76454, FCO=>u_dbg_status_n69879, 
                F1=>u_dbg_status_n38, Q1=>u_dbg_status_msg_idx_2, 
                F0=>u_dbg_status_n39_adj_12534, Q0=>u_dbg_status_msg_idx_1);
    u_cam_cfg_SLICE_26I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_cam_cfg_divc_2, C1=>'X', D1=>'1', 
                DI1=>u_cam_cfg_n48, DI0=>u_cam_cfg_n49, A0=>'X', 
                B0=>u_cam_cfg_divc_1, C0=>'X', D0=>'1', FCI=>u_cam_cfg_n69790, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_cam_cfg_tick_N_393, 
                FCO=>u_cam_cfg_n69791, F1=>u_cam_cfg_n48, Q1=>u_cam_cfg_divc_2, 
                F0=>u_cam_cfg_n49, Q0=>u_cam_cfg_divc_1);
    u_cam_cfg_SLICE_27I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_cam_cfg_divc_0, C1=>'X', D1=>'1', 
                DI1=>u_cam_cfg_n50, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_tick_N_393, FCO=>u_cam_cfg_n69790, 
                F1=>u_cam_cfg_n50, Q1=>u_cam_cfg_divc_0, F0=>open, Q0=>open);
    u_cam_cfg_SLICE_28I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_cam_cfg_divc_8, C1=>'X', D1=>'1', 
                DI1=>u_cam_cfg_n42, DI0=>u_cam_cfg_n43, A0=>'X', 
                B0=>u_cam_cfg_divc_7, C0=>'X', D0=>'1', FCI=>u_cam_cfg_n69793, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_cam_cfg_tick_N_393, 
                FCO=>open, F1=>u_cam_cfg_n42, Q1=>u_cam_cfg_divc_8, 
                F0=>u_cam_cfg_n43, Q0=>u_cam_cfg_divc_7);
    u_cam_cfg_SLICE_29I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_cam_cfg_divc_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_cam_cfg_n44, DI0=>u_cam_cfg_n45, A0=>'X', 
                B0=>u_cam_cfg_divc_5, C0=>'X', D0=>'1', FCI=>u_cam_cfg_n69792, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_cam_cfg_tick_N_393, 
                FCO=>u_cam_cfg_n69793, F1=>u_cam_cfg_n44, Q1=>u_cam_cfg_divc_6, 
                F0=>u_cam_cfg_n45, Q0=>u_cam_cfg_divc_5);
    u_cam_cfg_SLICE_30I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_cam_cfg_divc_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_cam_cfg_n46, DI0=>u_cam_cfg_n47, A0=>'X', 
                B0=>u_cam_cfg_divc_3, C0=>'X', D0=>'1', FCI=>u_cam_cfg_n69791, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_cam_cfg_tick_N_393, 
                FCO=>u_cam_cfg_n69792, F1=>u_cam_cfg_n46, Q1=>u_cam_cfg_divc_4, 
                F0=>u_cam_cfg_n47, Q0=>u_cam_cfg_divc_3);
    SLICE_31I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"1E1E", INIT1_INITVAL=>X"1E1E")
      port map (M1=>'X', A1=>n14, B1=>n13, C1=>dummy_left_7, D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>n14, B0=>n13, C0=>dummy_left_6, D0=>'1', 
                FCI=>n69788, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>n22, Q1=>open, F0=>n25, Q0=>open);
    SLICE_32I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"1e1e", INIT1_INITVAL=>X"1e1e")
      port map (M1=>'X', A1=>n13, B1=>n14, C1=>dummy_left_5, D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>n13, B0=>n14, C0=>dummy_left_4, D0=>'1', 
                FCI=>n69787, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n69788, 
                F1=>n28, Q1=>open, F0=>n31, Q0=>open);
    SLICE_33I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"6aaa", INIT1_INITVAL=>X"6aaa")
      port map (M1=>'X', A1=>n69572, B1=>spi_done, C1=>n76414, 
                D1=>resp_tries_7, DI1=>'X', DI0=>'X', A0=>n69574, B0=>spi_done, 
                C0=>n76414, D0=>resp_tries_6, FCI=>n69852, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>open, F1=>n20, Q1=>open, F0=>n23, 
                Q0=>open);
    SLICE_34I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"6AAA", INIT1_INITVAL=>X"6CCC")
      port map (M1=>'X', A1=>spi_done, B1=>n69576, C1=>n76414, 
                D1=>resp_tries_5, DI1=>'X', DI0=>'X', A0=>n69578, B0=>spi_done, 
                C0=>n76414, D0=>resp_tries_4, FCI=>n69851, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>n69852, F1=>n26, Q1=>open, F0=>n29, 
                Q0=>open);
    SLICE_35I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"6CCC", INIT1_INITVAL=>X"6AAA")
      port map (M1=>'X', A1=>n69580, B1=>spi_done, C1=>n76414, 
                D1=>resp_tries_3, DI1=>'X', DI0=>'X', A0=>spi_done, B0=>n69582, 
                C0=>n76414, D0=>resp_tries_2, FCI=>n69850, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>n69851, F1=>n32, Q1=>open, F0=>n35, 
                Q0=>open);
    SLICE_36I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"1e1e", INIT1_INITVAL=>X"1e1e")
      port map (M1=>'X', A1=>n13, B1=>n14, C1=>dummy_left_3, D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>n13, B0=>n14, C0=>dummy_left_2, D0=>'1', 
                FCI=>n69786, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n69787, 
                F1=>n34, Q1=>open, F0=>n37, Q0=>open);
    SLICE_37I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"6CCC", INIT1_INITVAL=>X"6AAA")
      port map (M1=>'X', A1=>n69584, B1=>spi_done, C1=>n76414, 
                D1=>resp_tries_1, DI1=>'X', DI0=>'X', A0=>spi_done, B0=>n69586, 
                C0=>n76414, D0=>resp_tries_0, FCI=>n69849, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>n69850, F1=>n38, Q1=>open, F0=>n41, 
                Q0=>open);
    SLICE_38I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"FFFF")
      port map (M1=>'X', A1=>n76482, B1=>n71517, C1=>n65860, D1=>spi_done, 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n69849, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_39I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"999C", INIT1_INITVAL=>X"1E1E")
      port map (M1=>'X', A1=>n13, B1=>n14, C1=>dummy_left_1, D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>spi_done, B0=>dummy_left_0, C0=>n13, D0=>n14, 
                FCI=>n69785, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n69786, 
                F1=>n40, Q1=>open, F0=>n43_adj_12536, Q0=>open);
    SLICE_40I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>wr_count_9, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n69845, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>open, Q1=>open, F0=>n24, Q0=>open);
    SLICE_41I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>wr_count_8, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>wr_count_7, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n69844, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n69845, 
                F1=>n27, Q1=>open, F0=>n30, Q0=>open);
    SLICE_42I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"CC00")
      port map (M1=>'X', A1=>'X', B1=>wr_count_6, C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>wr_count_5, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n69843, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n69844, 
                F1=>n33, Q1=>open, F0=>n36_adj_12542, Q0=>open);
    SLICE_43I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00")
      port map (M1=>'X', A1=>'X', B1=>wr_count_4, C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>wr_count_3, C0=>'X', D0=>'1', 
                FCI=>n69842, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n69843, 
                F1=>n39_adj_12541, Q1=>open, F0=>n42_adj_12540, Q0=>open);
    SLICE_44I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>wr_count_2, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>wr_count_1, C0=>'X', D0=>'1', 
                FCI=>n69841, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n69842, 
                F1=>n45_adj_12539, Q1=>open, F0=>n48_adj_12538, Q0=>open);
    SLICE_45I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"39CC")
      port map (M1=>'X', A1=>n66465, B1=>wr_count_0, C1=>wr_count_9, 
                D1=>spi_done, DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'1', FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n69841, F1=>n51_adj_12537, Q1=>open, F0=>open, Q0=>open);
    SLICE_46I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"FE00", INIT1_INITVAL=>X"FE00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>st_0, B1=>n76441, C1=>st_3, D1=>rom_addr_10, 
                DI1=>n308, DI0=>n309, A0=>st_0, B0=>n76441, C0=>st_3, 
                D0=>rom_addr_9, FCI=>n69839, M0=>'X', CE=>tick, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>open, F1=>n308, Q1=>rom_addr_10, F0=>n309, 
                Q0=>rom_addr_9);
    SLICE_47I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"FE00", INIT1_INITVAL=>X"FE00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>st_0, B1=>n76441, C1=>st_3, D1=>rom_addr_8, 
                DI1=>n310, DI0=>n311, A0=>st_0, B0=>n76441, C0=>st_3, 
                D0=>rom_addr_7, FCI=>n69838, M0=>'X', CE=>tick, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>n69839, F1=>n310, Q1=>rom_addr_8, F0=>n311, 
                Q0=>rom_addr_7);
    SLICE_48I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"FE00", INIT1_INITVAL=>X"FE00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>st_0, B1=>n76441, C1=>st_3, D1=>rom_addr_6, 
                DI1=>n312, DI0=>n313, A0=>st_0, B0=>n76441, C0=>st_3, 
                D0=>rom_addr_5, FCI=>n69837, M0=>'X', CE=>tick, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>n69838, F1=>n312, Q1=>rom_addr_6, F0=>n313, 
                Q0=>rom_addr_5);
    SLICE_49I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"FE00", INIT1_INITVAL=>X"FE00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>st_0, B1=>n76441, C1=>st_3, D1=>rom_addr_4, 
                DI1=>n314, DI0=>n315, A0=>st_0, B0=>n76441, C0=>st_3, 
                D0=>rom_addr_3, FCI=>n69836, M0=>'X', CE=>tick, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>n69837, F1=>n314, Q1=>rom_addr_4, F0=>n315, 
                Q0=>rom_addr_3);
    SLICE_50I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"FE00", INIT1_INITVAL=>X"FE00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>st_0, B1=>n76441, C1=>st_3, D1=>rom_addr_2, 
                DI1=>n316, DI0=>n317, A0=>st_0, B0=>n76441, C0=>st_3, 
                D0=>rom_addr_1, FCI=>n69835, M0=>'X', CE=>tick, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>n69836, F1=>n316, Q1=>rom_addr_2, F0=>n317, 
                Q0=>rom_addr_1);
    SLICE_51I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"8878", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>rom_addr_0, B1=>n72696, C1=>st_3, D1=>n66095, 
                DI1=>n318, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', 
                FCI=>'X', M0=>'X', CE=>tick, CLK=>SD_CLK_c, LSR=>'X', 
                FCO=>n69835, F1=>n318, Q1=>rom_addr_0, F0=>open, Q0=>open);
    SLICE_52I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>n36, A0=>'X', B0=>baud_ctr_15, C0=>'X', D0=>'1', 
                FCI=>n69834, M0=>'X', CE=>u_dbg_status_MCLK_c_enable_17, 
                CLK=>MCLK_c, LSR=>u_dbg_status_MCLK_c_enable_25, FCO=>open, 
                F1=>open, Q1=>open, F0=>n36, Q0=>baud_ctr_15);
    SLICE_53I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"11ee")
      port map (M1=>'X', A1=>n13, B1=>n14, C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n69785, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_54I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>baud_ctr_14, B1=>'X', C1=>'X', D1=>'1', DI1=>n39, 
                DI0=>n42, A0=>'X', B0=>baud_ctr_13, C0=>'X', D0=>'1', 
                FCI=>n69833, M0=>'X', CE=>u_dbg_status_MCLK_c_enable_17, 
                CLK=>MCLK_c, LSR=>u_dbg_status_MCLK_c_enable_25, FCO=>n69834, 
                F1=>n39, Q1=>baud_ctr_14, F0=>n42, Q0=>baud_ctr_13);
    SLICE_55I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>baud_ctr_12, B1=>'X', C1=>'X', D1=>'1', DI1=>n45, 
                DI0=>n48, A0=>'X', B0=>baud_ctr_11, C0=>'X', D0=>'1', 
                FCI=>n69832, M0=>'X', CE=>u_dbg_status_MCLK_c_enable_17, 
                CLK=>MCLK_c, LSR=>u_dbg_status_MCLK_c_enable_25, FCO=>n69833, 
                F1=>n45, Q1=>baud_ctr_12, F0=>n48, Q0=>baud_ctr_11);
    SLICE_56I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>baud_ctr_10, C1=>'X', D1=>'1', DI1=>n51, 
                DI0=>n54, A0=>'X', B0=>baud_ctr_9, C0=>'X', D0=>'1', 
                FCI=>n69831, M0=>'X', CE=>u_dbg_status_MCLK_c_enable_17, 
                CLK=>MCLK_c, LSR=>u_dbg_status_MCLK_c_enable_25, FCO=>n69832, 
                F1=>n51, Q1=>baud_ctr_10, F0=>n54, Q0=>baud_ctr_9);
    SLICE_57I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>baud_ctr_8, C1=>'X', D1=>'1', DI1=>n57, 
                DI0=>n60, A0=>'X', B0=>baud_ctr_7, C0=>'X', D0=>'1', 
                FCI=>n69830, M0=>'X', CE=>u_dbg_status_MCLK_c_enable_17, 
                CLK=>MCLK_c, LSR=>u_dbg_status_MCLK_c_enable_25, FCO=>n69831, 
                F1=>n57, Q1=>baud_ctr_8, F0=>n60, Q0=>baud_ctr_7);
    SLICE_58I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>baud_ctr_6, B1=>'X', C1=>'X', D1=>'1', DI1=>n63, 
                DI0=>n66, A0=>'X', B0=>baud_ctr_5, C0=>'X', D0=>'1', 
                FCI=>n69829, M0=>'X', CE=>u_dbg_status_MCLK_c_enable_17, 
                CLK=>MCLK_c, LSR=>u_dbg_status_MCLK_c_enable_25, FCO=>n69830, 
                F1=>n63, Q1=>baud_ctr_6, F0=>n66, Q0=>baud_ctr_5);
    SLICE_59I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>baud_ctr_4, B1=>'X', C1=>'X', D1=>'1', DI1=>n69, 
                DI0=>n72, A0=>'X', B0=>baud_ctr_3, C0=>'X', D0=>'1', 
                FCI=>n69828, M0=>'X', CE=>u_dbg_status_MCLK_c_enable_17, 
                CLK=>MCLK_c, LSR=>u_dbg_status_MCLK_c_enable_25, FCO=>n69829, 
                F1=>n69, Q1=>baud_ctr_4, F0=>n72, Q0=>baud_ctr_3);
    SLICE_60I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>baud_ctr_2, C1=>'X', D1=>'1', DI1=>n75, 
                DI0=>n78, A0=>'X', B0=>baud_ctr_1, C0=>'X', D0=>'1', 
                FCI=>n69827, M0=>'X', CE=>u_dbg_status_MCLK_c_enable_17, 
                CLK=>MCLK_c, LSR=>u_dbg_status_MCLK_c_enable_25, FCO=>n69828, 
                F1=>n75, Q1=>baud_ctr_2, F0=>n78, Q0=>baud_ctr_1);
    SLICE_61I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>baud_ctr_0, C1=>'X', D1=>'1', DI1=>n81, 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>u_dbg_status_MCLK_c_enable_17, CLK=>MCLK_c, 
                LSR=>u_dbg_status_MCLK_c_enable_25, FCO=>n69827, F1=>n81, 
                Q1=>baud_ctr_0, F0=>open, Q0=>open);
    SLICE_62I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>n36_adj_12559, A0=>'X', B0=>div_cnt_15, C0=>'X', D0=>'1', 
                FCI=>n69897, M0=>'X', CE=>u_sd_SD_CLK_c_enable_234, 
                CLK=>SD_CLK_c, LSR=>u_sd_n37437, FCO=>open, F1=>open, Q1=>open, 
                F0=>n36_adj_12559, Q0=>div_cnt_15);
    u_sdram_SLICE_63I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_sdram_n70, A0=>'X', B0=>u_sdram_refresh_cnt_15, C0=>'X', 
                D0=>'1', FCI=>u_sdram_n69826, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n28678, FCO=>open, F1=>open, Q1=>open, 
                F0=>u_sdram_n70, Q0=>u_sdram_refresh_cnt_15);
    u_sdram_SLICE_64I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_refresh_cnt_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n71, DI0=>u_sdram_n72, A0=>'X', 
                B0=>u_sdram_refresh_cnt_13, C0=>'X', D0=>'1', 
                FCI=>u_sdram_n69825, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n28678, FCO=>u_sdram_n69826, F1=>u_sdram_n71, 
                Q1=>u_sdram_refresh_cnt_14, F0=>u_sdram_n72, 
                Q0=>u_sdram_refresh_cnt_13);
    u_sdram_SLICE_65I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_refresh_cnt_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n73, DI0=>u_sdram_n74, A0=>'X', 
                B0=>u_sdram_refresh_cnt_11, C0=>'X', D0=>'1', 
                FCI=>u_sdram_n69824, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n28678, FCO=>u_sdram_n69825, F1=>u_sdram_n73, 
                Q1=>u_sdram_refresh_cnt_12, F0=>u_sdram_n74, 
                Q0=>u_sdram_refresh_cnt_11);
    u_sdram_SLICE_66I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_sdram_refresh_cnt_10, C1=>'X', D1=>'1', 
                DI1=>u_sdram_n75, DI0=>u_sdram_n76, A0=>'X', 
                B0=>u_sdram_refresh_cnt_9, C0=>'X', D0=>'1', 
                FCI=>u_sdram_n69823, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n28678, FCO=>u_sdram_n69824, F1=>u_sdram_n75, 
                Q1=>u_sdram_refresh_cnt_10, F0=>u_sdram_n76, 
                Q0=>u_sdram_refresh_cnt_9);
    u_sdram_SLICE_67I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_sdram_refresh_cnt_8, C1=>'X', D1=>'1', 
                DI1=>u_sdram_n77, DI0=>u_sdram_n78, A0=>'X', 
                B0=>u_sdram_refresh_cnt_7, C0=>'X', D0=>'1', 
                FCI=>u_sdram_n69822, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n28678, FCO=>u_sdram_n69823, F1=>u_sdram_n77, 
                Q1=>u_sdram_refresh_cnt_8, F0=>u_sdram_n78, 
                Q0=>u_sdram_refresh_cnt_7);
    u_sdram_SLICE_68I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_refresh_cnt_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n79, DI0=>u_sdram_n80, A0=>'X', 
                B0=>u_sdram_refresh_cnt_5, C0=>'X', D0=>'1', 
                FCI=>u_sdram_n69821, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n28678, FCO=>u_sdram_n69822, F1=>u_sdram_n79, 
                Q1=>u_sdram_refresh_cnt_6, F0=>u_sdram_n80, 
                Q0=>u_sdram_refresh_cnt_5);
    u_sdram_SLICE_69I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_refresh_cnt_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n81, DI0=>u_sdram_n82, A0=>'X', B0=>u_sdram_n13, 
                C0=>'X', D0=>'1', FCI=>u_sdram_n69820, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_sdram_n28678, FCO=>u_sdram_n69821, 
                F1=>u_sdram_n81, Q1=>u_sdram_refresh_cnt_4, F0=>u_sdram_n82, 
                Q0=>u_sdram_n13);
    u_sdram_SLICE_70I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_sdram_n14, C1=>'X', D1=>'1', 
                DI1=>u_sdram_n83, DI0=>u_sdram_n84, A0=>'X', B0=>u_sdram_n15, 
                C0=>'X', D0=>'1', FCI=>u_sdram_n69819, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_sdram_n28678, FCO=>u_sdram_n69820, 
                F1=>u_sdram_n83, Q1=>u_sdram_n14, F0=>u_sdram_n84, 
                Q0=>u_sdram_n15);
    u_sdram_SLICE_71I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_sdram_n16_adj_12526, C1=>'X', D1=>'1', 
                DI1=>u_sdram_n85, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n28678, 
                FCO=>u_sdram_n69819, F1=>u_sdram_n85, 
                Q1=>u_sdram_n16_adj_12526, F0=>open, Q0=>open);
    SLICE_72I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n39_adj_12560, DI0=>n42_adj_12561, A0=>'X', 
                B0=>div_cnt_13, C0=>'X', D0=>'1', FCI=>n69896, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_234, CLK=>SD_CLK_c, LSR=>u_sd_n37437, 
                FCO=>n69897, F1=>n39_adj_12560, Q1=>div_cnt_14, 
                F0=>n42_adj_12561, Q0=>div_cnt_13);
    SLICE_73I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n45_adj_12545, DI0=>n48_adj_12546, A0=>'X', 
                B0=>div_cnt_11, C0=>'X', D0=>'1', FCI=>n69895, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_234, CLK=>SD_CLK_c, LSR=>u_sd_n37437, 
                FCO=>n69896, F1=>n45_adj_12545, Q1=>div_cnt_12, 
                F0=>n48_adj_12546, Q0=>div_cnt_11);
    SLICE_74I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>div_cnt_10, C1=>'X', D1=>'1', 
                DI1=>n51_adj_12543, DI0=>n54_adj_12547, A0=>'X', B0=>div_cnt_9, 
                C0=>'X', D0=>'1', FCI=>n69894, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_234, CLK=>SD_CLK_c, LSR=>u_sd_n37437, 
                FCO=>n69895, F1=>n51_adj_12543, Q1=>div_cnt_10, 
                F0=>n54_adj_12547, Q0=>div_cnt_9);
    SLICE_75I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>div_cnt_8, C1=>'X', D1=>'1', 
                DI1=>n57_adj_12544, DI0=>n60_adj_12548, A0=>'X', B0=>div_cnt_7, 
                C0=>'X', D0=>'1', FCI=>n69893, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_234, CLK=>SD_CLK_c, LSR=>u_sd_n37437, 
                FCO=>n69894, F1=>n57_adj_12544, Q1=>div_cnt_8, 
                F0=>n60_adj_12548, Q0=>div_cnt_7);
    SLICE_76I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n63_adj_12549, DI0=>n66_adj_12550, A0=>'X', B0=>div_cnt_5, 
                C0=>'X', D0=>'1', FCI=>n69892, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_234, CLK=>SD_CLK_c, LSR=>u_sd_n37437, 
                FCO=>n69893, F1=>n63_adj_12549, Q1=>div_cnt_6, 
                F0=>n66_adj_12550, Q0=>div_cnt_5);
    SLICE_77I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n69_adj_12551, DI0=>n72_adj_12552, A0=>'X', B0=>div_cnt_3, 
                C0=>'X', D0=>'1', FCI=>n69891, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_234, CLK=>SD_CLK_c, LSR=>u_sd_n37437, 
                FCO=>n69892, F1=>n69_adj_12551, Q1=>div_cnt_4, 
                F0=>n72_adj_12552, Q0=>div_cnt_3);
    SLICE_78I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>div_cnt_2, C1=>'X', D1=>'1', 
                DI1=>n75_adj_12553, DI0=>n78_adj_12554, A0=>'X', B0=>div_cnt_1, 
                C0=>'X', D0=>'1', FCI=>n69890, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_234, CLK=>SD_CLK_c, LSR=>u_sd_n37437, 
                FCO=>n69891, F1=>n75_adj_12553, Q1=>div_cnt_2, 
                F0=>n78_adj_12554, Q0=>div_cnt_1);
    SLICE_79I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>div_cnt_0, C1=>'X', D1=>'1', 
                DI1=>n81_adj_12555, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>u_sd_SD_CLK_c_enable_234, 
                CLK=>SD_CLK_c, LSR=>u_sd_n37437, FCO=>n69890, 
                F1=>n81_adj_12555, Q1=>div_cnt_0, F0=>open, Q0=>open);
    u_sd_SLICE_80I: SCCU2C
      generic map (INIT0_INITVAL=>X"0001", INIT1_INITVAL=>X"0081")
      port map (M1=>'X', A1=>div_cnt_6, B1=>div_cnt_7, C1=>u_sd_sck_N_10288_3, 
                D1=>div_cnt_4, DI1=>'X', DI0=>'X', A0=>div_cnt_8, 
                B0=>div_cnt_10, C0=>div_cnt_11, D0=>div_cnt_9, 
                FCI=>u_sd_n69565, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>u_sd_n69566, F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_sd_SLICE_81I: SCCU2C
      generic map (CCU2_INJECT1_1=>"NO", INIT0_INITVAL=>X"8001", 
                   INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>div_cnt_5, B0=>div_cnt_6, C0=>div_cnt_3, 
                D0=>div_cnt_2, FCI=>u_sd_n69566, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>open, F1=>u_sd_sck_N_10287, Q1=>open, F0=>open, 
                Q0=>open);
    u_sd_SLICE_82I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"0088", 
                   INIT1_INITVAL=>X"0001")
      port map (M1=>'X', A1=>div_cnt_14, B1=>div_cnt_15, C1=>div_cnt_13, 
                D1=>div_cnt_12, DI1=>'X', DI0=>'X', A0=>div_cnt_1, 
                B0=>div_cnt_0, C0=>'X', D0=>'1', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>u_sd_n69565, F1=>open, Q1=>open, 
                F0=>open, Q0=>open);
    SLICE_83I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n162, B1=>'X', C1=>'X', D1=>'1', DI1=>n99, 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>PCLK_c_enable_22, CLK=>PCLK_c, LSR=>'X', 
                FCO=>open, F1=>n99, Q1=>n162, F0=>open, Q0=>open);
    u_ctrl_SLICE_84I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_hb_counter_20, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n145, DI0=>u_ctrl_n146, A0=>'X', 
                B0=>u_ctrl_hb_counter_19, C0=>'X', D0=>'1', FCI=>u_ctrl_n69804, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69805, 
                F1=>u_ctrl_n145, Q1=>u_ctrl_hb_counter_20, F0=>u_ctrl_n146, 
                Q0=>u_ctrl_hb_counter_19);
    u_ctrl_SLICE_85I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_hb_counter_18, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n147, DI0=>u_ctrl_n148, A0=>'X', 
                B0=>u_ctrl_hb_counter_17, C0=>'X', D0=>'1', FCI=>u_ctrl_n69803, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69804, 
                F1=>u_ctrl_n147, Q1=>u_ctrl_hb_counter_18, F0=>u_ctrl_n148, 
                Q0=>u_ctrl_hb_counter_17);
    u_ctrl_SLICE_86I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_hb_counter_16, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n149, DI0=>u_ctrl_n150, A0=>'X', 
                B0=>u_ctrl_hb_counter_15, C0=>'X', D0=>'1', FCI=>u_ctrl_n69802, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69803, 
                F1=>u_ctrl_n149, Q1=>u_ctrl_hb_counter_16, F0=>u_ctrl_n150, 
                Q0=>u_ctrl_hb_counter_15);
    u_ctrl_SLICE_87I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_hb_counter_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n151, DI0=>u_ctrl_n152, A0=>'X', 
                B0=>u_ctrl_hb_counter_13, C0=>'X', D0=>'1', FCI=>u_ctrl_n69801, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69802, 
                F1=>u_ctrl_n151, Q1=>u_ctrl_hb_counter_14, F0=>u_ctrl_n152, 
                Q0=>u_ctrl_hb_counter_13);
    u_ctrl_SLICE_88I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_hb_counter_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n153, DI0=>u_ctrl_n154, A0=>'X', 
                B0=>u_ctrl_hb_counter_11, C0=>'X', D0=>'1', FCI=>u_ctrl_n69800, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69801, 
                F1=>u_ctrl_n153, Q1=>u_ctrl_hb_counter_12, F0=>u_ctrl_n154, 
                Q0=>u_ctrl_hb_counter_11);
    u_ctrl_SLICE_89I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_hb_counter_10, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n155, DI0=>u_ctrl_n156, A0=>'X', 
                B0=>u_ctrl_hb_counter_9, C0=>'X', D0=>'1', FCI=>u_ctrl_n69799, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69800, 
                F1=>u_ctrl_n155, Q1=>u_ctrl_hb_counter_10, F0=>u_ctrl_n156, 
                Q0=>u_ctrl_hb_counter_9);
    u_ctrl_SLICE_90I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_hb_counter_8, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n157, DI0=>u_ctrl_n158, A0=>'X', 
                B0=>u_ctrl_hb_counter_7, C0=>'X', D0=>'1', FCI=>u_ctrl_n69798, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69799, 
                F1=>u_ctrl_n157, Q1=>u_ctrl_hb_counter_8, F0=>u_ctrl_n158, 
                Q0=>u_ctrl_hb_counter_7);
    u_ctrl_SLICE_91I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_hb_counter_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n159, DI0=>u_ctrl_n160, A0=>'X', 
                B0=>u_ctrl_hb_counter_5, C0=>'X', D0=>'1', FCI=>u_ctrl_n69797, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69798, 
                F1=>u_ctrl_n159, Q1=>u_ctrl_hb_counter_6, F0=>u_ctrl_n160, 
                Q0=>u_ctrl_hb_counter_5);
    u_ctrl_SLICE_92I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_hb_counter_0, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n165, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69795, 
                F1=>u_ctrl_n165, Q1=>u_ctrl_hb_counter_0, F0=>open, Q0=>open);
    u_ctrl_SLICE_93I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_hb_counter_2, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n163, DI0=>u_ctrl_n164, A0=>'X', 
                B0=>u_ctrl_hb_counter_1, C0=>'X', D0=>'1', FCI=>u_ctrl_n69795, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69796, 
                F1=>u_ctrl_n163, Q1=>u_ctrl_hb_counter_2, F0=>u_ctrl_n164, 
                Q0=>u_ctrl_hb_counter_1);
    u_ctrl_SLICE_94I: SCCU2C
      generic map (CCU2_INJECT1_1=>"NO", INIT0_INITVAL=>X"0001", 
                   INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_n72771, B0=>u_ctrl_n72772, 
                C0=>u_ctrl_n72782, D0=>u_ctrl_n72786, FCI=>u_ctrl_n74116, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>u_ctrl_SD_CLK_c_enable_249, Q1=>open, F0=>open, Q0=>open);
    u_ctrl_SLICE_95I: SCCU2C
      generic map (INIT0_INITVAL=>X"0001", INIT1_INITVAL=>X"0001")
      port map (M1=>'X', A1=>u_ctrl_n72770, B1=>u_ctrl_n72769, 
                C1=>u_ctrl_n72768, D1=>u_ctrl_n72767, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_n72762, B0=>u_ctrl_n72766, C0=>u_ctrl_n72761, 
                D0=>u_ctrl_n72760, FCI=>u_ctrl_n74115, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>u_ctrl_n74116, F1=>open, Q1=>open, 
                F0=>open, Q0=>open);
    u_ctrl_SLICE_96I: SCCU2C
      generic map (INIT0_INITVAL=>X"0001", INIT1_INITVAL=>X"0001")
      port map (M1=>'X', A1=>u_ctrl_n72759, B1=>u_ctrl_n72758, 
                C1=>u_ctrl_n72757, D1=>u_ctrl_n72756, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_hb_counter_15, B0=>u_ctrl_hb_counter_16, 
                C0=>u_ctrl_hb_counter_22, D0=>u_ctrl_hb_counter_17, 
                FCI=>u_ctrl_n74114, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>u_ctrl_n74115, F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_ctrl_SLICE_97I: SCCU2C
      generic map (INIT0_INITVAL=>X"0001", INIT1_INITVAL=>X"0001")
      port map (M1=>'X', A1=>u_ctrl_hb_counter_23, B1=>u_ctrl_hb_counter_26, 
                C1=>u_ctrl_hb_counter_12, D1=>u_ctrl_hb_counter_25, DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_hb_counter_30, B0=>u_ctrl_hb_counter_31, 
                C0=>u_ctrl_n72785, D0=>u_ctrl_n70404, FCI=>u_ctrl_n74113, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_ctrl_n74114, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_ctrl_SLICE_98I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"00FF", 
                   INIT1_INITVAL=>X"0001")
      port map (M1=>'X', A1=>u_ctrl_n72781, B1=>u_ctrl_n72755, 
                C1=>u_ctrl_n72765, D1=>u_ctrl_hb_counter_18, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_ctrl_n74113, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_ctrl_SLICE_99I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_hb_counter_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n161, DI0=>u_ctrl_n162, A0=>'X', 
                B0=>u_ctrl_hb_counter_3, C0=>'X', D0=>'1', FCI=>u_ctrl_n69796, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69797, 
                F1=>u_ctrl_n161, Q1=>u_ctrl_hb_counter_4, F0=>u_ctrl_n162, 
                Q0=>u_ctrl_hb_counter_3);
    u_ctrl_SLICE_100I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_ctrl_n38, A0=>'X', B0=>u_ctrl_hb_seq_7, C0=>'X', 
                D0=>'1', FCI=>u_ctrl_n69814, M0=>'X', CE=>u_ctrl_send_hb, 
                CLK=>SD_CLK_c, LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>u_ctrl_n38, Q0=>u_ctrl_hb_seq_7);
    u_ctrl_SLICE_101I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_hb_seq_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n39, DI0=>u_ctrl_n40, A0=>'X', B0=>u_ctrl_hb_seq_5, 
                C0=>'X', D0=>'1', FCI=>u_ctrl_n69813, M0=>'X', 
                CE=>u_ctrl_send_hb, CLK=>SD_CLK_c, LSR=>'X', 
                FCO=>u_ctrl_n69814, F1=>u_ctrl_n39, Q1=>u_ctrl_hb_seq_6, 
                F0=>u_ctrl_n40, Q0=>u_ctrl_hb_seq_5);
    u_ctrl_SLICE_102I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_hb_seq_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n41, DI0=>u_ctrl_n42, A0=>'X', B0=>u_ctrl_hb_seq_3, 
                C0=>'X', D0=>'1', FCI=>u_ctrl_n69812, M0=>'X', 
                CE=>u_ctrl_send_hb, CLK=>SD_CLK_c, LSR=>'X', 
                FCO=>u_ctrl_n69813, F1=>u_ctrl_n41, Q1=>u_ctrl_hb_seq_4, 
                F0=>u_ctrl_n42, Q0=>u_ctrl_hb_seq_3);
    u_ctrl_SLICE_103I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_hb_seq_2, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n43, DI0=>u_ctrl_n44, A0=>'X', B0=>u_ctrl_hb_seq_1, 
                C0=>'X', D0=>'1', FCI=>u_ctrl_n69811, M0=>'X', 
                CE=>u_ctrl_send_hb, CLK=>SD_CLK_c, LSR=>'X', 
                FCO=>u_ctrl_n69812, F1=>u_ctrl_n43, Q1=>u_ctrl_hb_seq_2, 
                F0=>u_ctrl_n44, Q0=>u_ctrl_hb_seq_1);
    u_ctrl_SLICE_104I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_hb_seq_0, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n45, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>'X', M0=>'X', CE=>u_ctrl_send_hb, CLK=>SD_CLK_c, LSR=>'X', 
                FCO=>u_ctrl_n69811, F1=>u_ctrl_n45, Q1=>u_ctrl_hb_seq_0, 
                F0=>open, Q0=>open);
    u_ctrl_SLICE_105I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_ctrl_n134, A0=>'X', B0=>u_ctrl_hb_counter_31, C0=>'X', 
                D0=>'1', FCI=>u_ctrl_n69810, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>open, F1=>open, Q1=>open, 
                F0=>u_ctrl_n134, Q0=>u_ctrl_hb_counter_31);
    u_ctrl_SLICE_106I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_hb_counter_30, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n135, DI0=>u_ctrl_n136, A0=>'X', 
                B0=>u_ctrl_hb_counter_29, C0=>'X', D0=>'1', FCI=>u_ctrl_n69809, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69810, 
                F1=>u_ctrl_n135, Q1=>u_ctrl_hb_counter_30, F0=>u_ctrl_n136, 
                Q0=>u_ctrl_hb_counter_29);
    u_ctrl_SLICE_107I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_hb_counter_28, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n137, DI0=>u_ctrl_n138, A0=>'X', 
                B0=>u_ctrl_hb_counter_27, C0=>'X', D0=>'1', FCI=>u_ctrl_n69808, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69809, 
                F1=>u_ctrl_n137, Q1=>u_ctrl_hb_counter_28, F0=>u_ctrl_n138, 
                Q0=>u_ctrl_hb_counter_27);
    u_ctrl_SLICE_108I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_hb_counter_26, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n139, DI0=>u_ctrl_n140, A0=>'X', 
                B0=>u_ctrl_hb_counter_25, C0=>'X', D0=>'1', FCI=>u_ctrl_n69807, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69808, 
                F1=>u_ctrl_n139, Q1=>u_ctrl_hb_counter_26, F0=>u_ctrl_n140, 
                Q0=>u_ctrl_hb_counter_25);
    u_ctrl_SLICE_109I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_hb_counter_24, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n141, DI0=>u_ctrl_n142, A0=>'X', 
                B0=>u_ctrl_hb_counter_23, C0=>'X', D0=>'1', FCI=>u_ctrl_n69806, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69807, 
                F1=>u_ctrl_n141, Q1=>u_ctrl_hb_counter_24, F0=>u_ctrl_n142, 
                Q0=>u_ctrl_hb_counter_23);
    u_ctrl_SLICE_110I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_hb_counter_22, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_n143, DI0=>u_ctrl_n144, A0=>'X', 
                B0=>u_ctrl_hb_counter_21, C0=>'X', D0=>'1', FCI=>u_ctrl_n69805, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_SD_CLK_c_enable_249, FCO=>u_ctrl_n69806, 
                F1=>u_ctrl_n143, Q1=>u_ctrl_hb_counter_22, F0=>u_ctrl_n144, 
                Q0=>u_ctrl_hb_counter_21);
    u_ctrl_u_tx_SLICE_111I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_ctrl_u_tx_n70, A0=>'X', B0=>u_ctrl_u_tx_clk_cnt_15, 
                C0=>'X', D0=>'1', FCI=>u_ctrl_u_tx_n69889, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_ctrl_u_tx_n28585, FCO=>open, F1=>open, 
                Q1=>open, F0=>u_ctrl_u_tx_n70, Q0=>u_ctrl_u_tx_clk_cnt_15);
    u_ctrl_u_tx_SLICE_112I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n71, DI0=>u_ctrl_u_tx_n72, A0=>'X', 
                B0=>u_ctrl_u_tx_clk_cnt_13, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n69888, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28585, FCO=>u_ctrl_u_tx_n69889, 
                F1=>u_ctrl_u_tx_n71, Q1=>u_ctrl_u_tx_clk_cnt_14, 
                F0=>u_ctrl_u_tx_n72, Q0=>u_ctrl_u_tx_clk_cnt_13);
    u_ctrl_u_tx_SLICE_113I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n73, DI0=>u_ctrl_u_tx_n74, A0=>'X', 
                B0=>u_ctrl_u_tx_clk_cnt_11, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n69887, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28585, FCO=>u_ctrl_u_tx_n69888, 
                F1=>u_ctrl_u_tx_n73, Q1=>u_ctrl_u_tx_clk_cnt_12, 
                F0=>u_ctrl_u_tx_n74, Q0=>u_ctrl_u_tx_clk_cnt_11);
    u_ctrl_u_tx_SLICE_114I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_u_tx_clk_cnt_10, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n75, DI0=>u_ctrl_u_tx_n76, A0=>'X', 
                B0=>u_ctrl_u_tx_clk_cnt_9, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n69886, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28585, FCO=>u_ctrl_u_tx_n69887, 
                F1=>u_ctrl_u_tx_n75, Q1=>u_ctrl_u_tx_clk_cnt_10, 
                F0=>u_ctrl_u_tx_n76, Q0=>u_ctrl_u_tx_clk_cnt_9);
    u_ctrl_u_tx_SLICE_115I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_u_tx_clk_cnt_8, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n77, DI0=>u_ctrl_u_tx_n78, A0=>'X', 
                B0=>u_ctrl_u_tx_clk_cnt_7, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n69885, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28585, FCO=>u_ctrl_u_tx_n69886, 
                F1=>u_ctrl_u_tx_n77, Q1=>u_ctrl_u_tx_clk_cnt_8, 
                F0=>u_ctrl_u_tx_n78, Q0=>u_ctrl_u_tx_clk_cnt_7);
    u_ctrl_u_tx_SLICE_116I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n79, DI0=>u_ctrl_u_tx_n80, A0=>'X', 
                B0=>u_ctrl_u_tx_clk_cnt_5, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n69884, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28585, FCO=>u_ctrl_u_tx_n69885, 
                F1=>u_ctrl_u_tx_n79, Q1=>u_ctrl_u_tx_clk_cnt_6, 
                F0=>u_ctrl_u_tx_n80, Q0=>u_ctrl_u_tx_clk_cnt_5);
    u_ctrl_u_tx_SLICE_117I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n81, DI0=>u_ctrl_u_tx_n82, A0=>'X', 
                B0=>u_ctrl_u_tx_clk_cnt_3, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n69883, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28585, FCO=>u_ctrl_u_tx_n69884, 
                F1=>u_ctrl_u_tx_n81, Q1=>u_ctrl_u_tx_clk_cnt_4, 
                F0=>u_ctrl_u_tx_n82, Q0=>u_ctrl_u_tx_clk_cnt_3);
    u_ctrl_u_tx_SLICE_118I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_u_tx_clk_cnt_2, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n83, DI0=>u_ctrl_u_tx_n84, A0=>'X', 
                B0=>u_ctrl_u_tx_clk_cnt_1, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n69882, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28585, FCO=>u_ctrl_u_tx_n69883, 
                F1=>u_ctrl_u_tx_n83, Q1=>u_ctrl_u_tx_clk_cnt_2, 
                F0=>u_ctrl_u_tx_n84, Q0=>u_ctrl_u_tx_clk_cnt_1);
    u_ctrl_u_tx_SLICE_119I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_u_tx_clk_cnt_0, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n85, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28585, FCO=>u_ctrl_u_tx_n69882, 
                F1=>u_ctrl_u_tx_n85, Q1=>u_ctrl_u_tx_clk_cnt_0, F0=>open, 
                Q0=>open);
    u_ctrl_u_rx_SLICE_120I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_ctrl_u_rx_n70, A0=>'X', B0=>u_ctrl_u_rx_clk_cnt_15, 
                C0=>'X', D0=>'1', FCI=>u_ctrl_u_rx_n69861, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_213, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63190, FCO=>open, F1=>open, Q1=>open, 
                F0=>u_ctrl_u_rx_n70, Q0=>u_ctrl_u_rx_clk_cnt_15);
    u_ctrl_u_rx_SLICE_121I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n71, DI0=>u_ctrl_u_rx_n72, A0=>'X', 
                B0=>u_ctrl_u_rx_clk_cnt_13, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n69860, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_213, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63190, FCO=>u_ctrl_u_rx_n69861, 
                F1=>u_ctrl_u_rx_n71, Q1=>u_ctrl_u_rx_clk_cnt_14, 
                F0=>u_ctrl_u_rx_n72, Q0=>u_ctrl_u_rx_clk_cnt_13);
    u_ctrl_u_rx_SLICE_122I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n73, DI0=>u_ctrl_u_rx_n74, A0=>'X', 
                B0=>u_ctrl_u_rx_clk_cnt_11, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n69859, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_213, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63190, FCO=>u_ctrl_u_rx_n69860, 
                F1=>u_ctrl_u_rx_n73, Q1=>u_ctrl_u_rx_clk_cnt_12, 
                F0=>u_ctrl_u_rx_n74, Q0=>u_ctrl_u_rx_clk_cnt_11);
    u_ctrl_u_rx_SLICE_123I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_u_rx_clk_cnt_10, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n75, DI0=>u_ctrl_u_rx_n76, 
                A0=>u_ctrl_u_rx_clk_cnt_9, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n69858, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_213, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63190, FCO=>u_ctrl_u_rx_n69859, 
                F1=>u_ctrl_u_rx_n75, Q1=>u_ctrl_u_rx_clk_cnt_10, 
                F0=>u_ctrl_u_rx_n76, Q0=>u_ctrl_u_rx_clk_cnt_9);
    u_ctrl_u_rx_SLICE_124I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_u_rx_clk_cnt_8, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n77, DI0=>u_ctrl_u_rx_n78, A0=>'X', 
                B0=>u_ctrl_u_rx_clk_cnt_7, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n69857, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_213, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63190, FCO=>u_ctrl_u_rx_n69858, 
                F1=>u_ctrl_u_rx_n77, Q1=>u_ctrl_u_rx_clk_cnt_8, 
                F0=>u_ctrl_u_rx_n78, Q0=>u_ctrl_u_rx_clk_cnt_7);
    u_ctrl_u_rx_SLICE_125I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n79, DI0=>u_ctrl_u_rx_n80, A0=>'X', 
                B0=>u_ctrl_u_rx_clk_cnt_5, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n69856, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_213, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63190, FCO=>u_ctrl_u_rx_n69857, 
                F1=>u_ctrl_u_rx_n79, Q1=>u_ctrl_u_rx_clk_cnt_6, 
                F0=>u_ctrl_u_rx_n80, Q0=>u_ctrl_u_rx_clk_cnt_5);
    u_ctrl_u_rx_SLICE_126I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n81, DI0=>u_ctrl_u_rx_n82, A0=>'X', 
                B0=>u_ctrl_u_rx_clk_cnt_3, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n69855, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_213, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63190, FCO=>u_ctrl_u_rx_n69856, 
                F1=>u_ctrl_u_rx_n81, Q1=>u_ctrl_u_rx_clk_cnt_4, 
                F0=>u_ctrl_u_rx_n82, Q0=>u_ctrl_u_rx_clk_cnt_3);
    u_ctrl_u_rx_SLICE_127I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_u_rx_clk_cnt_2, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n83, DI0=>u_ctrl_u_rx_n84, A0=>'X', 
                B0=>u_ctrl_u_rx_clk_cnt_1, C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n69854, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_213, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63190, FCO=>u_ctrl_u_rx_n69855, 
                F1=>u_ctrl_u_rx_n83, Q1=>u_ctrl_u_rx_clk_cnt_2, 
                F0=>u_ctrl_u_rx_n84, Q0=>u_ctrl_u_rx_clk_cnt_1);
    u_ctrl_u_rx_SLICE_128I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_ctrl_u_rx_clk_cnt_0, C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n85, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_213, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63190, FCO=>u_ctrl_u_rx_n69854, 
                F1=>u_ctrl_u_rx_n85, Q1=>u_ctrl_u_rx_clk_cnt_0, F0=>open, 
                Q0=>open);
    u_ctrl_u_cmd_SLICE_129I: SCCU2C
      generic map (CCU2_INJECT1_1=>"NO", INIT0_INITVAL=>X"9009", 
                   INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_chk_calc_1, B0=>u_ctrl_rx_data_1, 
                C0=>u_ctrl_rx_data_0, D0=>u_ctrl_u_cmd_chk_calc_0, 
                FCI=>u_ctrl_u_cmd_n69568, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>u_ctrl_u_cmd_cmd_valid_N_820, Q1=>open, 
                F0=>open, Q0=>open);
    u_ctrl_u_cmd_SLICE_130I: SCCU2C
      generic map (INIT0_INITVAL=>X"8421", INIT1_INITVAL=>X"8241")
      port map (M1=>'X', A1=>u_ctrl_rx_data_2, B1=>u_ctrl_rx_data_3, 
                C1=>u_ctrl_u_cmd_chk_calc_3, D1=>u_ctrl_u_cmd_chk_calc_2, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_rx_data_5, 
                B0=>u_ctrl_u_cmd_chk_calc_4, C0=>u_ctrl_u_cmd_chk_calc_5, 
                D0=>u_ctrl_rx_data_4, FCI=>u_ctrl_u_cmd_n69567, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_ctrl_u_cmd_n69568, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_ctrl_u_cmd_SLICE_131I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"00FF", 
                   INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_ctrl_u_cmd_chk_calc_7, B1=>u_ctrl_rx_data_7, 
                C1=>u_ctrl_rx_data_6, D1=>u_ctrl_u_cmd_chk_calc_6, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_ctrl_u_cmd_n69567, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_raw_cap_SLICE_132I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"33FF", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_raw_cap_n38, A0=>'X', B0=>u_raw_cap_stride_count_p_7, 
                C0=>'X', D0=>'1', FCI=>u_raw_cap_n69818, M0=>'X', 
                CE=>PCLK_c_enable_22, CLK=>PCLK_c, 
                LSR=>u_raw_cap_PCLK_c_enable_18, FCO=>open, F1=>open, Q1=>open, 
                F0=>u_raw_cap_n38, Q0=>u_raw_cap_stride_count_p_7);
    u_raw_cap_SLICE_133I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"33FF", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_raw_cap_stride_count_p_6, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>u_raw_cap_n39, DI0=>u_raw_cap_n40, A0=>'X', 
                B0=>u_raw_cap_stride_count_p_5, C0=>'X', D0=>'1', 
                FCI=>u_raw_cap_n69817, M0=>'X', CE=>PCLK_c_enable_22, 
                CLK=>PCLK_c, LSR=>u_raw_cap_PCLK_c_enable_18, 
                FCO=>u_raw_cap_n69818, F1=>u_raw_cap_n39, 
                Q1=>u_raw_cap_stride_count_p_6, F0=>u_raw_cap_n40, 
                Q0=>u_raw_cap_stride_count_p_5);
    u_raw_cap_SLICE_134I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"33FF", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_raw_cap_stride_count_p_4, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>u_raw_cap_n41, DI0=>u_raw_cap_n42, A0=>'X', 
                B0=>u_raw_cap_stride_count_p_3, C0=>'X', D0=>'1', 
                FCI=>u_raw_cap_n69816, M0=>'X', CE=>PCLK_c_enable_22, 
                CLK=>PCLK_c, LSR=>u_raw_cap_PCLK_c_enable_18, 
                FCO=>u_raw_cap_n69817, F1=>u_raw_cap_n41, 
                Q1=>u_raw_cap_stride_count_p_4, F0=>u_raw_cap_n42, 
                Q0=>u_raw_cap_stride_count_p_3);
    u_raw_cap_SLICE_135I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"33FF", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_raw_cap_stride_count_p_2, C1=>'X', 
                D1=>'1', DI1=>u_raw_cap_n43, DI0=>u_raw_cap_n44, A0=>'X', 
                B0=>u_raw_cap_stride_count_p_1, C0=>'X', D0=>'1', 
                FCI=>u_raw_cap_n69815, M0=>'X', CE=>PCLK_c_enable_22, 
                CLK=>PCLK_c, LSR=>u_raw_cap_PCLK_c_enable_18, 
                FCO=>u_raw_cap_n69816, F1=>u_raw_cap_n43, 
                Q1=>u_raw_cap_stride_count_p_2, F0=>u_raw_cap_n44, 
                Q0=>u_raw_cap_stride_count_p_1);
    u_raw_cap_SLICE_136I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>u_raw_cap_stride_count_p_0, C1=>'X', 
                D1=>'1', DI1=>u_raw_cap_n45, DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', FCI=>'X', M0=>'X', CE=>PCLK_c_enable_22, 
                CLK=>PCLK_c, LSR=>u_raw_cap_PCLK_c_enable_18, 
                FCO=>u_raw_cap_n69815, F1=>u_raw_cap_n45, 
                Q1=>u_raw_cap_stride_count_p_0, F0=>open, Q0=>open);
    raw_done_frame_id_s1_sft00000_SLICE_137I: SRAMWB
      generic map (WD0MUX=>"SIG", WAD0MUX=>"SIG", WAD1MUX=>"SIG", 
                   WAD2MUX=>"SIG", WAD3MUX=>"SIG")
      port map (A1=>'X', B1=>'X', C1=>raw_done_frame_id_p_0, D1=>'X', 
                A0=>GND_net, B0=>n48007, C0=>GND_net, D0=>n48008, 
                WDO0=>raw_done_frame_id_s1_sft00000_WD0_INT, WDO1=>open, 
                WDO2=>open, WDO3=>open, 
                WADO0=>raw_done_frame_id_s1_sft00000_WAD0_INT, 
                WADO1=>raw_done_frame_id_s1_sft00000_WAD1_INT, 
                WADO2=>raw_done_frame_id_s1_sft00000_WAD2_INT, 
                WADO3=>raw_done_frame_id_s1_sft00000_WAD3_INT);
    SLICE_138I: SDPRAME
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", WREMUX=>"VHI", WCKMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_WAD0=>TRUE, 
                   CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, CHECK_WAD3=>TRUE, 
                   CHECK_WD0=>TRUE)
      port map (M1=>'X', RAD0=>n48016, RAD1=>n48015, RAD2=>GND_net, 
                RAD3=>GND_net, WD1=>'X', 
                WD0=>raw_done_frame_id_s1_sft00000_WD0_INT, 
                WAD0=>raw_done_frame_id_s1_sft00000_WAD0_INT, 
                WAD1=>raw_done_frame_id_s1_sft00000_WAD1_INT, 
                WAD2=>raw_done_frame_id_s1_sft00000_WAD2_INT, 
                WAD3=>raw_done_frame_id_s1_sft00000_WAD3_INT, WRE=>'X', 
                WCK=>SD_CLK_c, M0=>'X', CE=>u_raw_cap_raw_done_pulse_sys, 
                CLK=>SD_CLK_c, LSR=>'X', DI1=>'X', DI0=>raw_done_frame_id_s3_0, 
                F0=>raw_done_frame_id_s3_0, Q0=>raw_frame_id_0, F1=>open, 
                Q1=>open);
    raw_done_frame_id_s1_sft00000_RAMW_SLICE_139I: SDPRAME
      generic map (WREMUX=>"VHI", WCKMUX=>"SIG")
      port map (M1=>'X', RAD0=>'X', RAD1=>'X', RAD2=>'X', RAD3=>'X', WD1=>'X', 
                WD0=>'X', WAD0=>raw_done_frame_id_s1_sft00000_WAD0_INT, 
                WAD1=>'X', WAD2=>'X', WAD3=>'X', WRE=>'X', WCK=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>open, 
                Q0=>open, F1=>open, Q1=>open);
    u_dbg_status_SLICE_140I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG0_REGSET=>"SET", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"F535", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_dbg_status_n52932, 
                A0=>u_dbg_status_start_req, B0=>u_dbg_status_n60489, 
                C0=>u_dbg_status_busy, D0=>u_dbg_status_shreg_1, M0=>'X', 
                CE=>u_dbg_status_MCLK_c_enable_29, CLK=>MCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n52932, Q0=>ESP_D_c_0);
    u_sd_SLICE_141I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"33CC", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_sck_N_10286, A0=>'X', 
                B0=>u_sd_sck_N_10287, C0=>'X', D0=>M_CLK_c, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_234, CLK=>SD_CLK_c, LSR=>u_sd_n76493, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_sck_N_10286, Q0=>M_CLK_c);
    u_sd_SLICE_142I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"CCF0", 
                   LUT1_INITVAL=>X"F0AA", REG1_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>u_sd_n74455, FXA=>u_sd_n74394, FXB=>u_sd_n68275, 
                A1=>u_sd_spi_tx_7, B1=>'X', C1=>u_sd_n74395, D1=>u_sd_spi_busy, 
                DI1=>u_sd_n52970, DI0=>'X', A0=>'X', B0=>u_sd_spi_tx_4, 
                C0=>u_sd_spi_tx_5, D0=>bit_cnt_0, M0=>u_sd_n74457, 
                CE=>u_sd_SD_CLK_c_enable_230, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>u_sd_n52970, F1=>open, Q1=>M_CMD_c, OFX0=>u_sd_n68275, 
                F0=>open, Q0=>open);
    u_sd_SLICE_143I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FF02", 
                   LUT1_INITVAL=>X"A005", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, B1=>'X', 
                C1=>u_sd_st_4, D1=>st_2_adj_12557, DI1=>'X', 
                DI0=>u_sd_cs_n_N_10133, A0=>u_sd_n23_adj_12494, 
                B0=>u_sd_n78014, C0=>u_sd_n76502, D0=>u_sd_n27_adj_12516, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_n23_adj_12494, Q1=>open, OFX0=>open, 
                F0=>u_sd_cs_n_N_10133, Q0=>M_D3_c);
    u_sdram_SLICE_144I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sdram_SD_A_12_N_2268_9, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>SD_A_c_9);
    u_sdram_SLICE_145I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"FFFE", 
                   LUT1_INITVAL=>X"AAEA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_st_2, 
                B1=>u_sdram_n76424, C1=>u_sdram_n19231, 
                D1=>u_sdram_SD_A_12_N_2268_9, DI1=>'X', DI0=>u_sdram_n76424, 
                A0=>u_sdram_wait_cnt_0, B0=>u_sdram_wait_cnt_1, 
                C0=>u_sdram_wait_cnt_2, D0=>u_sdram_wait_cnt_3, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n19231, OFX1=>open, 
                F1=>u_sdram_n36332, Q1=>open, OFX0=>open, F0=>u_sdram_n76424, 
                Q0=>SD_CAS_N_c);
    u_sdram_SLICE_146I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"88BB", 
                   LUT1_INITVAL=>X"3303", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sdram_n19233, 
                C1=>u_sdram_st_2, D1=>u_sdram_n76424, DI1=>'X', 
                DI0=>u_sdram_SD_RAS_N_N_2474, A0=>u_sdram_n76424, 
                B0=>u_sdram_n19231, C0=>'X', D0=>u_sdram_SD_A_12_N_2268_9, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sdram_SD_CLK_c_enable_198, Q1=>open, OFX0=>open, 
                F0=>u_sdram_SD_RAS_N_N_2474, Q0=>SD_RAS_N_c);
    u_sdram_SLICE_147I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"00FF", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_n76490, A0=>'X', B0=>'X', 
                C0=>'X', D0=>u_sdram_SD_A_12_N_2268_9, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n76490, Q0=>SD_WE_N_c);
    u_ctrl_u_tx_SLICE_148I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C0CF", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_tx_tx_N_1193, A0=>'X', 
                B0=>u_ctrl_u_tx_tx_N_1194, C0=>u_ctrl_u_tx_n24589, 
                D0=>u_ctrl_u_tx_n24590, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_tx_tx_N_1193, Q0=>TX_c);
    u_sd_SLICE_149I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"00FF", LUT1_INITVAL=>X"C3C3", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>bit_cnt_0, 
                C1=>bit_cnt_1, D1=>'X', DI1=>u_sd_n76462, 
                DI0=>u_sd_SD_CLK_c_enable_185, A0=>'X', B0=>'X', C0=>'X', 
                D0=>bit_cnt_0, M0=>'X', CE=>u_sd_SD_CLK_c_enable_242, 
                CLK=>SD_CLK_c, LSR=>u_sd_n76493, OFX1=>open, F1=>u_sd_n76462, 
                Q1=>bit_cnt_1, OFX0=>open, F0=>u_sd_SD_CLK_c_enable_185, 
                Q0=>bit_cnt_0);
    SLICE_150I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D0A0", 
                   LUT1_INITVAL=>X"0080", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_phase_1, B1=>st_0, 
                C1=>u_cam_cfg_phase_0, D1=>u_cam_cfg_st_1, DI1=>'X', 
                DI0=>n74412, A0=>byte_idx_0, B0=>byte_idx_1, C0=>st_2, 
                D0=>n76433, M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_4, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>n76433, Q1=>open, 
                OFX0=>open, F0=>n74412, Q0=>byte_idx_0);
    u_cam_cfg_SLICE_151I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"30C0", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_n7_adj_12529, A0=>'X', 
                B0=>byte_idx_0, C0=>st_2, D0=>byte_idx_1, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_38, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n7_adj_12529, Q0=>byte_idx_1);
    u_cam_cfg_SLICE_152I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"2200", 
                   LUT1_INITVAL=>X"3020", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>tick, B1=>u_cam_cfg_st_1, 
                C1=>st_0, D1=>cam_init_done, DI1=>'X', DI0=>u_cam_cfg_n72633, 
                A0=>u_cam_cfg_n6, B0=>st_2, C0=>'X', D0=>st_3, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n6, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n72633, Q0=>cam_init_done);
    u_cam_cfg_SLICE_153I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"03CC", 
                   LUT1_INITVAL=>X"5035", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3, B1=>u_cam_cfg_st_1, 
                C1=>st_0, D1=>st_2, DI1=>'X', DI0=>u_cam_cfg_scl_N_370, 
                A0=>'X', B0=>u_cam_cfg_phase_0, C0=>st_0, 
                D0=>u_cam_cfg_phase_1, M0=>u_cam_cfg_n74465, 
                CE=>u_cam_cfg_SD_CLK_c_enable_30, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_scl_N_370, 
                F0=>open, Q0=>cam_scl_c);
    u_sd_SLICE_154I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECA0", 
                   LUT1_INITVAL=>X"8CAF", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>dummy_left_1, B1=>n40, 
                C1=>u_sd_n13_adj_12442, D1=>u_sd_n60671, 
                DI1=>u_sd_dummy_left_7_N_10079_1, 
                DI0=>u_sd_dummy_left_7_N_10079_0, A0=>u_sd_n13_adj_12442, 
                B0=>n43_adj_12536, C0=>dummy_left_0, D0=>u_sd_n60671, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_dummy_left_7_N_10079_1, Q1=>dummy_left_1, OFX0=>open, 
                F0=>u_sd_dummy_left_7_N_10079_0, Q0=>dummy_left_0);
    u_sd_SLICE_155I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EAC0", 
                   LUT1_INITVAL=>X"B0BB", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>dummy_left_3, 
                B1=>u_sd_n13_adj_12442, C1=>n34, D1=>u_sd_n60671, 
                DI1=>u_sd_dummy_left_7_N_10079_3, 
                DI0=>u_sd_dummy_left_7_N_10079_2, A0=>n37, 
                B0=>u_sd_n13_adj_12442, C0=>dummy_left_2, D0=>u_sd_n60671, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_dummy_left_7_N_10079_3, Q1=>dummy_left_3, OFX0=>open, 
                F0=>u_sd_dummy_left_7_N_10079_2, Q0=>dummy_left_2);
    u_sd_SLICE_156I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EAC0", 
                   LUT1_INITVAL=>X"ECA0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n28, B1=>dummy_left_5, 
                C1=>u_sd_n60671, D1=>u_sd_n13_adj_12442, 
                DI1=>u_sd_dummy_left_7_N_10079_5, 
                DI0=>u_sd_dummy_left_7_N_10079_4, A0=>u_sd_n13_adj_12442, 
                B0=>n31, C0=>u_sd_n60671, D0=>dummy_left_4, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_dummy_left_7_N_10079_5, Q1=>dummy_left_5, OFX0=>open, 
                F0=>u_sd_dummy_left_7_N_10079_4, Q0=>dummy_left_4);
    u_sd_SLICE_157I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECA0", 
                   LUT1_INITVAL=>X"EAC0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n60671, B1=>dummy_left_7, 
                C1=>u_sd_n13_adj_12442, D1=>n22, 
                DI1=>u_sd_dummy_left_7_N_10079_7, 
                DI0=>u_sd_dummy_left_7_N_10079_6, A0=>u_sd_n60671, 
                B0=>u_sd_n13_adj_12442, C0=>n25, D0=>dummy_left_6, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_dummy_left_7_N_10079_7, Q1=>dummy_left_7, OFX0=>open, 
                F0=>u_sd_dummy_left_7_N_10079_6, Q0=>dummy_left_6);
    u_raw_cap_SLICE_158I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0FF0", 
                   LUT1_INITVAL=>X"5555", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n48008, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>n48016, DI0=>n48015, A0=>'X', B0=>'X', 
                C0=>n48007, D0=>n48008, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>n48016, Q1=>n48008, OFX0=>open, 
                F0=>n48015, Q0=>n48007);
    SLICE_159I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"33CC", LUT1_INITVAL=>X"FFFE", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n73083, 
                B1=>post_delay_5, C1=>post_delay_3, D1=>u_cam_cfg_n72734, 
                DI1=>'X', DI0=>n43, A0=>'X', B0=>n15, C0=>'X', 
                D0=>post_delay_0, M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_250, 
                CLK=>SD_CLK_c, LSR=>u_cam_cfg_n63241, OFX1=>open, F1=>n15, 
                Q1=>open, OFX0=>open, F0=>n43, Q0=>post_delay_0);
    SLICE_160I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"A028", 
                   LUT1_INITVAL=>X"8882", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n76448, B1=>post_delay_3, 
                C1=>n76328, D1=>post_delay_2, DI1=>n71623, DI0=>n71626, 
                A0=>n76448, B0=>n15, C0=>post_delay_1, D0=>post_delay_0, 
                M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_250, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>n71623, Q1=>post_delay_3, OFX0=>open, 
                F0=>n71626, Q0=>post_delay_1);
    u_cam_cfg_SLICE_161I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CF9F", 
                   LUT1_INITVAL=>X"0303", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_cam_cfg_st_1, 
                C1=>st_0, D1=>'X', DI1=>'X', DI0=>u_cam_cfg_n75626, A0=>n76353, 
                B0=>post_delay_2, C0=>st_0, D0=>post_delay_1, M0=>st_3, 
                CE=>u_cam_cfg_SD_CLK_c_enable_250, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_n75626, 
                F0=>open, Q0=>post_delay_2);
    SLICE_162I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"009F", 
                   LUT1_INITVAL=>X"FFFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n76353, B1=>post_delay_2, 
                C1=>post_delay_1, D1=>post_delay_3, DI1=>'X', 
                DI0=>u_cam_cfg_n72003, A0=>post_delay_4, B0=>n76320, C0=>st_0, 
                D0=>st_3, M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_250, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>n76320, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n72003, Q0=>post_delay_4);
    SLICE_163I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FE01", LUT1_INITVAL=>X"CCC9", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>post_delay_5, 
                B1=>post_delay_6, C1=>post_delay_4, D1=>n76320, DI1=>n70149, 
                DI0=>n70151, A0=>n76321, B0=>post_delay_3, C0=>post_delay_4, 
                D0=>post_delay_5, M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_250, 
                CLK=>SD_CLK_c, LSR=>u_cam_cfg_n63241, OFX1=>open, F1=>n70149, 
                Q1=>post_delay_6, OFX0=>open, F0=>n70151, Q0=>post_delay_5);
    SLICE_164I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"F0E1", LUT1_INITVAL=>X"FFFE", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>post_delay_3, B1=>n76328, 
                C1=>post_delay_2, D1=>post_delay_4, DI1=>'X', DI0=>n70147, 
                A0=>post_delay_6, B0=>n76318, C0=>post_delay_7, 
                D0=>post_delay_5, M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_250, 
                CLK=>SD_CLK_c, LSR=>u_cam_cfg_n63241, OFX1=>open, F1=>n76318, 
                Q1=>open, OFX0=>open, F0=>n70147, Q0=>post_delay_7);
    u_raw_cap_SLICE_165I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_raw_cap_active_frame_id_p_0, 
                CE=>u_raw_cap_PCLK_c_enable_21, CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>raw_done_frame_id_p_0);
    u_raw_cap_SLICE_166I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_raw_cap_raw_done_pulse_sys, 
                A0=>u_raw_cap_raw_done_s2, B0=>u_raw_cap_raw_done_s3, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_raw_cap_raw_done_pulse_sys, Q0=>raw_frame_ready);
    u_sd_SLICE_167I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFF2", 
                   LUT1_INITVAL=>X"FFEC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>resp_tries_1, B1=>u_sd_n77997, 
                C1=>u_sd_n63, D1=>u_sd_n61_adj_12462, 
                DI1=>u_sd_resp_tries_7_N_10055_1, 
                DI0=>u_sd_resp_tries_7_N_10055_0, A0=>u_sd_n60_adj_12513, 
                B0=>st_2_adj_12557, C0=>u_sd_n64, D0=>u_sd_n77996, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_resp_tries_7_N_10055_1, Q1=>resp_tries_1, OFX0=>open, 
                F0=>u_sd_resp_tries_7_N_10055_0, Q0=>resp_tries_0);
    u_sd_SLICE_168I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FEFA", 
                   LUT1_INITVAL=>X"FFF8", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n63, B1=>resp_tries_3, 
                C1=>u_sd_n75988, D1=>u_sd_n61_adj_12454, 
                DI1=>u_sd_resp_tries_7_N_10055_3, 
                DI0=>u_sd_resp_tries_7_N_10055_2, A0=>u_sd_n61_adj_12458, 
                B0=>u_sd_n63, C0=>u_sd_n75965, D0=>resp_tries_2, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_resp_tries_7_N_10055_3, Q1=>resp_tries_3, OFX0=>open, 
                F0=>u_sd_resp_tries_7_N_10055_2, Q0=>resp_tries_2);
    u_sd_SLICE_169I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FEFC", 
                   LUT1_INITVAL=>X"FFF8", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n63, B1=>resp_tries_5, 
                C1=>u_sd_n77995, D1=>u_sd_n61_adj_12449, 
                DI1=>u_sd_resp_tries_7_N_10055_5, 
                DI0=>u_sd_resp_tries_7_N_10055_4, A0=>u_sd_n63, 
                B0=>u_sd_n76007, C0=>u_sd_n61_adj_12451, D0=>resp_tries_4, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_resp_tries_7_N_10055_5, Q1=>resp_tries_5, OFX0=>open, 
                F0=>u_sd_resp_tries_7_N_10055_4, Q0=>resp_tries_4);
    u_sd_SLICE_170I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFEC", 
                   LUT1_INITVAL=>X"FEFA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76076, B1=>resp_tries_7, 
                C1=>u_sd_n61, D1=>u_sd_n63, DI1=>u_sd_resp_tries_7_N_10055_7, 
                DI0=>u_sd_resp_tries_7_N_10055_6, A0=>resp_tries_6, 
                B0=>u_sd_n61_adj_12447, C0=>u_sd_n63, D0=>u_sd_n76045, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_resp_tries_7_N_10055_7, Q1=>resp_tries_7, OFX0=>open, 
                F0=>u_sd_resp_tries_7_N_10055_6, Q0=>resp_tries_6);
    u_sd_SLICE_172I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F888", 
                   LUT1_INITVAL=>X"FF70", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_st_1, 
                C1=>sd_err, D1=>u_sd_n72634, DI1=>'X', 
                DI0=>u_sd_sd_err_N_10339, A0=>u_sd_n17, B0=>st_0_adj_12558, 
                C0=>sd_err, D0=>u_sd_n72519, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_n17, Q1=>open, OFX0=>open, 
                F0=>u_sd_sd_err_N_10339, Q0=>sd_err);
    u_sd_SLICE_173I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"8000", 
                   LUT1_INITVAL=>X"FFDF", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>u_sd_n78014, C1=>st_3_adj_12556, D1=>u_sd_st_4, DI1=>'X', 
                DI0=>u_sd_cs_n_N_10136, A0=>u_sd_n76333, B0=>u_sd_cs_n_N_10197, 
                C0=>u_sd_n73615, D0=>u_sd_n74237, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_sd_n74237, Q1=>open, 
                OFX0=>open, F0=>u_sd_cs_n_N_10136, Q0=>sd_w_start_N_12177);
    u_cam_cfg_SLICE_174I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"3130", 
                   LUT1_INITVAL=>X"FAFA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>'X', C1=>st_3, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_sda_oe_N_375, 
                A0=>u_cam_cfg_sda_oe_N_381, B0=>u_cam_cfg_n76451, 
                C0=>u_cam_cfg_st_1, D0=>u_cam_cfg_n73983, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_27, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n76451, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_sda_oe_N_375, Q0=>sda_oe);
    SLICE_175I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FD20", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n74414, A0=>bit_cnt_0, B0=>bit_cnt_1, 
                C0=>M_D0_c, D0=>sh_rx_1, M0=>'X', CE=>u_sd_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>u_sd_n76493, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>n74414, Q0=>sh_rx_1);
    SLICE_176I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"AFA0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n74418, A0=>sh_rx_5, B0=>'X', 
                C0=>bit_cnt_1, D0=>M_D0_c, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_187, CLK=>SD_CLK_c, LSR=>u_sd_n76493, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n74418, 
                Q0=>sh_rx_5);
    SLICE_177I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"BB88", 
                   LUT1_INITVAL=>X"0010", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n73327, 
                B1=>u_ctrl_u_rx_n76498, C1=>u_ctrl_u_rx_n73707, 
                D1=>u_ctrl_u_rx_n74152, DI1=>'X', DI0=>n74413, A0=>rx_s2, 
                B0=>n28696, C0=>'X', D0=>shreg_7, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_155, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>n28696, Q1=>open, OFX0=>open, F0=>n74413, 
                Q0=>shreg_7);
    u_sd_SLICE_178I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"0001", LUT1_INITVAL=>X"8000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_sck_N_10287, 
                B1=>u_sd_n76425, C1=>u_sd_half_phase, D1=>u_sd_spi_busy, 
                DI1=>'X', DI0=>u_sd_n76425, A0=>u_sd_bit_cnt_3, B0=>bit_cnt_0, 
                C0=>u_sd_bit_cnt_2, D0=>bit_cnt_1, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_sd_n76322, OFX1=>open, 
                F1=>u_sd_SD_CLK_c_enable_177, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76425, Q0=>spi_done);
    u_cam_cfg_SLICE_179I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"5F0A", 
                   LUT1_INITVAL=>X"000F", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>u_cam_cfg_st_1, D1=>st_2, DI1=>'X', DI0=>u_cam_cfg_n75073, 
                A0=>u_cam_cfg_st_1, B0=>'X', C0=>st_0, D0=>u_cam_cfg_n75071, 
                M0=>st_3, CE=>u_cam_cfg_SD_CLK_c_enable_245, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_n75073, F0=>open, Q0=>st_0);
    u_cam_cfg_SLICE_180I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0232", 
                   LUT1_INITVAL=>X"A2A7", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>u_cam_cfg_n77999, 
                C1=>u_cam_cfg_st_1, D1=>u_cam_cfg_n76354, DI1=>'X', 
                DI0=>u_cam_cfg_n301, A0=>u_cam_cfg_n76508, B0=>st_3, C0=>st_2, 
                D0=>u_cam_cfg_n28, M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_247, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n28, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n301, Q0=>st_2);
    u_cam_cfg_SLICE_181I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"8280", 
                   LUT1_INITVAL=>X"0202", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>st_2, 
                C1=>u_cam_cfg_st_1, D1=>'X', DI1=>'X', DI0=>u_cam_cfg_n300, 
                A0=>st_0, B0=>st_2, C0=>u_cam_cfg_st_1, D0=>u_cam_cfg_n18, 
                M0=>st_3, CE=>u_cam_cfg_SD_CLK_c_enable_248, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_n300, 
                F0=>open, Q0=>st_3);
    u_sd_SLICE_182I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FFF4", LUT1_INITVAL=>X"F2F3", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3_adj_12556, B1=>u_sd_st_4, 
                C1=>u_sd_n78, D1=>st_0_adj_12558, DI1=>'X', DI0=>u_sd_n72555, 
                A0=>st_2_adj_12557, B0=>u_sd_n40_adj_12501, C0=>u_sd_n72854, 
                D0=>u_sd_n75272, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sd_st_5, OFX1=>open, F1=>u_sd_n40_adj_12501, Q1=>open, 
                OFX0=>open, F0=>u_sd_n72555, Q0=>st_0_adj_12558);
    u_sd_SLICE_183I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"B800", 
                   LUT1_INITVAL=>X"222F", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n84, B1=>u_sd_st_4, 
                C1=>u_sd_st_1, D1=>u_sd_n72040, DI1=>'X', DI0=>u_sd_n70637, 
                A0=>u_sd_n72569, B0=>u_sd_st_4, C0=>u_sd_n76350, D0=>n76457, 
                M0=>st_2_adj_12557, CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_st_5, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n70637, F0=>open, 
                Q0=>st_2_adj_12557);
    u_sd_SLICE_184I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"D0D0", 
                   LUT1_INITVAL=>X"0020", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, B1=>u_sd_st_1, 
                C1=>st_0_adj_12558, D1=>st_3_adj_12556, DI1=>'X', 
                DI0=>u_sd_n76798, A0=>u_sd_st_1, B0=>u_sd_n76795, 
                C0=>st_3_adj_12556, D0=>'X', M0=>u_sd_st_4, CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_sd_st_5, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n76798, F0=>open, Q0=>st_3_adj_12556);
    u_cam_cfg_SLICE_185I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"2000", 
                   LUT1_INITVAL=>X"AA00", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_divc_6, B1=>'X', 
                C1=>'X', D1=>u_cam_cfg_divc_1, DI1=>'X', 
                DI0=>u_cam_cfg_tick_N_393, A0=>u_cam_cfg_n74182, 
                B0=>u_cam_cfg_n74087, C0=>u_cam_cfg_n74262, 
                D0=>u_cam_cfg_n74184, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n74182, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_tick_N_393, Q0=>tick);
    u_cam_cfg_SLICE_186I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"5544", LUT1_INITVAL=>X"9988", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_bitn_1, 
                B1=>u_cam_cfg_bitn_0, C1=>'X', D1=>u_cam_cfg_bitn_2, 
                DI1=>u_cam_cfg_n71479, DI0=>u_cam_cfg_n172, 
                A0=>u_cam_cfg_bitn_0, B0=>u_cam_cfg_bitn_2, C0=>'X', 
                D0=>u_cam_cfg_bitn_1, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_251, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n63253, OFX1=>open, F1=>u_cam_cfg_n71479, 
                Q1=>u_cam_cfg_bitn_1, OFX0=>open, F0=>u_cam_cfg_n172, 
                Q0=>u_cam_cfg_bitn_0);
    u_cam_cfg_SLICE_187I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"F0A0", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_n71301, A0=>u_cam_cfg_bitn_1, 
                B0=>'X', C0=>u_cam_cfg_bitn_2, D0=>u_cam_cfg_bitn_0, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_251, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n63253, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n71301, Q0=>u_cam_cfg_bitn_2);
    u_cam_cfg_SLICE_188I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"E2E2", 
                   LUT1_INITVAL=>X"F3C0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>n309, 
                C1=>u_cam_cfg_u_rom_n28121, D1=>u_cam_cfg_u_rom_n28097, 
                DI1=>'X', DI0=>u_cam_cfg_rom_entry_8, 
                A0=>u_cam_cfg_u_rom_n28025, B0=>n309, 
                C0=>u_cam_cfg_u_rom_n28049, D0=>'X', M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_8, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_0);
    u_cam_cfg_SLICE_189I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FC30", 
                   LUT1_INITVAL=>X"EE22", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28096, 
                B1=>n309, C1=>'X', D1=>u_cam_cfg_u_rom_n28120, DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_9, A0=>'X', B0=>n309, 
                C0=>u_cam_cfg_u_rom_n28024, D0=>u_cam_cfg_u_rom_n28048, 
                M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_9, F0=>open, Q0=>u_cam_cfg_cur_reg_1);
    u_cam_cfg_SLICE_190I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"BB88", 
                   LUT1_INITVAL=>X"EE22", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28095, 
                B1=>n309, C1=>'X', D1=>u_cam_cfg_u_rom_n28119, DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_10, A0=>u_cam_cfg_u_rom_n28047, 
                B0=>n309, C0=>'X', D0=>u_cam_cfg_u_rom_n28023, M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_10, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_2);
    u_cam_cfg_SLICE_191I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CCAA", 
                   LUT1_INITVAL=>X"CCAA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28094, 
                B1=>u_cam_cfg_u_rom_n28118, C1=>'X', D1=>n309, DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_11, A0=>u_cam_cfg_u_rom_n28022, 
                B0=>u_cam_cfg_u_rom_n28046, C0=>'X', D0=>n309, M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_11, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_3);
    u_cam_cfg_SLICE_192I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F3C0", 
                   LUT1_INITVAL=>X"FC30", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>n309, 
                C1=>u_cam_cfg_u_rom_n28093, D1=>u_cam_cfg_u_rom_n28117, 
                DI1=>'X', DI0=>u_cam_cfg_rom_entry_12, A0=>'X', B0=>n309, 
                C0=>u_cam_cfg_u_rom_n28045, D0=>u_cam_cfg_u_rom_n28021, 
                M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_12, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_4);
    u_cam_cfg_SLICE_193I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"DD88", 
                   LUT1_INITVAL=>X"EE44", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28092, C1=>'X', 
                D1=>u_cam_cfg_u_rom_n28116, DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_13, A0=>n309, 
                B0=>u_cam_cfg_u_rom_n28044, C0=>'X', 
                D0=>u_cam_cfg_u_rom_n28020, M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_13, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_5);
    u_cam_cfg_SLICE_194I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"BB88", 
                   LUT1_INITVAL=>X"EE22", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28091, 
                B1=>n309, C1=>'X', D1=>u_cam_cfg_u_rom_n28115, DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_15, A0=>u_cam_cfg_u_rom_n28043, 
                B0=>n309, C0=>'X', D0=>u_cam_cfg_u_rom_n28019, M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_15, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_7);
    u_cam_cfg_SLICE_195I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"B8B8", 
                   LUT1_INITVAL=>X"B8B8", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28114, 
                B1=>n309, C1=>u_cam_cfg_u_rom_n28090, D1=>'X', DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_16, A0=>u_cam_cfg_u_rom_n28042, 
                B0=>n309, C0=>u_cam_cfg_u_rom_n28018, D0=>'X', M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_16, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_8);
    u_cam_cfg_SLICE_196I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"BB88", 
                   LUT1_INITVAL=>X"EE44", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28089, C1=>'X', 
                D1=>u_cam_cfg_u_rom_n28113, DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_17, A0=>u_cam_cfg_u_rom_n28041, 
                B0=>n309, C0=>'X', D0=>u_cam_cfg_u_rom_n28017, M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_17, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_9);
    u_cam_cfg_SLICE_197I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"E4E4", 
                   LUT1_INITVAL=>X"F5A0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, B1=>'X', 
                C1=>u_cam_cfg_u_rom_n28112, D1=>u_cam_cfg_u_rom_n28088, 
                DI1=>'X', DI0=>u_cam_cfg_rom_entry_18, A0=>n309, 
                B0=>u_cam_cfg_u_rom_n28016, C0=>u_cam_cfg_u_rom_n28040, 
                D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_244, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_18, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_10);
    u_cam_cfg_SLICE_198I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CCAA", 
                   LUT1_INITVAL=>X"F0AA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28087, 
                B1=>'X', C1=>u_cam_cfg_u_rom_n28111, D1=>n309, DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_19, A0=>u_cam_cfg_u_rom_n28015, 
                B0=>u_cam_cfg_u_rom_n28039, C0=>'X', D0=>n309, M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_19, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_11);
    u_cam_cfg_SLICE_199I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AFA0", 
                   LUT1_INITVAL=>X"F3C0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>n309, 
                C1=>u_cam_cfg_u_rom_n28110, D1=>u_cam_cfg_u_rom_n28086, 
                DI1=>'X', DI0=>u_cam_cfg_rom_entry_20, 
                A0=>u_cam_cfg_u_rom_n28038, B0=>'X', C0=>n309, 
                D0=>u_cam_cfg_u_rom_n28014, M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_20, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_12);
    u_cam_cfg_SLICE_200I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FA0A", 
                   LUT1_INITVAL=>X"FA0A", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28085, 
                B1=>'X', C1=>n309, D1=>u_cam_cfg_u_rom_n28109, DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_21, A0=>u_cam_cfg_u_rom_n28013, 
                B0=>'X', C0=>n309, D0=>u_cam_cfg_u_rom_n28037, M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_21, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_13);
    u_cam_cfg_SLICE_201I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FC0C", 
                   LUT1_INITVAL=>X"FA0A", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28083, 
                B1=>'X', C1=>n309, D1=>u_cam_cfg_u_rom_n28107, DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_22, A0=>'X', 
                B0=>u_cam_cfg_u_rom_n28011, C0=>n309, 
                D0=>u_cam_cfg_u_rom_n28035, M0=>n308, 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_rom_entry_22, 
                F0=>open, Q0=>u_cam_cfg_cur_reg_14);
    u_cam_cfg_SLICE_202I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F3C0", 
                   LUT1_INITVAL=>X"EE22", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28084, 
                B1=>n309, C1=>'X', D1=>u_cam_cfg_u_rom_n28108, DI1=>'X', 
                DI0=>u_cam_cfg_rom_entry_23, A0=>'X', B0=>n309, 
                C0=>u_cam_cfg_u_rom_n28036, D0=>u_cam_cfg_u_rom_n28012, 
                M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_23, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_15);
    u_cam_cfg_SLICE_203I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>n27875, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>n27876, CE=>u_cam_cfg_SD_CLK_c_enable_244, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_cam_cfg_cur_val_1, OFX0=>open, F0=>open, 
                Q0=>u_cam_cfg_cur_val_0);
    u_cam_cfg_SLICE_204I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>n27873, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>n27874, CE=>u_cam_cfg_SD_CLK_c_enable_244, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_cam_cfg_cur_val_3, OFX0=>open, F0=>open, 
                Q0=>u_cam_cfg_cur_val_2);
    u_cam_cfg_SLICE_205I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>n27871, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>n27872, CE=>u_cam_cfg_SD_CLK_c_enable_244, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_cam_cfg_cur_val_5, OFX0=>open, F0=>open, 
                Q0=>u_cam_cfg_cur_val_4);
    u_cam_cfg_SLICE_206I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>n27869, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>n27870, CE=>u_cam_cfg_SD_CLK_c_enable_244, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_cam_cfg_cur_val_7, OFX0=>open, F0=>open, 
                Q0=>u_cam_cfg_cur_val_6);
    u_cam_cfg_SLICE_207I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C030", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_n7, A0=>'X', 
                B0=>u_cam_cfg_phase_0, C0=>st_2, D0=>u_cam_cfg_st_1, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_4, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n7, 
                Q0=>u_cam_cfg_phase_0);
    u_cam_cfg_SLICE_208I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"30C0", 
                   LUT1_INITVAL=>X"0030", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_cam_cfg_phase_0, 
                C1=>st_2, D1=>u_cam_cfg_phase_1, DI1=>'X', 
                DI0=>u_cam_cfg_n61804, A0=>'X', B0=>u_cam_cfg_phase_0, 
                C0=>st_2, D0=>u_cam_cfg_phase_1, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_219, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n73983, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n61804, Q0=>u_cam_cfg_phase_1);
    u_cam_cfg_SLICE_209I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"AAF0", LUT1_INITVAL=>X"AACC", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_cur_val_1, 
                B1=>u_cam_cfg_n64226, C1=>'X', D1=>byte_idx_1, 
                DI1=>u_cam_cfg_n242, DI0=>u_cam_cfg_n243, 
                A0=>u_cam_cfg_cur_val_0, B0=>'X', C0=>u_cam_cfg_n64234, 
                D0=>byte_idx_1, M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_252, 
                CLK=>SD_CLK_c, LSR=>u_cam_cfg_n68901, OFX1=>open, 
                F1=>u_cam_cfg_n242, Q1=>u_cam_cfg_sh_1, OFX0=>open, 
                F0=>u_cam_cfg_n243, Q0=>u_cam_cfg_sh_0);
    u_cam_cfg_SLICE_210I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG1_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"AFA0", 
                   LUT1_INITVAL=>X"FC0C", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_cam_cfg_n64230, 
                C1=>byte_idx_1, D1=>u_cam_cfg_cur_val_3, DI1=>u_cam_cfg_n240, 
                DI0=>u_cam_cfg_n241, A0=>u_cam_cfg_cur_val_2, B0=>'X', 
                C0=>byte_idx_1, D0=>u_cam_cfg_n64232, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_252, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n68901, OFX1=>open, F1=>u_cam_cfg_n240, 
                Q1=>u_cam_cfg_sh_3, OFX0=>open, F0=>u_cam_cfg_n241, 
                Q0=>u_cam_cfg_sh_2);
    u_cam_cfg_SLICE_211I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FA0A", LUT1_INITVAL=>X"CFC0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_cam_cfg_cur_val_5, 
                C1=>byte_idx_1, D1=>u_cam_cfg_n8_adj_12530, 
                DI1=>u_cam_cfg_n71431, DI0=>u_cam_cfg_n71433, A0=>u_cam_cfg_n8, 
                B0=>'X', C0=>byte_idx_1, D0=>u_cam_cfg_cur_val_4, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_252, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n68901, OFX1=>open, F1=>u_cam_cfg_n71431, 
                Q1=>u_cam_cfg_sh_5, OFX0=>open, F0=>u_cam_cfg_n71433, 
                Q0=>u_cam_cfg_sh_4);
    u_cam_cfg_SLICE_212I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CFAF", 
                   LUT1_INITVAL=>X"0FCF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_cam_cfg_cur_val_6, 
                C1=>st_2, D1=>byte_idx_0, DI1=>'X', DI0=>u_cam_cfg_n76567, 
                A0=>u_cam_cfg_cur_reg_14, B0=>u_cam_cfg_cur_reg_15, C0=>st_2, 
                D0=>byte_idx_0, M0=>byte_idx_1, 
                CE=>u_cam_cfg_SD_CLK_c_enable_38, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_n76567, 
                F0=>open, Q0=>u_cam_cfg_sh_6);
    u_cam_cfg_SLICE_213I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"CCAA", LUT1_INITVAL=>X"ACAC", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_cur_reg_7, 
                B1=>u_cam_cfg_cur_reg_15, C1=>byte_idx_0, D1=>'X', DI1=>'X', 
                DI0=>u_cam_cfg_n236, A0=>u_cam_cfg_n64228, 
                B0=>u_cam_cfg_cur_val_7, C0=>'X', D0=>byte_idx_1, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_252, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n68901, OFX1=>open, F1=>u_cam_cfg_n64228, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n236, Q0=>u_cam_cfg_sh_7);
    u_cam_cfg_SLICE_214I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"1120", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_n302, A0=>st_0, B0=>st_3, 
                C0=>u_cam_cfg_n63118, D0=>u_cam_cfg_st_1, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_246, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n302, 
                Q0=>u_cam_cfg_st_1);
    u_ctrl_u_cmd_SLICE_215I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_6_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_6_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_seq_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_seq_0);
    u_ctrl_u_cmd_SLICE_216I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_6_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_6_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_seq_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_seq_2);
    u_ctrl_u_cmd_SLICE_217I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_6_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_6_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_seq_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_seq_4);
    u_ctrl_u_cmd_SLICE_218I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_6_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_6_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_seq_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_seq_6);
    u_ctrl_u_cmd_SLICE_219I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"C0C0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_cmd_n76510, A0=>'X', 
                B0=>u_ctrl_rx_valid, C0=>u_ctrl_u_cmd_n24364, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_ctrl_u_cmd_cmd_valid_N_820, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n76510, Q0=>u_ctrl_cmd_valid);
    u_ctrl_SLICE_220I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net_000_BUF1, A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>u_ctrl_SD_CLK_c_enable_249, 
                CLK=>SD_CLK_c, LSR=>u_ctrl_send_hb, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>VCC_net_000_BUF1, 
                Q0=>u_ctrl_hb_pending);
    u_ctrl_u_tx_SLICE_221I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"3B0A", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_tx_n52466, 
                A0=>u_ctrl_u_tx_n24588, B0=>u_ctrl_n76486, 
                C0=>u_ctrl_u_tx_n24574, D0=>u_ctrl_n24591, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_tx_n52466, Q0=>u_ctrl_n24591);
    u_ctrl_u_ack_SLICE_222I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"B0F0", 
                   LUT1_INITVAL=>X"F5F5", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, B1=>'X', 
                C1=>u_ctrl_tx_busy, D1=>'X', DI1=>'X', 
                DI0=>u_ctrl_u_ack_n58960, A0=>u_ctrl_u_ack_n74069, 
                B0=>u_ctrl_u_ack_idx_1, C0=>u_ctrl_pkt_busy, 
                D0=>u_ctrl_u_ack_idx_0, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_ack_SD_CLK_c_enable_238, OFX1=>open, 
                F1=>u_ctrl_u_ack_n74069, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n58960, Q0=>u_ctrl_pkt_busy);
    u_ctrl_u_regs_SLICE_223I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_seq_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_seq_0, CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_reg_ack_seq_1, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_reg_ack_seq_0);
    u_ctrl_u_regs_SLICE_224I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_seq_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_seq_2, CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_reg_ack_seq_3, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_reg_ack_seq_2);
    u_ctrl_u_regs_SLICE_225I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_seq_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_seq_4, CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_reg_ack_seq_5, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_reg_ack_seq_4);
    u_ctrl_u_regs_SLICE_226I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_seq_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_seq_6, CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_reg_ack_seq_7, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_reg_ack_seq_6);
    u_ctrl_SLICE_227I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EEAF", 
                   LUT1_INITVAL=>X"0010", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n76386, 
                B1=>u_ctrl_u_cmd_cmd_opcode_1, C1=>u_ctrl_u_cmd_n12, 
                D1=>u_ctrl_u_cmd_cmd_opcode_4, DI1=>u_ctrl_n72748, 
                DI0=>u_ctrl_n71640, A0=>u_ctrl_u_cmd_n71823, 
                B0=>u_ctrl_u_cmd_n72019, C0=>u_ctrl_u_cmd_n29, 
                D0=>u_ctrl_u_cmd_cmd_opcode_4, M0=>'X', CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_ctrl_n72748, 
                Q1=>u_ctrl_reg_ack_type_1, OFX0=>open, F0=>u_ctrl_n71640, 
                Q0=>u_ctrl_reg_ack_type_0);
    u_ctrl_SLICE_229I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FF40", 
                   LUT1_INITVAL=>X"1100", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_5, 
                B1=>u_ctrl_u_cmd_n76386, C1=>'X', D1=>u_ctrl_u_cmd_n74995, 
                DI1=>u_ctrl_n74996, DI0=>u_ctrl_n60615, 
                A0=>u_ctrl_u_cmd_n76355, B0=>u_ctrl_u_cmd_cmd_opcode_4, 
                C0=>u_ctrl_u_cmd_n98, D0=>u_ctrl_n64019, M0=>'X', 
                CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_n74996, Q1=>u_ctrl_reg_ack_value_1, OFX0=>open, 
                F0=>u_ctrl_n60615, Q0=>u_ctrl_reg_ack_value_0);
    u_ctrl_SLICE_230I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F8F8", 
                   LUT1_INITVAL=>X"0008", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_arg_3, 
                B1=>u_ctrl_u_cmd_n71660, C1=>u_ctrl_u_cmd_n76355, 
                D1=>u_ctrl_u_cmd_cmd_opcode_0, DI1=>u_ctrl_n60780, 
                DI0=>u_ctrl_n60614, A0=>u_ctrl_u_cmd_cmd_arg_2, 
                B0=>u_ctrl_u_cmd_n76330, C0=>u_ctrl_n64019, D0=>'X', M0=>'X', 
                CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_n60780, Q1=>u_ctrl_reg_ack_value_3, OFX0=>open, 
                F0=>u_ctrl_n60614, Q0=>u_ctrl_reg_ack_value_2);
    u_ctrl_SLICE_231I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0040", 
                   LUT1_INITVAL=>X"FF31", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n40_adj_12421, 
                B1=>u_ctrl_u_cmd_n44, C1=>u_ctrl_u_cmd_cmd_opcode_2, 
                D1=>u_ctrl_u_cmd_n71823, DI1=>u_ctrl_n71641, 
                DI0=>u_ctrl_n60781, A0=>u_ctrl_u_cmd_n76355, 
                B0=>u_ctrl_u_cmd_cmd_arg_4, C0=>u_ctrl_u_cmd_n71660, 
                D0=>u_ctrl_u_cmd_cmd_opcode_0, M0=>'X', CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_ctrl_n71641, 
                Q1=>u_ctrl_reg_ack_value_5, OFX0=>open, F0=>u_ctrl_n60781, 
                Q0=>u_ctrl_reg_ack_value_4);
    u_ctrl_SLICE_232I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECEF", 
                   LUT1_INITVAL=>X"FF51", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n44, 
                B1=>u_ctrl_u_cmd_n40, C1=>u_ctrl_u_cmd_cmd_opcode_2, 
                D1=>u_ctrl_u_cmd_n71823, DI1=>u_ctrl_n71642, 
                DI0=>u_ctrl_n71643, A0=>u_ctrl_u_cmd_n76517, 
                B0=>u_ctrl_u_cmd_n71823, C0=>u_ctrl_u_cmd_cmd_opcode_4, 
                D0=>u_ctrl_u_cmd_n29, M0=>'X', CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_ctrl_n71642, 
                Q1=>u_ctrl_reg_ack_value_7, OFX0=>open, F0=>u_ctrl_n71643, 
                Q0=>u_ctrl_reg_ack_value_6);
    u_ctrl_SLICE_233I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"FDEC", 
                   LUT1_INITVAL=>X"FEFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_7, 
                B1=>u_ctrl_u_cmd_cmd_opcode_3, C1=>u_ctrl_u_cmd_cmd_opcode_6, 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_n71639, 
                A0=>u_ctrl_u_cmd_cmd_opcode_1, B0=>u_ctrl_u_cmd_n71823, 
                C0=>u_ctrl_u_cmd_n74945, D0=>u_ctrl_u_cmd_n74946, M0=>'X', 
                CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, LSR=>u_ctrl_n63174, 
                OFX1=>open, F1=>u_ctrl_u_cmd_n71823, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n71639, Q0=>u_ctrl_reg_ack_value_28);
    u_ctrl_SLICE_234I: SLOGICB
      generic map (M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0004", 
                   LUT1_INITVAL=>X"3300", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_M1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_n71639, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_ctrl_u_cmd_cmd_opcode_1, C1=>'X', 
                D1=>u_ctrl_u_cmd_cmd_opcode_0, DI1=>'X', DI0=>u_ctrl_n64019, 
                A0=>u_ctrl_u_cmd_cmd_opcode_5, B0=>u_ctrl_u_cmd_n73735, 
                C0=>u_ctrl_u_cmd_cmd_opcode_4, D0=>u_ctrl_u_cmd_n76386, 
                M0=>'X', CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_n73735, 
                Q1=>u_ctrl_reg_ack_value_31, OFX0=>open, F0=>u_ctrl_n64019, 
                Q0=>u_ctrl_reg_ack_value_30);
    u_ctrl_u_rx_SLICE_235I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_rx_shreg_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_rx_shreg_0, 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_154, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_rx_data_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_rx_data_0);
    u_ctrl_u_rx_SLICE_236I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_rx_shreg_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_rx_shreg_2, 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_154, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_rx_data_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_rx_data_2);
    u_ctrl_u_rx_SLICE_237I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_rx_shreg_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_rx_shreg_4, 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_154, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_rx_data_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_rx_data_4);
    u_ctrl_u_rx_SLICE_238I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>shreg_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_ctrl_u_rx_shreg_6, 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_154, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_rx_data_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_rx_data_6);
    u_ctrl_u_rx_SLICE_239I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"AA00", LUT1_INITVAL=>X"0010", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n74232, 
                B1=>u_ctrl_u_rx_n76497, C1=>u_ctrl_u_rx_n73635, 
                D1=>u_ctrl_u_rx_n76496, DI1=>'X', DI0=>u_ctrl_u_rx_n52947, 
                A0=>u_ctrl_u_rx_valid_N_566, B0=>'X', C0=>'X', 
                D0=>u_ctrl_u_rx_n24226, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>rx_s2, OFX1=>open, F1=>u_ctrl_u_rx_valid_N_566, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_n52947, Q0=>u_ctrl_rx_valid);
    u_ctrl_SLICE_240I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"00AA", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_n76486, A0=>u_ctrl_tx_pkt_valid, 
                B0=>'X', C0=>'X', D0=>u_ctrl_tx_busy, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_ctrl_n24591, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_n76486, Q0=>u_ctrl_tx_busy);
    u_ctrl_u_ack_SLICE_241I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"00CC", 
                   LUT1_INITVAL=>X"F0AA", REG1_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_ack_idx_2, FXA=>u_ctrl_u_ack_n74385, 
                FXB=>u_ctrl_u_ack_n74386, A1=>u_ctrl_u_ack_pkt_6_0, B1=>'X', 
                C1=>u_ctrl_u_ack_pkt_7_0, D1=>u_ctrl_u_ack_idx_0, 
                DI1=>u_ctrl_u_ack_n74387, DI0=>'X', A0=>'X', 
                B0=>u_ctrl_u_ack_pkt_5_6, C0=>'X', D0=>u_ctrl_u_ack_idx_0, 
                M0=>u_ctrl_u_ack_idx_1, CE=>u_ctrl_u_ack_SD_CLK_c_enable_239, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>u_ctrl_u_ack_n74387, F1=>open, 
                Q1=>u_ctrl_tx_pkt_data_0, OFX0=>u_ctrl_u_ack_n74386, F0=>open, 
                Q0=>open);
    u_ctrl_u_ack_SLICE_242I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"F000", 
                   LUT1_INITVAL=>X"CCF0", REG1_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_ack_idx_2, FXA=>u_ctrl_u_ack_n74954, 
                FXB=>u_ctrl_u_ack_n74951, A1=>'X', B1=>u_ctrl_u_ack_pkt_7_1, 
                C1=>u_ctrl_u_ack_pkt_6_1, D1=>u_ctrl_u_ack_idx_0, 
                DI1=>u_ctrl_u_ack_n74955, DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_u_ack_pkt_5_1, D0=>u_ctrl_u_ack_idx_0, 
                M0=>u_ctrl_u_ack_idx_1, CE=>u_ctrl_u_ack_SD_CLK_c_enable_239, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>u_ctrl_u_ack_n74955, F1=>open, 
                Q1=>u_ctrl_tx_pkt_data_1, OFX0=>u_ctrl_u_ack_n74951, F0=>open, 
                Q0=>open);
    u_ctrl_u_ack_SLICE_243I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FC0C", 
                   LUT1_INITVAL=>X"44F5", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, 
                B1=>u_ctrl_u_ack_pkt_1_2, C1=>u_ctrl_u_ack_pkt_5_1, 
                D1=>u_ctrl_u_ack_idx_0, DI1=>'X', DI0=>u_ctrl_u_ack_n74971, 
                A0=>'X', B0=>u_ctrl_u_ack_n74970, C0=>u_ctrl_u_ack_idx_1, 
                D0=>u_ctrl_u_ack_n74969, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_239, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_n74970, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n74971, Q0=>u_ctrl_tx_pkt_data_2);
    u_ctrl_u_ack_SLICE_244I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F0AA", 
                   LUT1_INITVAL=>X"F3C0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_ctrl_u_ack_idx_2, 
                C1=>u_ctrl_u_ack_n74398, D1=>u_ctrl_u_ack_n3, DI1=>'X', 
                DI0=>u_ctrl_u_ack_n65, A0=>u_ctrl_u_ack_pkt_5_4, B0=>'X', 
                C0=>u_ctrl_u_ack_pkt_5_1, D0=>u_ctrl_u_ack_idx_0, 
                M0=>u_ctrl_u_ack_n74446, CE=>u_ctrl_u_ack_SD_CLK_c_enable_239, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_ack_n65, F0=>open, Q0=>u_ctrl_tx_pkt_data_3);
    u_ctrl_u_ack_SLICE_245I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AAF0", 
                   LUT1_INITVAL=>X"FC30", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_ctrl_u_ack_idx_2, 
                C1=>u_ctrl_u_ack_n72478, D1=>u_ctrl_u_ack_n74401, DI1=>'X', 
                DI0=>u_ctrl_u_ack_n64, A0=>u_ctrl_u_ack_pkt_5_4, B0=>'X', 
                C0=>u_ctrl_u_ack_pkt_5_1, D0=>u_ctrl_u_ack_idx_0, 
                M0=>u_ctrl_u_ack_n74446, CE=>u_ctrl_u_ack_SD_CLK_c_enable_239, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_ack_n64, F0=>open, Q0=>u_ctrl_tx_pkt_data_4);
    u_ctrl_u_ack_SLICE_246I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D585", 
                   LUT1_INITVAL=>X"A808", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, 
                B1=>u_ctrl_u_ack_pkt_5_1, C1=>u_ctrl_u_ack_idx_1, 
                D1=>u_ctrl_u_ack_pkt_7_5, DI1=>'X', DI0=>u_ctrl_u_ack_n76564, 
                A0=>u_ctrl_u_ack_idx_2, B0=>u_ctrl_u_ack_pkt_6_5, 
                C0=>u_ctrl_u_ack_idx_1, D0=>u_ctrl_u_ack_pkt_2_5, 
                M0=>u_ctrl_u_ack_idx_0, CE=>u_ctrl_u_ack_SD_CLK_c_enable_239, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_ack_n76564, F0=>open, Q0=>u_ctrl_tx_pkt_data_5);
    u_ctrl_u_ack_SLICE_247I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ACAC", 
                   LUT1_INITVAL=>X"FC30", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_ctrl_u_ack_idx_2, 
                C1=>u_ctrl_u_ack_n3_adj_12417, D1=>u_ctrl_u_ack_n74404, 
                DI1=>'X', DI0=>u_ctrl_u_ack_n62, A0=>u_ctrl_u_ack_pkt_5_6, 
                B0=>u_ctrl_u_ack_pkt_5_4, C0=>u_ctrl_u_ack_idx_0, D0=>'X', 
                M0=>u_ctrl_u_ack_n74446, CE=>u_ctrl_u_ack_SD_CLK_c_enable_239, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_ack_n62, F0=>open, Q0=>u_ctrl_tx_pkt_data_6);
    u_ctrl_u_ack_SLICE_248I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AFA0", 
                   LUT1_INITVAL=>X"AAF3", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_pkt_5_1, 
                B1=>u_ctrl_u_ack_idx_1, C1=>u_ctrl_u_ack_n2_adj_12418, 
                D1=>u_ctrl_u_ack_idx_2, DI1=>'X', DI0=>u_ctrl_u_ack_n61, 
                A0=>u_ctrl_u_ack_pkt_7_7, B0=>'X', C0=>u_ctrl_u_ack_idx_0, 
                D0=>u_ctrl_u_ack_pkt_6_7, M0=>u_ctrl_u_ack_n74447, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_239, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_ack_n61, 
                F0=>open, Q0=>u_ctrl_tx_pkt_data_7);
    u_ctrl_u_ack_SLICE_249I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"00F0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_ack_n76440, A0=>'X', B0=>'X', 
                C0=>u_ctrl_pkt_busy, D0=>u_ctrl_tx_busy, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_ctrl_u_ack_SD_CLK_c_enable_238, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n76440, Q0=>u_ctrl_tx_pkt_valid);
    u_ctrl_u_ack_SLICE_250I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"C53A", LUT1_INITVAL=>X"FAFA", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_hb_pending, B1=>'X', 
                C1=>u_ctrl_reg_ack_valid, D1=>'X', DI1=>'X', 
                DI0=>u_ctrl_u_ack_n8, A0=>u_ctrl_u_ack_n76495, 
                B0=>u_ctrl_tx_busy, C0=>u_ctrl_pkt_busy, 
                D0=>u_ctrl_u_ack_idx_0, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_ack_SD_CLK_c_enable_238, OFX1=>open, 
                F1=>u_ctrl_u_ack_n76495, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n8, Q0=>u_ctrl_u_ack_idx_0);
    u_ctrl_u_ack_SLICE_251I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"3C3C", LUT1_INITVAL=>X"6A6A", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, 
                B1=>u_ctrl_u_ack_idx_1, C1=>u_ctrl_u_ack_idx_0, D1=>'X', 
                DI1=>u_ctrl_u_ack_n72, DI0=>u_ctrl_u_ack_n73, A0=>'X', 
                B0=>u_ctrl_u_ack_idx_1, C0=>u_ctrl_u_ack_idx_0, D0=>'X', 
                M0=>'X', CE=>u_ctrl_u_ack_SD_CLK_c_enable_241, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_ack_SD_CLK_c_enable_238, OFX1=>open, 
                F1=>u_ctrl_u_ack_n72, Q1=>u_ctrl_u_ack_idx_2, OFX0=>open, 
                F0=>u_ctrl_u_ack_n73, Q0=>u_ctrl_u_ack_idx_1);
    u_ctrl_u_ack_SLICE_252I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_ctrl_reg_ack_type_0, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_send_hb, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_ack_pkt_1_0);
    u_ctrl_SLICE_253I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CC00", 
                   LUT1_INITVAL=>X"00FF", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>u_ctrl_reg_ack_valid, DI1=>u_ctrl_n76445, 
                DI0=>u_ctrl_merged_ack_type_1, A0=>'X', 
                B0=>u_ctrl_reg_ack_type_1, C0=>'X', D0=>u_ctrl_reg_ack_valid, 
                M0=>'X', CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_n76445, 
                Q1=>u_ctrl_u_ack_pkt_1_2, OFX0=>open, 
                F0=>u_ctrl_merged_ack_type_1, Q0=>u_ctrl_u_ack_pkt_1_1);
    u_ctrl_u_ack_SLICE_254I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_ctrl_reg_ack_value_0, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_send_hb, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_ack_pkt_2_0);
    u_ctrl_SLICE_255I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CC00", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_merged_ack_value_1, A0=>'X', 
                B0=>u_ctrl_reg_ack_value_1, C0=>'X', D0=>u_ctrl_reg_ack_valid, 
                M0=>'X', CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_merged_ack_value_1, Q0=>u_ctrl_u_ack_pkt_2_1);
    u_ctrl_u_ack_SLICE_256I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"SIG", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>u_ctrl_reg_ack_value_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_reg_ack_value_2, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_send_hb, OFX1=>open, F1=>open, 
                Q1=>u_ctrl_u_ack_pkt_2_3, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_ack_pkt_2_2);
    u_ctrl_SLICE_258I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CC00", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_merged_ack_value_5, A0=>'X', 
                B0=>u_ctrl_reg_ack_value_5, C0=>'X', D0=>u_ctrl_reg_ack_valid, 
                M0=>'X', CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_merged_ack_value_5, Q0=>u_ctrl_u_ack_pkt_2_5);
    u_ctrl_u_ack_SLICE_259I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"SIG", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>u_ctrl_reg_ack_value_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_reg_ack_value_6, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_send_hb, OFX1=>open, F1=>open, 
                Q1=>u_ctrl_u_ack_pkt_2_7, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_ack_pkt_2_6);
    u_ctrl_SLICE_260I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CC00", 
                   LUT1_INITVAL=>X"CC00", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_ctrl_reg_ack_value_28, C1=>'X', D1=>u_ctrl_reg_ack_valid, 
                DI1=>u_ctrl_merged_ack_value_28, 
                DI0=>u_ctrl_merged_ack_value_25, A0=>'X', 
                B0=>u_ctrl_reg_ack_value_31, C0=>'X', D0=>u_ctrl_reg_ack_valid, 
                M0=>'X', CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_merged_ack_value_28, 
                Q1=>u_ctrl_u_ack_pkt_5_4, OFX0=>open, 
                F0=>u_ctrl_merged_ack_value_25, Q0=>u_ctrl_u_ack_pkt_5_1);
    u_ctrl_SLICE_261I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CC00", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_merged_ack_value_30, A0=>'X', 
                B0=>u_ctrl_reg_ack_value_30, C0=>'X', D0=>u_ctrl_reg_ack_valid, 
                M0=>'X', CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_merged_ack_value_30, Q0=>u_ctrl_u_ack_pkt_5_6);
    u_ctrl_SLICE_262I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F0CC", 
                   LUT1_INITVAL=>X"AACC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_reg_ack_seq_1, 
                B1=>u_ctrl_hb_seq_1, C1=>'X', D1=>u_ctrl_reg_ack_valid, 
                DI1=>u_ctrl_merged_ack_seq_1, DI0=>u_ctrl_merged_ack_seq_0, 
                A0=>'X', B0=>u_ctrl_hb_seq_0, C0=>u_ctrl_reg_ack_seq_0, 
                D0=>u_ctrl_reg_ack_valid, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_merged_ack_seq_1, 
                Q1=>u_ctrl_u_ack_pkt_6_1, OFX0=>open, 
                F0=>u_ctrl_merged_ack_seq_0, Q0=>u_ctrl_u_ack_pkt_6_0);
    u_ctrl_SLICE_263I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CCAA", 
                   LUT1_INITVAL=>X"CCF0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_ctrl_reg_ack_seq_3, 
                C1=>u_ctrl_hb_seq_3, D1=>u_ctrl_reg_ack_valid, 
                DI1=>u_ctrl_merged_ack_seq_3, DI0=>u_ctrl_merged_ack_seq_2, 
                A0=>u_ctrl_hb_seq_2, B0=>u_ctrl_reg_ack_seq_2, C0=>'X', 
                D0=>u_ctrl_reg_ack_valid, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_merged_ack_seq_3, 
                Q1=>u_ctrl_u_ack_pkt_6_3, OFX0=>open, 
                F0=>u_ctrl_merged_ack_seq_2, Q0=>u_ctrl_u_ack_pkt_6_2);
    u_ctrl_SLICE_264I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CCAA", 
                   LUT1_INITVAL=>X"FC0C", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_ctrl_hb_seq_5, 
                C1=>u_ctrl_reg_ack_valid, D1=>u_ctrl_reg_ack_seq_5, 
                DI1=>u_ctrl_merged_ack_seq_5, DI0=>u_ctrl_merged_ack_seq_4, 
                A0=>u_ctrl_hb_seq_4, B0=>u_ctrl_reg_ack_seq_4, C0=>'X', 
                D0=>u_ctrl_reg_ack_valid, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_merged_ack_seq_5, 
                Q1=>u_ctrl_u_ack_pkt_6_5, OFX0=>open, 
                F0=>u_ctrl_merged_ack_seq_4, Q0=>u_ctrl_u_ack_pkt_6_4);
    u_ctrl_SLICE_265I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AACC", 
                   LUT1_INITVAL=>X"CCAA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_hb_seq_7, 
                B1=>u_ctrl_reg_ack_seq_7, C1=>'X', D1=>u_ctrl_reg_ack_valid, 
                DI1=>u_ctrl_merged_ack_seq_7, DI0=>u_ctrl_merged_ack_seq_6, 
                A0=>u_ctrl_reg_ack_seq_6, B0=>u_ctrl_hb_seq_6, C0=>'X', 
                D0=>u_ctrl_reg_ack_valid, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_merged_ack_seq_7, 
                Q1=>u_ctrl_u_ack_pkt_6_7, OFX0=>open, 
                F0=>u_ctrl_merged_ack_seq_6, Q0=>u_ctrl_u_ack_pkt_6_6);
    u_ctrl_u_ack_SLICE_266I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"96AA", 
                   LUT1_INITVAL=>X"6933", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_n61047, 
                B1=>u_ctrl_merged_ack_seq_1, C1=>u_ctrl_u_ack_n73965, 
                D1=>u_ctrl_reg_ack_valid, DI1=>u_ctrl_u_ack_chk_1, 
                DI0=>u_ctrl_u_ack_chk_0, A0=>u_ctrl_merged_ack_seq_0, 
                B0=>u_ctrl_u_ack_n61047, C0=>u_ctrl_u_ack_n74051, 
                D0=>u_ctrl_reg_ack_valid, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_chk_1, Q1=>u_ctrl_u_ack_pkt_7_1, 
                OFX0=>open, F0=>u_ctrl_u_ack_chk_0, Q0=>u_ctrl_u_ack_pkt_7_0);
    u_ctrl_u_ack_SLICE_267I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6F90", 
                   LUT1_INITVAL=>X"5CAC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_reg_ack_value_3, 
                B1=>u_ctrl_hb_seq_3, C1=>u_ctrl_reg_ack_valid, 
                D1=>u_ctrl_u_ack_n4, DI1=>u_ctrl_u_ack_chk_3, 
                DI0=>u_ctrl_u_ack_chk_2, A0=>u_ctrl_reg_ack_value_31, 
                B0=>u_ctrl_u_ack_n60056, C0=>u_ctrl_reg_ack_valid, 
                D0=>u_ctrl_merged_ack_seq_2, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_chk_3, Q1=>u_ctrl_u_ack_pkt_7_3, 
                OFX0=>open, F0=>u_ctrl_u_ack_chk_2, Q0=>u_ctrl_u_ack_pkt_7_2);
    u_ctrl_u_ack_SLICE_268I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"9A6A", 
                   LUT1_INITVAL=>X"6595", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_merged_ack_seq_5, 
                B1=>u_ctrl_reg_ack_value_31, C1=>u_ctrl_reg_ack_valid, 
                D1=>u_ctrl_reg_ack_value_5, DI1=>u_ctrl_u_ack_chk_5, 
                DI0=>u_ctrl_u_ack_chk_4, A0=>u_ctrl_merged_ack_seq_4, 
                B0=>u_ctrl_reg_ack_value_31, C0=>u_ctrl_reg_ack_valid, 
                D0=>u_ctrl_u_ack_n74103, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_chk_5, Q1=>u_ctrl_u_ack_pkt_7_5, 
                OFX0=>open, F0=>u_ctrl_u_ack_chk_4, Q0=>u_ctrl_u_ack_pkt_7_4);
    u_ctrl_u_ack_SLICE_269I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"5CAC", 
                   LUT1_INITVAL=>X"3ACA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_hb_seq_7, 
                B1=>u_ctrl_reg_ack_seq_7, C1=>u_ctrl_reg_ack_valid, 
                D1=>u_ctrl_reg_ack_value_7, DI1=>u_ctrl_u_ack_chk_7, 
                DI0=>u_ctrl_u_ack_chk_6, A0=>u_ctrl_reg_ack_value_6, 
                B0=>u_ctrl_hb_seq_6, C0=>u_ctrl_reg_ack_valid, 
                D0=>u_ctrl_u_ack_n4_adj_12419, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_chk_7, Q1=>u_ctrl_u_ack_pkt_7_7, 
                OFX0=>open, F0=>u_ctrl_u_ack_chk_6, Q0=>u_ctrl_u_ack_pkt_7_6);
    u_ctrl_u_cmd_SLICE_270I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_83, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_1_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_1_0);
    u_ctrl_u_cmd_SLICE_271I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_83, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_1_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_1_2);
    u_ctrl_u_cmd_SLICE_272I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_83, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_1_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_1_4);
    u_ctrl_u_cmd_SLICE_273I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_83, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_1_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_1_6);
    u_ctrl_u_cmd_SLICE_274I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_91, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_2_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_2_0);
    u_ctrl_u_cmd_SLICE_275I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_91, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_2_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_2_2);
    u_ctrl_u_cmd_SLICE_276I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_91, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_2_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_2_4);
    u_ctrl_u_cmd_SLICE_277I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_91, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_2_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_2_6);
    u_ctrl_u_cmd_SLICE_278I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_99, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_3_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_3_0);
    u_ctrl_u_cmd_SLICE_279I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_99, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_3_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_3_2);
    u_ctrl_u_cmd_SLICE_280I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_99, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_3_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_3_4);
    u_ctrl_u_cmd_SLICE_281I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_99, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_3_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_3_6);
    u_ctrl_u_cmd_SLICE_282I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_107, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_4_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_4_0);
    u_ctrl_u_cmd_SLICE_283I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_107, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_4_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_4_2);
    u_ctrl_u_cmd_SLICE_284I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_107, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_4_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_4_4);
    u_ctrl_u_cmd_SLICE_285I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_107, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_4_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_4_6);
    u_ctrl_u_cmd_SLICE_286I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_115, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_5_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_5_0);
    u_ctrl_u_cmd_SLICE_287I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_115, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_5_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_5_2);
    u_ctrl_u_cmd_SLICE_288I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_115, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_5_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_5_4);
    u_ctrl_u_cmd_SLICE_289I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_115, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_5_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_5_6);
    u_ctrl_u_cmd_SLICE_290I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_123, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_6_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_6_0);
    u_ctrl_u_cmd_SLICE_291I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_123, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_6_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_6_2);
    u_ctrl_u_cmd_SLICE_292I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_123, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_6_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_6_4);
    u_ctrl_u_cmd_SLICE_293I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_123, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_6_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_6_6);
    u_ctrl_u_cmd_SLICE_294I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_2_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_2_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_cmd_arg_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_cmd_arg_0);
    u_ctrl_u_cmd_SLICE_295I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_2_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_2_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_cmd_arg_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_cmd_arg_2);
    u_ctrl_u_cmd_SLICE_296I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_2_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_2_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_cmd_arg_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_cmd_arg_4);
    u_ctrl_u_cmd_SLICE_297I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_2_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_2_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_cmd_arg_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_cmd_arg_6);
    u_ctrl_u_cmd_SLICE_298I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_1_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_1_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_cmd_opcode_1, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_cmd_cmd_opcode_0);
    u_ctrl_u_cmd_SLICE_299I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_1_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_1_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_cmd_opcode_3, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_cmd_cmd_opcode_2);
    u_ctrl_u_cmd_SLICE_300I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_1_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_1_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_cmd_opcode_5, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_cmd_cmd_opcode_4);
    u_ctrl_u_cmd_SLICE_301I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_1_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_1_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_237, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_cmd_opcode_7, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_cmd_cmd_opcode_6);
    u_ctrl_u_cmd_SLICE_302I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_n24366, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_n24365, CE=>u_ctrl_rx_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_u_cmd_n24365, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_cmd_n24364);
    u_ctrl_u_cmd_SLICE_303I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_n24368, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_n24367, CE=>u_ctrl_rx_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_u_cmd_n24367, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_cmd_n24366);
    u_ctrl_u_cmd_SLICE_304I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_n24370, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_n24369, CE=>u_ctrl_rx_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_u_cmd_n24369, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_cmd_n24368);
    u_ctrl_u_cmd_SLICE_305I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0F00", 
                   LUT1_INITVAL=>X"FAF0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n15, B1=>'X', 
                C1=>u_ctrl_u_cmd_n24364, D1=>u_ctrl_u_cmd_n24371, 
                DI1=>u_ctrl_u_cmd_n52522, DI0=>u_ctrl_u_cmd_n24386, A0=>'X', 
                B0=>'X', C0=>u_ctrl_u_cmd_n15, D0=>u_ctrl_u_cmd_n24371, 
                M0=>'X', CE=>u_ctrl_rx_valid, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_n52522, Q1=>u_ctrl_u_cmd_n24371, 
                OFX0=>open, F0=>u_ctrl_u_cmd_n24386, Q0=>u_ctrl_u_cmd_n24370);
    u_ctrl_u_rx_SLICE_306I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"0F0F", LUT1_INITVAL=>X"6666", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_bit_idx_1, 
                B1=>u_ctrl_u_rx_bit_idx_0, C1=>'X', D1=>'X', 
                DI1=>u_ctrl_u_rx_n19, DI0=>u_ctrl_u_rx_n76483, A0=>'X', 
                B0=>'X', C0=>u_ctrl_u_rx_bit_idx_0, D0=>'X', M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_215, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63185, OFX1=>open, F1=>u_ctrl_u_rx_n19, 
                Q1=>u_ctrl_u_rx_bit_idx_1, OFX0=>open, F0=>u_ctrl_u_rx_n76483, 
                Q0=>u_ctrl_u_rx_bit_idx_0);
    u_ctrl_u_rx_SLICE_307I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"7788", LUT1_INITVAL=>X"8800", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_bit_idx_0, 
                B1=>u_ctrl_u_rx_bit_idx_2, C1=>'X', D1=>u_ctrl_u_rx_bit_idx_1, 
                DI1=>'X', DI0=>u_ctrl_u_rx_n18, A0=>u_ctrl_u_rx_bit_idx_0, 
                B0=>u_ctrl_u_rx_bit_idx_1, C0=>'X', D0=>u_ctrl_u_rx_bit_idx_2, 
                M0=>'X', CE=>u_ctrl_u_rx_SD_CLK_c_enable_215, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n63185, OFX1=>open, 
                F1=>u_ctrl_u_rx_SD_CLK_c_enable_155, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n18, Q0=>u_ctrl_u_rx_bit_idx_2);
    u_ctrl_u_rx_SLICE_308I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EA40", 
                   LUT1_INITVAL=>X"A0EC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n24220, 
                B1=>u_ctrl_u_rx_n76327, C1=>u_ctrl_u_rx_n24227, D1=>rx_s2, 
                DI1=>u_ctrl_u_rx_n52638, DI0=>u_ctrl_u_rx_n71401, 
                A0=>u_ctrl_u_rx_n31, B0=>u_ctrl_u_rx_SD_CLK_c_enable_155, 
                C0=>u_ctrl_u_rx_n24227, D0=>u_ctrl_u_rx_n24226, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n52638, Q1=>u_ctrl_u_rx_n24227, OFX0=>open, 
                F0=>u_ctrl_u_rx_n71401, Q0=>u_ctrl_u_rx_n24226);
    u_ctrl_u_rx_SLICE_309I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F444", 
                   LUT1_INITVAL=>X"EFEE", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n36110, 
                B1=>u_ctrl_u_rx_n52662, C1=>u_ctrl_u_rx_n76427, 
                D1=>u_ctrl_u_rx_n74009, DI1=>u_ctrl_u_rx_n72584, 
                DI0=>u_ctrl_u_rx_n52640, A0=>rx_s2, B0=>u_ctrl_u_rx_n24229, 
                C0=>u_ctrl_u_rx_n76346, D0=>u_ctrl_u_rx_n24228, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n72584, Q1=>u_ctrl_u_rx_n24229, OFX0=>open, 
                F0=>u_ctrl_u_rx_n52640, Q0=>u_ctrl_u_rx_n24228);
    u_ctrl_u_rx_SLICE_310I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_ctrl_u_rx_rx_s1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>RX_c, CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>rx_s2, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_rx_rx_s1);
    u_ctrl_u_rx_SLICE_311I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_231, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_0);
    u_ctrl_u_rx_SLICE_312I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_192, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_1);
    u_ctrl_u_rx_SLICE_313I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_193, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_2);
    u_ctrl_u_rx_SLICE_314I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_194, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_3);
    u_ctrl_u_rx_SLICE_315I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_195, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_4);
    u_ctrl_u_rx_SLICE_316I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_196, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_5);
    u_ctrl_u_rx_SLICE_317I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_197, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_6);
    u_ctrl_u_tx_SLICE_318I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"0F0F", LUT1_INITVAL=>X"55AA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_bit_idx_1, 
                B1=>'X', C1=>'X', D1=>u_ctrl_u_tx_bit_idx_0, 
                DI1=>u_ctrl_u_tx_n19, DI0=>u_ctrl_u_tx_n20, A0=>'X', B0=>'X', 
                C0=>u_ctrl_u_tx_bit_idx_0, D0=>'X', M0=>'X', 
                CE=>u_ctrl_u_tx_SD_CLK_c_enable_222, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n63183, OFX1=>open, F1=>u_ctrl_u_tx_n19, 
                Q1=>u_ctrl_u_tx_bit_idx_1, OFX0=>open, F0=>u_ctrl_u_tx_n20, 
                Q0=>u_ctrl_u_tx_bit_idx_0);
    u_ctrl_u_tx_SLICE_319I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"7878", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_tx_n18, 
                A0=>u_ctrl_u_tx_bit_idx_0, B0=>u_ctrl_u_tx_bit_idx_1, 
                C0=>u_ctrl_u_tx_bit_idx_2, D0=>'X', M0=>'X', 
                CE=>u_ctrl_u_tx_SD_CLK_c_enable_222, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n63183, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_tx_n18, Q0=>u_ctrl_u_tx_bit_idx_2);
    u_ctrl_u_tx_SLICE_320I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"FD0C", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_n66070, 
                B1=>u_ctrl_u_tx_n24590, C1=>u_ctrl_u_tx_n24574, 
                D1=>u_ctrl_u_tx_n24589, DI1=>u_ctrl_u_tx_n52460, 
                DI0=>u_ctrl_u_tx_n71397, A0=>u_ctrl_u_tx_n66070, 
                B0=>u_ctrl_u_tx_n24588, C0=>u_ctrl_u_tx_n24574, 
                D0=>u_ctrl_u_tx_n24589, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_tx_n52460, 
                Q1=>u_ctrl_u_tx_n24589, OFX0=>open, F0=>u_ctrl_u_tx_n71397, 
                Q0=>u_ctrl_u_tx_n24588);
    u_ctrl_u_tx_SLICE_321I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"F000", 
                   LUT1_INITVAL=>X"5F0A", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_n24589, B1=>'X', 
                C1=>u_ctrl_u_tx_n24574, D1=>u_ctrl_n24591, DI1=>'X', 
                DI0=>u_ctrl_u_tx_n52461, A0=>'X', B0=>'X', 
                C0=>u_ctrl_u_tx_n24574, D0=>u_ctrl_u_tx_n24590, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_ctrl_SD_CLK_c_enable_240, 
                OFX1=>open, F1=>u_ctrl_u_tx_SD_CLK_c_enable_222, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_tx_n52461, Q0=>u_ctrl_u_tx_n24590);
    u_ctrl_u_tx_SLICE_322I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_tx_pkt_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_tx_pkt_data_0, 
                CE=>u_ctrl_SD_CLK_c_enable_240, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_tx_shreg_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_tx_shreg_0);
    u_ctrl_u_tx_SLICE_323I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_tx_pkt_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_tx_pkt_data_2, 
                CE=>u_ctrl_SD_CLK_c_enable_240, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_tx_shreg_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_tx_shreg_2);
    u_ctrl_u_tx_SLICE_324I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_tx_pkt_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_tx_pkt_data_4, 
                CE=>u_ctrl_SD_CLK_c_enable_240, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_tx_shreg_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_tx_shreg_4);
    u_ctrl_u_tx_SLICE_325I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_tx_pkt_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_tx_pkt_data_6, 
                CE=>u_ctrl_SD_CLK_c_enable_240, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_tx_shreg_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_tx_shreg_6);
    u_dbg_status_SLICE_326I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"AA55", LUT1_INITVAL=>X"B4B4", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n31, 
                B1=>u_dbg_status_bit_idx_0, C1=>u_dbg_status_bit_idx_1, 
                D1=>'X', DI1=>u_dbg_status_n24, DI0=>u_dbg_status_n70163, 
                A0=>u_dbg_status_n31, B0=>'X', C0=>'X', 
                D0=>u_dbg_status_bit_idx_0, M0=>'X', 
                CE=>u_dbg_status_MCLK_c_enable_28, CLK=>MCLK_c, 
                LSR=>u_dbg_status_n64282, OFX1=>open, F1=>u_dbg_status_n24, 
                Q1=>u_dbg_status_bit_idx_1, OFX0=>open, 
                F0=>u_dbg_status_n70163, Q0=>u_dbg_status_bit_idx_0);
    u_dbg_status_SLICE_327I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"DF20", LUT1_INITVAL=>X"6AAA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_bit_idx_3, 
                B1=>u_dbg_status_bit_idx_2, C1=>u_dbg_status_bit_idx_1, 
                D1=>u_dbg_status_n76332, DI1=>u_dbg_status_n22, 
                DI0=>u_dbg_status_n23, A0=>u_dbg_status_bit_idx_1, 
                B0=>u_dbg_status_n31, C0=>u_dbg_status_bit_idx_0, 
                D0=>u_dbg_status_bit_idx_2, M0=>'X', 
                CE=>u_dbg_status_MCLK_c_enable_28, CLK=>MCLK_c, 
                LSR=>u_dbg_status_n64282, OFX1=>open, F1=>u_dbg_status_n22, 
                Q1=>u_dbg_status_bit_idx_3, OFX0=>open, F0=>u_dbg_status_n23, 
                Q0=>u_dbg_status_bit_idx_2);
    u_dbg_status_SLICE_328I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FACA", 
                   LUT1_INITVAL=>X"FFBF", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_bit_idx_2, 
                B1=>u_dbg_status_bit_idx_3, C1=>u_dbg_status_bit_idx_0, 
                D1=>u_dbg_status_bit_idx_1, DI1=>'X', DI0=>u_dbg_status_n63115, 
                A0=>u_dbg_status_start_req, B0=>u_dbg_status_n31, 
                C0=>u_dbg_status_busy, D0=>u_dbg_status_n60489, M0=>'X', 
                CE=>'X', CLK=>MCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n60489, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n63115, Q0=>u_dbg_status_busy);
    u_dbg_status_SLICE_330I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EFE0", 
                   LUT1_INITVAL=>X"FFFB", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n76452, 
                B1=>u_dbg_status_msg_idx_4, C1=>u_dbg_status_n76392, 
                D1=>u_dbg_status_msg_idx_3, DI1=>'X', DI0=>u_dbg_status_n63117, 
                A0=>u_dbg_status_n67, B0=>u_dbg_status_n73449, 
                C0=>u_dbg_status_sending, D0=>u_dbg_status_sec_tick, M0=>'X', 
                CE=>'X', CLK=>MCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n67, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n63117, Q0=>u_dbg_status_sending);
    u_dbg_status_SLICE_331I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG0_REGSET=>"SET", 
                   REG1_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"FB40", LUT1_INITVAL=>X"FB40", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n31, 
                B1=>u_dbg_status_busy, C1=>u_dbg_status_shreg_3, 
                D1=>u_dbg_status_start_data_1, DI1=>u_dbg_status_n34099, 
                DI0=>u_dbg_status_n34100, A0=>u_dbg_status_n31, 
                B0=>u_dbg_status_busy, C0=>u_dbg_status_shreg_2, 
                D0=>u_dbg_status_start_data_0, M0=>'X', 
                CE=>u_dbg_status_MCLK_c_enable_25, CLK=>MCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_dbg_status_n34099, Q1=>u_dbg_status_shreg_2, 
                OFX0=>open, F0=>u_dbg_status_n34100, Q0=>u_dbg_status_shreg_1);
    u_dbg_status_SLICE_332I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG0_REGSET=>"SET", 
                   REG1_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"F4B0", LUT1_INITVAL=>X"FB40", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n31, 
                B1=>u_dbg_status_busy, C1=>u_dbg_status_shreg_5, 
                D1=>u_dbg_status_start_data_3, DI1=>u_dbg_status_n34097, 
                DI0=>u_dbg_status_n34098, A0=>u_dbg_status_n31, 
                B0=>u_dbg_status_busy, C0=>u_dbg_status_start_data_2, 
                D0=>u_dbg_status_shreg_4, M0=>'X', 
                CE=>u_dbg_status_MCLK_c_enable_25, CLK=>MCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_dbg_status_n34097, Q1=>u_dbg_status_shreg_4, 
                OFX0=>open, F0=>u_dbg_status_n34098, Q0=>u_dbg_status_shreg_3);
    u_dbg_status_SLICE_333I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG0_REGSET=>"SET", 
                   REG1_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"FB40", LUT1_INITVAL=>X"F4B0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n31, 
                B1=>u_dbg_status_busy, C1=>u_dbg_status_start_data_5, 
                D1=>u_dbg_status_shreg_7, DI1=>u_dbg_status_n34095, 
                DI0=>u_dbg_status_n34096, A0=>u_dbg_status_n31, 
                B0=>u_dbg_status_busy, C0=>u_dbg_status_shreg_6, 
                D0=>u_dbg_status_start_data_4, M0=>'X', 
                CE=>u_dbg_status_MCLK_c_enable_25, CLK=>MCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_dbg_status_n34095, Q1=>u_dbg_status_shreg_6, 
                OFX0=>open, F0=>u_dbg_status_n34096, Q0=>u_dbg_status_shreg_5);
    u_dbg_status_SLICE_334I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG0_REGSET=>"SET", 
                   REG1_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"F4B0", LUT1_INITVAL=>X"4444", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n31, 
                B1=>u_dbg_status_busy, C1=>'X', D1=>'X', 
                DI1=>u_dbg_status_n76347, DI0=>u_dbg_status_n34094, 
                A0=>u_dbg_status_n31, B0=>u_dbg_status_busy, 
                C0=>u_dbg_status_start_data_6, D0=>u_dbg_status_shreg_8, 
                M0=>'X', CE=>u_dbg_status_MCLK_c_enable_25, CLK=>MCLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_dbg_status_n76347, 
                Q1=>u_dbg_status_shreg_8, OFX0=>open, F0=>u_dbg_status_n34094, 
                Q0=>u_dbg_status_shreg_7);
    u_dbg_status_SLICE_335I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"EEEF", 
                   LUT1_INITVAL=>X"5575", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n71538, 
                B1=>u_dbg_status_n76476, C1=>u_dbg_status_msg_idx_4, 
                D1=>u_dbg_status_n76391, DI1=>u_dbg_status_n71540, 
                DI0=>u_dbg_status_n72868, A0=>u_dbg_status_n107, 
                B0=>u_dbg_status_n73297, C0=>u_dbg_status_n76359, 
                D0=>u_dbg_status_n76365, M0=>'X', 
                CE=>u_dbg_status_start_req_N_12413, CLK=>MCLK_c, 
                LSR=>u_dbg_status_n76454, OFX1=>open, F1=>u_dbg_status_n71540, 
                Q1=>u_dbg_status_start_data_1, OFX0=>open, 
                F0=>u_dbg_status_n72868, Q0=>u_dbg_status_start_data_0);
    u_dbg_status_SLICE_336I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG1_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"DFFF", 
                   LUT1_INITVAL=>X"AFBF", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n24_adj_12533, 
                B1=>u_dbg_status_n76358, C1=>u_dbg_status_n74244, 
                D1=>u_dbg_status_n71978, DI1=>u_dbg_status_n72878, 
                DI0=>u_dbg_status_n72852, A0=>u_dbg_status_n66235, 
                B0=>u_dbg_status_n76545, C0=>u_dbg_status_n71879, 
                D0=>u_dbg_status_n71999, M0=>'X', 
                CE=>u_dbg_status_start_req_N_12413, CLK=>MCLK_c, 
                LSR=>u_dbg_status_n76454, OFX1=>open, F1=>u_dbg_status_n72878, 
                Q1=>u_dbg_status_start_data_3, OFX0=>open, 
                F0=>u_dbg_status_n72852, Q0=>u_dbg_status_start_data_2);
    u_dbg_status_SLICE_337I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"77FF", 
                   LUT1_INITVAL=>X"7FFF", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n73073, 
                B1=>u_dbg_status_n66563, C1=>u_dbg_status_n73075, 
                D1=>u_dbg_status_n76533, DI1=>u_dbg_status_n72735, 
                DI0=>u_dbg_status_n72463, A0=>u_dbg_status_n71694, 
                B0=>u_dbg_status_n66563, C0=>'X', D0=>u_dbg_status_n71681, 
                M0=>'X', CE=>u_dbg_status_start_req_N_12413, CLK=>MCLK_c, 
                LSR=>u_dbg_status_n76454, OFX1=>open, F1=>u_dbg_status_n72735, 
                Q1=>u_dbg_status_start_data_5, OFX0=>open, 
                F0=>u_dbg_status_n72463, Q0=>u_dbg_status_start_data_4);
    u_dbg_status_SLICE_338I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"7FFF", 
                   LUT1_INITVAL=>X"FFFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_4, 
                B1=>u_dbg_status_n76452, C1=>u_dbg_status_msg_idx_3, 
                D1=>u_dbg_status_n76392, DI1=>'X', DI0=>u_dbg_status_n72710, 
                A0=>u_dbg_status_n71538, B0=>u_dbg_status_n73201, 
                C0=>u_dbg_status_n59, D0=>u_dbg_status_n71681, M0=>'X', 
                CE=>u_dbg_status_start_req_N_12413, CLK=>MCLK_c, 
                LSR=>u_dbg_status_n76454, OFX1=>open, F1=>u_dbg_status_n59, 
                Q1=>open, OFX0=>open, F0=>u_dbg_status_n72710, 
                Q0=>u_dbg_status_start_data_6);
    u_dbg_status_SLICE_339I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"B380", 
                   LUT1_INITVAL=>X"3300", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_dbg_status_sending, 
                C1=>'X', D1=>u_dbg_status_sec_tick, DI1=>'X', 
                DI0=>u_dbg_status_start_req_N_12413, A0=>u_dbg_status_n67, 
                B0=>u_dbg_status_sending, C0=>u_dbg_status_busy_d, 
                D0=>u_dbg_status_sec_tick, M0=>u_dbg_status_busy, CE=>'X', 
                CLK=>MCLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_dbg_status_start_req_N_12413, F0=>open, 
                Q0=>u_dbg_status_start_req);
    u_raw_cap_SLICE_340I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>n99, CE=>u_raw_cap_PCLK_c_enable_18, CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_raw_cap_active_frame_id_p_0);
    u_raw_cap_SLICE_341I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0001", 
                   LUT1_INITVAL=>X"FFFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_raw_cap_stride_count_p_4, 
                B1=>u_raw_cap_stride_count_p_0, C1=>u_raw_cap_stride_count_p_5, 
                D1=>u_raw_cap_stride_count_p_3, DI1=>'X', 
                DI0=>u_raw_cap_capture_this_frame_p_N_2024, 
                A0=>u_raw_cap_n74083, B0=>u_raw_cap_stride_count_p_2, 
                C0=>u_raw_cap_stride_count_p_7, D0=>u_raw_cap_n74081, M0=>'X', 
                CE=>PCLK_c_enable_22, CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_raw_cap_n74083, Q1=>open, OFX0=>open, 
                F0=>u_raw_cap_capture_this_frame_p_N_2024, 
                Q0=>u_raw_cap_capture_this_frame_p);
    u_raw_cap_SLICE_342I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"00CC", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_raw_cap_frame_end, A0=>'X', 
                B0=>VSYNC_c, C0=>'X', D0=>vsync_d, M0=>'X', CE=>'X', 
                CLK=>PCLK_c, LSR=>u_raw_cap_capture_this_frame_p, OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_raw_cap_frame_end, 
                Q0=>u_raw_cap_raw_done_pending_p);
    u_raw_cap_SLICE_343I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_raw_cap_raw_done_s1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_raw_cap_raw_done_tog_p, 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_raw_cap_raw_done_s2, OFX0=>open, F0=>open, 
                Q0=>u_raw_cap_raw_done_s1);
    u_raw_cap_SLICE_344I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_raw_cap_raw_done_s2, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_raw_cap_raw_done_s3);
    u_raw_cap_SLICE_345I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"33CC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_raw_cap_raw_done_tog_p_N_2028, 
                A0=>'X', B0=>u_raw_cap_raw_done_pending_p, C0=>'X', 
                D0=>u_raw_cap_raw_done_tog_p, M0=>'X', CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_raw_cap_raw_done_tog_p_N_2028, 
                Q0=>u_raw_cap_raw_done_tog_p);
    u_sd_SLICE_346I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"CCC3", 
                   LUT1_INITVAL=>X"AAA9", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_bit_cnt_3, 
                B1=>u_sd_bit_cnt_2, C1=>bit_cnt_0, D1=>bit_cnt_1, 
                DI1=>u_sd_n74509, DI0=>u_sd_mosi_N_10327_2, A0=>'X', 
                B0=>u_sd_bit_cnt_2, C0=>bit_cnt_0, D0=>bit_cnt_1, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_242, CLK=>SD_CLK_c, LSR=>u_sd_n76493, 
                OFX1=>open, F1=>u_sd_n74509, Q1=>u_sd_bit_cnt_3, OFX0=>open, 
                F0=>u_sd_mosi_N_10327_2, Q0=>u_sd_bit_cnt_2);
    u_sd_SLICE_347I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FDFC", 
                   LUT1_INITVAL=>X"CCEC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n19, 
                B1=>u_sd_n23_adj_12487, C1=>st_3_adj_12556, D1=>u_sd_n78001, 
                DI1=>u_sd_cmd_frame_47_N_9996_3, 
                DI0=>u_sd_cmd_frame_47_N_9996_1, A0=>u_sd_n76422, 
                B0=>u_sd_n31_adj_12489, C0=>u_sd_n28_adj_12488, 
                D0=>u_sd_n24_adj_12470, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_cmd_frame_47_N_9996_3, 
                Q1=>u_sd_cmd_frame_3, OFX0=>open, 
                F0=>u_sd_cmd_frame_47_N_9996_1, Q0=>u_sd_cmd_frame_1);
    u_sd_SLICE_348I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"00F1", 
                   LUT1_INITVAL=>X"FFF8", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_5, 
                B1=>u_sd_n29_adj_12482, C1=>u_sd_n27_adj_12484, D1=>u_sd_n24, 
                DI1=>u_sd_cmd_frame_47_N_9996_5, 
                DI0=>u_sd_cmd_frame_47_N_9996_4, A0=>u_sd_n39, B0=>u_sd_n78001, 
                C0=>u_sd_cmd_frame_4, D0=>u_sd_n25_adj_12485, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_cmd_frame_47_N_9996_5, Q1=>u_sd_cmd_frame_5, 
                OFX0=>open, F0=>u_sd_cmd_frame_47_N_9996_4, 
                Q0=>u_sd_cmd_frame_4);
    u_sd_SLICE_349I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FEFA", 
                   LUT1_INITVAL=>X"FECC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76431, B1=>u_sd_n76314, 
                C1=>u_sd_n36, D1=>u_sd_cmd_frame_7, 
                DI1=>u_sd_cmd_frame_47_N_9996_7, 
                DI0=>u_sd_cmd_frame_47_N_9996_6, A0=>u_sd_n24, 
                B0=>u_sd_n29_adj_12482, C0=>u_sd_n27_adj_12481, 
                D0=>u_sd_cmd_frame_6, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_cmd_frame_47_N_9996_7, 
                Q1=>u_sd_cmd_frame_7, OFX0=>open, 
                F0=>u_sd_cmd_frame_47_N_9996_6, Q0=>u_sd_cmd_frame_6);
    u_sd_SLICE_350I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"C0C0", LUT1_INITVAL=>X"A0A0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_11, B1=>'X', 
                C1=>u_sd_n25_adj_12475, D1=>'X', DI1=>u_sd_n26_adj_12479, 
                DI0=>u_sd_n26_adj_12480, A0=>'X', B0=>u_sd_cmd_frame_9, 
                C0=>u_sd_n25_adj_12475, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_sd_n60665, OFX1=>open, 
                F1=>u_sd_n26_adj_12479, Q1=>u_sd_cmd_frame_11, OFX0=>open, 
                F0=>u_sd_n26_adj_12480, Q0=>u_sd_cmd_frame_9);
    u_sd_SLICE_351I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"F000", LUT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_15, B1=>'X', 
                C1=>'X', D1=>u_sd_n25_adj_12475, DI1=>u_sd_n26_adj_12477, 
                DI0=>u_sd_n26_adj_12478, A0=>'X', B0=>'X', 
                C0=>u_sd_cmd_frame_13, D0=>u_sd_n25_adj_12475, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_n60665, OFX1=>open, 
                F1=>u_sd_n26_adj_12477, Q1=>u_sd_cmd_frame_15, OFX0=>open, 
                F0=>u_sd_n26_adj_12478, Q0=>u_sd_cmd_frame_13);
    u_sd_SLICE_352I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"C0C0", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_n26_adj_12476, A0=>'X', 
                B0=>u_sd_cmd_frame_16, C0=>u_sd_n25_adj_12475, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_n60665, OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n26_adj_12476, 
                Q0=>u_sd_cmd_frame_16);
    u_sd_SLICE_353I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F0F2", 
                   LUT1_INITVAL=>X"F0F8", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n24_adj_12470, 
                B1=>u_sd_n76503, C1=>u_sd_n29_adj_12473, D1=>u_sd_n78001, 
                DI1=>u_sd_cmd_frame_47_N_9996_41, 
                DI0=>u_sd_cmd_frame_47_N_9996_38, A0=>u_sd_n73777, 
                B0=>u_sd_n76431, C0=>u_sd_n18, D0=>u_sd_st_1, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_cmd_frame_47_N_9996_41, Q1=>u_sd_cmd_frame_41, 
                OFX0=>open, F0=>u_sd_cmd_frame_47_N_9996_38, 
                Q0=>u_sd_cmd_frame_38);
    u_sd_SLICE_354I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0402", 
                   LUT1_INITVAL=>X"FFFC", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_n78014, 
                C1=>u_sd_n77482, D1=>u_sd_st_4, DI1=>'X', 
                DI0=>u_sd_cmd_frame_47_N_9996_40, A0=>st_3_adj_12556, 
                B0=>u_sd_st_1, C0=>u_sd_n76431, D0=>st_2_adj_12557, 
                M0=>u_sd_cmd_frame_40, CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_cmd_frame_47_N_9996_40, F0=>open, 
                Q0=>u_sd_cmd_frame_40);
    u_sd_SLICE_355I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CE0A", 
                   LUT1_INITVAL=>X"EEFC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n71596, 
                B1=>u_sd_n31_adj_12469, C1=>u_sd_n75722, D1=>u_sd_st_1, 
                DI1=>u_sd_cmd_frame_47_N_9996_44, 
                DI0=>u_sd_cmd_frame_47_N_9996_42, A0=>u_sd_n20_adj_12472, 
                B0=>u_sd_cmd_frame_42, C0=>st_3_adj_12556, D0=>u_sd_n73525, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_cmd_frame_47_N_9996_44, Q1=>u_sd_cmd_frame_44, 
                OFX0=>open, F0=>u_sd_cmd_frame_47_N_9996_42, 
                Q0=>u_sd_cmd_frame_42);
    u_sd_SLICE_356I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"8D8C", 
                   LUT1_INITVAL=>X"EEEF", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_43, 
                B1=>u_sd_n14_adj_12483, C1=>u_sd_n76431, D1=>st_2_adj_12557, 
                DI1=>'X', DI0=>u_sd_cmd_frame_47_N_9996_43, A0=>u_sd_n76431, 
                B0=>u_sd_cmd_frame_43, C0=>u_sd_st_1, D0=>st_2_adj_12557, 
                M0=>st_3_adj_12556, CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_cmd_frame_47_N_9996_43, F0=>open, 
                Q0=>u_sd_cmd_frame_43);
    u_sd_SLICE_357I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EEEA", 
                   LUT1_INITVAL=>X"BCBC", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>st_0_adj_12558, 
                C1=>st_3_adj_12556, D1=>'X', DI1=>'X', 
                DI0=>u_sd_cmd_frame_47_N_9996_45, A0=>u_sd_n24, 
                B0=>u_sd_cmd_frame_45, C0=>u_sd_n38_adj_12466, D0=>u_sd_n71720, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_n38_adj_12466, Q1=>open, OFX0=>open, 
                F0=>u_sd_cmd_frame_47_N_9996_45, Q0=>u_sd_cmd_frame_45);
    u_sd_SLICE_358I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FCCC", 
                   LUT1_INITVAL=>X"EECC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_2, B1=>u_sd_n50, 
                C1=>'X', D1=>u_sd_n34, DI1=>u_sd_cmd_i_2_N_10044_2, 
                DI0=>u_sd_cmd_i_2_N_10044_0, A0=>'X', B0=>u_sd_n11_adj_12509, 
                C0=>u_sd_cmd_i_0, D0=>u_sd_n34, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_cmd_i_2_N_10044_2, Q1=>u_sd_cmd_i_2, OFX0=>open, 
                F0=>u_sd_cmd_i_2_N_10044_0, Q0=>u_sd_cmd_i_0);
    u_sd_SLICE_359I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"F848", 
                   LUT1_INITVAL=>X"C0C0", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>st_0_adj_12558, FXA=>u_sd_n75915, FXB=>u_sd_n75911, 
                A1=>'X', B1=>u_sd_cmd_i_1, C1=>u_sd_n34, D1=>'X', 
                DI1=>u_sd_cmd_i_2_N_10044_1, DI0=>'X', A0=>u_sd_n76348, 
                B0=>u_sd_n76428, C0=>u_sd_cmd_i_1, D0=>u_sd_n34, 
                M0=>u_sd_n78001, CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>u_sd_cmd_i_2_N_10044_1, F1=>open, Q1=>u_sd_cmd_i_1, 
                OFX0=>u_sd_n75911, F0=>open, Q0=>open);
    u_sd_SLICE_360I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EF00", 
                   LUT1_INITVAL=>X"FFAA", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>'X', C1=>'X', 
                D1=>u_sd_n78014, DI1=>'X', DI0=>u_sd_speed_fast_N_10379, 
                A0=>u_sd_n76456, B0=>u_sd_n78001, C0=>n76455, 
                D0=>u_sd_div_val_2, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_n78001, Q1=>open, OFX0=>open, 
                F0=>u_sd_speed_fast_N_10379, Q0=>u_sd_div_val_2);
    u_sd_SLICE_361I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"55AA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_half_phase_N_10318, 
                A0=>u_sd_sck_N_10287, B0=>'X', C0=>'X', D0=>u_sd_half_phase, 
                M0=>'X', CE=>u_sd_SD_CLK_c_enable_234, CLK=>SD_CLK_c, 
                LSR=>u_sd_n76493, OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_half_phase_N_10318, Q0=>u_sd_half_phase);
    u_sd_SLICE_362I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FB00", 
                   LUT1_INITVAL=>X"FFCC", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>spi_done, C1=>'X', 
                D1=>u_sd_n72199, DI1=>'X', DI0=>u_sd_st_5_N_9990_5, 
                A0=>u_sd_n10_adj_12490, B0=>u_sd_n71814, C0=>u_sd_n72919, 
                D0=>u_sd_n78014, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_n71814, Q1=>open, OFX0=>open, 
                F0=>u_sd_st_5_N_9990_5, Q0=>u_sd_n78014);
    u_sd_SLICE_363I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"AAB8", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_n74421, A0=>u_sd_sh_rx_0, 
                B0=>bit_cnt_0, C0=>M_D0_c, D0=>bit_cnt_1, M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_243, CLK=>SD_CLK_c, LSR=>u_sd_n76493, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n74421, 
                Q0=>u_sd_sh_rx_0);
    u_sd_SLICE_364I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"BF80", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_n74415, A0=>M_D0_c, 
                B0=>u_sd_SD_CLK_c_enable_243, C0=>bit_cnt_1, D0=>u_sd_sh_rx_2, 
                M0=>'X', CE=>bit_cnt_0, CLK=>SD_CLK_c, LSR=>u_sd_n76493, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n74415, 
                Q0=>u_sd_sh_rx_2);
    u_sd_SLICE_365I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"BF80", LUT1_INITVAL=>X"5050", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_bit_cnt_2, B1=>'X', 
                C1=>u_sd_n6, D1=>'X', DI1=>'X', DI0=>u_sd_n74416, A0=>M_D0_c, 
                B0=>u_sd_SD_CLK_c_enable_243, C0=>bit_cnt_1, D0=>u_sd_sh_rx_3, 
                M0=>'X', CE=>bit_cnt_0, CLK=>SD_CLK_c, LSR=>u_sd_n76493, 
                OFX1=>open, F1=>u_sd_SD_CLK_c_enable_243, Q1=>open, OFX0=>open, 
                F0=>u_sd_n74416, Q0=>u_sd_sh_rx_3);
    u_sd_SLICE_366I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"F0E4", LUT1_INITVAL=>X"E4F0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>bit_cnt_0, B1=>M_D0_c, 
                C1=>u_sd_sh_rx_6, D1=>bit_cnt_1, DI1=>u_sd_n74419, 
                DI0=>u_sd_n74417, A0=>bit_cnt_0, B0=>M_D0_c, C0=>u_sd_sh_rx_4, 
                D0=>bit_cnt_1, M0=>'X', CE=>u_sd_SD_CLK_c_enable_188, 
                CLK=>SD_CLK_c, LSR=>u_sd_n76493, OFX1=>open, F1=>u_sd_n74419, 
                Q1=>u_sd_sh_rx_6, OFX0=>open, F0=>u_sd_n74417, 
                Q0=>u_sd_sh_rx_4);
    u_sd_SLICE_367I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"E2AA", LUT1_INITVAL=>X"A0A0", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_bit_cnt_2, B1=>'X', 
                C1=>u_sd_n6, D1=>'X', DI1=>'X', DI0=>u_sd_n74420, 
                A0=>u_sd_sh_rx_7, B0=>u_sd_SD_CLK_c_enable_188, C0=>M_D0_c, 
                D0=>bit_cnt_0, M0=>'X', CE=>bit_cnt_1, CLK=>SD_CLK_c, 
                LSR=>u_sd_n76493, OFX1=>open, F1=>u_sd_SD_CLK_c_enable_188, 
                Q1=>open, OFX0=>open, F0=>u_sd_n74420, Q0=>u_sd_sh_rx_7);
    u_sd_SLICE_368I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CCF0", 
                   LUT1_INITVAL=>X"DFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_sck_N_10287, 
                B1=>u_sd_bit_cnt_3, C1=>u_sd_n76477, D1=>u_sd_half_phase, 
                DI1=>'X', DI0=>u_sd_n61762, A0=>'X', B0=>u_sd_n76344, 
                C0=>u_sd_spi_start, D0=>u_sd_spi_busy, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_sd_n76344, Q1=>open, 
                OFX0=>open, F0=>u_sd_n61762, Q0=>u_sd_spi_busy);
    u_sd_SLICE_369I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>sh_rx_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sd_sh_rx_0, CE=>u_sd_SD_CLK_c_enable_177, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sd_spi_rx_1, OFX0=>open, F0=>open, Q0=>u_sd_spi_rx_0);
    u_sd_SLICE_370I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_sd_sh_rx_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_sd_sh_rx_2, 
                CE=>u_sd_SD_CLK_c_enable_177, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_sd_spi_rx_3, OFX0=>open, F0=>open, 
                Q0=>u_sd_spi_rx_2);
    u_sd_SLICE_371I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>sh_rx_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sd_sh_rx_4, CE=>u_sd_SD_CLK_c_enable_177, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sd_spi_rx_5, OFX0=>open, F0=>open, Q0=>u_sd_spi_rx_4);
    u_sd_SLICE_372I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_sd_sh_rx_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_sd_sh_rx_6, 
                CE=>u_sd_SD_CLK_c_enable_177, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_sd_spi_rx_7, OFX0=>open, F0=>open, 
                Q0=>u_sd_spi_rx_6);
    u_sd_SLICE_373I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"BABA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_n70951, A0=>u_sd_n72828, 
                B0=>u_sd_st_4, C0=>u_sd_n31_adj_12510, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_st_5, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_sd_n70951, Q0=>u_sd_spi_start);
    u_sd_SLICE_374I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"88F8", 
                   LUT1_INITVAL=>X"88F8", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n77, B1=>u_sd_spi_tx_1, 
                C1=>u_sd_n76964, D1=>u_sd_n78014, DI1=>u_sd_spi_tx_7_N_9962_1, 
                DI0=>u_sd_spi_tx_7_N_9962_0, A0=>u_sd_n77, B0=>u_sd_spi_tx_0, 
                C0=>u_sd_n80_adj_12492, D0=>u_sd_n78014, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_spi_tx_7_N_9962_1, Q1=>u_sd_spi_tx_1, OFX0=>open, 
                F0=>u_sd_spi_tx_7_N_9962_0, Q0=>u_sd_spi_tx_0);
    u_sd_SLICE_375I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"BA30", 
                   LUT1_INITVAL=>X"B3A0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_3, 
                B1=>u_sd_n78014, C1=>u_sd_n77, D1=>u_sd_n77031, 
                DI1=>u_sd_spi_tx_7_N_9962_3, DI0=>u_sd_spi_tx_7_N_9962_2, 
                A0=>u_sd_spi_tx_2, B0=>u_sd_n78014, C0=>u_sd_n76864, 
                D0=>u_sd_n77, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_spi_tx_7_N_9962_3, Q1=>u_sd_spi_tx_3, 
                OFX0=>open, F0=>u_sd_spi_tx_7_N_9962_2, Q0=>u_sd_spi_tx_2);
    u_sd_SLICE_376I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"BA30", 
                   LUT1_INITVAL=>X"BA30", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_5, 
                B1=>u_sd_n78014, C1=>u_sd_n76929, D1=>u_sd_n77, 
                DI1=>u_sd_spi_tx_7_N_9962_5, DI0=>u_sd_spi_tx_7_N_9962_4, 
                A0=>u_sd_spi_tx_4, B0=>u_sd_n78014, C0=>u_sd_n76998, 
                D0=>u_sd_n77, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_spi_tx_7_N_9962_5, Q1=>u_sd_spi_tx_5, 
                OFX0=>open, F0=>u_sd_spi_tx_7_N_9962_4, Q0=>u_sd_spi_tx_4);
    u_sd_SLICE_377I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D5C0", 
                   LUT1_INITVAL=>X"D5C0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n78014, B1=>u_sd_n77, 
                C1=>u_sd_spi_tx_7, D1=>u_sd_n77006, 
                DI1=>u_sd_spi_tx_7_N_9962_7, DI0=>u_sd_spi_tx_7_N_9962_6, 
                A0=>u_sd_n78014, B0=>u_sd_n77, C0=>u_sd_spi_tx_6, D0=>u_sd_n80, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_spi_tx_7_N_9962_7, Q1=>u_sd_spi_tx_7, OFX0=>open, 
                F0=>u_sd_spi_tx_7_N_9962_6, Q0=>u_sd_spi_tx_6);
    u_sd_SLICE_378I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"44F4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_n70673, A0=>st_3_adj_12556, 
                B0=>u_sd_n75288, C0=>u_sd_n76520, D0=>u_sd_st_4, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_st_5, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_sd_n70673, Q0=>u_sd_st_1);
    u_sd_SLICE_379I: SLOGICB
      generic map (M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFE0", 
                   LUT1_INITVAL=>X"3310", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_M1=>TRUE)
      port map (M1=>u_sd_st_5_N_9990_5, FXA=>'X', FXB=>'X', A1=>n78000, 
                B1=>u_sd_n76352, C1=>u_sd_n74277, D1=>u_sd_n76542, DI1=>'X', 
                DI0=>u_sd_st_5_N_9990_4, A0=>u_sd_n10_adj_12490, 
                B0=>u_sd_n72949, C0=>u_sd_st_4, D0=>u_sd_n72963, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_n10_adj_12490, Q1=>u_sd_st_5, OFX0=>open, 
                F0=>u_sd_st_5_N_9990_4, Q0=>u_sd_st_4);
    u_sdram_SLICE_381I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"F0E0", 
                   LUT1_INITVAL=>X"FFCC", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sdram_wait_cnt_1, 
                C1=>'X', D1=>u_sdram_wait_cnt_0, DI1=>'X', DI0=>u_sdram_n76379, 
                A0=>u_sdram_n76491, B0=>u_sdram_wait_cnt_3, C0=>u_sdram_n19231, 
                D0=>u_sdram_wait_cnt_2, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_SD_A_12_N_2268_9, OFX1=>open, F1=>u_sdram_n76491, 
                Q1=>open, OFX0=>open, F0=>u_sdram_n76379, Q0=>u_sdram_n19231);
    u_sdram_SLICE_382I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sdram_st_2, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n76424, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_sdram_n19233);
    u_sdram_SLICE_383I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net_001_BUF1, A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>u_sdram_refresh_req_N_2484, 
                CLK=>SD_CLK_c, LSR=>u_sdram_n58488, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>VCC_net_001_BUF1, 
                Q0=>u_sdram_refresh_req);
    u_sdram_SLICE_384I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EEFA", 
                   LUT1_INITVAL=>X"00F0", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>u_sdram_n19233, D1=>u_sdram_refresh_req, DI1=>'X', 
                DI0=>u_sdram_n71415, A0=>u_sdram_n4, B0=>u_sdram_st_2, 
                C0=>u_sdram_n19231, D0=>u_sdram_n76424, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_sdram_n4, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n71415, Q0=>u_sdram_st_2);
    u_sdram_SLICE_385I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"3F0C", 
                   LUT1_INITVAL=>X"9F90", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_wait_cnt_1, 
                B1=>u_sdram_wait_cnt_0, C1=>u_sdram_n36332, 
                D1=>u_sdram_SD_A_12_N_2268_9, DI1=>u_sdram_n30, 
                DI0=>u_sdram_n31, A0=>'X', B0=>u_sdram_n36332, 
                C0=>u_sdram_wait_cnt_0, D0=>u_sdram_SD_A_12_N_2268_9, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_198, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sdram_n30, Q1=>u_sdram_wait_cnt_1, 
                OFX0=>open, F0=>u_sdram_n31, Q0=>u_sdram_wait_cnt_0);
    u_sdram_SLICE_386I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0D07", 
                   LUT1_INITVAL=>X"F0C3", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sdram_wait_cnt_1, 
                C1=>u_sdram_wait_cnt_2, D1=>u_sdram_wait_cnt_0, DI1=>'X', 
                DI0=>u_sdram_n76293, A0=>u_sdram_n76379, B0=>u_sdram_n76491, 
                C0=>u_sdram_SD_A_12_N_2268_9, D0=>u_sdram_wait_cnt_2, 
                M0=>u_sdram_st_2, CE=>u_sdram_SD_CLK_c_enable_198, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sdram_n76293, F0=>open, Q0=>u_sdram_wait_cnt_2);
    u_sdram_SLICE_387I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0077", 
                   LUT1_INITVAL=>X"AAA9", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_wait_cnt_3, 
                B1=>u_sdram_wait_cnt_1, C1=>u_sdram_wait_cnt_2, 
                D1=>u_sdram_wait_cnt_0, DI1=>'X', DI0=>u_sdram_n76000, 
                A0=>u_sdram_n76424, B0=>u_sdram_n19231, C0=>'X', 
                D0=>u_sdram_SD_A_12_N_2268_9, M0=>u_sdram_n36332, 
                CE=>u_sdram_SD_CLK_c_enable_198, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n76000, F0=>open, 
                Q0=>u_sdram_wait_cnt_3);
    u_sd_SLICE_389I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"88F8", 
                   LUT1_INITVAL=>X"C0EA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n28_adj_12441, 
                B1=>wr_count_1, C1=>u_sd_n31, D1=>u_sd_n78014, 
                DI1=>u_sd_wr_count_9_N_10119_1, DI0=>u_sd_wr_count_9_N_10119_0, 
                A0=>u_sd_n31, B0=>wr_count_0, C0=>u_sd_n76313, D0=>u_sd_n78014, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_wr_count_9_N_10119_1, Q1=>wr_count_1, OFX0=>open, 
                F0=>u_sd_wr_count_9_N_10119_0, Q0=>wr_count_0);
    u_sd_SLICE_390I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"88F8", 
                   LUT1_INITVAL=>X"88F8", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n31, B1=>wr_count_3, 
                C1=>u_sd_n28_adj_12436, D1=>u_sd_n78014, 
                DI1=>u_sd_wr_count_9_N_10119_3, DI0=>u_sd_wr_count_9_N_10119_2, 
                A0=>wr_count_2, B0=>u_sd_n31, C0=>u_sd_n28_adj_12438, 
                D0=>u_sd_n78014, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_wr_count_9_N_10119_3, Q1=>wr_count_3, 
                OFX0=>open, F0=>u_sd_wr_count_9_N_10119_2, Q0=>wr_count_2);
    u_sd_SLICE_391I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AE0C", 
                   LUT1_INITVAL=>X"8F88", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wr_count_5, B1=>u_sd_n31, 
                C1=>u_sd_n78014, D1=>u_sd_n28_adj_12432, 
                DI1=>u_sd_wr_count_9_N_10119_5, DI0=>u_sd_wr_count_9_N_10119_4, 
                A0=>wr_count_4, B0=>u_sd_n28_adj_12435, C0=>u_sd_n78014, 
                D0=>u_sd_n31, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_wr_count_9_N_10119_5, Q1=>wr_count_5, 
                OFX0=>open, F0=>u_sd_wr_count_9_N_10119_4, Q0=>wr_count_4);
    u_sd_SLICE_392I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AE0C", 
                   LUT1_INITVAL=>X"AE0C", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wr_count_7, 
                B1=>u_sd_n28_adj_12424, C1=>u_sd_n78014, D1=>u_sd_n31, 
                DI1=>u_sd_wr_count_9_N_10119_7, DI0=>u_sd_wr_count_9_N_10119_6, 
                A0=>wr_count_6, B0=>u_sd_n28_adj_12431, C0=>u_sd_n78014, 
                D0=>u_sd_n31, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_wr_count_9_N_10119_7, Q1=>wr_count_7, 
                OFX0=>open, F0=>u_sd_wr_count_9_N_10119_6, Q0=>wr_count_6);
    u_sd_SLICE_393I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"A0EC", 
                   LUT1_INITVAL=>X"88F8", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wr_count_9, B1=>u_sd_n31, 
                C1=>u_sd_n28, D1=>u_sd_n78014, DI1=>u_sd_wr_count_9_N_10119_9, 
                DI0=>u_sd_wr_count_9_N_10119_8, A0=>u_sd_n31, 
                B0=>u_sd_n28_adj_12425, C0=>wr_count_8, D0=>u_sd_n78014, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_wr_count_9_N_10119_9, Q1=>wr_count_9, OFX0=>open, 
                F0=>u_sd_wr_count_9_N_10119_8, Q0=>wr_count_8);
    u_dbg_status_i35276_SLICE_394I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"1100", LUT1_INITVAL=>X"00B9")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_4, 
                B1=>u_dbg_status_msg_idx_0, C1=>sd_w_start_N_12177, 
                D1=>u_dbg_status_msg_idx_3, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_4, B0=>u_dbg_status_msg_idx_0, 
                C0=>'X', D0=>raw_frame_id_0, M0=>u_dbg_status_msg_idx_1, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_dbg_status_n75021, F0=>open, Q0=>open);
    u_dbg_status_i36065_SLICE_395I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"88A2", LUT1_INITVAL=>X"000C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_dbg_status_msg_idx_0, C1=>u_dbg_status_msg_idx_5, 
                D1=>u_dbg_status_msg_idx_1, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_5, B0=>u_dbg_status_msg_idx_0, 
                C0=>raw_frame_ready, D0=>u_dbg_status_msg_idx_1, 
                M0=>u_dbg_status_msg_idx_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_dbg_status_n76290, 
                F0=>open, Q0=>open);
    u_dbg_status_i35430_SLICE_396I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A800", LUT1_INITVAL=>X"FCA8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n76392, 
                B1=>u_dbg_status_n76336, C1=>u_dbg_status_n72377, 
                D1=>u_dbg_status_n71606, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_n76358, B0=>u_dbg_status_n76336, 
                C0=>u_dbg_status_n72377, D0=>u_dbg_status_n71606, 
                M0=>u_dbg_status_n76407, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_dbg_status_n75275, 
                F0=>open, Q0=>open);
    u_dbg_status_i36103_SLICE_397I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0030", LUT1_INITVAL=>X"1400")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n76413, 
                B1=>u_dbg_status_msg_idx_0, C1=>u_dbg_status_msg_idx_4, 
                D1=>u_dbg_status_msg_idx_2, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_dbg_status_msg_idx_0, C0=>u_dbg_status_msg_idx_2, 
                D0=>u_dbg_status_n76403, M0=>u_dbg_status_msg_idx_1, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_dbg_status_n76545, F0=>open, Q0=>open);
    u_dbg_status_i36096_SLICE_398I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FEFF", LUT1_INITVAL=>X"FEFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_6, 
                B1=>u_dbg_status_n76405, C1=>u_dbg_status_msg_idx_3, 
                D1=>u_dbg_status_msg_idx_5, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_6, B0=>u_dbg_status_n72377, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_msg_idx_5, 
                M0=>u_dbg_status_msg_idx_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_dbg_status_n76533, 
                F0=>open, Q0=>open);
    u_cam_cfg_i23687_SLICE_399I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"000F", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>byte_idx_1, 
                B1=>u_cam_cfg_phase_1, C1=>byte_idx_0, D1=>u_cam_cfg_phase_0, 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>u_cam_cfg_n18, 
                D0=>n15, M0=>st_2, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_cam_cfg_n63118, F0=>open, Q0=>open);
    u_cam_cfg_i35304_SLICE_400I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"5F55", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>u_cam_cfg_phase_0, 
                C1=>u_cam_cfg_n76464, D1=>u_cam_cfg_bitn_0, DI1=>'X', DI0=>'X', 
                A0=>st_0, B0=>'X', C0=>n15, D0=>u_cam_cfg_n18, M0=>st_2, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_n75071, F0=>open, Q0=>open);
    u_cam_cfg_i42_SLICE_401I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FF20", LUT1_INITVAL=>X"FDFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>st_2, 
                C1=>u_cam_cfg_st_1, D1=>'X', DI1=>'X', DI0=>'X', A0=>st_0, 
                B0=>st_2, C0=>u_cam_cfg_st_1, D0=>u_cam_cfg_n76555, M0=>st_3, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_n37, F0=>open, Q0=>open);
    u_cam_cfg_i34890_SLICE_402I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"ACAC", LUT1_INITVAL=>X"CFC0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_cam_cfg_sh_3, 
                C1=>u_cam_cfg_bitn_0, D1=>u_cam_cfg_sh_2, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_sh_1, B0=>u_cam_cfg_sh_0, C0=>u_cam_cfg_bitn_0, 
                D0=>'X', M0=>u_cam_cfg_bitn_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_n74471, 
                F0=>open, Q0=>open);
    u_cam_cfg_i34891_SLICE_403I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CFC0", 
                   LUT1_INITVAL=>X"FC0C")
      port map (M1=>u_cam_cfg_bitn_2, FXA=>u_cam_cfg_n74471, 
                FXB=>u_cam_cfg_n74472, A1=>'X', B1=>u_cam_cfg_sh_6, 
                C1=>u_cam_cfg_bitn_0, D1=>u_cam_cfg_sh_7, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>u_cam_cfg_sh_5, C0=>u_cam_cfg_bitn_0, 
                D0=>u_cam_cfg_sh_4, M0=>u_cam_cfg_bitn_1, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>u_cam_cfg_sda_oe_N_381, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_n74472, F0=>open, Q0=>open);
    u_cam_cfg_i36111_SLICE_404I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"5000", LUT1_INITVAL=>X"1050")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_1, 
                B1=>u_cam_cfg_phase_0, C1=>st_0, D1=>u_cam_cfg_phase_1, 
                DI1=>'X', DI0=>'X', A0=>u_cam_cfg_st_1, B0=>'X', C0=>st_0, 
                D0=>n15, M0=>st_2, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_cam_cfg_n76558, F0=>open, Q0=>open);
    u_cam_cfg_i36109_SLICE_405I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2200", LUT1_INITVAL=>X"3200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n76398, 
                B1=>u_cam_cfg_st_1, C1=>st_0, D1=>st_2, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_phase_0, B0=>u_cam_cfg_st_1, C0=>'X', D0=>st_2, 
                M0=>u_cam_cfg_phase_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_cam_cfg_n76555, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i34744_SLICE_406I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F5A0", LUT1_INITVAL=>X"F5A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, B1=>'X', 
                C1=>u_cam_cfg_u_rom_n28129, D1=>u_cam_cfg_u_rom_n28105, 
                DI1=>'X', DI0=>'X', A0=>n309, B0=>'X', 
                C0=>u_cam_cfg_u_rom_n28057, D0=>u_cam_cfg_u_rom_n28033, 
                M0=>n308, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>u_cam_cfg_u_rom_rom_entry_0, F0=>open, 
                Q0=>open);
    u_cam_cfg_u_rom_i34786_SLICE_407I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"EE44", LUT1_INITVAL=>X"EE44")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28098, C1=>'X', 
                D1=>u_cam_cfg_u_rom_n28122, DI1=>'X', DI0=>'X', A0=>n309, 
                B0=>u_cam_cfg_u_rom_n28026, C0=>'X', 
                D0=>u_cam_cfg_u_rom_n28050, M0=>n308, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_u_rom_rom_entry_7, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i34792_SLICE_408I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CCF0", LUT1_INITVAL=>X"EE22")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28100, 
                B1=>n309, C1=>'X', D1=>u_cam_cfg_u_rom_n28124, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>u_cam_cfg_u_rom_n28052, 
                C0=>u_cam_cfg_u_rom_n28028, D0=>n309, M0=>n308, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_u_rom_rom_entry_5, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i34795_SLICE_409I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"BB88", LUT1_INITVAL=>X"EE22")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28101, 
                B1=>n309, C1=>'X', D1=>u_cam_cfg_u_rom_n28125, DI1=>'X', 
                DI0=>'X', A0=>u_cam_cfg_u_rom_n28053, B0=>n309, C0=>'X', 
                D0=>u_cam_cfg_u_rom_n28029, M0=>n308, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_u_rom_rom_entry_4, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i34798_SLICE_410I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CFC0", LUT1_INITVAL=>X"FA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n28102, 
                B1=>'X', C1=>n309, D1=>u_cam_cfg_u_rom_n28126, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>u_cam_cfg_u_rom_n28054, C0=>n309, 
                D0=>u_cam_cfg_u_rom_n28030, M0=>n308, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_u_rom_rom_entry_3, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i34801_SLICE_411I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"EE44", LUT1_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, B1=>'X', 
                C1=>u_cam_cfg_u_rom_n28103, D1=>u_cam_cfg_u_rom_n28127, 
                DI1=>'X', DI0=>'X', A0=>n309, B0=>u_cam_cfg_u_rom_n28031, 
                C0=>'X', D0=>u_cam_cfg_u_rom_n28055, M0=>n308, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_u_rom_rom_entry_2, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i36059_SLICE_412I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CC00", LUT1_INITVAL=>X"CC00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_cam_cfg_u_rom_n28104, C1=>'X', 
                D1=>u_cam_cfg_u_rom_n28099, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_cam_cfg_u_rom_n28032, C0=>'X', 
                D0=>u_cam_cfg_u_rom_n28027, M0=>n308, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_u_rom_n76286, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i36055_SLICE_413I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"F000", 
                   LUT1_INITVAL=>X"CC00")
      port map (M1=>n309, FXA=>u_cam_cfg_u_rom_n76286, 
                FXB=>u_cam_cfg_u_rom_n76283, A1=>'X', 
                B1=>u_cam_cfg_u_rom_n28123, C1=>'X', 
                D1=>u_cam_cfg_u_rom_n28128, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>u_cam_cfg_u_rom_n28051, 
                D0=>u_cam_cfg_u_rom_n28056, M0=>n308, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>u_cam_cfg_u_rom_n76287, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_u_rom_n76283, F0=>open, Q0=>open);
    u_sd_i145_SLICE_414I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2F2F", LUT1_INITVAL=>X"30B0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, B1=>u_sd_st_1, 
                C1=>st_3_adj_12556, D1=>spi_done, DI1=>'X', DI0=>'X', 
                A0=>st_2_adj_12557, B0=>u_sd_st_1, C0=>st_3_adj_12556, D0=>'X', 
                M0=>st_0_adj_12558, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n151, F0=>open, Q0=>open);
    u_sd_i34815_SLICE_415I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C0C0", LUT1_INITVAL=>X"CCFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_spi_tx_7, 
                C1=>'X', D1=>u_sd_bit_cnt_3, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>bit_cnt_0, C0=>u_sd_spi_tx_6, D0=>'X', M0=>u_sd_n76477, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n74395, F0=>open, Q0=>open);
    u_sd_i35691_SLICE_416I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"00CC", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n78014, 
                C1=>st_0_adj_12558, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>u_sd_cmd_frame_44, C0=>'X', D0=>st_2_adj_12557, 
                M0=>st_3_adj_12556, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n75722, F0=>open, Q0=>open);
    u_sd_i52_SLICE_417I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0800", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, 
                B1=>st_3_adj_12556, C1=>n24, D1=>st_2_adj_12557, DI1=>'X', 
                DI0=>'X', A0=>n76457, B0=>n76458, C0=>spi_done, D0=>wr_count_9, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28, F0=>open, Q0=>open);
    u_sd_i52_adj_710_SLICE_418I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, 
                B1=>st_3_adj_12556, C1=>n30, D1=>st_2_adj_12557, DI1=>'X', 
                DI0=>'X', A0=>n76458, B0=>wr_count_7, C0=>n76457, D0=>spi_done, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12424, F0=>open, 
                Q0=>open);
    u_sd_i52_adj_713_SLICE_419I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0800", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3_adj_12556, B1=>n27, 
                C1=>st_2_adj_12557, D1=>u_sd_n76456, DI1=>'X', DI0=>'X', 
                A0=>n76457, B0=>n76458, C0=>spi_done, D0=>wr_count_8, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12425, F0=>open, 
                Q0=>open);
    u_sd_i123_SLICE_420I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"E040", LUT1_INITVAL=>X"F0F8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76356, B1=>u_sd_st_1, 
                C1=>u_sd_n69917, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76389, B0=>u_sd_n74306, C0=>u_sd_n76390, 
                D0=>u_sd_n74308, M0=>st_0_adj_12558, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n62, 
                F0=>open, Q0=>open);
    u_sd_i6_SLICE_421I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"E400", LUT1_INITVAL=>X"F0F8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76331, B1=>u_sd_st_1, 
                C1=>u_sd_n129, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76384, B0=>u_sd_n74300, C0=>u_sd_n74303, 
                D0=>u_sd_n76390, M0=>st_0_adj_12558, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n3, 
                F0=>open, Q0=>open);
    u_sd_i25027_SLICE_422I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"88C0", LUT1_INITVAL=>X"28A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n71678, B1=>u_sd_cmd_i_1, 
                C1=>u_sd_cmd_i_2, D1=>u_sd_n76348, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n12, B0=>n76458, C0=>u_sd_cmd_i_2, D0=>u_sd_st_1, 
                M0=>st_0_adj_12558, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n50, F0=>open, Q0=>open);
    u_sd_i52_adj_813_SLICE_423I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0800", LUT1_INITVAL=>X"0002")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n33, B1=>st_3_adj_12556, 
                C1=>u_sd_n76456, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>n76458, B0=>wr_count_6, C0=>spi_done, D0=>n76457, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12431, F0=>open, 
                Q0=>open);
    u_sd_i52_adj_815_SLICE_424I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, 
                B1=>n36_adj_12542, C1=>st_3_adj_12556, D1=>st_2_adj_12557, 
                DI1=>'X', DI0=>'X', A0=>n76458, B0=>wr_count_5, C0=>n76457, 
                D0=>spi_done, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12432, 
                F0=>open, Q0=>open);
    u_sd_i30473_SLICE_425I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"EA2A", LUT1_INITVAL=>X"8F80")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_SD_CLK_c_enable_234, 
                B1=>u_sd_n73399, C1=>st_2_adj_12557, D1=>u_sd_n76356, DI1=>'X', 
                DI0=>'X', A0=>u_sd_n74305, B0=>u_sd_n76389, C0=>st_2_adj_12557, 
                D0=>u_sd_n74308, M0=>st_3_adj_12556, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n69917, 
                F0=>open, Q0=>open);
    u_sd_i125_SLICE_426I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"D8F0", LUT1_INITVAL=>X"C0AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76331, B1=>u_sd_n76434, 
                C1=>u_sd_st_1, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76384, B0=>u_sd_n74303, C0=>u_sd_n74298, 
                D0=>st_2_adj_12557, M0=>st_3_adj_12556, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n129, 
                F0=>open, Q0=>open);
    u_sd_i52_adj_842_SLICE_427I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0800", LUT1_INITVAL=>X"0002")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n39_adj_12541, 
                B1=>u_sd_n76456, C1=>st_2_adj_12557, D1=>st_3_adj_12556, 
                DI1=>'X', DI0=>'X', A0=>n76458, B0=>wr_count_4, C0=>spi_done, 
                D0=>n76457, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12435, 
                F0=>open, Q0=>open);
    u_sd_i52_adj_848_SLICE_428I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, 
                B1=>n42_adj_12540, C1=>st_3_adj_12556, D1=>st_2_adj_12557, 
                DI1=>'X', DI0=>'X', A0=>n76458, B0=>n76457, C0=>wr_count_3, 
                D0=>spi_done, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12436, 
                F0=>open, Q0=>open);
    u_sd_i25024_SLICE_429I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CA00", LUT1_INITVAL=>X"0600")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_0, B1=>u_sd_n76443, 
                C1=>u_sd_n78001, D1=>u_sd_n76428, DI1=>'X', DI0=>'X', 
                A0=>u_sd_cmd_i_0, B0=>u_sd_n76338, C0=>u_sd_st_1, D0=>n76458, 
                M0=>st_0_adj_12558, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n11_adj_12509, F0=>open, 
                Q0=>open);
    u_sd_i78_SLICE_430I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0020", LUT1_INITVAL=>X"AA20")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n74158, B1=>wr_count_9, 
                C1=>n66465, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', A0=>u_sd_st_4, 
                B0=>st_3_adj_12556, C0=>st_0_adj_12558, D0=>u_sd_st_1, 
                M0=>spi_done, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n78, F0=>open, Q0=>open);
    u_sd_i51_SLICE_431I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2220", LUT1_INITVAL=>X"3202")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>u_sd_SD_CLK_c_enable_234, C1=>st_2_adj_12557, 
                D1=>u_sd_st_1, DI1=>'X', DI0=>'X', A0=>st_0_adj_12558, 
                B0=>u_sd_SD_CLK_c_enable_234, C0=>st_2_adj_12557, 
                D0=>u_sd_n73433, M0=>st_3_adj_12556, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n31_adj_12510, F0=>open, Q0=>open);
    u_sd_i52_adj_868_SLICE_432I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, 
                B1=>n45_adj_12539, C1=>st_2_adj_12557, D1=>st_3_adj_12556, 
                DI1=>'X', DI0=>'X', A0=>n76458, B0=>wr_count_2, C0=>n76457, 
                D0=>spi_done, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12438, 
                F0=>open, Q0=>open);
    u_sd_i52_adj_869_SLICE_433I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3_adj_12556, 
                B1=>u_sd_n76456, C1=>n48_adj_12538, D1=>st_2_adj_12557, 
                DI1=>'X', DI0=>'X', A0=>n76458, B0=>n76457, C0=>wr_count_1, 
                D0=>spi_done, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12441, 
                F0=>open, Q0=>open);
    u_sd_i35435_SLICE_434I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C0C0", LUT1_INITVAL=>X"A0B1")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>st_0_adj_12558, 
                C1=>u_sd_n75283, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>u_sd_n75286, C0=>st_0_adj_12558, D0=>'X', 
                M0=>u_sd_st_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n75288, F0=>open, Q0=>open);
    u_sd_i32_SLICE_435I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FA50", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_2, 
                B1=>u_sd_cmd_frame_3, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sd_cmd_i_2, B0=>'X', C0=>u_sd_cmd_frame_43, 
                D0=>u_sd_cmd_frame_11, M0=>u_sd_cmd_i_0, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n16, 
                F0=>open, Q0=>open);
    u_sd_i32_adj_911_SLICE_436I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"E4E4", LUT1_INITVAL=>X"AA00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_2, B1=>'X', 
                C1=>'X', D1=>u_sd_cmd_frame_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_cmd_i_2, B0=>u_sd_cmd_frame_41, C0=>u_sd_cmd_frame_9, 
                D0=>'X', M0=>u_sd_cmd_i_0, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n16_adj_12426, 
                F0=>open, Q0=>open);
    u_sd_i35427_SLICE_437I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0A0A", LUT1_INITVAL=>X"E040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>n75267, 
                C1=>u_sd_st_1, D1=>n75266, DI1=>'X', DI0=>'X', A0=>u_sd_n75270, 
                B0=>'X', C0=>st_3_adj_12556, D0=>'X', M0=>st_0_adj_12558, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n75272, F0=>open, Q0=>open);
    u_sd_i32_adj_922_SLICE_438I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F5A0", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_2, 
                B1=>u_sd_cmd_frame_5, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sd_cmd_i_2, B0=>'X', C0=>u_sd_cmd_frame_13, 
                D0=>u_sd_cmd_frame_45, M0=>u_sd_cmd_i_0, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n16_adj_12517, F0=>open, Q0=>open);
    u_sd_i36384_SLICE_439I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F088", LUT1_INITVAL=>X"00CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_n95_adj_12437, 
                C1=>'X', D1=>st_3_adj_12556, DI1=>'X', DI0=>'X', 
                A0=>st_0_adj_12558, B0=>u_sd_n77028, C0=>u_sd_n77027, 
                D0=>st_3_adj_12556, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n77031, F0=>open, 
                Q0=>open);
    u_sd_i36380_SLICE_440I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"AA00", LUT1_INITVAL=>X"D080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>u_sd_n76417, C1=>u_sd_st_1, D1=>u_sd_n425, DI1=>'X', 
                DI0=>'X', A0=>st_0_adj_12558, B0=>'X', C0=>'X', D0=>u_sd_n425, 
                M0=>st_2_adj_12557, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n77027, F0=>open, Q0=>open);
    u_sd_i34814_SLICE_441I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"E4E4", LUT1_INITVAL=>X"EE44")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>bit_cnt_0, B1=>u_sd_spi_tx_3, 
                C1=>'X', D1=>u_sd_spi_tx_2, DI1=>'X', DI0=>'X', A0=>bit_cnt_0, 
                B0=>u_sd_spi_tx_1, C0=>u_sd_spi_tx_0, D0=>'X', M0=>u_sd_n76462, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n74394, F0=>open, Q0=>open);
    u_sd_i36362_SLICE_442I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F808", LUT1_INITVAL=>X"0F00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>st_3_adj_12556, D1=>u_sd_n95, DI1=>'X', DI0=>'X', 
                A0=>st_0_adj_12558, B0=>u_sd_n77003, C0=>st_3_adj_12556, 
                D0=>u_sd_n77002, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n77006, F0=>open, 
                Q0=>open);
    u_sd_i36358_SLICE_443I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A0A0", LUT1_INITVAL=>X"D080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>u_sd_n76420, C1=>u_sd_st_1, D1=>u_sd_n421, DI1=>'X', 
                DI0=>'X', A0=>st_0_adj_12558, B0=>'X', C0=>u_sd_n421, D0=>'X', 
                M0=>st_2_adj_12557, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n77002, F0=>open, Q0=>open);
    u_sd_i35920_SLICE_444I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"88A8", LUT1_INITVAL=>X"0504")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>resp_tries_7, C1=>st_3_adj_12556, D1=>spi_done, DI1=>'X', 
                DI0=>'X', A0=>n76458, B0=>resp_tries_7, C0=>spi_done, 
                D0=>u_sd_n76382, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n76073, F0=>open, 
                Q0=>open);
    u_sd_i36353_SLICE_445I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F088", LUT1_INITVAL=>X"00F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>u_sd_n95_adj_12429, D1=>st_3_adj_12556, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76995, B0=>st_0_adj_12558, C0=>u_sd_n76994, 
                D0=>st_3_adj_12556, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n76998, F0=>open, 
                Q0=>open);
    u_sd_i35896_SLICE_446I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C0C8", LUT1_INITVAL=>X"0302")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_done, B1=>st_2_adj_12557, 
                C1=>st_3_adj_12556, D1=>resp_tries_6, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>n76458, C0=>resp_tries_6, D0=>u_sd_n76382, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n76042, F0=>open, Q0=>open);
    u_sd_i36350_SLICE_447I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"AA00", LUT1_INITVAL=>X"D080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>u_sd_n76418, C1=>u_sd_st_1, D1=>u_sd_n424, DI1=>'X', 
                DI0=>'X', A0=>st_0_adj_12558, B0=>'X', C0=>'X', D0=>u_sd_n424, 
                M0=>st_2_adj_12557, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n76994, F0=>open, Q0=>open);
    u_sd_i36334_SLICE_448I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F088", LUT1_INITVAL=>X"00CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_n95_adj_12428, 
                C1=>'X', D1=>st_3_adj_12556, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76961, B0=>st_0_adj_12558, C0=>u_sd_n76960, 
                D0=>st_3_adj_12556, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n76964, F0=>open, 
                Q0=>open);
    u_sd_i36331_SLICE_449I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C0C0", LUT1_INITVAL=>X"E020")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n74317, 
                B1=>st_0_adj_12558, C1=>u_sd_st_1, D1=>u_sd_n76415, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>st_0_adj_12558, C0=>u_sd_n74317, 
                D0=>'X', M0=>st_2_adj_12557, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n76960, F0=>open, 
                Q0=>open);
    u_sd_i36310_SLICE_450I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F088", LUT1_INITVAL=>X"00CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_n95_adj_12427, 
                C1=>'X', D1=>st_3_adj_12556, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76926, B0=>st_0_adj_12558, C0=>u_sd_n76925, 
                D0=>st_3_adj_12556, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n76929, F0=>open, 
                Q0=>open);
    u_sd_i36307_SLICE_451I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"E020")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n65527, 
                B1=>st_0_adj_12558, C1=>u_sd_st_1, D1=>u_sd_n76419, DI1=>'X', 
                DI0=>'X', A0=>u_sd_n65527, B0=>st_0_adj_12558, C0=>'X', 
                D0=>'X', M0=>st_2_adj_12557, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n76925, F0=>open, 
                Q0=>open);
    u_sd_i36273_SLICE_452I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F808", LUT1_INITVAL=>X"0A0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n95_adj_12422, B1=>'X', 
                C1=>st_3_adj_12556, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>st_0_adj_12558, B0=>u_sd_n76861, C0=>st_3_adj_12556, 
                D0=>u_sd_n76860, M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n76864, F0=>open, 
                Q0=>open);
    u_sd_i36968_SLICE_453I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FF4A", LUT1_INITVAL=>X"FFEA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>st_3_adj_12556, C1=>st_2_adj_12557, D1=>u_sd_n78001, 
                DI1=>'X', DI0=>'X', A0=>st_0_adj_12558, B0=>st_3_adj_12556, 
                C0=>st_2_adj_12557, D0=>u_sd_n78001, M0=>u_sd_st_1, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n73525, F0=>open, Q0=>open);
    u_sd_i36270_SLICE_454I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A0A0", LUT1_INITVAL=>X"D800")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>u_sd_n76416, C1=>u_sd_n426, D1=>u_sd_st_1, DI1=>'X', 
                DI0=>'X', A0=>st_0_adj_12558, B0=>'X', C0=>u_sd_n426, D0=>'X', 
                M0=>st_2_adj_12557, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n76860, F0=>open, Q0=>open);
    u_sd_i35855_SLICE_455I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CC08", LUT1_INITVAL=>X"0302")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_done, B1=>st_2_adj_12557, 
                C1=>st_3_adj_12556, D1=>resp_tries_3, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>n76458, C0=>u_sd_n76382, D0=>resp_tries_3, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n75985, F0=>open, Q0=>open);
    u_sd_i35815_SLICE_456I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A0A0", LUT1_INITVAL=>X"E2E2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, B1=>u_sd_st_1, 
                C1=>u_sd_n75912, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_1, 
                B0=>'X', C0=>u_sd_n34, D0=>'X', M0=>n76458, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n75915, 
                F0=>open, Q0=>open);
    u_sd_i36113_SLICE_457I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"5050", LUT1_INITVAL=>X"0CAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_sck_N_10287, 
                B1=>u_sd_spi_start, C1=>u_sd_spi_busy, D1=>u_sd_n76425, 
                DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, B0=>'X', 
                C0=>u_sd_spi_start, D0=>'X', M0=>u_sd_half_phase, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_SD_CLK_c_enable_242, F0=>open, Q0=>open);
    u_sd_i36966_SLICE_458I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"AAAB", LUT1_INITVAL=>X"FF81")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3_adj_12556, B1=>u_sd_st_1, 
                C1=>st_2_adj_12557, D1=>u_sd_n78001, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n78001, B0=>u_sd_st_1, C0=>st_2_adj_12557, 
                D0=>st_3_adj_12556, M0=>st_0_adj_12558, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n34, 
                F0=>open, Q0=>open);
    u_sd_i36105_SLICE_459I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FFF1", LUT1_INITVAL=>X"FFDB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3_adj_12556, B1=>u_sd_st_1, 
                C1=>st_0_adj_12558, D1=>u_sd_n78001, DI1=>'X', DI0=>'X', 
                A0=>st_3_adj_12556, B0=>u_sd_st_1, C0=>st_0_adj_12558, 
                D0=>u_sd_n78001, M0=>st_2_adj_12557, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n25_adj_12475, F0=>open, Q0=>open);
    u_sd_i36100_SLICE_460I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0040", LUT1_INITVAL=>X"0088")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>u_sd_n71589, C1=>'X', D1=>st_2_adj_12557, DI1=>'X', 
                DI0=>'X', A0=>u_sd_st_1, B0=>u_sd_n71589, C0=>st_0_adj_12558, 
                D0=>st_2_adj_12557, M0=>u_sd_n76333, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n76541, 
                F0=>open, Q0=>open);
    u_sd_i36094_SLICE_461I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FBFF", LUT1_INITVAL=>X"FBFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>st_3_adj_12556, 
                C1=>u_sd_n78014, D1=>st_0_adj_12558, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>st_2_adj_12557, C0=>u_sd_n78014, 
                D0=>st_3_adj_12556, M0=>u_sd_st_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n76530, F0=>open, 
                Q0=>open);
    u_sd_i36092_SLICE_462I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FF2C", LUT1_INITVAL=>X"FFEC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>st_0_adj_12558, C1=>st_3_adj_12556, D1=>u_sd_n71720, 
                DI1=>'X', DI0=>'X', A0=>st_2_adj_12557, B0=>st_0_adj_12558, 
                C0=>st_3_adj_12556, D0=>u_sd_n71720, M0=>u_sd_st_1, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n26_adj_12474, F0=>open, Q0=>open);
    u_ctrl_u_tx_i34897_SLICE_463I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CFC0", LUT1_INITVAL=>X"CFC0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_ctrl_u_tx_shreg_3, 
                C1=>u_ctrl_u_tx_bit_idx_0, D1=>u_ctrl_u_tx_shreg_2, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>u_ctrl_u_tx_shreg_1, 
                C0=>u_ctrl_u_tx_bit_idx_0, D0=>u_ctrl_u_tx_shreg_0, 
                M0=>u_ctrl_u_tx_bit_idx_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_tx_n74478, 
                F0=>open, Q0=>open);
    u_ctrl_u_tx_i34898_SLICE_464I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"ACAC", 
                   LUT1_INITVAL=>X"FC0C")
      port map (M1=>u_ctrl_u_tx_bit_idx_2, FXA=>u_ctrl_u_tx_n74478, 
                FXB=>u_ctrl_u_tx_n74479, A1=>'X', B1=>u_ctrl_u_tx_shreg_6, 
                C1=>u_ctrl_u_tx_bit_idx_0, D1=>u_ctrl_u_tx_shreg_7, DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_tx_shreg_5, B0=>u_ctrl_u_tx_shreg_4, 
                C0=>u_ctrl_u_tx_bit_idx_0, D0=>'X', M0=>u_ctrl_u_tx_bit_idx_1, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>u_ctrl_u_tx_tx_N_1194, 
                F1=>open, Q1=>open, OFX0=>u_ctrl_u_tx_n74479, F0=>open, 
                Q0=>open);
    u_ctrl_u_cmd_i36086_SLICE_465I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FAEA", LUT1_INITVAL=>X"FAEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_5, 
                B1=>u_ctrl_u_cmd_cmd_opcode_1, C1=>u_ctrl_u_cmd_cmd_opcode_2, 
                D1=>u_ctrl_u_cmd_cmd_opcode_0, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_cmd_opcode_5, B0=>u_ctrl_u_cmd_cmd_opcode_1, 
                C0=>u_ctrl_u_cmd_cmd_opcode_2, D0=>u_ctrl_u_cmd_cmd_opcode_0, 
                M0=>u_ctrl_u_cmd_cmd_arg_6, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_cmd_n76517, 
                F0=>open, Q0=>open);
    u_ctrl_u_ack_i35246_SLICE_466I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"B8B8", LUT1_INITVAL=>X"BB88")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_pkt_7_2, 
                B1=>u_ctrl_u_ack_idx_0, C1=>'X', D1=>u_ctrl_u_ack_pkt_6_2, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_5_4, 
                B0=>u_ctrl_u_ack_idx_0, C0=>u_ctrl_u_ack_pkt_2_2, D0=>'X', 
                M0=>u_ctrl_u_ack_idx_2, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_ack_n74969, 
                F0=>open, Q0=>open);
    u_ctrl_u_ack_i34805_SLICE_467I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"AA00", LUT1_INITVAL=>X"F0AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_pkt_2_0, B1=>'X', 
                C1=>u_ctrl_u_ack_pkt_5_1, D1=>u_ctrl_u_ack_idx_0, DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_ack_pkt_1_0, B0=>'X', C0=>'X', 
                D0=>u_ctrl_u_ack_idx_0, M0=>u_ctrl_u_ack_idx_1, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_ack_n74385, F0=>open, Q0=>open);
    u_ctrl_u_ack_i35235_SLICE_468I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F0FF", LUT1_INITVAL=>X"CCF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_ctrl_u_ack_pkt_5_6, 
                C1=>u_ctrl_u_ack_pkt_2_1, D1=>u_ctrl_u_ack_idx_0, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>u_ctrl_u_ack_pkt_1_1, 
                D0=>u_ctrl_u_ack_idx_0, M0=>u_ctrl_u_ack_idx_1, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_ack_n74954, F0=>open, Q0=>open);
    u_sd_SLICE_469I: SLOGICB
      generic map (LUT0_INITVAL=>X"0708", LUT1_INITVAL=>X"8C00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, 
                B1=>u_sd_cmd_i_0, C1=>u_sd_cmd_i_2, D1=>spi_done, DI1=>'X', 
                DI0=>'X', A0=>u_sd_cmd_i_1, B0=>u_sd_n76348, C0=>u_sd_n78001, 
                D0=>u_sd_cmd_i_2, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76348, Q1=>open, OFX0=>open, 
                F0=>u_sd_n12, Q0=>open);
    u_sd_SLICE_470I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDC", LUT1_INITVAL=>X"080C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_7, 
                B1=>u_sd_n76456, C1=>st_2_adj_12557, 
                D1=>u_sd_SD_CLK_c_enable_234, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76456, B0=>u_sd_n60631, C0=>u_sd_n62877, 
                D0=>u_sd_spi_tx_7, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n60631, Q1=>open, OFX0=>open, 
                F0=>u_sd_n95, Q0=>open);
    u_sd_SLICE_471I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDC", LUT1_INITVAL=>X"080A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, 
                B1=>u_sd_spi_tx_6, C1=>st_2_adj_12557, 
                D1=>u_sd_SD_CLK_c_enable_234, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76456, B0=>u_sd_n60632, C0=>u_sd_n62877, 
                D0=>u_sd_spi_tx_6, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n60632, Q1=>open, OFX0=>open, 
                F0=>u_sd_n95_adj_12423, Q0=>open);
    u_sd_SLICE_472I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDC", LUT1_INITVAL=>X"00A2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, 
                B1=>u_sd_SD_CLK_c_enable_234, C1=>u_sd_spi_tx_5, 
                D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', A0=>u_sd_n76456, 
                B0=>u_sd_n60627, C0=>u_sd_n62877, D0=>u_sd_spi_tx_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n60627, 
                Q1=>open, OFX0=>open, F0=>u_sd_n95_adj_12427, Q0=>open);
    u_sd_SLICE_473I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDC", LUT1_INITVAL=>X"4044")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>u_sd_n76456, C1=>u_sd_spi_tx_4, 
                D1=>u_sd_SD_CLK_c_enable_234, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76456, B0=>u_sd_n60634, C0=>u_sd_n62877, 
                D0=>u_sd_spi_tx_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n60634, Q1=>open, OFX0=>open, 
                F0=>u_sd_n95_adj_12429, Q0=>open);
    u_sd_SLICE_474I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDC", LUT1_INITVAL=>X"080A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, 
                B1=>u_sd_spi_tx_3, C1=>st_2_adj_12557, 
                D1=>u_sd_SD_CLK_c_enable_234, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76456, B0=>u_sd_n60630, C0=>u_sd_n62877, 
                D0=>u_sd_spi_tx_3, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n60630, Q1=>open, OFX0=>open, 
                F0=>u_sd_n95_adj_12437, Q0=>open);
    u_sd_SLICE_475I: SLOGICB
      generic map (LUT0_INITVAL=>X"00A2", LUT1_INITVAL=>X"FF54")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, 
                B1=>u_sd_spi_tx_1, C1=>u_sd_n62877, D1=>u_sd_n60628, DI1=>'X', 
                DI0=>'X', A0=>u_sd_n76456, B0=>u_sd_SD_CLK_c_enable_234, 
                C0=>u_sd_spi_tx_1, D0=>st_2_adj_12557, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n95_adj_12428, 
                Q1=>open, OFX0=>open, F0=>u_sd_n60628, Q0=>open);
    u_sd_SLICE_476I: SLOGICB
      generic map (LUT0_INITVAL=>X"0C04", LUT1_INITVAL=>X"F3F2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_2, 
                B1=>u_sd_n76456, C1=>u_sd_n60633, D1=>u_sd_n62877, DI1=>'X', 
                DI0=>'X', A0=>u_sd_SD_CLK_c_enable_234, B0=>u_sd_n76456, 
                C0=>st_2_adj_12557, D0=>u_sd_spi_tx_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n95_adj_12422, 
                Q1=>open, OFX0=>open, F0=>u_sd_n60633, Q0=>open);
    u_sd_SLICE_477I: SLOGICB
      generic map (LUT0_INITVAL=>X"00A2", LUT1_INITVAL=>X"FF54")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, B1=>u_sd_n62877, 
                C1=>u_sd_spi_tx_0, D1=>u_sd_n60629, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76456, B0=>u_sd_SD_CLK_c_enable_234, 
                C0=>u_sd_spi_tx_0, D0=>st_2_adj_12557, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n95_adj_12493, 
                Q1=>open, OFX0=>open, F0=>u_sd_n60629, Q0=>open);
    u_sd_SLICE_478I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCCE", LUT1_INITVAL=>X"FFF7")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>st_0_adj_12558, 
                C1=>u_sd_n78002, D1=>u_sd_n76484, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_n76376, C0=>u_sd_n76412, 
                D0=>u_sd_n76484, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76376, Q1=>open, OFX0=>open, 
                F0=>u_sd_n72899, Q0=>open);
    u_dbg_status_SLICE_479I: SLOGICB
      generic map (LUT0_INITVAL=>X"FCF4", LUT1_INITVAL=>X"EFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_4, 
                B1=>u_dbg_status_msg_idx_6, C1=>u_dbg_status_msg_idx_3, 
                D1=>u_dbg_status_msg_idx_5, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_4, B0=>u_dbg_status_n76411, 
                C0=>u_dbg_status_n9, D0=>u_dbg_status_n76413, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_dbg_status_n76411, 
                Q1=>open, OFX0=>open, F0=>u_dbg_status_n71745, Q0=>open);
    u_dbg_status_SLICE_480I: SLOGICB
      generic map (LUT0_INITVAL=>X"4C00", LUT1_INITVAL=>X"FBFB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_1, 
                B1=>u_dbg_status_msg_idx_2, C1=>u_dbg_status_msg_idx_0, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_msg_idx_1, 
                B0=>u_dbg_status_n76476, C0=>u_dbg_status_n76453, 
                D0=>u_dbg_status_n76408, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_dbg_status_n76476, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72377, Q0=>open);
    u_dbg_status_SLICE_481I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAF", LUT1_INITVAL=>X"FFEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_6, 
                B1=>u_dbg_status_msg_idx_5, C1=>'X', 
                D1=>u_dbg_status_msg_idx_3, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_n76413, B0=>u_dbg_status_n76452, 
                C0=>u_dbg_status_msg_idx_4, D0=>u_dbg_status_msg_idx_3, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n76413, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n76336, Q0=>open);
    u_dbg_status_SLICE_482I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFEF", LUT1_INITVAL=>X"FECC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_4, 
                B1=>u_dbg_status_n76392, C1=>u_dbg_status_n76391, 
                D1=>u_dbg_status_n76473, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_4, B0=>u_dbg_status_msg_idx_6, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_msg_idx_5, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n71879, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n76473, Q0=>open);
    u_dbg_status_SLICE_483I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCEC", LUT1_INITVAL=>X"1110")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_4, 
                B1=>u_dbg_status_msg_idx_2, C1=>u_dbg_status_n72660, 
                D1=>u_dbg_status_n75003, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_n76290, B0=>u_dbg_status_n72408, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_msg_idx_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n72408, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n73293, Q0=>open);
    u_cam_cfg_SLICE_484I: SLOGICB
      generic map (LUT0_INITVAL=>X"2A00", LUT1_INITVAL=>X"44C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2, B1=>u_cam_cfg_n76388, 
                C1=>u_cam_cfg_n72616, D1=>u_cam_cfg_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_n77999, B0=>st_0, C0=>u_cam_cfg_n76460, D0=>st_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n63253, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n72616, Q0=>open);
    u_cam_cfg_SLICE_485I: SLOGICB
      generic map (LUT0_INITVAL=>X"7F2F", LUT1_INITVAL=>X"FFFB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_bitn_1, 
                B1=>u_cam_cfg_phase_0, C1=>u_cam_cfg_bitn_0, 
                D1=>u_cam_cfg_bitn_2, DI1=>'X', DI0=>'X', A0=>st_0, 
                B0=>u_cam_cfg_phase_0, C0=>u_cam_cfg_phase_1, 
                D0=>u_cam_cfg_n76398, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n76398, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n76513, Q0=>open);
    u_cam_cfg_SLICE_486I: SLOGICB
      generic map (LUT0_INITVAL=>X"002A", LUT1_INITVAL=>X"B080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n71655, B1=>st_2, 
                C1=>u_cam_cfg_n76388, D1=>u_cam_cfg_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_n77999, B0=>byte_idx_0, C0=>byte_idx_1, 
                D0=>u_cam_cfg_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_SD_CLK_c_enable_252, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n71655, Q0=>open);
    SLICE_487I: SLOGICB
      generic map (LUT0_INITVAL=>X"8DAF", LUT1_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>u_sd_n75281, C1=>n75282, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>st_0_adj_12558, B0=>n76378, C0=>st_2_adj_12557, 
                D0=>spi_done, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n75283, Q1=>open, OFX0=>open, F0=>n75282, Q0=>open);
    u_sdram_SLICE_488I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"FFFE", 
                   LUT1_INITVAL=>X"C0FF", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sdram_n19233, 
                C1=>u_sdram_refresh_req, D1=>u_sdram_wr_ready_N_2466, DI1=>'X', 
                DI0=>'X', A0=>u_sdram_st_2, B0=>u_sdram_n19233, 
                C0=>u_sdram_n19231, D0=>u_sdram_SD_A_12_N_2268_9, 
                M0=>u_sdram_n19233, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_refresh_req, OFX1=>open, F1=>u_sdram_n58488, 
                Q1=>open, OFX0=>open, F0=>u_sdram_wr_ready_N_2466, 
                Q0=>u_sdram_SD_A_12_N_2268_9);
    u_sd_SLICE_489I: SLOGICB
      generic map (LUT0_INITVAL=>X"ECCC", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, B1=>n78000, 
                C1=>u_sd_cs_n_N_10197, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>u_sd_n76410, C0=>st_0_adj_12558, 
                D0=>st_2_adj_12557, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n73171, Q1=>open, OFX0=>open, 
                F0=>u_sd_cs_n_N_10197, Q0=>open);
    u_sd_SLICE_490I: SLOGICB
      generic map (LUT0_INITVAL=>X"CECC", LUT1_INITVAL=>X"4DED")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>u_sd_n1316, C1=>st_0_adj_12558, D1=>spi_done, DI1=>'X', 
                DI0=>'X', A0=>u_sd_cmd_i_2, B0=>st_3_adj_12556, 
                C0=>u_sd_n76442, D0=>spi_done, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n76795, Q1=>open, OFX0=>open, 
                F0=>u_sd_n1316, Q0=>open);
    u_sd_SLICE_491I: SLOGICB
      generic map (LUT0_INITVAL=>X"CDC8", LUT1_INITVAL=>X"EA40")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_SD_CLK_c_enable_234, 
                B1=>u_sd_n60068, C1=>u_sd_n427, D1=>u_sd_spi_tx_6, DI1=>'X', 
                DI0=>'X', A0=>u_sd_SD_CLK_c_enable_234, B0=>u_sd_n74300, 
                C0=>u_sd_cmd_i_1, D0=>u_sd_n74303, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n74300, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76331, Q0=>open);
    u_sd_SLICE_492I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAF3", LUT1_INITVAL=>X"0088")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_6, 
                B1=>u_sd_cmd_i_0, C1=>'X', D1=>u_sd_cmd_i_1, DI1=>'X', 
                DI0=>'X', A0=>u_sd_n427, B0=>u_sd_cmd_i_0, 
                C0=>u_sd_cmd_frame_38, D0=>u_sd_n60068, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n427, Q1=>open, 
                OFX0=>open, F0=>u_sd_n74303, Q0=>open);
    u_sd_SLICE_493I: SLOGICB
      generic map (LUT0_INITVAL=>X"A0B3", LUT1_INITVAL=>X"A0AC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n29, 
                B1=>u_sd_n6_adj_12461, C1=>u_sd_st_1, D1=>u_sd_n78001, 
                DI1=>'X', DI0=>'X', A0=>u_sd_cmd_frame_7, B0=>u_sd_n76439, 
                C0=>st_3_adj_12556, D0=>u_sd_n78001, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76314, Q1=>open, 
                OFX0=>open, F0=>u_sd_n29, Q0=>open);
    u_sd_SLICE_494I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCD8", LUT1_INITVAL=>X"AE04")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_SD_CLK_c_enable_234, 
                B1=>u_sd_cmd_i_0, C1=>u_sd_cmd_i_1, D1=>u_sd_spi_tx_0, 
                DI1=>'X', DI0=>'X', A0=>u_sd_SD_CLK_c_enable_234, 
                B0=>u_sd_n74306, C0=>u_sd_n74308, D0=>u_sd_cmd_i_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n74306, 
                Q1=>open, OFX0=>open, F0=>u_sd_n76356, Q0=>open);
    u_sd_SLICE_495I: SLOGICB
      generic map (LUT0_INITVAL=>X"0400", LUT1_INITVAL=>X"A000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>'X', 
                C1=>st_0_adj_12558, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76484, B0=>u_sd_n73597, C0=>u_sd_st_1, 
                D0=>st_2_adj_12557, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n73597, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73605, Q0=>open);
    u_sd_SLICE_496I: SLOGICB
      generic map (LUT0_INITVAL=>X"0078", LUT1_INITVAL=>X"F7F7")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_0, 
                B1=>u_sd_cmd_i_2, C1=>u_sd_cmd_i_1, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>spi_done, B0=>u_sd_n76382, C0=>u_sd_cmd_i_0, 
                D0=>u_sd_n78001, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76382, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76338, Q0=>open);
    u_sd_SLICE_497I: SLOGICB
      generic map (LUT0_INITVAL=>X"F8FC", LUT1_INITVAL=>X"FF5F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, B1=>'X', 
                C1=>u_sd_st_1, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76456, B0=>u_sd_n76409, C0=>n78000, 
                D0=>st_2_adj_12557, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76409, Q1=>open, OFX0=>open, 
                F0=>u_sd_n74213, Q0=>open);
    u_sd_SLICE_498I: SLOGICB
      generic map (LUT0_INITVAL=>X"A8A0", LUT1_INITVAL=>X"E000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n78000, B1=>u_sd_n76409, 
                C1=>u_sd_n76376, D1=>u_sd_n76364, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n73281, B0=>u_sd_n76360, C0=>n78000, D0=>u_sd_n76368, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n73281, Q1=>open, OFX0=>open, F0=>u_sd_n73289, 
                Q0=>open);
    u_sd_SLICE_499I: SLOGICB
      generic map (LUT0_INITVAL=>X"DF80", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>resp_tries_1, 
                B1=>resp_tries_6, C1=>u_sd_n73217, D1=>u_sd_n73215, DI1=>'X', 
                DI0=>'X', A0=>spi_done, B0=>n32073, C0=>n76414, 
                D0=>resp_tries_6, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n32073, Q1=>open, OFX0=>open, F0=>n69574, 
                Q0=>open);
    u_sd_SLICE_500I: SLOGICB
      generic map (LUT0_INITVAL=>X"78F8", LUT1_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, B1=>'X', 
                C1=>u_sd_st_1, D1=>u_sd_n76519, DI1=>'X', DI0=>'X', 
                A0=>st_3_adj_12556, B0=>st_0_adj_12558, C0=>u_sd_st_1, 
                D0=>spi_done, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76520, Q1=>open, OFX0=>open, F0=>u_sd_n76519, 
                Q0=>open);
    u_sd_SLICE_501I: SLOGICB
      generic map (LUT0_INITVAL=>X"FE00", LUT1_INITVAL=>X"CC80")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76488, B1=>u_sd_n76487, 
                C1=>u_sd_n76352, D1=>u_sd_n47, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76488, B0=>n14, C0=>n13, D0=>st_0_adj_12558, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n72854, 
                Q1=>open, OFX0=>open, F0=>u_sd_n47, Q0=>open);
    u_sd_SLICE_502I: SLOGICB
      generic map (LUT0_INITVAL=>X"EA00", LUT1_INITVAL=>X"80C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n78000, B1=>u_sd_n73507, 
                C1=>u_sd_n73317, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>n78000, B0=>u_sd_n76397, C0=>u_sd_n76399, 
                D0=>u_sd_cs_n_N_10197, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n4_adj_12499, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73317, Q0=>open);
    u_sd_SLICE_503I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFAF", LUT1_INITVAL=>X"FCDC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>n78000, 
                C1=>u_sd_n76399, D1=>u_sd_n76439, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>'X', C0=>st_0_adj_12558, D0=>st_2_adj_12557, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76333, Q1=>open, OFX0=>open, F0=>u_sd_n76399, 
                Q0=>open);
    u_sd_SLICE_504I: SLOGICB
      generic map (LUT0_INITVAL=>X"0C20", LUT1_INITVAL=>X"3302")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n73775, B1=>u_sd_n74122, 
                C1=>st_2_adj_12557, D1=>u_sd_n48, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>st_0_adj_12558, C0=>st_2_adj_12557, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n72828, Q1=>open, OFX0=>open, 
                F0=>u_sd_n48, Q0=>open);
    u_sd_SLICE_505I: SLOGICB
      generic map (LUT0_INITVAL=>X"4C40", LUT1_INITVAL=>X"4540")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n55, 
                C1=>st_0_adj_12558, D1=>resp_tries_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>u_sd_n4, C0=>u_sd_n76352, D0=>resp_tries_1, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n73, 
                Q1=>open, OFX0=>open, F0=>u_sd_n55, Q0=>open);
    u_sd_SLICE_506I: SLOGICB
      generic map (LUT0_INITVAL=>X"FAF2", LUT1_INITVAL=>X"DDFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, B1=>u_sd_st_1, 
                C1=>'X', D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76465, B0=>u_sd_st_1, C0=>n78000, D0=>u_sd_n76478, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76465, Q1=>open, OFX0=>open, F0=>u_sd_n74211, 
                Q0=>open);
    u_sd_SLICE_507I: SLOGICB
      generic map (LUT0_INITVAL=>X"5C00", LUT1_INITVAL=>X"5404")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>resp_tries_5, 
                C1=>st_0_adj_12558, D1=>u_sd_n55_adj_12508, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>resp_tries_5, C0=>u_sd_n76352, D0=>u_sd_n4, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n73_adj_12515, Q1=>open, OFX0=>open, 
                F0=>u_sd_n55_adj_12508, Q0=>open);
    u_sd_SLICE_508I: SLOGICB
      generic map (LUT0_INITVAL=>X"F074", LUT1_INITVAL=>X"8F80")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n4, B1=>u_sd_n52748, 
                C1=>st_0_adj_12558, D1=>resp_tries_0, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>spi_done, C0=>resp_tries_0, D0=>u_sd_n76382, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n72_adj_12511, Q1=>open, OFX0=>open, F0=>u_sd_n52748, 
                Q0=>open);
    u_sd_SLICE_509I: SLOGICB
      generic map (LUT0_INITVAL=>X"C8CC", LUT1_INITVAL=>X"FFEF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76488, B1=>u_sd_n78001, 
                C1=>st_3_adj_12556, D1=>st_0_adj_12558, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76410, B0=>u_sd_n72231, C0=>u_sd_n76489, 
                D0=>st_0_adj_12558, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n72231, Q1=>open, OFX0=>open, 
                F0=>u_sd_n71589, Q0=>open);
    u_ctrl_u_cmd_SLICE_510I: SLOGICB
      generic map (LUT0_INITVAL=>X"FCDC", LUT1_INITVAL=>X"0310")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_4, 
                B1=>u_ctrl_u_cmd_cmd_opcode_1, C1=>u_ctrl_u_cmd_cmd_opcode_5, 
                D1=>u_ctrl_u_cmd_cmd_opcode_0, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_cmd_arg_7, B0=>u_ctrl_u_cmd_n52, 
                C0=>u_ctrl_u_cmd_n76447, D0=>u_ctrl_u_cmd_cmd_opcode_0, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n52, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n40, Q0=>open);
    u_dbg_status_SLICE_511I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFEB", LUT1_INITVAL=>X"E0A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n76335, 
                B1=>u_dbg_status_n9, C1=>u_dbg_status_n75275, 
                D1=>u_dbg_status_n73435, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_6, B0=>u_dbg_status_msg_idx_5, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_msg_idx_4, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n66563, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n76335, Q0=>open);
    u_dbg_status_SLICE_512I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF6", LUT1_INITVAL=>X"8880")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n71745, 
                B1=>u_dbg_status_n71694, C1=>u_dbg_status_n5, 
                D1=>u_dbg_status_n76408, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_4, B0=>u_dbg_status_msg_idx_5, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_msg_idx_6, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n71538, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n5, Q0=>open);
    u_dbg_status_SLICE_513I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFF", LUT1_INITVAL=>X"FF33")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_dbg_status_msg_idx_0, C1=>'X', 
                D1=>u_dbg_status_msg_idx_2, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_n76469, B0=>u_dbg_status_n76452, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_msg_idx_4, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n76469, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n71999, Q0=>open);
    u_dbg_status_SLICE_514I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"BBBB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_6, 
                B1=>u_dbg_status_msg_idx_5, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_dbg_status_n76452, B0=>u_dbg_status_msg_idx_4, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_n76407, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n76452, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n66256, Q0=>open);
    u_dbg_status_SLICE_515I: SLOGICB
      generic map (LUT0_INITVAL=>X"5050", LUT1_INITVAL=>X"FFF7")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baud_ctr_0, 
                B1=>u_dbg_status_n74242, C1=>u_dbg_status_n73557, 
                D1=>u_dbg_status_n73559, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_n31, B0=>'X', C0=>u_dbg_status_bit_idx_0, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n31, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n76332, Q0=>open);
    u_dbg_status_SLICE_516I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_2, 
                B1=>u_dbg_status_msg_idx_0, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_dbg_status_n76453, B0=>u_dbg_status_n76472, 
                C0=>u_dbg_status_n76474, D0=>u_dbg_status_msg_idx_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n76453, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n55, Q0=>open);
    u_dbg_status_SLICE_517I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"C800")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n76466, 
                B1=>u_dbg_status_n73199, C1=>u_dbg_status_n76411, 
                D1=>u_dbg_status_n76334, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_4, B0=>u_dbg_status_msg_idx_0, 
                C0=>u_dbg_status_n76471, D0=>u_dbg_status_n76413, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n73201, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n76334, Q0=>open);
    u_dbg_status_SLICE_518I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"A020")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n76361, 
                B1=>u_dbg_status_n76402, C1=>u_dbg_status_n13, 
                D1=>u_dbg_status_n76365, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_n76474, B0=>u_dbg_status_msg_idx_2, 
                C0=>u_dbg_status_n76475, D0=>u_dbg_status_n76472, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n73199, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n13, Q0=>open);
    u_dbg_status_SLICE_519I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n66256, 
                B1=>u_dbg_status_n66260, C1=>u_dbg_status_n55, 
                D1=>u_dbg_status_n66235, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_n76471, B0=>u_dbg_status_n76472, 
                C0=>u_dbg_status_msg_idx_0, D0=>u_dbg_status_n76452, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n71694, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n66235, Q0=>open);
    u_dbg_status_SLICE_520I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"F7F7")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_1, 
                B1=>u_dbg_status_msg_idx_0, C1=>u_dbg_status_msg_idx_2, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_msg_idx_4, 
                B0=>u_dbg_status_n76466, C0=>u_dbg_status_msg_idx_3, 
                D0=>u_dbg_status_n76474, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_dbg_status_n76466, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n65, Q0=>open);
    u_dbg_status_SLICE_521I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_6, 
                B1=>'X', C1=>u_dbg_status_msg_idx_5, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_dbg_status_msg_idx_4, B0=>u_dbg_status_n76474, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_n76476, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n76474, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n66260, Q0=>open);
    u_dbg_status_SLICE_522I: SLOGICB
      generic map (LUT0_INITVAL=>X"8400", LUT1_INITVAL=>X"C0C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_dbg_status_msg_idx_4, C1=>u_dbg_status_msg_idx_3, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_msg_idx_6, 
                B0=>u_dbg_status_n76402, C0=>u_dbg_status_msg_idx_5, 
                D0=>u_dbg_status_n76468, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_dbg_status_n76468, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n24_adj_12533, Q0=>open);
    u_dbg_status_SLICE_523I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>baud_ctr_10, C1=>'X', 
                D1=>baud_ctr_11, DI1=>'X', DI0=>'X', A0=>baud_ctr_4, 
                B0=>u_dbg_status_n73545, C0=>u_dbg_status_n73549, 
                D0=>baud_ctr_9, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_dbg_status_n73545, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n73557, Q0=>open);
    u_dbg_status_SLICE_524I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baud_ctr_14, B1=>baud_ctr_12, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>baud_ctr_7, 
                B0=>u_dbg_status_n73543, C0=>baud_ctr_8, D0=>baud_ctr_15, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n73543, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n73559, Q0=>open);
    u_dbg_status_SLICE_525I: SLOGICB
      generic map (LUT0_INITVAL=>X"2F20", LUT1_INITVAL=>X"3222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n73293, 
                B1=>u_dbg_status_msg_idx_6, C1=>u_dbg_status_n75022, 
                D1=>u_dbg_status_msg_idx_5, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_n75017, B0=>u_dbg_status_msg_idx_4, 
                C0=>u_dbg_status_msg_idx_2, D0=>u_dbg_status_n75021, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_dbg_status_n107, 
                Q1=>open, OFX0=>open, F0=>u_dbg_status_n75022, Q0=>open);
    u_dbg_status_SLICE_526I: SLOGICB
      generic map (LUT0_INITVAL=>X"A800", LUT1_INITVAL=>X"FFBF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n76474, 
                B1=>u_dbg_status_msg_idx_4, C1=>u_dbg_status_msg_idx_3, 
                D1=>u_dbg_status_n76476, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_n76361, B0=>u_dbg_status_n76405, 
                C0=>u_dbg_status_n76363, D0=>u_dbg_status_n13, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n76361, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n74244, Q0=>open);
    u_dbg_status_SLICE_527I: SLOGICB
      generic map (LUT0_INITVAL=>X"F6F6", LUT1_INITVAL=>X"AA80")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n71768, 
                B1=>u_dbg_status_n73435, C1=>u_dbg_status_n9, 
                D1=>u_dbg_status_n71606, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_0, B0=>u_dbg_status_msg_idx_1, 
                C0=>u_dbg_status_msg_idx_2, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_dbg_status_n73075, 
                Q1=>open, OFX0=>open, F0=>u_dbg_status_n73435, Q0=>open);
    u_dbg_status_SLICE_528I: SLOGICB
      generic map (LUT0_INITVAL=>X"FBFB", LUT1_INITVAL=>X"4440")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n24_adj_12533, 
                B1=>u_dbg_status_n65, C1=>u_dbg_status_n76408, 
                D1=>u_dbg_status_n76403, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_1, B0=>u_dbg_status_msg_idx_0, 
                C0=>u_dbg_status_msg_idx_2, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_dbg_status_n71681, 
                Q1=>open, OFX0=>open, F0=>u_dbg_status_n76408, Q0=>open);
    u_dbg_status_SLICE_529I: SLOGICB
      generic map (LUT0_INITVAL=>X"FBFB", LUT1_INITVAL=>X"ECFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n76392, 
                B1=>u_dbg_status_n76413, C1=>u_dbg_status_n76407, 
                D1=>u_dbg_status_msg_idx_4, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_0, B0=>u_dbg_status_msg_idx_1, 
                C0=>u_dbg_status_msg_idx_2, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_dbg_status_n71768, 
                Q1=>open, OFX0=>open, F0=>u_dbg_status_n76407, Q0=>open);
    u_dbg_status_SLICE_530I: SLOGICB
      generic map (LUT0_INITVAL=>X"CFFF", LUT1_INITVAL=>X"F1FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n9, 
                B1=>u_dbg_status_n76473, C1=>u_dbg_status_n24_adj_12533, 
                D1=>u_dbg_status_n20, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_dbg_status_msg_idx_0, C0=>u_dbg_status_msg_idx_2, 
                D0=>u_dbg_status_msg_idx_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_dbg_status_n73297, Q1=>open, 
                OFX0=>open, F0=>u_dbg_status_n9, Q0=>open);
    u_dbg_status_SLICE_531I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBDD", LUT1_INITVAL=>X"EEE0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n76359, 
                B1=>u_dbg_status_n76411, C1=>u_dbg_status_n76473, 
                D1=>u_dbg_status_n72377, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_1, B0=>u_dbg_status_msg_idx_0, 
                C0=>'X', D0=>u_dbg_status_msg_idx_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_dbg_status_n73073, 
                Q1=>open, OFX0=>open, F0=>u_dbg_status_n76359, Q0=>open);
    u_cam_cfg_SLICE_532I: SLOGICB
      generic map (LUT0_INITVAL=>X"C808", LUT1_INITVAL=>X"00CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>tick, C1=>'X', 
                D1=>st_3, DI1=>'X', DI0=>'X', A0=>u_cam_cfg_n76508, 
                B0=>u_cam_cfg_n73643, C0=>st_2, D0=>u_cam_cfg_n71654, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n73643, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_SD_CLK_c_enable_251, 
                Q0=>open);
    u_cam_cfg_SLICE_533I: SLOGICB
      generic map (LUT0_INITVAL=>X"2000", LUT1_INITVAL=>X"3030")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_cam_cfg_st_1, 
                C1=>st_2, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_n76446, 
                B0=>u_cam_cfg_phase_0, C0=>st_0, D0=>u_cam_cfg_phase_1, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n76446, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n72493, Q0=>open);
    u_cam_cfg_SLICE_534I: SLOGICB
      generic map (LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"5050")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3, B1=>'X', C1=>st_0, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>st_2, B0=>u_cam_cfg_st_1, 
                C0=>tick, D0=>n76448, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n76448, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n68901, Q0=>open);
    u_cam_cfg_SLICE_535I: SLOGICB
      generic map (LUT0_INITVAL=>X"040C", LUT1_INITVAL=>X"F000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>byte_idx_0, 
                D1=>byte_idx_1, DI1=>'X', DI0=>'X', A0=>st_0, 
                B0=>u_cam_cfg_n77999, C0=>u_cam_cfg_st_1, D0=>u_cam_cfg_n76460, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n76460, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n71654, Q0=>open);
    u_cam_cfg_SLICE_536I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF55", LUT1_INITVAL=>X"0F08")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>u_cam_cfg_st_1, 
                C1=>u_cam_cfg_n58324, D1=>st_2, DI1=>'X', DI0=>'X', A0=>tick, 
                B0=>'X', C0=>'X', D0=>st_3, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_cam_cfg_SD_CLK_c_enable_4, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n58324, Q0=>open);
    u_cam_cfg_SLICE_537I: SLOGICB
      generic map (LUT0_INITVAL=>X"0004", LUT1_INITVAL=>X"C0C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>st_3, C1=>st_0, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n76448, B0=>tick, 
                C0=>u_cam_cfg_n71930, D0=>n76441, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n71930, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n63241, Q0=>open);
    u_cam_cfg_SLICE_538I: SLOGICB
      generic map (LUT0_INITVAL=>X"0400", LUT1_INITVAL=>X"FFF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>u_cam_cfg_bitn_2, D1=>u_cam_cfg_bitn_1, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_n76464, B0=>u_cam_cfg_phase_0, 
                C0=>u_cam_cfg_bitn_0, D0=>u_cam_cfg_phase_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n76464, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n76354, Q0=>open);
    u_cam_cfg_SLICE_539I: SLOGICB
      generic map (LUT0_INITVAL=>X"4500", LUT1_INITVAL=>X"888C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n76444, B1=>tick, 
                C1=>u_cam_cfg_n16, D1=>u_cam_cfg_n12, DI1=>'X', DI0=>'X', 
                A0=>st_0, B0=>u_cam_cfg_n76398, C0=>u_cam_cfg_phase_1, 
                D0=>st_2, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_SD_CLK_c_enable_248, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n12, Q0=>open);
    u_cam_cfg_SLICE_540I: SLOGICB
      generic map (LUT0_INITVAL=>X"4050", LUT1_INITVAL=>X"C0C4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n72503, B1=>tick, 
                C1=>st_3, D1=>u_cam_cfg_n76558, DI1=>'X', DI0=>'X', A0=>st_0, 
                B0=>u_cam_cfg_n76398, C0=>u_cam_cfg_n76446, 
                D0=>u_cam_cfg_phase_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_SD_CLK_c_enable_246, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n72503, Q0=>open);
    u_cam_cfg_SLICE_541I: SLOGICB
      generic map (LUT0_INITVAL=>X"8C04", LUT1_INITVAL=>X"1100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_1, B1=>st_2, 
                C1=>'X', D1=>st_0, DI1=>'X', DI0=>'X', A0=>st_3, B0=>tick, 
                C0=>u_cam_cfg_n72493, D0=>u_cam_cfg_n76385, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n76385, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_SD_CLK_c_enable_30, Q0=>open);
    u_cam_cfg_SLICE_542I: SLOGICB
      generic map (LUT0_INITVAL=>X"1054", LUT1_INITVAL=>X"F000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>st_0, 
                D1=>n15, DI1=>'X', DI0=>'X', A0=>u_cam_cfg_st_1, B0=>st_2, 
                C0=>u_cam_cfg_n56359, D0=>u_cam_cfg_phase_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n56359, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n75002, Q0=>open);
    u_cam_cfg_SLICE_543I: SLOGICB
      generic map (LUT0_INITVAL=>X"22A0", LUT1_INITVAL=>X"CC00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_cam_cfg_phase_0, 
                C1=>'X', D1=>u_cam_cfg_phase_1, DI1=>'X', DI0=>'X', A0=>st_0, 
                B0=>u_cam_cfg_n77999, C0=>n15, D0=>st_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n77999, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n16, Q0=>open);
    u_cam_cfg_SLICE_544I: SLOGICB
      generic map (LUT0_INITVAL=>X"EC20", LUT1_INITVAL=>X"CCC4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n77990, B1=>tick, 
                C1=>st_3, D1=>u_cam_cfg_st_1, DI1=>'X', DI0=>'X', A0=>st_0, 
                B0=>st_2, C0=>n15, D0=>u_cam_cfg_n76513, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_SD_CLK_c_enable_247, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n77990, Q0=>open);
    u_cam_cfg_SLICE_545I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"0002")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>tick, B1=>n15, 
                C1=>u_cam_cfg_n73907, D1=>u_cam_cfg_n18, DI1=>'X', DI0=>'X', 
                A0=>st_0, B0=>st_2, C0=>st_3, D0=>u_cam_cfg_st_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_SD_CLK_c_enable_244, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n73907, Q0=>open);
    u_cam_cfg_SLICE_546I: SLOGICB
      generic map (LUT0_INITVAL=>X"C0C4", LUT1_INITVAL=>X"40E0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>u_cam_cfg_n76398, 
                C1=>u_cam_cfg_n76446, D1=>u_cam_cfg_phase_0, DI1=>'X', 
                DI0=>'X', A0=>u_cam_cfg_n19, B0=>tick, C0=>st_3, 
                D0=>u_cam_cfg_n75002, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n19, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_SD_CLK_c_enable_245, Q0=>open);
    u_cam_cfg_SLICE_547I: SLOGICB
      generic map (LUT0_INITVAL=>X"00AA", LUT1_INITVAL=>X"0888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n76507, 
                B1=>u_cam_cfg_n77999, C1=>byte_idx_0, D1=>byte_idx_1, DI1=>'X', 
                DI0=>'X', A0=>st_0, B0=>'X', C0=>'X', D0=>u_cam_cfg_st_1, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n4_adj_12531, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n76507, Q0=>open);
    u_cam_cfg_SLICE_548I: SLOGICB
      generic map (LUT0_INITVAL=>X"A0A0", LUT1_INITVAL=>X"C808")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n76508, 
                B1=>u_cam_cfg_n73643, C1=>st_2, D1=>u_cam_cfg_n4_adj_12531, 
                DI1=>'X', DI0=>'X', A0=>st_0, B0=>'X', C0=>u_cam_cfg_st_1, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_SD_CLK_c_enable_38, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n76508, Q0=>open);
    u_cam_cfg_u_rom_SLICE_549I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_n72676, 
                B1=>u_cam_cfg_u_rom_n73363, C1=>u_cam_cfg_u_rom_n73361, 
                D1=>u_cam_cfg_u_rom_n73367, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_rom_entry_23, B0=>u_cam_cfg_rom_entry_10, 
                C0=>u_cam_cfg_rom_entry_11, D0=>u_cam_cfg_rom_entry_16, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n18, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_u_rom_n73361, Q0=>open);
    u_cam_cfg_u_rom_SLICE_550I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_rom_entry_8, 
                B1=>u_cam_cfg_rom_entry_20, C1=>u_cam_cfg_rom_entry_17, 
                D1=>u_cam_cfg_rom_entry_9, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_rom_entry_15, B0=>u_cam_cfg_rom_entry_18, 
                C0=>u_cam_cfg_rom_entry_13, D0=>u_cam_cfg_u_rom_n73365, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_u_rom_n73365, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_u_rom_n73367, Q0=>open);
    u_cam_cfg_u_rom_SLICE_551I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_u_rom_rom_entry_3, 
                B1=>u_cam_cfg_u_rom_rom_entry_0, 
                C1=>u_cam_cfg_u_rom_rom_entry_5, 
                D1=>u_cam_cfg_u_rom_rom_entry_7, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_u_rom_n76287, B0=>u_cam_cfg_u_rom_rom_entry_2, 
                C0=>u_cam_cfg_u_rom_rom_entry_4, D0=>u_cam_cfg_u_rom_n73341, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_u_rom_n73341, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_u_rom_n72676, Q0=>open);
    SLICE_552I: SLOGICB
      generic map (LUT0_INITVAL=>X"D050", LUT1_INITVAL=>X"000F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>st_3_adj_12556, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>n32073, C0=>n76455, D0=>n76414, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n76455, Q1=>open, 
                OFX0=>open, F0=>n75266, Q0=>open);
    SLICE_553I: SLOGICB
      generic map (LUT0_INITVAL=>X"0800", LUT1_INITVAL=>X"C0C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>st_3_adj_12556, 
                C1=>st_2_adj_12557, D1=>'X', DI1=>'X', DI0=>'X', A0=>n76458, 
                B0=>n76457, C0=>spi_done, D0=>wr_count_0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n76458, Q1=>open, 
                OFX0=>open, F0=>n71619, Q0=>open);
    SLICE_554I: SLOGICB
      generic map (LUT0_INITVAL=>X"C8FA", LUT1_INITVAL=>X"DDFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>st_0_adj_12558, C1=>'X', D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>n76400, B0=>n76378, C0=>n78000, D0=>spi_done, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n76400, Q1=>open, 
                OFX0=>open, F0=>n73405, Q0=>open);
    SLICE_555I: SLOGICB
      generic map (LUT0_INITVAL=>X"AF0F", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n65860, B1=>n71517, 
                C1=>u_sd_spi_rx_7, D1=>u_sd_spi_rx_3, DI1=>'X', DI0=>'X', 
                A0=>n32073, B0=>'X', C0=>spi_done, D0=>n76414, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n76414, Q1=>open, 
                OFX0=>open, F0=>n76345, Q0=>open);
    u_sdram_SLICE_556I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD", LUT1_INITVAL=>X"FAF8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_refresh_cnt_10, 
                B1=>u_sdram_n73585, C1=>u_sdram_n73593, D1=>u_sdram_n16, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_wr_ready_N_2466, 
                B0=>u_sdram_refresh_req_N_2484, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_refresh_req_N_2484, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n28678, Q0=>open);
    u_sdram_SLICE_557I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_refresh_cnt_14, 
                B1=>u_sdram_refresh_cnt_15, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sdram_n73589, B0=>u_sdram_refresh_cnt_12, 
                C0=>u_sdram_refresh_cnt_13, D0=>u_sdram_refresh_cnt_11, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n73589, Q1=>open, OFX0=>open, F0=>u_sdram_n73593, 
                Q0=>open);
    u_sd_SLICE_558I: SLOGICB
      generic map (LUT0_INITVAL=>X"F5F5", LUT1_INITVAL=>X"8880")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76373, B1=>u_sd_n71589, 
                C1=>u_sd_n74172, D1=>n78000, DI1=>'X', DI0=>'X', 
                A0=>st_2_adj_12557, B0=>'X', C0=>st_0_adj_12558, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n73283, Q1=>open, OFX0=>open, F0=>u_sd_n74172, 
                Q0=>open);
    u_sd_SLICE_559I: SLOGICB
      generic map (LUT0_INITVAL=>X"EE77", LUT1_INITVAL=>X"F8F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n76400, B1=>u_sd_n76465, 
                C1=>n78000, D1=>u_sd_n76370, DI1=>'X', DI0=>'X', A0=>u_sd_st_1, 
                B0=>st_0_adj_12558, C0=>'X', D0=>st_2_adj_12557, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n74291, 
                Q1=>open, OFX0=>open, F0=>u_sd_n76370, Q0=>open);
    u_sd_SLICE_560I: SLOGICB
      generic map (LUT0_INITVAL=>X"5140", LUT1_INITVAL=>X"22F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76002, 
                B1=>st_3_adj_12556, C1=>u_sd_n76004, D1=>st_0_adj_12558, 
                DI1=>'X', DI0=>'X', A0=>u_sd_n78014, B0=>u_sd_st_4, 
                C0=>u_sd_n76001, D0=>u_sd_n77991, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n77991, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76007, Q0=>open);
    u_sd_SLICE_561I: SLOGICB
      generic map (LUT0_INITVAL=>X"3210", LUT1_INITVAL=>X"2E22")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n75962, 
                B1=>st_0_adj_12558, C1=>st_3_adj_12556, D1=>u_sd_n75960, 
                DI1=>'X', DI0=>'X', A0=>u_sd_st_4, B0=>u_sd_n78014, 
                C0=>u_sd_n77992, D0=>u_sd_n75959, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n77992, Q1=>open, OFX0=>open, 
                F0=>u_sd_n75965, Q0=>open);
    u_sd_SLICE_562I: SLOGICB
      generic map (LUT0_INITVAL=>X"3202", LUT1_INITVAL=>X"C000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_st_1, 
                C1=>resp_tries_5, D1=>u_sd_n70457, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n72470, B0=>u_sd_n78014, C0=>st_0_adj_12558, 
                D0=>u_sd_n71522, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n72470, Q1=>open, OFX0=>open, 
                F0=>u_sd_n77995, Q0=>open);
    u_sd_SLICE_563I: SLOGICB
      generic map (LUT0_INITVAL=>X"0909", LUT1_INITVAL=>X"FEF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76538, B1=>n78000, 
                C1=>u_sd_n72209, D1=>u_sd_n73515, DI1=>'X', DI0=>'X', 
                A0=>st_0_adj_12558, B0=>u_sd_st_1, C0=>st_2_adj_12557, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n72959, Q1=>open, OFX0=>open, F0=>u_sd_n76538, 
                Q0=>open);
    u_sd_SLICE_564I: SLOGICB
      generic map (LUT0_INITVAL=>X"3020", LUT1_INITVAL=>X"FFFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>'X', 
                C1=>st_3_adj_12556, D1=>u_sd_n78014, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>u_sd_n76410, C0=>st_0_adj_12558, 
                D0=>st_2_adj_12557, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76410, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76542, Q0=>open);
    u_sd_SLICE_565I: SLOGICB
      generic map (LUT0_INITVAL=>X"D0F0", LUT1_INITVAL=>X"AAFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, B1=>'X', 
                C1=>'X', D1=>u_sd_cmd_i_0, DI1=>'X', DI0=>'X', 
                A0=>u_sd_cmd_i_2, B0=>u_sd_n76442, C0=>n76458, D0=>spi_done, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76442, Q1=>open, OFX0=>open, F0=>u_sd_n76350, 
                Q0=>open);
    u_sd_SLICE_566I: SLOGICB
      generic map (LUT0_INITVAL=>X"AEAA", LUT1_INITVAL=>X"DCCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n65894, B1=>u_sd_n151, 
                C1=>u_sd_n706, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>st_2_adj_12557, B0=>u_sd_cmd_i_2, C0=>u_sd_n76442, 
                D0=>spi_done, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n84, Q1=>open, OFX0=>open, F0=>u_sd_n706, Q0=>open);
    u_sd_SLICE_567I: SLOGICB
      generic map (LUT0_INITVAL=>X"FCFC", LUT1_INITVAL=>X"FFDF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n76470, 
                C1=>u_sd_st_1, D1=>u_sd_n76484, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_sd_n78014, C0=>st_3_adj_12556, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76372, Q1=>open, 
                OFX0=>open, F0=>u_sd_n76484, Q0=>open);
    u_sd_SLICE_568I: SLOGICB
      generic map (LUT0_INITVAL=>X"88D8", LUT1_INITVAL=>X"FFAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, B1=>'X', 
                C1=>'X', D1=>u_sd_spi_start, DI1=>'X', DI0=>'X', 
                A0=>u_sd_SD_CLK_c_enable_234, B0=>u_sd_spi_tx_2, C0=>u_sd_n10, 
                D0=>u_sd_cmd_i_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_SD_CLK_c_enable_234, Q1=>open, OFX0=>open, 
                F0=>u_sd_n426, Q0=>open);
    u_sd_SLICE_569I: SLOGICB
      generic map (LUT0_INITVAL=>X"88A8", LUT1_INITVAL=>X"0302")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_4, 
                C1=>st_3_adj_12556, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n71627, B0=>resp_tries_7, C0=>spi_done, 
                D0=>u_sd_n76382, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n71627, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76070, Q0=>open);
    u_sd_SLICE_570I: SLOGICB
      generic map (LUT0_INITVAL=>X"F040", LUT1_INITVAL=>X"ACA0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76039, B1=>u_sd_n76042, 
                C1=>st_0_adj_12558, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76382, B0=>spi_done, C0=>u_sd_n71627, 
                D0=>resp_tries_6, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n77989, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76039, Q0=>open);
    u_sd_SLICE_571I: SLOGICB
      generic map (LUT0_INITVAL=>X"A0E4", LUT1_INITVAL=>X"CCCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n292, B1=>u_sd_n425, 
                C1=>u_sd_st_1, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_SD_CLK_c_enable_234, B0=>u_sd_n16, C0=>u_sd_spi_tx_3, 
                D0=>u_sd_cmd_i_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n77028, Q1=>open, OFX0=>open, 
                F0=>u_sd_n425, Q0=>open);
    u_sd_SLICE_572I: SLOGICB
      generic map (LUT0_INITVAL=>X"2320", LUT1_INITVAL=>X"A000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>'X', 
                C1=>resp_tries_0, D1=>u_sd_n70457, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n71520, B0=>u_sd_n78014, C0=>st_0_adj_12558, 
                D0=>u_sd_n72469, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n72469, Q1=>open, OFX0=>open, 
                F0=>u_sd_n77996, Q0=>open);
    u_sd_SLICE_573I: SLOGICB
      generic map (LUT0_INITVAL=>X"EA22", LUT1_INITVAL=>X"3030")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_st_4, 
                C1=>u_sd_n75971, D1=>'X', DI1=>'X', DI0=>'X', A0=>resp_tries_3, 
                B0=>st_0_adj_12558, C0=>u_sd_n76352, D0=>u_sd_n4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n75972, 
                Q1=>open, OFX0=>open, F0=>u_sd_n75971, Q0=>open);
    u_sd_SLICE_574I: SLOGICB
      generic map (LUT0_INITVAL=>X"BA10", LUT1_INITVAL=>X"CDC8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, B1=>u_sd_n424, 
                C1=>u_sd_st_1, D1=>u_sd_n291, DI1=>'X', DI0=>'X', 
                A0=>u_sd_SD_CLK_c_enable_234, B0=>u_sd_cmd_i_1, C0=>u_sd_n11, 
                D0=>u_sd_spi_tx_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76995, Q1=>open, OFX0=>open, 
                F0=>u_sd_n424, Q0=>open);
    u_sd_SLICE_575I: SLOGICB
      generic map (LUT0_INITVAL=>X"A3A0", LUT1_INITVAL=>X"F0E2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n288, B1=>u_sd_st_1, 
                C1=>u_sd_n421, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_spi_tx_7, B0=>u_sd_cmd_i_1, 
                C0=>u_sd_SD_CLK_c_enable_234, D0=>u_sd_n73221, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n77003, 
                Q1=>open, OFX0=>open, F0=>u_sd_n421, Q0=>open);
    u_sd_SLICE_576I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCD8", LUT1_INITVAL=>X"DDDC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_SD_CLK_c_enable_234, 
                B1=>u_sd_spi_tx_2, C1=>n14, D1=>n13, DI1=>'X', DI0=>'X', 
                A0=>st_2_adj_12557, B0=>u_sd_n426, C0=>u_sd_n293, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n293, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76861, Q0=>open);
    u_sd_SLICE_577I: SLOGICB
      generic map (LUT0_INITVAL=>X"C480", LUT1_INITVAL=>X"5A5A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_2, B1=>'X', 
                C1=>u_sd_cmd_i_1, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sd_cmd_i_0, B0=>u_sd_n60068, C0=>u_sd_cmd_frame_7, 
                D0=>u_sd_cmd_frame_15, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n60068, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73221, Q0=>open);
    u_sd_SLICE_578I: SLOGICB
      generic map (LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"2000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_0, 
                B1=>u_sd_cmd_i_1, C1=>u_sd_cmd_i_2, D1=>spi_done, DI1=>'X', 
                DI0=>'X', A0=>u_sd_n76352, B0=>n76458, C0=>resp_tries_2, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76352, Q1=>open, OFX0=>open, 
                F0=>u_sd_n75962, Q0=>open);
    u_sd_SLICE_579I: SLOGICB
      generic map (LUT0_INITVAL=>X"2320", LUT1_INITVAL=>X"8800")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>resp_tries_1, 
                C1=>'X', D1=>u_sd_n70457, DI1=>'X', DI0=>'X', A0=>u_sd_n71521, 
                B0=>u_sd_n78014, C0=>st_0_adj_12558, D0=>u_sd_n72524, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n72524, 
                Q1=>open, OFX0=>open, F0=>u_sd_n77997, Q0=>open);
    u_sd_SLICE_580I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"2200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n66465, B1=>wr_count_9, 
                C1=>'X', D1=>spi_done, DI1=>'X', DI0=>'X', A0=>u_sd_n73115, 
                B0=>u_sd_n73107, C0=>u_sd_n73113, D0=>u_sd_n73111, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76341, 
                Q1=>open, OFX0=>open, F0=>n66465, Q0=>open);
    u_sd_SLICE_581I: SLOGICB
      generic map (LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"0003")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>spi_done, 
                C1=>st_3_adj_12556, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>st_0_adj_12558, B0=>resp_tries_2, C0=>u_sd_st_1, 
                D0=>u_sd_n71644, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n71644, Q1=>open, OFX0=>open, 
                F0=>u_sd_n75959, Q0=>open);
    u_sd_SLICE_582I: SLOGICB
      generic map (LUT0_INITVAL=>X"F830", LUT1_INITVAL=>X"3030")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_st_4, 
                C1=>u_sd_n75957, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n76352, 
                B0=>st_0_adj_12558, C0=>resp_tries_2, D0=>u_sd_n4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n75958, 
                Q1=>open, OFX0=>open, F0=>u_sd_n75957, Q0=>open);
    u_sd_SLICE_583I: SLOGICB
      generic map (LUT0_INITVAL=>X"3300", LUT1_INITVAL=>X"D888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>u_sd_n75982, C1=>u_sd_n75985, D1=>u_sd_st_1, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>u_sd_n78014, C0=>'X', D0=>u_sd_n77993, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n77993, Q1=>open, OFX0=>open, F0=>u_sd_n75988, 
                Q0=>open);
    u_sd_SLICE_584I: SLOGICB
      generic map (LUT0_INITVAL=>X"C8F0", LUT1_INITVAL=>X"3030")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_st_4, 
                C1=>u_sd_n75989, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n76352, 
                B0=>u_sd_n4, C0=>resp_tries_4, D0=>st_0_adj_12558, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n75990, 
                Q1=>open, OFX0=>open, F0=>u_sd_n75989, Q0=>open);
    u_sd_SLICE_585I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAAC", LUT1_INITVAL=>X"F022")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n16_adj_12517, 
                B1=>u_sd_cmd_i_1, C1=>u_sd_spi_tx_5, 
                D1=>u_sd_SD_CLK_c_enable_234, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n65527, B0=>u_sd_n290, C0=>st_2_adj_12557, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n65527, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76926, Q0=>open);
    u_sd_SLICE_586I: SLOGICB
      generic map (LUT0_INITVAL=>X"A0E4", LUT1_INITVAL=>X"CCCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n294, B1=>u_sd_n74317, 
                C1=>st_2_adj_12557, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_SD_CLK_c_enable_234, B0=>u_sd_n16_adj_12426, 
                C0=>u_sd_spi_tx_1, D0=>u_sd_cmd_i_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76961, Q1=>open, 
                OFX0=>open, F0=>u_sd_n74317, Q0=>open);
    u_sd_SLICE_587I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFC", LUT1_INITVAL=>X"CFCE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n73785, 
                C1=>st_0_adj_12558, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>st_2_adj_12557, C0=>st_3_adj_12556, D0=>u_sd_n78014, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n72519, Q1=>open, OFX0=>open, F0=>u_sd_n73785, 
                Q0=>open);
    u_sd_SLICE_588I: SLOGICB
      generic map (LUT0_INITVAL=>X"E0CC", LUT1_INITVAL=>X"5050")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>'X', 
                C1=>u_sd_n76026, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n76352, 
                B0=>resp_tries_6, C0=>u_sd_n4, D0=>st_0_adj_12558, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76027, 
                Q1=>open, OFX0=>open, F0=>u_sd_n76026, Q0=>open);
    u_sd_SLICE_589I: SLOGICB
      generic map (LUT0_INITVAL=>X"EFEF", LUT1_INITVAL=>X"0032")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n74150, B1=>u_sd_n76409, 
                C1=>n78000, D1=>u_sd_n76426, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n78014, B0=>u_sd_st_4, C0=>st_3_adj_12556, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n73415, Q1=>open, OFX0=>open, F0=>n78000, Q0=>open);
    u_sd_SLICE_590I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444", LUT1_INITVAL=>X"ACA0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76070, B1=>u_sd_st_1, 
                C1=>st_0_adj_12558, D1=>u_sd_n76073, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n78014, B0=>u_sd_n77988, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n77988, 
                Q1=>open, OFX0=>open, F0=>u_sd_n76076, Q0=>open);
    u_sd_SLICE_591I: SLOGICB
      generic map (LUT0_INITVAL=>X"AC8C", LUT1_INITVAL=>X"5500")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>'X', C1=>'X', 
                D1=>u_sd_n76063, DI1=>'X', DI0=>'X', A0=>u_sd_n4, 
                B0=>resp_tries_7, C0=>st_0_adj_12558, D0=>u_sd_n76352, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76064, 
                Q1=>open, OFX0=>open, F0=>u_sd_n76063, Q0=>open);
    u_sd_SLICE_592I: SLOGICB
      generic map (LUT0_INITVAL=>X"88F0", LUT1_INITVAL=>X"2200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n78014, 
                C1=>'X', D1=>st_0_adj_12558, DI1=>'X', DI0=>'X', A0=>n20, 
                B0=>u_sd_n60683, C0=>resp_tries_7, D0=>u_sd_st_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n60683, 
                Q1=>open, OFX0=>open, F0=>u_sd_n69, Q0=>open);
    u_sd_SLICE_593I: SLOGICB
      generic map (LUT0_INITVAL=>X"A0CC", LUT1_INITVAL=>X"4544")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>u_sd_n76027, C1=>st_3_adj_12556, D1=>u_sd_n69_adj_12448, 
                DI1=>'X', DI0=>'X', A0=>n23, B0=>resp_tries_6, C0=>u_sd_n60683, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n61_adj_12447, Q1=>open, OFX0=>open, 
                F0=>u_sd_n69_adj_12448, Q0=>open);
    u_sd_SLICE_594I: SLOGICB
      generic map (LUT0_INITVAL=>X"E444", LUT1_INITVAL=>X"2232")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n73_adj_12515, 
                B1=>st_2_adj_12557, C1=>u_sd_n69_adj_12450, D1=>st_3_adj_12556, 
                DI1=>'X', DI0=>'X', A0=>u_sd_st_1, B0=>resp_tries_5, 
                C0=>u_sd_n60683, D0=>n26, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n61_adj_12449, Q1=>open, OFX0=>open, 
                F0=>u_sd_n69_adj_12450, Q0=>open);
    u_sd_SLICE_595I: SLOGICB
      generic map (LUT0_INITVAL=>X"A0CC", LUT1_INITVAL=>X"4544")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>u_sd_n75990, C1=>st_3_adj_12556, D1=>u_sd_n69_adj_12453, 
                DI1=>'X', DI0=>'X', A0=>u_sd_n60683, B0=>resp_tries_4, C0=>n29, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n61_adj_12451, Q1=>open, OFX0=>open, 
                F0=>u_sd_n69_adj_12453, Q0=>open);
    u_sd_SLICE_596I: SLOGICB
      generic map (LUT0_INITVAL=>X"FE00", LUT1_INITVAL=>X"FFFC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>st_2_adj_12557, 
                C1=>u_sd_st_1, D1=>st_0_adj_12558, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n78001, B0=>st_3_adj_12556, C0=>u_sd_n76412, 
                D0=>u_sd_n76421, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76412, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73393, Q0=>open);
    u_sd_SLICE_597I: SLOGICB
      generic map (LUT0_INITVAL=>X"C0AA", LUT1_INITVAL=>X"4544")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>u_sd_n75972, C1=>st_3_adj_12556, D1=>u_sd_n69_adj_12456, 
                DI1=>'X', DI0=>'X', A0=>resp_tries_3, B0=>n32, C0=>u_sd_n60683, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n61_adj_12454, Q1=>open, OFX0=>open, 
                F0=>u_sd_n69_adj_12456, Q0=>open);
    u_sd_SLICE_598I: SLOGICB
      generic map (LUT0_INITVAL=>X"F022", LUT1_INITVAL=>X"DDDC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_SD_CLK_c_enable_234, 
                B1=>u_sd_spi_tx_6, C1=>n14, D1=>n13, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n20_adj_12457, B0=>u_sd_st_1, C0=>u_sd_n74300, 
                D0=>st_2_adj_12557, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n20_adj_12457, Q1=>open, OFX0=>open, 
                F0=>u_sd_n74298, Q0=>open);
    u_sd_SLICE_599I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76376, B1=>u_sd_n71589, 
                C1=>u_sd_n76373, D1=>u_sd_n76364, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_n76484, C0=>st_0_adj_12558, 
                D0=>u_sd_n76488, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n73411, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76364, Q0=>open);
    u_sd_SLICE_600I: SLOGICB
      generic map (LUT0_INITVAL=>X"C0AA", LUT1_INITVAL=>X"2232")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n75958, 
                B1=>st_2_adj_12557, C1=>u_sd_n69_adj_12459, D1=>st_3_adj_12556, 
                DI1=>'X', DI0=>'X', A0=>resp_tries_2, B0=>u_sd_n60683, C0=>n35, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n61_adj_12458, Q1=>open, OFX0=>open, 
                F0=>u_sd_n69_adj_12459, Q0=>open);
    u_sd_SLICE_601I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"0133")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>st_0_adj_12558, 
                C1=>u_sd_n76357, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>n65860, B0=>n71517, C0=>n76482, D0=>spi_done, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n75281, 
                Q1=>open, OFX0=>open, F0=>u_sd_n76357, Q0=>open);
    u_sd_SLICE_602I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_rx_1, 
                B1=>u_sd_spi_rx_5, C1=>u_sd_spi_rx_4, D1=>u_sd_spi_rx_6, 
                DI1=>'X', DI0=>'X', A0=>n65860, B0=>n32073, C0=>n76482, 
                D0=>n71517, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n71517, Q1=>open, OFX0=>open, F0=>n76378, Q0=>open);
    u_sd_SLICE_603I: SLOGICB
      generic map (LUT0_INITVAL=>X"D580", LUT1_INITVAL=>X"4544")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, B1=>u_sd_n73, 
                C1=>st_3_adj_12556, D1=>u_sd_n69_adj_12463, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>n38, C0=>u_sd_n60683, D0=>resp_tries_1, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n61_adj_12462, Q1=>open, OFX0=>open, 
                F0=>u_sd_n69_adj_12463, Q0=>open);
    u_sd_SLICE_604I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>dummy_left_3, 
                B1=>dummy_left_6, C1=>dummy_left_5, D1=>dummy_left_7, DI1=>'X', 
                DI0=>'X', A0=>n14, B0=>n13, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n14, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76421, Q0=>open);
    u_sd_SLICE_605I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF0E", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>dummy_left_0, 
                B1=>dummy_left_2, C1=>dummy_left_4, D1=>dummy_left_1, DI1=>'X', 
                DI0=>'X', A0=>n14, B0=>n13, C0=>u_sd_SD_CLK_c_enable_234, 
                D0=>u_sd_spi_tx_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n13, Q1=>open, OFX0=>open, F0=>u_sd_n291, 
                Q0=>open);
    u_sd_SLICE_606I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCC4", LUT1_INITVAL=>X"FDFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n78014, 
                C1=>st_3_adj_12556, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_1, 
                B0=>u_sd_n71589, C0=>u_sd_n76426, D0=>u_sd_n76439, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76426, 
                Q1=>open, OFX0=>open, F0=>u_sd_n76326, Q0=>open);
    u_sd_SLICE_607I: SLOGICB
      generic map (LUT0_INITVAL=>X"5A5A", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n78014, 
                B1=>u_sd_n24_adj_12470, C1=>st_0_adj_12558, D1=>u_sd_st_4, 
                DI1=>'X', DI0=>'X', A0=>st_3_adj_12556, B0=>'X', 
                C0=>st_2_adj_12557, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n71596, Q1=>open, OFX0=>open, 
                F0=>u_sd_n24_adj_12470, Q0=>open);
    u_sd_SLICE_608I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF54", LUT1_INITVAL=>X"F202")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n295, B1=>u_sd_st_1, 
                C1=>st_2_adj_12557, D1=>u_sd_n74306, DI1=>'X', DI0=>'X', 
                A0=>u_sd_SD_CLK_c_enable_234, B0=>n14, C0=>n13, 
                D0=>u_sd_spi_tx_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n74305, Q1=>open, OFX0=>open, 
                F0=>u_sd_n295, Q0=>open);
    u_sd_SLICE_609I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCC4", LUT1_INITVAL=>X"0040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_n74158, 
                C1=>u_sd_n76481, D1=>u_sd_n78014, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_n6_adj_12471, C0=>u_sd_n76412, 
                D0=>u_sd_n76484, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n6_adj_12471, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76340, Q0=>open);
    u_sd_SLICE_610I: SLOGICB
      generic map (LUT0_INITVAL=>X"F111", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n78014, 
                C1=>st_0_adj_12558, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76431, B0=>u_sd_n76489, C0=>u_sd_cmd_frame_42, 
                D0=>u_sd_n76430, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76431, Q1=>open, OFX0=>open, 
                F0=>u_sd_n20_adj_12472, Q0=>open);
    u_sd_SLICE_611I: SLOGICB
      generic map (LUT0_INITVAL=>X"8800", LUT1_INITVAL=>X"5C0C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_half_phase, 
                B1=>u_sd_spi_start, C1=>u_sd_spi_busy, D1=>u_sd_sck_N_10287, 
                DI1=>'X', DI0=>'X', A0=>u_sd_n6, B0=>bit_cnt_0, C0=>'X', 
                D0=>u_sd_bit_cnt_2, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n6, Q1=>open, OFX0=>open, 
                F0=>u_sd_SD_CLK_c_enable_187, Q0=>open);
    u_sd_SLICE_612I: SLOGICB
      generic map (LUT0_INITVAL=>X"B3B3", LUT1_INITVAL=>X"BFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n73173, B1=>u_sd_n76376, 
                C1=>u_sd_n76364, D1=>u_sd_n76397, DI1=>'X', DI0=>'X', 
                A0=>n76414, B0=>u_sd_n6_adj_12471, C0=>spi_done, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n73179, Q1=>open, OFX0=>open, F0=>u_sd_n73173, 
                Q0=>open);
    u_sd_SLICE_613I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0C0", LUT1_INITVAL=>X"0200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>u_sd_n78001, C1=>u_sd_st_1, D1=>st_2_adj_12557, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>u_sd_n14_adj_12483, C0=>st_3_adj_12556, 
                D0=>u_sd_cmd_frame_6, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n14_adj_12483, Q1=>open, OFX0=>open, 
                F0=>u_sd_n27_adj_12481, Q0=>open);
    u_sd_SLICE_614I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0E0", LUT1_INITVAL=>X"F003")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_st_1, 
                C1=>st_3_adj_12556, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>st_0_adj_12558, B0=>u_sd_n31_adj_12486, 
                C0=>u_sd_cmd_frame_3, D0=>u_sd_n78001, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n31_adj_12486, 
                Q1=>open, OFX0=>open, F0=>u_sd_n23_adj_12487, Q0=>open);
    u_sd_SLICE_615I: SLOGICB
      generic map (LUT0_INITVAL=>X"C0E0", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>st_0_adj_12558, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n76395, 
                B0=>u_sd_cmd_frame_1, C0=>n76458, D0=>u_sd_n78001, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76395, 
                Q1=>open, OFX0=>open, F0=>u_sd_n28_adj_12488, Q0=>open);
    u_sd_SLICE_616I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"BFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n78001, 
                B1=>st_3_adj_12556, C1=>u_sd_n76437, D1=>u_sd_st_1, DI1=>'X', 
                DI0=>'X', A0=>st_2_adj_12557, B0=>st_0_adj_12558, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n60800, Q1=>open, OFX0=>open, F0=>u_sd_n76437, 
                Q0=>open);
    u_sd_SLICE_617I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF80", LUT1_INITVAL=>X"FFDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>st_0_adj_12558, 
                C1=>'X', D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n74288, B0=>u_sd_n76397, C0=>u_sd_n76399, D0=>n78000, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76397, Q1=>open, OFX0=>open, F0=>u_sd_n74297, 
                Q0=>open);
    u_sd_SLICE_618I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF4F", LUT1_INITVAL=>X"FF7F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76374, B1=>u_sd_n71589, 
                C1=>u_sd_cs_n_N_10197, D1=>u_sd_n73179, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n73191, B0=>u_sd_n74297, C0=>u_sd_n72217, 
                D0=>u_sd_n72915, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n73191, Q1=>open, OFX0=>open, 
                F0=>u_sd_n72919, Q0=>open);
    u_sd_SLICE_619I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1FF", LUT1_INITVAL=>X"2000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76409, B1=>u_sd_n76423, 
                C1=>n76400, D1=>u_sd_n76465, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n74288, B0=>n78000, C0=>u_sd_n73159, D0=>u_sd_n73317, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n74288, Q1=>open, OFX0=>open, F0=>u_sd_n72217, 
                Q0=>open);
    u_sd_SLICE_620I: SLOGICB
      generic map (LUT0_INITVAL=>X"EAAA", LUT1_INITVAL=>X"F1F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76410, B1=>u_sd_n76399, 
                C1=>u_sd_n72238, D1=>u_sd_n73393, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n4_adj_12491, B0=>u_sd_n76333, C0=>u_sd_n73421, 
                D0=>u_sd_n73415, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n4_adj_12491, Q1=>open, OFX0=>open, 
                F0=>u_sd_n72915, Q0=>open);
    u_sd_SLICE_621I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF7", LUT1_INITVAL=>X"EFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, B1=>u_sd_n78001, 
                C1=>st_2_adj_12557, D1=>st_3_adj_12556, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n71589, B0=>u_sd_n76374, C0=>u_sd_n76341, 
                D0=>u_sd_n76364, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76374, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73159, Q0=>open);
    u_sd_SLICE_622I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"FDFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3_adj_12556, 
                B1=>u_sd_n78001, C1=>u_sd_st_1, D1=>st_2_adj_12557, DI1=>'X', 
                DI0=>'X', A0=>u_sd_n73407, B0=>u_sd_n73411, C0=>n73405, 
                D0=>u_sd_cs_n_N_10197, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n73407, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73421, Q0=>open);
    u_sd_SLICE_623I: SLOGICB
      generic map (LUT0_INITVAL=>X"A000", LUT1_INITVAL=>X"FF08")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76370, B1=>u_sd_n76465, 
                C1=>u_sd_n76423, D1=>n78000, DI1=>'X', DI0=>'X', A0=>u_sd_st_1, 
                B0=>'X', C0=>st_2_adj_12557, D0=>st_0_adj_12558, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n74255, 
                Q1=>open, OFX0=>open, F0=>u_sd_n76423, Q0=>open);
    u_sd_SLICE_624I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"EFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76470, B1=>u_sd_n78001, 
                C1=>st_3_adj_12556, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n71589, B0=>u_sd_n73171, C0=>u_sd_n76333, 
                D0=>u_sd_n76366, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76366, Q1=>open, OFX0=>open, 
                F0=>u_sd_n72238, Q0=>open);
    u_sd_SLICE_625I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF0", LUT1_INITVAL=>X"FFF7")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_st_1, 
                C1=>u_sd_n76439, D1=>u_sd_n76484, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>st_0_adj_12558, D0=>st_2_adj_12557, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76373, 
                Q1=>open, OFX0=>open, F0=>u_sd_n76439, Q0=>open);
    u_sd_SLICE_626I: SLOGICB
      generic map (LUT0_INITVAL=>X"0011", LUT1_INITVAL=>X"FFCF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_mosi_N_10327_2, 
                C1=>u_sd_spi_busy, D1=>u_sd_n76477, DI1=>'X', DI0=>'X', 
                A0=>u_sd_bit_cnt_2, B0=>bit_cnt_0, C0=>'X', D0=>bit_cnt_1, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n74455, Q1=>open, OFX0=>open, F0=>u_sd_n76477, 
                Q0=>open);
    u_sd_SLICE_627I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFEC", LUT1_INITVAL=>X"BA3C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_st_1, 
                C1=>st_3_adj_12556, D1=>st_0_adj_12558, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n13_adj_12496, B0=>u_sd_n78014, C0=>st_2_adj_12557, 
                D0=>u_sd_n20_adj_12495, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n13_adj_12496, Q1=>open, OFX0=>open, 
                F0=>u_sd_n77, Q0=>open);
    u_sd_SLICE_628I: SLOGICB
      generic map (LUT0_INITVAL=>X"D555", LUT1_INITVAL=>X"00EE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>spi_done, 
                C1=>'X', D1=>u_sd_n72199, DI1=>'X', DI0=>'X', A0=>u_sd_n73317, 
                B0=>u_sd_n72973, C0=>u_sd_n73019, D0=>u_sd_n72911, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n19_adj_12498, Q1=>open, OFX0=>open, F0=>u_sd_n72199, 
                Q0=>open);
    u_sd_SLICE_629I: SLOGICB
      generic map (LUT0_INITVAL=>X"B1A0", LUT1_INITVAL=>X"5F5F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>'X', 
                C1=>st_2_adj_12557, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_4, 
                B0=>st_0_adj_12558, C0=>st_3_adj_12556, D0=>u_sd_n76489, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76489, Q1=>open, OFX0=>open, F0=>u_sd_n20_adj_12495, 
                Q0=>open);
    u_sd_SLICE_630I: SLOGICB
      generic map (LUT0_INITVAL=>X"F7FF", LUT1_INITVAL=>X"EFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76426, B1=>u_sd_n76397, 
                C1=>u_sd_n76399, D1=>u_sd_n76364, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n71589, B0=>u_sd_n76374, C0=>u_sd_n73007, 
                D0=>u_sd_n74289, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n73007, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73019, Q0=>open);
    u_sd_SLICE_631I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF7F", LUT1_INITVAL=>X"FFEF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n74288, 
                C1=>st_3_adj_12556, D1=>u_sd_n78014, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76374, B0=>u_sd_n71589, C0=>u_sd_n74289, 
                D0=>u_sd_n72899, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n74289, Q1=>open, OFX0=>open, 
                F0=>u_sd_n72911, Q0=>open);
    u_sd_SLICE_632I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAFF", LUT1_INITVAL=>X"FFDF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_n78001, 
                C1=>st_3_adj_12556, D1=>u_sd_n76478, DI1=>'X', DI0=>'X', 
                A0=>st_0_adj_12558, B0=>'X', C0=>'X', D0=>st_2_adj_12557, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76375, Q1=>open, OFX0=>open, F0=>u_sd_n76478, 
                Q0=>open);
    u_sd_SLICE_633I: SLOGICB
      generic map (LUT0_INITVAL=>X"F080", LUT1_INITVAL=>X"2000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n71589, B1=>n76400, 
                C1=>u_sd_n76366, D1=>u_sd_n73407, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76333, B0=>u_sd_n72939, C0=>u_sd_cs_n_N_10197, 
                D0=>u_sd_n76541, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n72939, Q1=>open, OFX0=>open, 
                F0=>u_sd_n74277, Q0=>open);
    u_sd_SLICE_634I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEFE", LUT1_INITVAL=>X"BFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n73229, B1=>u_sd_n74291, 
                C1=>u_sd_n76326, D1=>u_sd_n60800, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n72959, B0=>u_sd_n19_adj_12498, C0=>u_sd_n73317, 
                D0=>u_sd_n73243, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n73243, Q1=>open, OFX0=>open, 
                F0=>u_sd_n72963, Q0=>open);
    u_sd_SLICE_635I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n74255, 
                B1=>u_sd_cs_n_N_10197, C1=>u_sd_n73265, D1=>u_sd_n76333, 
                DI1=>'X', DI0=>'X', A0=>u_sd_n71537, B0=>u_sd_n4_adj_12491, 
                C0=>u_sd_n72566, D0=>u_sd_n4_adj_12499, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n71537, Q1=>open, 
                OFX0=>open, F0=>u_sd_n72949, Q0=>open);
    u_sd_SLICE_636I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"CCC4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_n71589, 
                C1=>u_sd_n76478, D1=>n78000, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n73259, B0=>u_sd_n76376, C0=>u_sd_n76340, 
                D0=>u_sd_n76397, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n73259, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73265, Q0=>open);
    u_sd_SLICE_637I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76375, B1=>u_sd_n71589, 
                C1=>u_sd_n76376, D1=>u_sd_n73483, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n73493, B0=>u_sd_n76333, C0=>u_sd_n76530, 
                D0=>u_sd_cs_n_N_10197, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n73493, Q1=>open, OFX0=>open, 
                F0=>u_sd_n72209, Q0=>open);
    u_sd_SLICE_638I: SLOGICB
      generic map (LUT0_INITVAL=>X"A800", LUT1_INITVAL=>X"3A00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n72640, B1=>n32073, 
                C1=>n76414, D1=>spi_done, DI1=>'X', DI0=>'X', A0=>n76455, 
                B0=>u_sd_n53042, C0=>sd_err, D0=>u_sd_n73389, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n53042, Q1=>open, 
                OFX0=>open, F0=>u_sd_n72634, Q0=>open);
    u_sd_SLICE_639I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"F000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>u_sd_spi_rx_2, D1=>u_sd_spi_rx_0, DI1=>'X', DI0=>'X', 
                A0=>n65860, B0=>u_sd_spi_rx_1, C0=>u_sd_spi_rx_4, 
                D0=>u_sd_spi_rx_3, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n65860, Q1=>open, OFX0=>open, F0=>u_sd_n72640, 
                Q0=>open);
    u_sd_SLICE_640I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFE2", LUT1_INITVAL=>X"FEFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3_adj_12556, 
                B1=>st_2_adj_12557, C1=>u_sd_st_1, D1=>u_sd_st_4, DI1=>'X', 
                DI0=>'X', A0=>u_sd_n72458, B0=>st_0_adj_12558, C0=>u_sd_n72643, 
                D0=>u_sd_n78014, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n72458, Q1=>open, OFX0=>open, 
                F0=>u_sd_n31, Q0=>open);
    u_sd_SLICE_641I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n66465, B1=>wr_count_9, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>spi_done, 
                B0=>u_sd_cs_n_N_10197, C0=>u_sd_n76371, D0=>u_sd_n73507, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76371, Q1=>open, OFX0=>open, F0=>u_sd_n73515, 
                Q0=>open);
    u_sd_SLICE_642I: SLOGICB
      generic map (LUT0_INITVAL=>X"0CAE", LUT1_INITVAL=>X"D580")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_n60683, 
                C1=>n41, D1=>resp_tries_0, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n69_adj_12512, B0=>u_sd_n72_adj_12511, C0=>u_sd_st_4, 
                D0=>st_3_adj_12556, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n69_adj_12512, Q1=>open, OFX0=>open, 
                F0=>u_sd_n60_adj_12513, Q0=>open);
    u_sd_SLICE_643I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F01", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>u_sd_n78014, C1=>st_2_adj_12557, D1=>u_sd_st_4, DI1=>'X', 
                DI0=>'X', A0=>u_sd_st_1, B0=>u_sd_cmd_frame_4, 
                C0=>st_3_adj_12556, D0=>u_sd_n5_adj_12514, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n5_adj_12514, 
                Q1=>open, OFX0=>open, F0=>u_sd_n25_adj_12485, Q0=>open);
    u_sd_SLICE_644I: SLOGICB
      generic map (LUT0_INITVAL=>X"0002", LUT1_INITVAL=>X"3300")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_sd_st_1, C1=>'X', 
                D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', A0=>u_sd_n76485, 
                B0=>st_3_adj_12556, C0=>u_sd_n78001, D0=>st_0_adj_12558, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76485, Q1=>open, OFX0=>open, F0=>u_sd_n60665, 
                Q0=>open);
    u_sd_SLICE_645I: SLOGICB
      generic map (LUT0_INITVAL=>X"AE00", LUT1_INITVAL=>X"AAAF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, B1=>'X', 
                C1=>u_sd_st_1, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n73525, B0=>u_sd_n76430, C0=>st_3_adj_12556, 
                D0=>u_sd_cmd_frame_41, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76430, Q1=>open, OFX0=>open, 
                F0=>u_sd_n29_adj_12473, Q0=>open);
    u_sd_SLICE_646I: SLOGICB
      generic map (LUT0_INITVAL=>X"AA00", LUT1_INITVAL=>X"FFFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76456, B1=>u_sd_n76, 
                C1=>u_sd_n78014, D1=>u_sd_n6_adj_12461, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n63, B0=>'X', C0=>'X', D0=>resp_tries_0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n63, 
                Q1=>open, OFX0=>open, F0=>u_sd_n64, Q0=>open);
    u_sd_SLICE_647I: SLOGICB
      generic map (LUT0_INITVAL=>X"88F0", LUT1_INITVAL=>X"0001")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>st_3_adj_12556, 
                C1=>st_2_adj_12557, D1=>st_0_adj_12558, DI1=>'X', DI0=>'X', 
                A0=>n51_adj_12537, B0=>u_sd_n76393, C0=>n71619, D0=>u_sd_st_4, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76393, Q1=>open, OFX0=>open, F0=>u_sd_n76313, 
                Q0=>open);
    u_ctrl_u_tx_SLICE_648I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBBB", LUT1_INITVAL=>X"EFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_n73759, 
                B1=>u_ctrl_u_tx_n73769, C1=>u_ctrl_u_tx_n74132, 
                D1=>u_ctrl_u_tx_clk_cnt_9, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_n24591, B0=>u_ctrl_u_tx_n24574, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_tx_n24574, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_tx_n28585, Q0=>open);
    u_ctrl_u_tx_SLICE_649I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF0", LUT1_INITVAL=>X"FFFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_clk_cnt_1, 
                B1=>u_ctrl_u_tx_n73757, C1=>u_ctrl_u_tx_n73753, 
                D1=>u_ctrl_u_tx_n73751, DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_u_tx_clk_cnt_13, D0=>u_ctrl_u_tx_clk_cnt_15, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_tx_n73769, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_tx_n73751, Q0=>open);
    u_ctrl_u_tx_SLICE_650I: SLOGICB
      generic map (LUT0_INITVAL=>X"5D08", LUT1_INITVAL=>X"8800")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_bit_idx_0, 
                B1=>u_ctrl_u_tx_bit_idx_2, C1=>'X', D1=>u_ctrl_u_tx_bit_idx_1, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_tx_n24589, 
                B0=>u_ctrl_u_tx_n66070, C0=>u_ctrl_u_tx_n24574, 
                D0=>u_ctrl_n24591, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_tx_n66070, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_tx_n63183, Q0=>open);
    u_ctrl_u_rx_SLICE_651I: SLOGICB
      generic map (LUT0_INITVAL=>X"0101", LUT1_INITVAL=>X"FFFB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n73325, 
                B1=>u_ctrl_u_rx_clk_cnt_8, C1=>u_ctrl_u_rx_n76497, 
                D1=>u_ctrl_u_rx_n73327, DI1=>'X', DI0=>'X', A0=>rx_s2, 
                B0=>u_ctrl_u_rx_n70443, C0=>u_ctrl_u_rx_n70276, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n70443, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n76536, Q0=>open);
    u_ctrl_u_rx_SLICE_652I: SLOGICB
      generic map (LUT0_INITVAL=>X"0008", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_1, 
                B1=>u_ctrl_u_rx_clk_cnt_10, C1=>u_ctrl_u_rx_clk_cnt_9, 
                D1=>u_ctrl_u_rx_clk_cnt_7, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n71951, B0=>u_ctrl_u_rx_n24227, 
                C0=>u_ctrl_u_rx_clk_cnt_13, D0=>u_ctrl_u_rx_n76497, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n71951, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n73707, Q0=>open);
    u_ctrl_u_rx_SLICE_653I: SLOGICB
      generic map (LUT0_INITVAL=>X"FDFF", LUT1_INITVAL=>X"FFCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_ctrl_u_rx_clk_cnt_8, C1=>'X', D1=>u_ctrl_u_rx_clk_cnt_0, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_bit_idx_0, 
                B0=>u_ctrl_u_rx_n76498, C0=>u_ctrl_u_rx_n76496, 
                D0=>u_ctrl_u_rx_n24227, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_rx_n76498, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n73849, Q0=>open);
    u_ctrl_u_rx_SLICE_654I: SLOGICB
      generic map (LUT0_INITVAL=>X"FD0D", LUT1_INITVAL=>X"FEFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n73467, 
                B1=>u_ctrl_u_rx_n76498, C1=>u_ctrl_u_rx_n76427, 
                D1=>u_ctrl_u_rx_n71951, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n31, B0=>u_ctrl_u_rx_n24229, 
                C0=>u_ctrl_u_rx_n24228, D0=>u_ctrl_u_rx_n76536, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n31, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_rx_n63190, Q0=>open);
    u_ctrl_u_rx_SLICE_655I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"FCFC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_ctrl_u_rx_clk_cnt_12, C1=>u_ctrl_u_rx_clk_cnt_15, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_n76498, 
                B0=>u_ctrl_u_rx_n76499, C0=>u_ctrl_u_rx_clk_cnt_6, 
                D0=>u_ctrl_u_rx_n71951, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_rx_n76499, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n73635, Q0=>open);
    u_ctrl_u_rx_SLICE_656I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"0040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n73863, 
                B1=>u_ctrl_u_rx_n71951, C1=>u_ctrl_u_rx_n24227, 
                D1=>u_ctrl_u_rx_n73669, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n76499, B0=>u_ctrl_u_rx_n76498, 
                C0=>u_ctrl_u_rx_n76497, D0=>u_ctrl_u_rx_n76496, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_SD_CLK_c_enable_231, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n73669, Q0=>open);
    u_ctrl_u_rx_SLICE_657I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"0100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_4, 
                B1=>u_ctrl_u_rx_clk_cnt_13, C1=>u_ctrl_u_rx_clk_cnt_3, 
                D1=>u_ctrl_u_rx_n73993, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n76499, B0=>u_ctrl_u_rx_n76498, 
                C0=>u_ctrl_u_rx_clk_cnt_6, D0=>u_ctrl_u_rx_n74003, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n74003, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n74009, Q0=>open);
    u_ctrl_u_rx_SLICE_658I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"CC00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_ctrl_u_rx_clk_cnt_10, C1=>'X', D1=>u_ctrl_u_rx_clk_cnt_7, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_clk_cnt_1, 
                B0=>u_ctrl_u_rx_n76501, C0=>u_ctrl_u_rx_clk_cnt_9, 
                D0=>u_ctrl_u_rx_n24226, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_rx_n76501, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n73993, Q0=>open);
    u_ctrl_u_rx_SLICE_659I: SLOGICB
      generic map (LUT0_INITVAL=>X"B300", LUT1_INITVAL=>X"C0C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_ctrl_u_rx_bit_idx_2, C1=>u_ctrl_u_rx_bit_idx_1, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_bit_idx_0, B0=>n28696, 
                C0=>u_ctrl_u_rx_n76509, D0=>u_ctrl_u_rx_SD_CLK_c_enable_215, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n76509, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n63185, Q0=>open);
    u_ctrl_u_rx_SLICE_660I: SLOGICB
      generic map (LUT0_INITVAL=>X"FDFF", LUT1_INITVAL=>X"0200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rx_s2, B1=>u_ctrl_u_rx_n70443, 
                C1=>u_ctrl_u_rx_n70276, D1=>u_ctrl_u_rx_n24228, DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_clk_cnt_9, B0=>u_ctrl_u_rx_clk_cnt_1, 
                C0=>u_ctrl_u_rx_n73423, D0=>u_ctrl_u_rx_clk_cnt_6, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n36110, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n70276, Q0=>open);
    u_ctrl_u_rx_SLICE_661I: SLOGICB
      generic map (LUT0_INITVAL=>X"CC00", LUT1_INITVAL=>X"0008")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n71951, 
                B1=>u_ctrl_u_rx_n76461, C1=>u_ctrl_u_rx_n73801, 
                D1=>u_ctrl_u_rx_n73669, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_ctrl_u_rx_bit_idx_1, C0=>'X', D0=>u_ctrl_u_rx_bit_idx_0, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_SD_CLK_c_enable_194, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n76461, Q0=>open);
    u_ctrl_u_rx_SLICE_662I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n73875, 
                B1=>u_ctrl_u_rx_n76494, C1=>u_ctrl_u_rx_n76480, 
                D1=>u_ctrl_u_rx_n73885, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_clk_cnt_4, B0=>u_ctrl_u_rx_clk_cnt_6, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n73891, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n76480, Q0=>open);
    u_ctrl_u_rx_SLICE_663I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FCFC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_ctrl_u_rx_clk_cnt_13, C1=>u_ctrl_u_rx_clk_cnt_3, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_n76499, 
                B0=>u_ctrl_u_rx_n76494, C0=>u_ctrl_u_rx_clk_cnt_6, 
                D0=>u_ctrl_u_rx_clk_cnt_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n76494, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_n73467, Q0=>open);
    u_ctrl_u_rx_SLICE_664I: SLOGICB
      generic map (LUT0_INITVAL=>X"0002", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_12, 
                B1=>u_ctrl_u_rx_clk_cnt_11, C1=>u_ctrl_u_rx_clk_cnt_2, 
                D1=>u_ctrl_u_rx_clk_cnt_15, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n71951, B0=>u_ctrl_u_rx_n73885, 
                C0=>u_ctrl_u_rx_n73839, D0=>u_ctrl_u_rx_n73849, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n73885, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_SD_CLK_c_enable_192, Q0=>open);
    u_ctrl_u_rx_SLICE_665I: SLOGICB
      generic map (LUT0_INITVAL=>X"0020", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_5, 
                B1=>u_ctrl_u_rx_clk_cnt_8, C1=>u_ctrl_u_rx_clk_cnt_0, 
                D1=>u_ctrl_u_rx_clk_cnt_14, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n71951, B0=>u_ctrl_u_rx_n76396, 
                C0=>u_ctrl_u_rx_n74220, D0=>u_ctrl_u_rx_n73891, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n76396, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_SD_CLK_c_enable_193, Q0=>open);
    u_ctrl_u_rx_SLICE_666I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF0", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_4, 
                B1=>u_ctrl_u_rx_n76494, C1=>u_ctrl_u_rx_n73875, 
                D1=>u_ctrl_u_rx_n76459, DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_u_rx_bit_idx_0, D0=>u_ctrl_u_rx_bit_idx_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n73863, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n73875, Q0=>open);
    u_ctrl_u_rx_SLICE_667I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFEF", LUT1_INITVAL=>X"FFF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>u_ctrl_u_rx_clk_cnt_13, D1=>u_ctrl_u_rx_clk_cnt_4, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_clk_cnt_3, 
                B0=>u_ctrl_u_rx_n76500, C0=>u_ctrl_u_rx_n24227, 
                D0=>u_ctrl_u_rx_n73787, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_rx_n76500, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n73801, Q0=>open);
    u_ctrl_u_rx_SLICE_668I: SLOGICB
      generic map (LUT0_INITVAL=>X"1100", LUT1_INITVAL=>X"FFDF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n71951, 
                B1=>u_ctrl_u_rx_n73669, C1=>u_ctrl_u_rx_n24227, 
                D1=>u_ctrl_u_rx_n73661, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_bit_idx_1, B0=>u_ctrl_u_rx_n60891, C0=>'X', 
                D0=>u_ctrl_u_rx_bit_idx_2, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n60891, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_SD_CLK_c_enable_195, Q0=>open);
    u_ctrl_u_rx_SLICE_669I: SLOGICB
      generic map (LUT0_INITVAL=>X"0004", LUT1_INITVAL=>X"FDFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_bit_idx_2, 
                B1=>u_ctrl_u_rx_clk_cnt_12, C1=>u_ctrl_u_rx_clk_cnt_15, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_n73819, 
                B0=>u_ctrl_u_rx_n71951, C0=>u_ctrl_u_rx_n76427, 
                D0=>u_ctrl_u_rx_n73827, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_rx_n73819, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_SD_CLK_c_enable_196, Q0=>open);
    u_ctrl_u_rx_SLICE_670I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFEF", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_bit_idx_1, 
                B1=>u_ctrl_u_rx_clk_cnt_6, C1=>u_ctrl_u_rx_clk_cnt_3, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_n73821, 
                B0=>u_ctrl_u_rx_n76500, C0=>u_ctrl_u_rx_n24227, 
                D0=>u_ctrl_u_rx_n73813, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_rx_n73813, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n73827, Q0=>open);
    u_ctrl_u_cmd_SLICE_671I: SLOGICB
      generic map (LUT0_INITVAL=>X"0008", LUT1_INITVAL=>X"0100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n76511, 
                B1=>u_ctrl_u_cmd_n24367, C1=>u_ctrl_u_cmd_n24366, 
                D1=>u_ctrl_rx_valid, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_n76351, B0=>u_ctrl_u_cmd_n24370, 
                C0=>u_ctrl_u_cmd_n24369, D0=>u_ctrl_u_cmd_n24368, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n76351, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_SD_CLK_c_enable_83, Q0=>open);
    u_ctrl_u_cmd_SLICE_672I: SLOGICB
      generic map (LUT0_INITVAL=>X"0400", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n24367, 
                B1=>u_ctrl_u_cmd_n24365, C1=>u_ctrl_u_cmd_n24366, 
                D1=>u_ctrl_u_cmd_n24364, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_n24368, B0=>u_ctrl_rx_valid, 
                C0=>u_ctrl_u_cmd_n76380, D0=>u_ctrl_u_cmd_n24369, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n76380, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_SD_CLK_c_enable_91, Q0=>open);
    u_ctrl_u_cmd_SLICE_673I: SLOGICB
      generic map (LUT0_INITVAL=>X"0400", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n24365, 
                B1=>u_ctrl_u_cmd_n24366, C1=>u_ctrl_u_cmd_n24364, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_n76436, 
                B0=>u_ctrl_u_cmd_n24368, C0=>u_ctrl_u_cmd_n24367, 
                D0=>u_ctrl_rx_valid, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_n76436, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_SD_CLK_c_enable_99, Q0=>open);
    u_ctrl_u_cmd_SLICE_674I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_7, 
                B1=>'X', C1=>u_ctrl_u_cmd_cmd_opcode_6, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_cmd_opcode_5, 
                B0=>u_ctrl_u_cmd_cmd_opcode_3, C0=>u_ctrl_u_cmd_cmd_opcode_2, 
                D0=>u_ctrl_u_cmd_n76438, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_n76438, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n76355, Q0=>open);
    u_ctrl_u_cmd_SLICE_675I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_4, 
                B1=>u_ctrl_u_cmd_cmd_opcode_1, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_n76386, 
                B0=>u_ctrl_u_cmd_cmd_opcode_5, C0=>u_ctrl_u_cmd_n71660, 
                D0=>u_ctrl_u_cmd_cmd_opcode_0, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_cmd_n71660, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_cmd_n76330, Q0=>open);
    u_ctrl_u_cmd_SLICE_676I: SLOGICB
      generic map (LUT0_INITVAL=>X"DFFF", LUT1_INITVAL=>X"FEFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_rx_data_1, 
                B1=>u_ctrl_rx_data_3, C1=>u_ctrl_u_cmd_n74017, 
                D1=>u_ctrl_rx_data_7, DI1=>'X', DI0=>'X', A0=>u_ctrl_rx_data_5, 
                B0=>u_ctrl_u_cmd_n74021, C0=>u_ctrl_rx_data_0, 
                D0=>u_ctrl_rx_data_2, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_n74021, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n15, Q0=>open);
    u_ctrl_u_cmd_SLICE_677I: SLOGICB
      generic map (LUT0_INITVAL=>X"9669", LUT1_INITVAL=>X"55AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_3_5, 
                B1=>'X', C1=>'X', D1=>u_ctrl_u_cmd_bytes_4_5, DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_n73935, B0=>u_ctrl_u_cmd_bytes_1_5, 
                C0=>u_ctrl_u_cmd_n73937, D0=>u_ctrl_u_cmd_bytes_6_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n73935, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_5, Q0=>open);
    u_ctrl_u_cmd_SLICE_678I: SLOGICB
      generic map (LUT0_INITVAL=>X"1000", LUT1_INITVAL=>X"FFCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_ctrl_u_cmd_n24365, 
                C1=>'X', D1=>u_ctrl_u_cmd_n24364, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_n76511, B0=>u_ctrl_u_cmd_n24366, 
                C0=>u_ctrl_u_cmd_n24367, D0=>u_ctrl_rx_valid, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_cmd_n76511, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_cmd_SD_CLK_c_enable_107, 
                Q0=>open);
    u_ctrl_u_cmd_SLICE_679I: SLOGICB
      generic map (LUT0_INITVAL=>X"6996", LUT1_INITVAL=>X"0FF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>u_ctrl_u_cmd_bytes_3_4, D1=>u_ctrl_u_cmd_bytes_5_4, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_n74035, 
                B0=>u_ctrl_u_cmd_bytes_6_4, C0=>u_ctrl_u_cmd_bytes_1_4, 
                D0=>u_ctrl_u_cmd_n74037, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_n74035, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_4, Q0=>open);
    u_ctrl_u_cmd_SLICE_680I: SLOGICB
      generic map (LUT0_INITVAL=>X"6996", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_3, 
                B1=>u_ctrl_u_cmd_bytes_3_3, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_n74043, B0=>u_ctrl_u_cmd_bytes_1_3, 
                C0=>u_ctrl_u_cmd_bytes_6_3, D0=>u_ctrl_u_cmd_n74045, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n74043, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_3, Q0=>open);
    u_ctrl_u_cmd_SLICE_681I: SLOGICB
      generic map (LUT0_INITVAL=>X"9669", LUT1_INITVAL=>X"0FF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>u_ctrl_u_cmd_bytes_5_2, D1=>u_ctrl_u_cmd_bytes_3_2, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_1_2, 
                B0=>u_ctrl_u_cmd_n73943, C0=>u_ctrl_u_cmd_bytes_6_2, 
                D0=>u_ctrl_u_cmd_n73945, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_n73943, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_2, Q0=>open);
    u_ctrl_u_cmd_SLICE_682I: SLOGICB
      generic map (LUT0_INITVAL=>X"9669", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_3_7, 
                B1=>u_ctrl_u_cmd_bytes_5_7, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_n73923, B0=>u_ctrl_u_cmd_bytes_6_7, 
                C0=>u_ctrl_u_cmd_n73925, D0=>u_ctrl_u_cmd_bytes_1_7, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n73923, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_7, Q0=>open);
    u_ctrl_u_cmd_SLICE_683I: SLOGICB
      generic map (LUT0_INITVAL=>X"6996", LUT1_INITVAL=>X"55AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_6, 
                B1=>'X', C1=>'X', D1=>u_ctrl_u_cmd_bytes_3_6, DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_bytes_6_6, B0=>u_ctrl_u_cmd_n74027, 
                C0=>u_ctrl_u_cmd_n74029, D0=>u_ctrl_u_cmd_bytes_1_6, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n74027, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_6, Q0=>open);
    u_ctrl_u_cmd_SLICE_684I: SLOGICB
      generic map (LUT0_INITVAL=>X"00CC", LUT1_INITVAL=>X"FDCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_arg_5, 
                B1=>u_ctrl_u_cmd_n52, C1=>u_ctrl_u_cmd_cmd_opcode_0, 
                D1=>u_ctrl_u_cmd_n76447, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_ctrl_u_cmd_cmd_opcode_4, C0=>'X', 
                D0=>u_ctrl_u_cmd_cmd_opcode_5, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_cmd_n40_adj_12421, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_cmd_n76447, Q0=>open);
    u_ctrl_u_cmd_SLICE_685I: SLOGICB
      generic map (LUT0_INITVAL=>X"6996", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_1, 
                B1=>u_ctrl_u_cmd_bytes_3_1, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_n74053, B0=>u_ctrl_u_cmd_bytes_6_1, 
                C0=>u_ctrl_u_cmd_n74055, D0=>u_ctrl_u_cmd_bytes_1_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n74053, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_1, Q0=>open);
    u_ctrl_u_cmd_SLICE_686I: SLOGICB
      generic map (LUT0_INITVAL=>X"9669", LUT1_INITVAL=>X"5A5A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_0, 
                B1=>'X', C1=>u_ctrl_u_cmd_bytes_3_0, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_bytes_6_0, B0=>u_ctrl_u_cmd_n73971, 
                C0=>u_ctrl_u_cmd_bytes_1_0, D0=>u_ctrl_u_cmd_n73973, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n73971, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_0, Q0=>open);
    u_ctrl_u_cmd_SLICE_687I: SLOGICB
      generic map (LUT0_INITVAL=>X"0BAA", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_arg_7, 
                B1=>u_ctrl_u_cmd_cmd_arg_1, C1=>u_ctrl_u_cmd_cmd_arg_2, 
                D1=>u_ctrl_u_cmd_n73687, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_cmd_arg_0, B0=>u_ctrl_u_cmd_n72397, 
                C0=>u_ctrl_u_cmd_cmd_opcode_0, D0=>u_ctrl_u_cmd_cmd_opcode_1, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n72397, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n98, Q0=>open);
    u_dbg_status_SLICE_688I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFDF", LUT1_INITVAL=>X"FDFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_4, 
                B1=>u_dbg_status_msg_idx_6, C1=>u_dbg_status_msg_idx_3, 
                D1=>u_dbg_status_msg_idx_5, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_4, B0=>u_dbg_status_msg_idx_6, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_msg_idx_5, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n76358, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n76403, Q0=>open);
    u_dbg_status_SLICE_689I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFDE", LUT1_INITVAL=>X"FFFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_4, 
                B1=>u_dbg_status_msg_idx_5, C1=>u_dbg_status_msg_idx_3, 
                D1=>u_dbg_status_msg_idx_6, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_4, B0=>u_dbg_status_msg_idx_5, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_msg_idx_6, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n76363, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n71606, Q0=>open);
    u_sd_SLICE_690I: SLOGICB
      generic map (LUT0_INITVAL=>X"0706", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>st_3_adj_12556, C1=>u_sd_n78001, D1=>u_sd_st_1, DI1=>'X', 
                DI0=>'X', A0=>st_2_adj_12557, B0=>st_3_adj_12556, 
                C0=>u_sd_n78001, D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n13_adj_12442, Q1=>open, 
                OFX0=>open, F0=>u_sd_n71678, Q0=>open);
    u_ctrl_u_cmd_SLICE_691I: SLOGICB
      generic map (LUT0_INITVAL=>X"0004", LUT1_INITVAL=>X"FECC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_1, 
                B1=>u_ctrl_u_cmd_cmd_opcode_5, C1=>u_ctrl_u_cmd_cmd_opcode_0, 
                D1=>u_ctrl_u_cmd_cmd_opcode_2, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_cmd_opcode_1, B0=>u_ctrl_u_cmd_cmd_opcode_5, 
                C0=>u_ctrl_u_cmd_cmd_opcode_0, D0=>u_ctrl_u_cmd_cmd_opcode_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n72019, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n29, Q0=>open);
    u_dbg_status_SLICE_692I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"0058")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_1, 
                B1=>sd_err, C1=>u_dbg_status_msg_idx_0, 
                D1=>u_dbg_status_msg_idx_3, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_1, B0=>u_dbg_status_msg_idx_3, 
                C0=>cam_init_done, D0=>u_dbg_status_msg_idx_0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n75017, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72660, Q0=>open);
    u_dbg_status_SLICE_693I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFC", LUT1_INITVAL=>X"C000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_dbg_status_msg_idx_0, C1=>u_dbg_status_msg_idx_2, 
                D1=>u_dbg_status_msg_idx_1, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_dbg_status_msg_idx_0, C0=>u_dbg_status_msg_idx_2, 
                D0=>u_dbg_status_msg_idx_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_dbg_status_n76402, Q1=>open, 
                OFX0=>open, F0=>u_dbg_status_n76405, Q0=>open);
    u_dbg_status_SLICE_694I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FCFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_dbg_status_msg_idx_6, C1=>u_dbg_status_msg_idx_3, 
                D1=>u_dbg_status_msg_idx_5, DI1=>'X', DI0=>'X', 
                A0=>u_dbg_status_msg_idx_4, B0=>u_dbg_status_msg_idx_6, 
                C0=>u_dbg_status_msg_idx_3, D0=>u_dbg_status_msg_idx_5, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n76391, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n76365, Q0=>open);
    u_dbg_status_SLICE_695I: SLOGICB
      generic map (LUT0_INITVAL=>X"E3E3", LUT1_INITVAL=>X"BFBF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_msg_idx_1, 
                B1=>u_dbg_status_msg_idx_0, C1=>u_dbg_status_msg_idx_2, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_msg_idx_1, 
                B0=>u_dbg_status_msg_idx_0, C0=>u_dbg_status_msg_idx_2, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n76392, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n71978, Q0=>open);
    u_cam_cfg_SLICE_696I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFA", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>st_3, C1=>st_2, 
                D1=>u_cam_cfg_st_1, DI1=>'X', DI0=>'X', A0=>st_0, B0=>'X', 
                C0=>st_2, D0=>u_cam_cfg_st_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n72696, Q1=>open, OFX0=>open, 
                F0=>n66095, Q0=>open);
    SLICE_697I: SLOGICB
      generic map (LUT0_INITVAL=>X"FDFD", LUT1_INITVAL=>X"FFFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n15, B1=>post_delay_1, 
                C1=>post_delay_0, D1=>post_delay_2, DI1=>'X', DI0=>'X', 
                A0=>n15, B0=>post_delay_1, C0=>post_delay_0, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n76321, Q1=>open, 
                OFX0=>open, F0=>n76328, Q0=>open);
    u_sd_SLICE_698I: SLOGICB
      generic map (LUT0_INITVAL=>X"B000", LUT1_INITVAL=>X"C400")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_done, B1=>resp_tries_1, 
                C1=>u_sd_n76382, D1=>u_sd_n71627, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76382, B0=>spi_done, C0=>resp_tries_5, 
                D0=>u_sd_n71627, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n71521, Q1=>open, OFX0=>open, 
                F0=>u_sd_n71522, Q0=>open);
    u_sd_SLICE_699I: SLOGICB
      generic map (LUT0_INITVAL=>X"50C8", LUT1_INITVAL=>X"7240")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_n76352, 
                C1=>st_2_adj_12557, D1=>resp_tries_4, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>resp_tries_2, C0=>st_2_adj_12557, 
                D0=>u_sd_n76352, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76002, Q1=>open, OFX0=>open, 
                F0=>u_sd_n75960, Q0=>open);
    u_sd_SLICE_700I: SLOGICB
      generic map (LUT0_INITVAL=>X"F020", LUT1_INITVAL=>X"80A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n71627, B1=>u_sd_n76382, 
                C1=>resp_tries_0, D1=>spi_done, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>u_sd_n76382, C0=>u_sd_n71627, 
                D0=>resp_tries_3, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n71520, Q1=>open, OFX0=>open, 
                F0=>u_sd_n75982, Q0=>open);
    u_sd_SLICE_701I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAAA", LUT1_INITVAL=>X"020A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_done, B1=>n32073, 
                C1=>st_3_adj_12556, D1=>n76414, DI1=>'X', DI0=>'X', 
                A0=>resp_tries_7, B0=>n32073, C0=>n76414, D0=>spi_done, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n72569, Q1=>open, OFX0=>open, F0=>n69572, Q0=>open);
    u_sd_SLICE_702I: SLOGICB
      generic map (LUT0_INITVAL=>X"DF80", LUT1_INITVAL=>X"CAAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>resp_tries_1, B1=>n32073, 
                C1=>n76414, D1=>spi_done, DI1=>'X', DI0=>'X', A0=>spi_done, 
                B0=>n32073, C0=>n76414, D0=>resp_tries_4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n69584, Q1=>open, 
                OFX0=>open, F0=>n69578, Q0=>open);
    u_sd_SLICE_703I: SLOGICB
      generic map (LUT0_INITVAL=>X"DF80", LUT1_INITVAL=>X"D8F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n76414, B1=>n32073, 
                C1=>resp_tries_0, D1=>spi_done, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>n32073, C0=>n76414, D0=>resp_tries_5, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n69586, 
                Q1=>open, OFX0=>open, F0=>n69576, Q0=>open);
    u_sd_SLICE_704I: SLOGICB
      generic map (LUT0_INITVAL=>X"AFAE", LUT1_INITVAL=>X"AFAE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_7, B1=>n14, 
                C1=>u_sd_SD_CLK_c_enable_234, D1=>n13, DI1=>'X', DI0=>'X', 
                A0=>u_sd_spi_tx_5, B0=>n14, C0=>u_sd_SD_CLK_c_enable_234, 
                D0=>n13, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n288, Q1=>open, OFX0=>open, F0=>u_sd_n290, Q0=>open);
    u_sd_SLICE_705I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF32", LUT1_INITVAL=>X"FF32")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n14, 
                B1=>u_sd_SD_CLK_c_enable_234, C1=>n13, D1=>u_sd_spi_tx_1, 
                DI1=>'X', DI0=>'X', A0=>n14, B0=>u_sd_SD_CLK_c_enable_234, 
                C0=>n13, D0=>u_sd_spi_tx_3, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n294, Q1=>open, OFX0=>open, 
                F0=>u_sd_n292, Q0=>open);
    u_sd_SLICE_706I: SLOGICB
      generic map (LUT0_INITVAL=>X"0020", LUT1_INITVAL=>X"EEEF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0_adj_12558, 
                B1=>u_sd_n78001, C1=>st_2_adj_12557, D1=>u_sd_st_1, DI1=>'X', 
                DI0=>'X', A0=>n76455, B0=>u_sd_n78001, C0=>st_0_adj_12558, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n29_adj_12482, Q1=>open, OFX0=>open, 
                F0=>u_sd_n60671, Q0=>open);
    u_sd_SLICE_707I: SLOGICB
      generic map (LUT0_INITVAL=>X"D8F0", LUT1_INITVAL=>X"DF80")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n76414, B1=>n32073, 
                C1=>spi_done, D1=>resp_tries_3, DI1=>'X', DI0=>'X', A0=>n76414, 
                B0=>n32073, C0=>resp_tries_2, D0=>spi_done, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n69580, Q1=>open, 
                OFX0=>open, F0=>n69582, Q0=>open);
    u_sd_SLICE_708I: SLOGICB
      generic map (LUT0_INITVAL=>X"BEDD", LUT1_INITVAL=>X"4422")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>st_0_adj_12558, 
                C1=>'X', D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', A0=>u_sd_st_1, 
                B0=>st_0_adj_12558, C0=>st_3_adj_12556, D0=>st_2_adj_12557, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n19, 
                Q1=>open, OFX0=>open, F0=>u_sd_n77482, Q0=>open);
    u_sd_SLICE_709I: SLOGICB
      generic map (LUT0_INITVAL=>X"E6E6", LUT1_INITVAL=>X"EBEB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, 
                B1=>st_0_adj_12558, C1=>u_sd_st_1, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>st_2_adj_12557, B0=>st_0_adj_12558, C0=>u_sd_st_1, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76360, Q1=>open, OFX0=>open, F0=>u_sd_n39, Q0=>open);
    u_sd_SLICE_710I: SLOGICB
      generic map (LUT0_INITVAL=>X"3B33", LUT1_INITVAL=>X"FCFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_4, 
                C1=>u_sd_n78014, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76357, B0=>u_sd_st_4, C0=>u_sd_st_1, 
                D0=>st_2_adj_12557, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n71720, Q1=>open, OFX0=>open, 
                F0=>u_sd_n75270, Q0=>open);
    u_sd_SLICE_711I: SLOGICB
      generic map (LUT0_INITVAL=>X"2200", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n78014, 
                C1=>st_0_adj_12558, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_n78014, C0=>'X', D0=>u_sd_st_1, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76422, Q1=>open, OFX0=>open, F0=>u_sd_n73389, 
                Q0=>open);
    u_sd_SLICE_712I: SLOGICB
      generic map (LUT0_INITVAL=>X"A000", LUT1_INITVAL=>X"0FFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>'X', 
                C1=>st_3_adj_12556, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>'X', C0=>st_3_adj_12556, D0=>st_2_adj_12557, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n76428, Q1=>open, OFX0=>open, F0=>u_sd_n76390, 
                Q0=>open);
    u_sd_SLICE_713I: SLOGICB
      generic map (LUT0_INITVAL=>X"3303", LUT1_INITVAL=>X"0450")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76431, B1=>u_sd_st_1, 
                C1=>st_3_adj_12556, D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>u_sd_st_1, C0=>st_3_adj_12556, D0=>st_2_adj_12557, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n24, 
                Q1=>open, OFX0=>open, F0=>u_sd_n36, Q0=>open);
    u_sd_SLICE_714I: SLOGICB
      generic map (LUT0_INITVAL=>X"77FF", LUT1_INITVAL=>X"88F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_half_phase, 
                B1=>u_sd_sck_N_10287, C1=>u_sd_spi_start, D1=>u_sd_spi_busy, 
                DI1=>'X', DI0=>'X', A0=>u_sd_half_phase, B0=>u_sd_sck_N_10287, 
                C0=>'X', D0=>u_sd_spi_busy, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_SD_CLK_c_enable_230, Q1=>open, 
                OFX0=>open, F0=>u_sd_n76322, Q0=>open);
    u_sd_SLICE_715I: SLOGICB
      generic map (LUT0_INITVAL=>X"F7FF", LUT1_INITVAL=>X"E0E0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3_adj_12556, 
                B1=>st_2_adj_12557, C1=>u_sd_st_4, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>st_3_adj_12556, B0=>st_2_adj_12557, C0=>u_sd_st_4, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76, Q1=>open, OFX0=>open, 
                F0=>u_sd_n72643, Q0=>open);
    u_ctrl_SLICE_716I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"000A", 
                   LUT1_INITVAL=>X"0EFE", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_hb_pending, 
                B1=>u_ctrl_reg_ack_valid, C1=>u_ctrl_pkt_busy, 
                D1=>u_ctrl_tx_busy, DI1=>'X', DI0=>'X', A0=>u_ctrl_hb_pending, 
                B0=>'X', C0=>u_ctrl_pkt_busy, D0=>u_ctrl_reg_ack_valid, 
                M0=>u_ctrl_cmd_valid, CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_SD_CLK_c_enable_241, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_send_hb, Q0=>u_ctrl_reg_ack_valid);
    u_ctrl_u_rx_SLICE_717I: SLOGICB
      generic map (LUT0_INITVAL=>X"FDFF", LUT1_INITVAL=>X"0300")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>u_ctrl_u_rx_n70443, 
                C1=>u_ctrl_u_rx_n70276, D1=>u_ctrl_u_rx_n24228, DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_n24228, B0=>u_ctrl_u_rx_n70443, 
                C0=>u_ctrl_u_rx_n70276, D0=>rx_s2, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n76327, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_SD_CLK_c_enable_213, Q0=>open);
    u_ctrl_u_rx_SLICE_718I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFA", LUT1_INITVAL=>X"FFFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_0, 
                B1=>u_ctrl_u_rx_clk_cnt_4, C1=>u_ctrl_u_rx_clk_cnt_3, 
                D1=>u_ctrl_u_rx_clk_cnt_13, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_clk_cnt_4, B0=>'X', C0=>u_ctrl_u_rx_clk_cnt_3, 
                D0=>u_ctrl_u_rx_clk_cnt_13, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n73325, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_n74232, Q0=>open);
    u_ctrl_u_cmd_SLICE_719I: SLOGICB
      generic map (LUT0_INITVAL=>X"0A00", LUT1_INITVAL=>X"0400")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n24365, 
                B1=>u_ctrl_u_cmd_n24366, C1=>u_ctrl_u_cmd_n24364, 
                D1=>u_ctrl_rx_valid, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_n24365, B0=>'X', C0=>u_ctrl_u_cmd_n24364, 
                D0=>u_ctrl_rx_valid, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_SD_CLK_c_enable_115, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_cmd_SD_CLK_c_enable_123, Q0=>open);
    u_ctrl_u_cmd_SLICE_720I: SLOGICB
      generic map (LUT0_INITVAL=>X"3180", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_5, 
                B1=>u_ctrl_u_cmd_cmd_opcode_1, C1=>u_ctrl_u_cmd_cmd_opcode_4, 
                D1=>u_ctrl_u_cmd_cmd_opcode_0, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_cmd_opcode_4, B0=>u_ctrl_u_cmd_cmd_opcode_1, 
                C0=>u_ctrl_u_cmd_cmd_arg_1, D0=>u_ctrl_u_cmd_cmd_opcode_0, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n44, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n74995, Q0=>open);
    u_ctrl_u_cmd_SLICE_721I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEC5", LUT1_INITVAL=>X"FFDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_4, 
                B1=>u_ctrl_u_cmd_cmd_opcode_5, C1=>'X', 
                D1=>u_ctrl_u_cmd_cmd_opcode_2, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_cmd_opcode_4, B0=>u_ctrl_u_cmd_cmd_opcode_2, 
                C0=>u_ctrl_u_cmd_cmd_opcode_0, D0=>u_ctrl_u_cmd_cmd_opcode_5, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n74945, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n74946, Q0=>open);
    SLICE_722I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFAA", 
                   LUT1_INITVAL=>X"4040", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>VSYNC_c, B1=>vsync_d, 
                C1=>u_raw_cap_capture_this_frame_p_N_2024, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_raw_cap_stride_count_p_6, B0=>'X', C0=>'X', 
                D0=>u_raw_cap_stride_count_p_1, M0=>VSYNC_c, CE=>'X', 
                CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_raw_cap_PCLK_c_enable_18, Q1=>open, OFX0=>open, 
                F0=>u_raw_cap_n74081, Q0=>vsync_d);
    u_ctrl_u_cmd_SLICE_723I: SLOGICB
      generic map (LUT0_INITVAL=>X"F000", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_3, 
                B1=>u_ctrl_u_cmd_cmd_opcode_7, C1=>u_ctrl_u_cmd_cmd_opcode_6, 
                D1=>u_ctrl_u_cmd_cmd_opcode_2, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>u_ctrl_cmd_valid, D0=>u_ctrl_n64019, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n76386, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n63174, Q0=>open);
    u_ctrl_u_tx_SLICE_724I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_clk_cnt_4, 
                B1=>u_ctrl_u_tx_clk_cnt_8, C1=>u_ctrl_u_tx_clk_cnt_5, 
                D1=>u_ctrl_u_tx_clk_cnt_11, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_tx_clk_cnt_12, B0=>u_ctrl_u_tx_clk_cnt_2, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_tx_n73757, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_tx_n73753, Q0=>open);
    u_ctrl_u_tx_SLICE_725I: SLOGICB
      generic map (LUT0_INITVAL=>X"CC00", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_clk_cnt_14, 
                B1=>u_ctrl_u_tx_clk_cnt_0, C1=>u_ctrl_u_tx_clk_cnt_3, 
                D1=>u_ctrl_u_tx_clk_cnt_6, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_ctrl_u_tx_clk_cnt_10, C0=>'X', D0=>u_ctrl_u_tx_clk_cnt_7, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_tx_n73759, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_tx_n74132, Q0=>open);
    u_sd_SLICE_726I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"A0A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wr_count_7, B1=>'X', 
                C1=>wr_count_2, D1=>'X', DI1=>'X', DI0=>'X', A0=>wr_count_5, 
                B0=>wr_count_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n73107, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73111, Q0=>open);
    u_sd_SLICE_727I: SLOGICB
      generic map (LUT0_INITVAL=>X"AA00", LUT1_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wr_count_8, B1=>wr_count_6, 
                C1=>wr_count_0, D1=>'X', DI1=>'X', DI0=>'X', A0=>wr_count_3, 
                B0=>'X', C0=>'X', D0=>wr_count_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n73115, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73113, Q0=>open);
    u_sdram_SLICE_728I: SLOGICB
      generic map (LUT0_INITVAL=>X"EC00", LUT1_INITVAL=>X"FFCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_sdram_refresh_cnt_8, C1=>'X', D1=>u_sdram_refresh_cnt_9, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_refresh_cnt_4, 
                B0=>u_sdram_refresh_cnt_6, C0=>u_sdram_refresh_cnt_5, 
                D0=>u_sdram_refresh_cnt_7, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sdram_n73585, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n16, Q0=>open);
    u_cam_cfg_SLICE_729I: SLOGICB
      generic map (LUT0_INITVAL=>X"AA00", LUT1_INITVAL=>X"F5F5")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_divc_8, B1=>'X', 
                C1=>u_cam_cfg_divc_5, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_divc_7, B0=>'X', C0=>'X', D0=>u_cam_cfg_divc_4, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n74087, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n74184, Q0=>open);
    u_dbg_status_SLICE_730I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"55FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_dbg_status_n31, B1=>'X', 
                C1=>'X', D1=>u_dbg_status_busy, DI1=>'X', DI0=>'X', 
                A0=>baud_ctr_2, B0=>baud_ctr_6, C0=>baud_ctr_1, D0=>baud_ctr_3, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_MCLK_c_enable_29, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n74242, Q0=>open);
    u_ctrl_u_rx_SLICE_731I: SLOGICB
      generic map (LUT0_INITVAL=>X"FCFC", LUT1_INITVAL=>X"8800")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rx_s2, 
                B1=>u_ctrl_u_rx_valid_N_566, C1=>'X', D1=>u_ctrl_u_rx_n24226, 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>u_ctrl_u_rx_clk_cnt_2, 
                C0=>u_ctrl_u_rx_clk_cnt_11, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_SD_CLK_c_enable_154, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n76497, Q0=>open);
    u_ctrl_u_rx_SLICE_732I: SLOGICB
      generic map (LUT0_INITVAL=>X"FAFA", LUT1_INITVAL=>X"CCF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_ctrl_u_rx_valid_N_566, C1=>u_ctrl_u_rx_n24229, 
                D1=>u_ctrl_u_rx_n24227, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_clk_cnt_14, B0=>'X', C0=>u_ctrl_u_rx_clk_cnt_5, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_SD_CLK_c_enable_215, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n76496, Q0=>open);
    u_ctrl_u_cmd_SLICE_733I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"55AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_5, 
                B1=>'X', C1=>'X', D1=>u_ctrl_u_cmd_cmd_opcode_0, DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_cmd_arg_6, 
                B0=>u_ctrl_u_cmd_cmd_arg_5, C0=>u_ctrl_u_cmd_cmd_arg_3, 
                D0=>u_ctrl_u_cmd_cmd_arg_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_cmd_n12, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_cmd_n73687, Q0=>open);
    u_sd_SLICE_734I: SLOGICB
      generic map (LUT0_INITVAL=>X"CC00", LUT1_INITVAL=>X"FFAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3_adj_12556, B1=>'X', 
                C1=>'X', D1=>u_sd_st_1, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>M_D3_c, C0=>'X', D0=>u_sd_n26_adj_12474, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76502, Q1=>open, 
                OFX0=>open, F0=>u_sd_n27_adj_12516, Q0=>open);
    u_sd_SLICE_735I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76397, 
                B1=>u_sd_n6_adj_12471, C1=>u_sd_n76357, D1=>u_sd_n76364, 
                DI1=>'X', DI0=>'X', A0=>u_sd_spi_rx_7, B0=>u_sd_spi_rx_3, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n73483, Q1=>open, OFX0=>open, F0=>n76482, 
                Q0=>open);
    u_ctrl_u_rx_SLICE_736I: SLOGICB
      generic map (LUT0_INITVAL=>X"FCFC", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_12, 
                B1=>u_ctrl_u_rx_clk_cnt_5, C1=>u_ctrl_u_rx_clk_cnt_14, 
                D1=>u_ctrl_u_rx_clk_cnt_15, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_ctrl_u_rx_n70443, C0=>u_ctrl_u_rx_n70276, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n73327, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n76346, Q0=>open);
    u_ctrl_u_rx_SLICE_737I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFCC", LUT1_INITVAL=>X"FFAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_6, 
                B1=>'X', C1=>'X', D1=>u_ctrl_u_rx_bit_idx_1, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>u_ctrl_u_rx_clk_cnt_10, C0=>'X', 
                D0=>u_ctrl_u_rx_clk_cnt_7, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n76459, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_n73423, Q0=>open);
    u_ctrl_u_rx_SLICE_738I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"BFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n31, 
                B1=>u_ctrl_u_rx_bit_idx_1, C1=>u_ctrl_u_rx_bit_idx_2, 
                D1=>u_ctrl_u_rx_bit_idx_0, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_clk_cnt_2, B0=>u_ctrl_u_rx_clk_cnt_14, 
                C0=>u_ctrl_u_rx_clk_cnt_5, D0=>u_ctrl_u_rx_clk_cnt_11, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n24220, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n76427, Q0=>open);
    u_sd_SLICE_739I: SLOGICB
      generic map (LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"55FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_2_adj_12557, B1=>'X', 
                C1=>'X', D1=>st_0_adj_12558, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n73289, B0=>u_sd_n73283, C0=>u_sd_cs_n_N_10197, 
                D0=>u_sd_n76372, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n76368, Q1=>open, OFX0=>open, 
                F0=>u_sd_n72566, Q0=>open);
    u_sd_SLICE_740I: SLOGICB
      generic map (LUT0_INITVAL=>X"FDFF", LUT1_INITVAL=>X"BFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n60800, B1=>u_sd_n71589, 
                C1=>u_sd_n74211, D1=>u_sd_n74213, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76376, B0=>n76345, C0=>u_sd_n76372, D0=>u_sd_n76364, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n72973, Q1=>open, OFX0=>open, F0=>u_sd_n73229, 
                Q0=>open);
    u_sd_SLICE_741I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"FFF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>u_sd_st_1, 
                D1=>st_2_adj_12557, DI1=>'X', DI0=>'X', A0=>u_sd_n73605, 
                B0=>u_sd_n71589, C0=>u_sd_n76366, D0=>u_sd_n76364, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n76488, 
                Q1=>open, OFX0=>open, F0=>u_sd_n73615, Q0=>open);
    SLICE_742I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBBB", LUT1_INITVAL=>X"FAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>post_delay_7, B1=>'X', 
                C1=>post_delay_1, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>post_delay_0, B0=>n15, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n73083, Q1=>open, 
                OFX0=>open, F0=>n76353, Q0=>open);
    u_ctrl_u_rx_SLICE_743I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_4, 
                B1=>u_ctrl_u_rx_clk_cnt_3, C1=>'X', D1=>u_ctrl_u_rx_clk_cnt_6, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_bit_idx_2, 
                B0=>u_ctrl_u_rx_n76494, C0=>u_ctrl_u_rx_n76480, 
                D0=>u_ctrl_u_rx_bit_idx_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n74152, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_n73839, Q0=>open);
    u_sd_SLICE_744I: SLOGICB
      generic map (LUT0_INITVAL=>X"00C8", LUT1_INITVAL=>X"2301")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>st_2_adj_12557, 
                C1=>u_sd_n76421, D1=>spi_done, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n76409, B0=>u_sd_n71589, C0=>n78000, D0=>u_sd_n76364, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n75286, Q1=>open, OFX0=>open, F0=>u_sd_n73507, 
                Q0=>open);
    u_dbg_status_SLICE_745I: SLOGICB
      generic map (LUT0_INITVAL=>X"55CC", LUT1_INITVAL=>X"00CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>u_dbg_status_start_req, C1=>'X', D1=>u_dbg_status_busy, 
                DI1=>'X', DI0=>'X', A0=>u_dbg_status_n31, 
                B0=>u_dbg_status_start_req, C0=>'X', D0=>u_dbg_status_busy, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_dbg_status_n64282, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_MCLK_c_enable_25, Q0=>open);
    u_dbg_status_SLICE_746I: SLOGICB
      generic map (LUT0_INITVAL=>X"1004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_msg_idx_5, 
                B0=>u_dbg_status_msg_idx_0, C0=>u_dbg_status_msg_idx_3, 
                D0=>u_dbg_status_msg_idx_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n75003, Q0=>open);
    u_dbg_status_SLICE_747I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>baud_ctr_5, 
                D0=>baud_ctr_13, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n73549, Q0=>open);
    u_dbg_status_SLICE_748I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_msg_idx_1, 
                B0=>u_dbg_status_msg_idx_2, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n76471, Q0=>open);
    u_dbg_status_SLICE_749I: SLOGICB
      generic map (LUT0_INITVAL=>X"CFCF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_dbg_status_msg_idx_4, C0=>u_dbg_status_msg_idx_3, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_dbg_status_n76472, 
                Q0=>open);
    u_dbg_status_SLICE_750I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_msg_idx_1, 
                B0=>u_dbg_status_msg_idx_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n76475, Q0=>open);
    u_dbg_status_SLICE_751I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF8F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_n76476, 
                B0=>u_dbg_status_n76408, C0=>u_dbg_status_msg_idx_4, 
                D0=>u_dbg_status_n76413, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n20, Q0=>open);
    u_dbg_status_SLICE_752I: SLOGICB
      generic map (LUT0_INITVAL=>X"00FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>u_dbg_status_sec_ctr_8, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72804, Q0=>open);
    u_dbg_status_SLICE_753I: SLOGICB
      generic map (LUT0_INITVAL=>X"3333")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_dbg_status_sec_ctr_18, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_dbg_status_n72808, Q0=>open);
    u_dbg_status_SLICE_754I: SLOGICB
      generic map (LUT0_INITVAL=>X"3333")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_dbg_status_sec_ctr_12, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_dbg_status_n72809, Q0=>open);
    u_dbg_status_SLICE_755I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_sec_ctr_24, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72810, Q0=>open);
    u_dbg_status_SLICE_756I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_sec_ctr_22, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72793, Q0=>open);
    u_dbg_status_SLICE_757I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_dbg_status_sec_ctr_21, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72794, Q0=>open);
    u_dbg_status_SLICE_758I: SLOGICB
      generic map (LUT0_INITVAL=>X"3333")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_dbg_status_sec_ctr_6, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72795, Q0=>open);
    u_dbg_status_SLICE_759I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_sec_ctr_0, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72796, Q0=>open);
    u_dbg_status_SLICE_760I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_dbg_status_sec_ctr_17, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72797, Q0=>open);
    u_dbg_status_SLICE_761I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_dbg_status_sec_ctr_7, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72798, Q0=>open);
    u_dbg_status_SLICE_762I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_sec_ctr_4, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72802, Q0=>open);
    u_dbg_status_SLICE_763I: SLOGICB
      generic map (LUT0_INITVAL=>X"00FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>u_dbg_status_sec_ctr_5, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72803, Q0=>open);
    u_dbg_status_SLICE_764I: SLOGICB
      generic map (LUT0_INITVAL=>X"3333")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_dbg_status_sec_ctr_10, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_dbg_status_n72792, Q0=>open);
    u_dbg_status_SLICE_765I: SLOGICB
      generic map (LUT0_INITVAL=>X"00FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>u_dbg_status_sec_ctr_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n70384, Q0=>open);
    u_dbg_status_SLICE_766I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_dbg_status_sec_ctr_13, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72791, Q0=>open);
    u_dbg_status_SLICE_767I: SLOGICB
      generic map (LUT0_INITVAL=>X"00FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>u_dbg_status_sec_ctr_19, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72801, Q0=>open);
    u_dbg_status_SLICE_768I: SLOGICB
      generic map (LUT0_INITVAL=>X"3333")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_dbg_status_sec_ctr_2, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n70401, Q0=>open);
    u_dbg_status_SLICE_769I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_dbg_status_sec_ctr_3, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_n72807, Q0=>open);
    u_dbg_status_SLICE_770I: SLOGICB
      generic map (LUT0_INITVAL=>X"FCFC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_dbg_status_start_req, C0=>u_dbg_status_busy, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_dbg_status_MCLK_c_enable_17, 
                Q0=>open);
    u_dbg_status_SLICE_771I: SLOGICB
      generic map (LUT0_INITVAL=>X"FAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_dbg_status_start_req, 
                B0=>'X', C0=>u_dbg_status_busy, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_dbg_status_MCLK_c_enable_28, Q0=>open);
    u_dbg_status_SLICE_772I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CCFF", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_dbg_status_busy, 
                C0=>'X', D0=>u_dbg_status_busy_d, M0=>u_dbg_status_busy, 
                CE=>'X', CLK=>MCLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_dbg_status_n73449, Q0=>u_dbg_status_busy_d);
    u_dbg_status_SLICE_773I: SLOGICB
      generic map (LUT0_INITVAL=>X"00F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_dbg_status_sec_tick, D0=>u_dbg_status_sending, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_dbg_status_n76454, Q0=>open);
    u_cam_cfg_SLICE_774I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>post_delay_0, 
                B0=>post_delay_6, C0=>post_delay_4, D0=>post_delay_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n72734, Q0=>open);
    u_cam_cfg_SLICE_775I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_divc_2, 
                B0=>u_cam_cfg_divc_0, C0=>u_cam_cfg_divc_3, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n74262, Q0=>open);
    u_cam_cfg_SLICE_776I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>st_3, B0=>'X', C0=>'X', 
                D0=>u_cam_cfg_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n76444, Q0=>open);
    u_cam_cfg_SLICE_777I: SLOGICB
      generic map (LUT0_INITVAL=>X"FCFC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_cam_cfg_st_1, 
                C0=>st_2, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n76441, 
                Q0=>open);
    u_cam_cfg_SLICE_778I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>st_2, B0=>u_cam_cfg_st_1, 
                C0=>tick, D0=>u_cam_cfg_n71930, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_SD_CLK_c_enable_250, Q0=>open);
    u_cam_cfg_SLICE_779I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFBB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_st_1, B0=>st_2, 
                C0=>'X', D0=>st_3, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n74465, Q0=>open);
    u_cam_cfg_SLICE_780I: SLOGICB
      generic map (LUT0_INITVAL=>X"0450")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_n58324, B0=>st_0, 
                C0=>st_2, D0=>u_cam_cfg_st_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_SD_CLK_c_enable_219, Q0=>open);
    u_cam_cfg_SLICE_781I: SLOGICB
      generic map (LUT0_INITVAL=>X"2020")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>st_0, B0=>st_3, C0=>tick, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n76388, Q0=>open);
    u_cam_cfg_SLICE_782I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_cur_reg_3, B0=>'X', 
                C0=>u_cam_cfg_cur_reg_11, D0=>byte_idx_0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n64230, Q0=>open);
    u_cam_cfg_SLICE_783I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_cur_reg_12, 
                B0=>u_cam_cfg_cur_reg_4, C0=>byte_idx_0, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n8, Q0=>open);
    u_cam_cfg_SLICE_784I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_cam_cfg_cur_reg_0, 
                C0=>u_cam_cfg_cur_reg_8, D0=>byte_idx_0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n64234, Q0=>open);
    u_cam_cfg_SLICE_785I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_cam_cfg_cur_reg_5, 
                C0=>u_cam_cfg_cur_reg_13, D0=>byte_idx_0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n8_adj_12530, Q0=>open);
    u_cam_cfg_SLICE_786I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_cur_reg_1, 
                B0=>u_cam_cfg_cur_reg_9, C0=>byte_idx_0, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n64226, Q0=>open);
    u_cam_cfg_SLICE_787I: SLOGICB
      generic map (LUT0_INITVAL=>X"00CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>tick, C0=>'X', 
                D0=>u_cam_cfg_n37, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_SD_CLK_c_enable_27, Q0=>open);
    u_cam_cfg_SLICE_788I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_cur_reg_2, B0=>'X', 
                C0=>u_cam_cfg_cur_reg_10, D0=>byte_idx_0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n64232, Q0=>open);
    u_cam_cfg_u_rom_SLICE_789I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_rom_entry_19, 
                B0=>u_cam_cfg_rom_entry_21, C0=>u_cam_cfg_rom_entry_12, 
                D0=>u_cam_cfg_rom_entry_22, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_u_rom_n73363, Q0=>open);
    SLICE_790I: SLOGICB
      generic map (LUT0_INITVAL=>X"4040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>spi_done, B0=>st_2_adj_12557, 
                C0=>st_3_adj_12556, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n75267, Q0=>open);
    u_sd_SLICE_791I: SLOGICB
      generic map (LUT0_INITVAL=>X"F122")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n76348, B0=>u_sd_n78001, 
                C0=>u_sd_n34, D0=>u_sd_cmd_i_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n75912, Q0=>open);
    u_sd_SLICE_792I: SLOGICB
      generic map (LUT0_INITVAL=>X"C3C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_cmd_i_0, 
                C0=>u_sd_cmd_i_2, D0=>u_sd_cmd_frame_42, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n10, Q0=>open);
    u_sd_SLICE_793I: SLOGICB
      generic map (LUT0_INITVAL=>X"C022")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_frame_44, 
                B0=>u_sd_cmd_i_2, C0=>u_sd_cmd_frame_4, D0=>u_sd_cmd_i_0, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_sd_n11, Q0=>open);
    u_sd_SLICE_794I: SLOGICB
      generic map (LUT0_INITVAL=>X"0800")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_1, B0=>resp_tries_4, 
                C0=>st_0_adj_12558, D0=>u_sd_n71644, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76001, Q0=>open);
    u_sd_SLICE_795I: SLOGICB
      generic map (LUT0_INITVAL=>X"0080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n76458, B0=>u_sd_st_1, 
                C0=>resp_tries_4, D0=>u_sd_n76352, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76004, Q0=>open);
    u_sd_SLICE_796I: SLOGICB
      generic map (LUT0_INITVAL=>X"FD00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>st_0_adj_12558, B0=>u_sd_st_4, 
                C0=>u_sd_n76352, D0=>st_3_adj_12556, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n72040, Q0=>open);
    u_sd_SLICE_797I: SLOGICB
      generic map (LUT0_INITVAL=>X"CC00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>st_0_adj_12558, 
                C0=>'X', D0=>st_3_adj_12556, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n65894, Q0=>open);
    u_sd_SLICE_798I: SLOGICB
      generic map (LUT0_INITVAL=>X"C0C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_st_1, 
                C0=>u_sd_spi_tx_0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73399, Q0=>open);
    u_sd_SLICE_799I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>u_sd_st_1, 
                D0=>st_2_adj_12557, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n78002, 
                Q0=>open);
    u_sd_SLICE_800I: SLOGICB
      generic map (LUT0_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n77989, B0=>u_sd_n78014, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n76045, 
                Q0=>open);
    u_sd_SLICE_801I: SLOGICB
      generic map (LUT0_INITVAL=>X"F000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_sd_n26_adj_12474, D0=>u_sd_cmd_frame_38, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n18, Q0=>open);
    u_sd_SLICE_802I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAA8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_frame_44, 
                B0=>st_0_adj_12558, C0=>n76458, D0=>u_sd_n78001, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n31_adj_12469, Q0=>open);
    u_sd_SLICE_803I: SLOGICB
      generic map (LUT0_INITVAL=>X"C8C8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n14_adj_12483, 
                B0=>st_3_adj_12556, C0=>u_sd_cmd_frame_5, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n27_adj_12484, Q0=>open);
    u_sd_SLICE_804I: SLOGICB
      generic map (LUT0_INITVAL=>X"CC4C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_0, B0=>spi_done, 
                C0=>u_sd_cmd_i_2, D0=>u_sd_cmd_i_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76443, Q0=>open);
    u_sd_SLICE_805I: SLOGICB
      generic map (LUT0_INITVAL=>X"A5FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>bit_cnt_0, B0=>'X', 
                C0=>bit_cnt_1, D0=>u_sd_spi_busy, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n74457, Q0=>open);
    u_sd_SLICE_806I: SLOGICB
      generic map (LUT0_INITVAL=>X"0303")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>st_3_adj_12556, 
                C0=>st_0_adj_12558, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n74158, Q0=>open);
    u_sd_SLICE_807I: SLOGICB
      generic map (LUT0_INITVAL=>X"00F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>st_3_adj_12556, D0=>st_2_adj_12557, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73777, Q0=>open);
    u_sd_SLICE_808I: SLOGICB
      generic map (LUT0_INITVAL=>X"AA00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_4, B0=>'X', C0=>'X', 
                D0=>st_2_adj_12557, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n76481, 
                Q0=>open);
    u_sd_SLICE_809I: SLOGICB
      generic map (LUT0_INITVAL=>X"3333")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_div_val_2, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_sck_N_10288_3, Q0=>open);
    u_sd_SLICE_810I: SLOGICB
      generic map (LUT0_INITVAL=>X"3F3F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_st_1, 
                C0=>st_0_adj_12558, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n74150, Q0=>open);
    u_sd_SLICE_811I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0D0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_1, B0=>st_0_adj_12558, 
                C0=>u_sd_cmd_frame_1, D0=>u_sd_n78001, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n31_adj_12489, Q0=>open);
    u_sd_SLICE_812I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>resp_tries_3, 
                B0=>resp_tries_7, C0=>resp_tries_2, D0=>resp_tries_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n73217, Q0=>open);
    u_sd_SLICE_813I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>resp_tries_0, D0=>resp_tries_5, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73215, Q0=>open);
    u_sd_SLICE_814I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n14, B0=>'X', C0=>u_sd_st_1, 
                D0=>n13, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n73433, Q0=>open);
    u_sd_SLICE_815I: SLOGICB
      generic map (LUT0_INITVAL=>X"5510")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>st_2_adj_12557, 
                B0=>st_3_adj_12556, C0=>u_sd_n69, D0=>u_sd_n76064, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n61, Q0=>open);
    u_sd_SLICE_816I: SLOGICB
      generic map (LUT0_INITVAL=>X"0101")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_1, 
                B0=>u_sd_spi_busy, C0=>u_sd_spi_start, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n76384, Q0=>open);
    u_sd_SLICE_817I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCCF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_spi_tx_3, 
                C0=>u_sd_spi_start, D0=>u_sd_spi_busy, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76417, Q0=>open);
    u_sd_SLICE_818I: SLOGICB
      generic map (LUT0_INITVAL=>X"22F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n95_adj_12493, 
                B0=>st_3_adj_12556, C0=>u_sd_n62, D0=>u_sd_st_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n80_adj_12492, Q0=>open);
    u_sd_SLICE_819I: SLOGICB
      generic map (LUT0_INITVAL=>X"CDCD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, 
                B0=>u_sd_spi_tx_2, C0=>u_sd_spi_start, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n76416, Q0=>open);
    u_sd_SLICE_820I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCCF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_spi_tx_1, 
                C0=>u_sd_spi_start, D0=>u_sd_spi_busy, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76415, Q0=>open);
    u_sd_SLICE_821I: SLOGICB
      generic map (LUT0_INITVAL=>X"0300")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_spi_busy, 
                C0=>u_sd_spi_start, D0=>st_2_adj_12557, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n62877, Q0=>open);
    u_sd_SLICE_822I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_spi_start, 
                C0=>st_3_adj_12556, D0=>u_sd_spi_busy, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n74122, Q0=>open);
    u_sd_SLICE_823I: SLOGICB
      generic map (LUT0_INITVAL=>X"0011")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_start, 
                B0=>u_sd_spi_busy, C0=>'X', D0=>u_sd_cmd_i_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76389, Q0=>open);
    u_sd_SLICE_824I: SLOGICB
      generic map (LUT0_INITVAL=>X"5C0C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>st_3_adj_12556, B0=>u_sd_n3, 
                C0=>u_sd_st_4, D0=>u_sd_n95_adj_12423, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n80, Q0=>open);
    u_sd_SLICE_825I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0F3")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_spi_busy, 
                C0=>u_sd_spi_tx_4, D0=>u_sd_spi_start, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76418, Q0=>open);
    u_sd_SLICE_826I: SLOGICB
      generic map (LUT0_INITVAL=>X"ABAB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_tx_6, 
                B0=>u_sd_spi_busy, C0=>u_sd_spi_start, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n76434, Q0=>open);
    u_sd_SLICE_827I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF03")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_spi_busy, 
                C0=>u_sd_spi_start, D0=>u_sd_spi_tx_5, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76419, Q0=>open);
    u_sd_SLICE_828I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0F5")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, B0=>'X', 
                C0=>u_sd_spi_tx_7, D0=>u_sd_spi_start, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76420, Q0=>open);
    u_sd_SLICE_829I: SLOGICB
      generic map (LUT0_INITVAL=>X"5050")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n78014, B0=>'X', 
                C0=>st_3_adj_12556, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n4, Q0=>open);
    u_sd_SLICE_830I: SLOGICB
      generic map (LUT0_INITVAL=>X"C030")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>st_0_adj_12558, 
                C0=>st_2_adj_12557, D0=>st_3_adj_12556, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n6_adj_12461, Q0=>open);
    u_sd_SLICE_831I: SLOGICB
      generic map (LUT0_INITVAL=>X"0505")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_4, B0=>'X', 
                C0=>st_3_adj_12556, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76487, Q0=>open);
    u_sd_SLICE_832I: SLOGICB
      generic map (LUT0_INITVAL=>X"5500")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, B0=>'X', 
                C0=>'X', D0=>u_sd_spi_start, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76493, Q0=>open);
    u_sd_SLICE_833I: SLOGICB
      generic map (LUT0_INITVAL=>X"CFC0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_sck_N_10287, 
                C0=>u_sd_spi_busy, D0=>u_sd_spi_start, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n37437, Q0=>open);
    u_sd_SLICE_834I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>st_0_adj_12558, D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76503, Q0=>open);
    u_sd_SLICE_835I: SLOGICB
      generic map (LUT0_INITVAL=>X"C0E2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n76458, B0=>u_sd_st_4, 
                C0=>u_sd_n71644, D0=>u_sd_n76352, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n70457, Q0=>open);
    u_sd_SLICE_836I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_sd_st_1, C0=>'X', 
                D0=>st_0_adj_12558, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n76456, 
                Q0=>open);
    u_sd_SLICE_837I: SLOGICB
      generic map (LUT0_INITVAL=>X"C202")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_frame_40, 
                B0=>u_sd_cmd_i_1, C0=>u_sd_cmd_i_0, D0=>u_sd_cmd_frame_16, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_sd_n74308, Q0=>open);
    u_sd_SLICE_838I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF33")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>st_0_adj_12558, 
                C0=>'X', D0=>st_2_adj_12557, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n76470, Q0=>open);
    u_sd_SLICE_839I: SLOGICB
      generic map (LUT0_INITVAL=>X"C8C8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_1, B0=>u_sd_st_4, 
                C0=>st_0_adj_12558, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73775, Q0=>open);
    u_sd_SLICE_840I: SLOGICB
      generic map (LUT0_INITVAL=>X"F000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>u_sd_st_1, 
                D0=>st_0_adj_12558, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n76457, 
                Q0=>open);
    u_ctrl_SLICE_841I: SLOGICB
      generic map (LUT0_INITVAL=>X"3333")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_ctrl_hb_counter_3, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72771, 
                Q0=>open);
    u_ctrl_SLICE_842I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_hb_counter_27, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n72772, Q0=>open);
    u_ctrl_SLICE_843I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_hb_counter_6, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72782, 
                Q0=>open);
    u_ctrl_SLICE_844I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_hb_counter_19, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n72786, Q0=>open);
    u_ctrl_SLICE_845I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_hb_counter_2, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72760, 
                Q0=>open);
    u_ctrl_SLICE_846I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_hb_counter_1, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n72761, Q0=>open);
    u_ctrl_SLICE_847I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_hb_counter_0, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72762, 
                Q0=>open);
    u_ctrl_SLICE_848I: SLOGICB
      generic map (LUT0_INITVAL=>X"00FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>u_ctrl_hb_counter_29, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72766, 
                Q0=>open);
    u_ctrl_SLICE_849I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_hb_counter_14, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72767, 
                Q0=>open);
    u_ctrl_SLICE_850I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_hb_counter_21, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n72768, Q0=>open);
    u_ctrl_SLICE_851I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_hb_counter_13, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n72769, Q0=>open);
    u_ctrl_SLICE_852I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_hb_counter_4, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72770, 
                Q0=>open);
    u_ctrl_SLICE_853I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_hb_counter_11, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n72756, Q0=>open);
    u_ctrl_SLICE_854I: SLOGICB
      generic map (LUT0_INITVAL=>X"3333")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_ctrl_hb_counter_10, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72757, 
                Q0=>open);
    u_ctrl_SLICE_855I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_hb_counter_9, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n72758, Q0=>open);
    u_ctrl_SLICE_856I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_hb_counter_24, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72759, 
                Q0=>open);
    u_ctrl_SLICE_857I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_hb_counter_7, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n72785, Q0=>open);
    u_ctrl_SLICE_858I: SLOGICB
      generic map (LUT0_INITVAL=>X"3333")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_ctrl_hb_counter_5, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n70404, 
                Q0=>open);
    u_ctrl_SLICE_859I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_hb_counter_20, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72755, 
                Q0=>open);
    u_ctrl_SLICE_860I: SLOGICB
      generic map (LUT0_INITVAL=>X"00FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>u_ctrl_hb_counter_8, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72781, 
                Q0=>open);
    u_ctrl_SLICE_861I: SLOGICB
      generic map (LUT0_INITVAL=>X"00FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>u_ctrl_hb_counter_28, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n72765, 
                Q0=>open);
    u_ctrl_SLICE_862I: SLOGICB
      generic map (LUT0_INITVAL=>X"2020")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_tx_pkt_valid, 
                B0=>u_ctrl_tx_busy, C0=>u_ctrl_n24591, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_SD_CLK_c_enable_240, Q0=>open);
    u_ctrl_u_rx_SLICE_863I: SLOGICB
      generic map (LUT0_INITVAL=>X"CC00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_ctrl_u_rx_n24229, 
                C0=>'X', D0=>rx_s2, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n52662, Q0=>open);
    u_ctrl_u_rx_SLICE_864I: SLOGICB
      generic map (LUT0_INITVAL=>X"AA00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_n24227, B0=>'X', 
                C0=>'X', D0=>u_ctrl_u_rx_bit_idx_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n74220, Q0=>open);
    u_ctrl_u_rx_SLICE_865I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_ctrl_u_rx_bit_idx_2, C0=>'X', D0=>u_ctrl_u_rx_clk_cnt_6, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_rx_n73787, Q0=>open);
    u_ctrl_u_rx_SLICE_866I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_clk_cnt_3, 
                B0=>u_ctrl_u_rx_n76500, C0=>u_ctrl_u_rx_bit_idx_0, 
                D0=>u_ctrl_u_rx_clk_cnt_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n73661, Q0=>open);
    u_ctrl_u_rx_SLICE_867I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFAF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_clk_cnt_0, 
                B0=>'X', C0=>u_ctrl_u_rx_bit_idx_0, D0=>u_ctrl_u_rx_clk_cnt_8, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_rx_n73821, Q0=>open);
    u_ctrl_u_rx_SLICE_868I: SLOGICB
      generic map (LUT0_INITVAL=>X"2200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_bit_idx_1, 
                B0=>u_ctrl_u_rx_n60891, C0=>'X', D0=>u_ctrl_u_rx_bit_idx_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_rx_SD_CLK_c_enable_197, 
                Q0=>open);
    u_ctrl_u_cmd_SLICE_869I: SLOGICB
      generic map (LUT0_INITVAL=>X"FAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_rx_data_6, B0=>'X', 
                C0=>u_ctrl_rx_data_4, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n74017, Q0=>open);
    u_ctrl_u_cmd_SLICE_870I: SLOGICB
      generic map (LUT0_INITVAL=>X"3C3C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_ctrl_u_cmd_bytes_5_5, C0=>u_ctrl_u_cmd_bytes_2_5, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_u_cmd_n73937, 
                Q0=>open);
    u_ctrl_u_cmd_SLICE_871I: SLOGICB
      generic map (LUT0_INITVAL=>X"0FF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_u_cmd_bytes_4_4, D0=>u_ctrl_u_cmd_bytes_2_4, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_cmd_n74037, Q0=>open);
    u_ctrl_u_cmd_SLICE_872I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_2_3, 
                B0=>u_ctrl_u_cmd_bytes_4_3, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n74045, Q0=>open);
    u_ctrl_u_cmd_SLICE_873I: SLOGICB
      generic map (LUT0_INITVAL=>X"55AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_4_2, 
                B0=>'X', C0=>'X', D0=>u_ctrl_u_cmd_bytes_2_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n73945, Q0=>open);
    u_ctrl_u_cmd_SLICE_874I: SLOGICB
      generic map (LUT0_INITVAL=>X"33CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_ctrl_u_cmd_bytes_4_7, C0=>'X', 
                D0=>u_ctrl_u_cmd_bytes_2_7, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n73925, Q0=>open);
    u_ctrl_u_cmd_SLICE_875I: SLOGICB
      generic map (LUT0_INITVAL=>X"55AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_4_6, 
                B0=>'X', C0=>'X', D0=>u_ctrl_u_cmd_bytes_2_6, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n74029, Q0=>open);
    u_ctrl_u_cmd_SLICE_876I: SLOGICB
      generic map (LUT0_INITVAL=>X"33CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_ctrl_u_cmd_bytes_4_1, C0=>'X', 
                D0=>u_ctrl_u_cmd_bytes_2_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n74055, Q0=>open);
    u_ctrl_u_cmd_SLICE_877I: SLOGICB
      generic map (LUT0_INITVAL=>X"33CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_ctrl_u_cmd_bytes_4_0, C0=>'X', 
                D0=>u_ctrl_u_cmd_bytes_2_0, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n73973, Q0=>open);
    u_ctrl_u_cmd_SLICE_878I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_cmd_valid_N_820, 
                B0=>u_ctrl_rx_valid, C0=>u_ctrl_u_cmd_n24364, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_cmd_SD_CLK_c_enable_237, Q0=>open);
    u_ctrl_u_ack_SLICE_879I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_reg_ack_value_28, 
                B0=>u_ctrl_reg_ack_value_4, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n74103, Q0=>open);
    u_ctrl_u_ack_SLICE_880I: SLOGICB
      generic map (LUT0_INITVAL=>X"EE22")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_6_6, 
                B0=>u_ctrl_u_ack_idx_0, C0=>'X', D0=>u_ctrl_u_ack_pkt_7_6, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_ack_n74404, Q0=>open);
    u_ctrl_u_ack_SLICE_881I: SLOGICB
      generic map (LUT0_INITVAL=>X"55AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_reg_ack_value_31, 
                B0=>'X', C0=>'X', D0=>u_ctrl_reg_ack_seq_3, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n4, Q0=>open);
    u_ctrl_u_ack_SLICE_882I: SLOGICB
      generic map (LUT0_INITVAL=>X"0FF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_reg_ack_value_2, D0=>u_ctrl_reg_ack_value_28, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_ack_n60056, Q0=>open);
    u_ctrl_u_ack_SLICE_883I: SLOGICB
      generic map (LUT0_INITVAL=>X"00F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_pkt_busy, D0=>u_ctrl_tx_busy, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_SD_CLK_c_enable_239, Q0=>open);
    u_ctrl_u_ack_SLICE_884I: SLOGICB
      generic map (LUT0_INITVAL=>X"3232")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_reg_ack_valid, 
                B0=>u_ctrl_pkt_busy, C0=>u_ctrl_hb_pending, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_ack_SD_CLK_c_enable_238, Q0=>open);
    u_ctrl_u_ack_SLICE_885I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_6_4, B0=>'X', 
                C0=>u_ctrl_u_ack_pkt_7_4, D0=>u_ctrl_u_ack_idx_0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_ack_n74401, Q0=>open);
    u_ctrl_u_ack_SLICE_886I: SLOGICB
      generic map (LUT0_INITVAL=>X"0FF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>u_ctrl_reg_ack_value_28, D0=>u_ctrl_reg_ack_seq_6, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_ack_n4_adj_12419, Q0=>open);
    u_ctrl_u_ack_SLICE_887I: SLOGICB
      generic map (LUT0_INITVAL=>X"55AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_reg_ack_type_1, 
                B0=>'X', C0=>'X', D0=>u_ctrl_reg_ack_value_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n73965, Q0=>open);
    u_ctrl_u_ack_SLICE_888I: SLOGICB
      generic map (LUT0_INITVAL=>X"33CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>u_ctrl_reg_ack_value_31, C0=>'X', 
                D0=>u_ctrl_reg_ack_value_30, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n61047, Q0=>open);
    u_ctrl_u_ack_SLICE_889I: SLOGICB
      generic map (LUT0_INITVAL=>X"3F3F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_ctrl_u_ack_idx_2, 
                C0=>u_ctrl_u_ack_idx_1, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n74447, Q0=>open);
    u_ctrl_u_ack_SLICE_890I: SLOGICB
      generic map (LUT0_INITVAL=>X"F5F5")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_idx_2, B0=>'X', 
                C0=>u_ctrl_u_ack_idx_1, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n74446, Q0=>open);
    u_ctrl_u_ack_SLICE_891I: SLOGICB
      generic map (LUT0_INITVAL=>X"0C0C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>u_ctrl_u_ack_pkt_2_7, 
                C0=>u_ctrl_u_ack_idx_0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n2_adj_12418, Q0=>open);
    u_ctrl_u_ack_SLICE_892I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"00A0", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_2_4, B0=>'X', 
                C0=>u_ctrl_u_ack_idx_1, D0=>u_ctrl_u_ack_idx_0, 
                M0=>u_ctrl_reg_ack_value_4, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_238, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_send_hb, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_ack_n72478, Q0=>u_ctrl_u_ack_pkt_2_4);
    u_ctrl_u_ack_SLICE_893I: SLOGICB
      generic map (LUT0_INITVAL=>X"5A5A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_reg_ack_type_0, 
                B0=>'X', C0=>u_ctrl_reg_ack_value_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n74051, Q0=>open);
    u_ctrl_u_ack_SLICE_894I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_2_3, 
                B0=>u_ctrl_u_ack_pkt_5_4, C0=>u_ctrl_u_ack_idx_0, 
                D0=>u_ctrl_u_ack_idx_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n3, Q0=>open);
    u_ctrl_u_ack_SLICE_895I: SLOGICB
      generic map (LUT0_INITVAL=>X"C0A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_2_6, 
                B0=>u_ctrl_u_ack_pkt_5_6, C0=>u_ctrl_u_ack_idx_1, 
                D0=>u_ctrl_u_ack_idx_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n3_adj_12417, Q0=>open);
    u_ctrl_u_ack_SLICE_896I: SLOGICB
      generic map (LUT0_INITVAL=>X"AACC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_7_3, 
                B0=>u_ctrl_u_ack_pkt_6_3, C0=>'X', D0=>u_ctrl_u_ack_idx_0, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_ack_n74398, Q0=>open);
    u_raw_cap_SLICE_897I: SLOGICB
      generic map (LUT0_INITVAL=>X"0808")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>VSYNC_c, 
                B0=>u_raw_cap_capture_this_frame_p, C0=>vsync_d, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_raw_cap_PCLK_c_enable_21, Q0=>open);
    u_raw_cap_SLICE_898I: SLOGICB
      generic map (LUT0_INITVAL=>X"0C0C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>vsync_d, C0=>VSYNC_c, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>PCLK_c_enable_22, Q0=>open);
    SLICE_899I: SLOGICB
      generic map (LUT0_INITVAL=>X"0000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>GND_net, Q0=>open);
    M_D0I: M_D0B
      port map (PADDI=>M_D0_c, MD0=>M_D0);
    RXI: RXB
      port map (PADDI=>RX_c, RXS=>RX);
    PCLKI: PCLKB
      port map (PADDI=>PCLK_c, PCLKS=>PCLK);
    VSYNCI: VSYNCB
      port map (PADDI=>VSYNC_c, VSYNCS=>VSYNC);
    CRYSTALI: CRYSTALB
      port map (PADDI=>CRYSTAL_c, CRYSTALS=>CRYSTAL);
    M_CLKI: M_CLKB
      port map (PADDO=>M_CLK_c, MCLK=>M_CLK);
    M_D3I: M_D3B
      port map (PADDO=>M_D3_c, MD3=>M_D3);
    M_D2I: M_D2B
      port map (MD2=>M_D2);
    M_D1I: M_D1B
      port map (MD1=>M_D1);
    M_CMDI: M_CMDB
      port map (PADDO=>M_CMD_c, MCMD=>M_CMD);
    TXI: TXB
      port map (PADDO=>TX_c, TXS=>TX);
    ESP_D_0_I: ESP_D_0_B
      port map (PADDO=>ESP_D_c_0, ESPD0=>ESP_D(0));
    ESP_D_1_I: ESP_D_1_B
      port map (ESPD1=>ESP_D(1));
    ESP_D_2_I: ESP_D_2_B
      port map (ESPD2=>ESP_D(2));
    ESP_D_3_I: ESP_D_3_B
      port map (ESPD3=>ESP_D(3));
    ESP_D_4_I: ESP_D_4_B
      port map (ESPD4=>ESP_D(4));
    ESP_D_5_I: ESP_D_5_B
      port map (ESPD5=>ESP_D(5));
    ESP_D_6_I: ESP_D_6_B
      port map (ESPD6=>ESP_D(6));
    ESP_D_7_I: ESP_D_7_B
      port map (ESPD7=>ESP_D(7));
    DOUTI: DOUTB
      port map (DOUTS=>DOUT);
    SD_BA_0_I: SD_BA_0_B
      port map (SDBA0=>SD_BA(0));
    SD_BA_1_I: SD_BA_1_B
      port map (SDBA1=>SD_BA(1));
    SD_A_0_I: SD_A_0_B
      port map (SDA0=>SD_A(0));
    SD_A_1_I: SD_A_1_B
      port map (SDA1=>SD_A(1));
    SD_A_2_I: SD_A_2_B
      port map (SDA2=>SD_A(2));
    SD_A_3_I: SD_A_3_B
      port map (SDA3=>SD_A(3));
    SD_A_4_I: SD_A_4_B
      port map (SDA4=>SD_A(4));
    SD_A_5_I: SD_A_5_B
      port map (SDA5=>SD_A(5));
    SD_A_6_I: SD_A_6_B
      port map (SDA6=>SD_A(6));
    SD_A_7_I: SD_A_7_B
      port map (SDA7=>SD_A(7));
    SD_A_8_I: SD_A_8_B
      port map (SDA8=>SD_A(8));
    SD_A_9_I: SD_A_9_B
      port map (PADDO=>SD_A_c_9, SDA9=>SD_A(9));
    SD_A_10_I: SD_A_10_B
      port map (SDA10=>SD_A(10));
    SD_A_11_I: SD_A_11_B
      port map (SDA11=>SD_A(11));
    SD_A_12_I: SD_A_12_B
      port map (SDA12=>SD_A(12));
    SD_CAS_NI: SD_CAS_NB
      port map (PADDO=>SD_CAS_N_c, SDCASN=>SD_CAS_N);
    SD_RAS_NI: SD_RAS_NB
      port map (PADDO=>SD_RAS_N_c, SDRASN=>SD_RAS_N);
    SD_WE_NI: SD_WE_NB
      port map (PADDO=>SD_WE_N_c, SDWEN=>SD_WE_N);
    SD_CS_NI: SD_CS_NB
      port map (SDCSN=>SD_CS_N);
    SD_CLKI: SD_CLKB
      port map (PADDO=>SD_CLK_c, SDCLK=>SD_CLK);
    SD_DQM_0_I: SD_DQM_0_B
      port map (SDDQM0=>SD_DQM(0));
    SD_DQM_1_I: SD_DQM_1_B
      port map (SDDQM1=>SD_DQM(1));
    cam_sdaI: cam_sdaB
      port map (PADDT=>sda_oe, camsda=>cam_sda);
    cam_sclI: cam_sclB
      port map (PADDO=>cam_scl_c, camscl=>cam_scl);
    MCLKI: MCLKB
      port map (PADDO=>MCLK_c, MCLKS=>MCLK);
    u_cam_cfg_u_rom_mux_871I: u_cam_cfg_u_rom_mux_871
      port map (DOA4=>u_cam_cfg_u_rom_n28107, DOA3=>u_cam_cfg_u_rom_n28108, 
                DOA2=>u_cam_cfg_u_rom_n28109, DOA1=>u_cam_cfg_u_rom_n28110, 
                DOA0=>u_cam_cfg_u_rom_n28111, CLKB=>SD_CLK_c, CEB=>tick, 
                DOB0=>u_cam_cfg_u_rom_n28129, DOB1=>u_cam_cfg_u_rom_n28128, 
                DOB2=>u_cam_cfg_u_rom_n28127, DOB3=>u_cam_cfg_u_rom_n28126, 
                DOB4=>u_cam_cfg_u_rom_n28125, DOB5=>u_cam_cfg_u_rom_n28124, 
                DOB6=>u_cam_cfg_u_rom_n28123, DOB7=>u_cam_cfg_u_rom_n28122, 
                DOB8=>u_cam_cfg_u_rom_n28121, DOB9=>u_cam_cfg_u_rom_n28120, 
                DOB10=>u_cam_cfg_u_rom_n28119, DOB11=>u_cam_cfg_u_rom_n28118, 
                DOB12=>u_cam_cfg_u_rom_n28117, DOB13=>u_cam_cfg_u_rom_n28116, 
                DOB14=>u_cam_cfg_u_rom_n28115, DOB15=>u_cam_cfg_u_rom_n28114, 
                DOB16=>u_cam_cfg_u_rom_n28113, DOB17=>u_cam_cfg_u_rom_n28112, 
                ADB5=>n318, ADB6=>n317, ADB7=>n316, ADB8=>n315, ADB9=>n314, 
                ADB10=>n313, ADB11=>n312, ADB12=>n311, ADB13=>n310);
    u_cam_cfg_u_rom_mux_867I: u_cam_cfg_u_rom_mux_867
      port map (DOA4=>u_cam_cfg_u_rom_n28011, DOA3=>u_cam_cfg_u_rom_n28012, 
                DOA2=>u_cam_cfg_u_rom_n28013, DOA1=>u_cam_cfg_u_rom_n28014, 
                DOA0=>u_cam_cfg_u_rom_n28015, CLKB=>SD_CLK_c, CEB=>tick, 
                DOB0=>u_cam_cfg_u_rom_n28033, DOB1=>u_cam_cfg_u_rom_n28032, 
                DOB2=>u_cam_cfg_u_rom_n28031, DOB3=>u_cam_cfg_u_rom_n28030, 
                DOB4=>u_cam_cfg_u_rom_n28029, DOB5=>u_cam_cfg_u_rom_n28028, 
                DOB6=>u_cam_cfg_u_rom_n28027, DOB7=>u_cam_cfg_u_rom_n28026, 
                DOB8=>u_cam_cfg_u_rom_n28025, DOB9=>u_cam_cfg_u_rom_n28024, 
                DOB10=>u_cam_cfg_u_rom_n28023, DOB11=>u_cam_cfg_u_rom_n28022, 
                DOB12=>u_cam_cfg_u_rom_n28021, DOB13=>u_cam_cfg_u_rom_n28020, 
                DOB14=>u_cam_cfg_u_rom_n28019, DOB15=>u_cam_cfg_u_rom_n28018, 
                DOB16=>u_cam_cfg_u_rom_n28017, DOB17=>u_cam_cfg_u_rom_n28016, 
                ADB5=>n318, ADB6=>n317, ADB7=>n316, ADB8=>n315, ADB9=>n314, 
                ADB10=>n313, ADB11=>n312, ADB12=>n311, ADB13=>n310);
    u_cam_cfg_u_rom_mux_870I: u_cam_cfg_u_rom_mux_870
      port map (DOA4=>u_cam_cfg_u_rom_n28083, DOA3=>u_cam_cfg_u_rom_n28084, 
                DOA2=>u_cam_cfg_u_rom_n28085, DOA1=>u_cam_cfg_u_rom_n28086, 
                DOA0=>u_cam_cfg_u_rom_n28087, CLKB=>SD_CLK_c, CEB=>tick, 
                DOB0=>u_cam_cfg_u_rom_n28105, DOB1=>u_cam_cfg_u_rom_n28104, 
                DOB2=>u_cam_cfg_u_rom_n28103, DOB3=>u_cam_cfg_u_rom_n28102, 
                DOB4=>u_cam_cfg_u_rom_n28101, DOB5=>u_cam_cfg_u_rom_n28100, 
                DOB6=>u_cam_cfg_u_rom_n28099, DOB7=>u_cam_cfg_u_rom_n28098, 
                DOB8=>u_cam_cfg_u_rom_n28097, DOB9=>u_cam_cfg_u_rom_n28096, 
                DOB10=>u_cam_cfg_u_rom_n28095, DOB11=>u_cam_cfg_u_rom_n28094, 
                DOB12=>u_cam_cfg_u_rom_n28093, DOB13=>u_cam_cfg_u_rom_n28092, 
                DOB14=>u_cam_cfg_u_rom_n28091, DOB15=>u_cam_cfg_u_rom_n28090, 
                DOB16=>u_cam_cfg_u_rom_n28089, DOB17=>u_cam_cfg_u_rom_n28088, 
                ADB5=>n318, ADB6=>n317, ADB7=>n316, ADB8=>n315, ADB9=>n314, 
                ADB10=>n313, ADB11=>n312, ADB12=>n311, ADB13=>n310);
    u_cam_cfg_u_rom_mux_868I: u_cam_cfg_u_rom_mux_868
      port map (DOA4=>u_cam_cfg_u_rom_n28035, DOA3=>u_cam_cfg_u_rom_n28036, 
                DOA2=>u_cam_cfg_u_rom_n28037, DOA1=>u_cam_cfg_u_rom_n28038, 
                DOA0=>u_cam_cfg_u_rom_n28039, CLKB=>SD_CLK_c, CEB=>tick, 
                DOB0=>u_cam_cfg_u_rom_n28057, DOB1=>u_cam_cfg_u_rom_n28056, 
                DOB2=>u_cam_cfg_u_rom_n28055, DOB3=>u_cam_cfg_u_rom_n28054, 
                DOB4=>u_cam_cfg_u_rom_n28053, DOB5=>u_cam_cfg_u_rom_n28052, 
                DOB6=>u_cam_cfg_u_rom_n28051, DOB7=>u_cam_cfg_u_rom_n28050, 
                DOB8=>u_cam_cfg_u_rom_n28049, DOB9=>u_cam_cfg_u_rom_n28048, 
                DOB10=>u_cam_cfg_u_rom_n28047, DOB11=>u_cam_cfg_u_rom_n28046, 
                DOB12=>u_cam_cfg_u_rom_n28045, DOB13=>u_cam_cfg_u_rom_n28044, 
                DOB14=>u_cam_cfg_u_rom_n28043, DOB15=>u_cam_cfg_u_rom_n28042, 
                DOB16=>u_cam_cfg_u_rom_n28041, DOB17=>u_cam_cfg_u_rom_n28040, 
                ADB5=>n318, ADB6=>n317, ADB7=>n316, ADB8=>n315, ADB9=>n314, 
                ADB10=>n313, ADB11=>n312, ADB12=>n311, ADB13=>n310);
    mux_367I: mux_367
      port map (CLKB=>SD_CLK_c, CEB=>tick, DOB0=>n27876, DOB1=>n27875, 
                DOB2=>n27874, DOB3=>n27873, DOB4=>n27872, DOB5=>n27871, 
                DOB6=>n27870, DOB7=>n27869, ADB3=>n318, ADB4=>n317, ADB5=>n316, 
                ADB6=>n315, ADB7=>n314, ADB8=>n313, ADB9=>n312, ADB10=>n311, 
                ADB11=>n310, ADB12=>n309, ADB13=>n308);
    u_pll_PLLInst_0I: u_pll_PLLInst_0
      port map (CLKI=>CRYSTAL_c, CLKFB=>SD_CLK_c, STDBY=>GND_net, 
                CLKOS=>MCLK_c, CLKOP=>SD_CLK_c);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, ECP5U;
  configuration Structure_CON of fpga_top is
    for Structure
    end for;
  end Structure_CON;


