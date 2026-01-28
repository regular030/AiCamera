
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.14.0.75.2

-- ldbanno -n VHDL -o AICAM_impl1_mapvho.vho -w -neg -gui -msgset C:/Users/kunsh/Desktop/AiCamera/Lattice Diamond/promote.xml AICAM_impl1_map.ncd 
-- Netlist created on Wed Jan 28 06:55:10 2026
-- Netlist written on Wed Jan 28 06:55:14 2026
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
    Inst1_IB: sapiobuf
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

-- entity sapiobuf0001
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0001 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0001 : ENTITY IS TRUE;

  end sapiobuf0001;

  architecture Structure of sapiobuf0001 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
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

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_WE_N_pad: sapiobuf0001
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

    signal VCCI: Std_logic;
    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_CS_N_pad: sapiobuf0001
      port map (I=>VCCI, PAD=>SDCSN_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

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

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_CLK_pad: sapiobuf0001
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

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_RAS_N_pad: sapiobuf0001
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

-- entity sapiobuf0002
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0002 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0002 : ENTITY IS TRUE;

  end sapiobuf0002;

  architecture Structure of sapiobuf0002 is
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
      InstancePath  	: string := "DOUTB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_DOUTS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; DOUTS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF DOUTB : ENTITY IS TRUE;

  end DOUTB;

  architecture Structure of DOUTB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal DOUTS_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    DOUT_pad: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>DOUTS_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, DOUTS_out)
    VARIABLE DOUTS_zd         	: std_logic := 'X';
    VARIABLE DOUTS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    DOUTS_zd 	:= DOUTS_out;

    VitalPathDelay01 (
      OutSignal => DOUTS, OutSignalName => "DOUTS", OutTemp => DOUTS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DOUTS,
                           PathCondition => TRUE)),
      GlitchData => DOUTS_GlitchData,
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

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    MCLK_pad: sapiobuf0003
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

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_CAS_N_pad: sapiobuf0001
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
      InstancePath  	: string := "SD_A_12_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA12	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA12: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_12_B : ENTITY IS TRUE;

  end SD_A_12_B;

  architecture Structure of SD_A_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA12_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_12: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDA12_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA12_out)
    VARIABLE SDA12_zd         	: std_logic := 'X';
    VARIABLE SDA12_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA12_zd 	:= SDA12_out;

    VitalPathDelay01 (
      OutSignal => SDA12, OutSignalName => "SDA12", OutTemp => SDA12_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA12,
                           PathCondition => TRUE)),
      GlitchData => SDA12_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_A_11_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA11	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA11: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_11_B : ENTITY IS TRUE;

  end SD_A_11_B;

  architecture Structure of SD_A_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA11_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_11: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDA11_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA11_out)
    VARIABLE SDA11_zd         	: std_logic := 'X';
    VARIABLE SDA11_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA11_zd 	:= SDA11_out;

    VitalPathDelay01 (
      OutSignal => SDA11, OutSignalName => "SDA11", OutTemp => SDA11_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA11,
                           PathCondition => TRUE)),
      GlitchData => SDA11_GlitchData,
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
      InstancePath  	: string := "SD_A_10_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA10	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA10: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_10_B : ENTITY IS TRUE;

  end SD_A_10_B;

  architecture Structure of SD_A_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA10_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_10: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>SDA10_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA10_out)
    VARIABLE SDA10_zd         	: std_logic := 'X';
    VARIABLE SDA10_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA10_zd 	:= SDA10_out;

    VitalPathDelay01 (
      OutSignal => SDA10, OutSignalName => "SDA10", OutTemp => SDA10_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA10,
                           PathCondition => TRUE)),
      GlitchData => SDA10_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_9: sapiobuf0001
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
      InstancePath  	: string := "SD_A_8_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA8	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_8_B : ENTITY IS TRUE;

  end SD_A_8_B;

  architecture Structure of SD_A_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA8_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_8: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDA8_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA8_out)
    VARIABLE SDA8_zd         	: std_logic := 'X';
    VARIABLE SDA8_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA8_zd 	:= SDA8_out;

    VitalPathDelay01 (
      OutSignal => SDA8, OutSignalName => "SDA8", OutTemp => SDA8_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA8,
                           PathCondition => TRUE)),
      GlitchData => SDA8_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_A_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA7	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_7_B : ENTITY IS TRUE;

  end SD_A_7_B;

  architecture Structure of SD_A_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA7_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_7: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDA7_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA7_out)
    VARIABLE SDA7_zd         	: std_logic := 'X';
    VARIABLE SDA7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA7_zd 	:= SDA7_out;

    VitalPathDelay01 (
      OutSignal => SDA7, OutSignalName => "SDA7", OutTemp => SDA7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA7,
                           PathCondition => TRUE)),
      GlitchData => SDA7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_A_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_6_B : ENTITY IS TRUE;

  end SD_A_6_B;

  architecture Structure of SD_A_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA6_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_6: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDA6_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA6_out)
    VARIABLE SDA6_zd         	: std_logic := 'X';
    VARIABLE SDA6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA6_zd 	:= SDA6_out;

    VitalPathDelay01 (
      OutSignal => SDA6, OutSignalName => "SDA6", OutTemp => SDA6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA6,
                           PathCondition => TRUE)),
      GlitchData => SDA6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_A_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_5_B : ENTITY IS TRUE;

  end SD_A_5_B;

  architecture Structure of SD_A_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA5_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_5: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDA5_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA5_out)
    VARIABLE SDA5_zd         	: std_logic := 'X';
    VARIABLE SDA5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA5_zd 	:= SDA5_out;

    VitalPathDelay01 (
      OutSignal => SDA5, OutSignalName => "SDA5", OutTemp => SDA5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA5,
                           PathCondition => TRUE)),
      GlitchData => SDA5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_A_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_4_B : ENTITY IS TRUE;

  end SD_A_4_B;

  architecture Structure of SD_A_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA4_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_4: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDA4_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA4_out)
    VARIABLE SDA4_zd         	: std_logic := 'X';
    VARIABLE SDA4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA4_zd 	:= SDA4_out;

    VitalPathDelay01 (
      OutSignal => SDA4, OutSignalName => "SDA4", OutTemp => SDA4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA4,
                           PathCondition => TRUE)),
      GlitchData => SDA4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_A_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_3_B : ENTITY IS TRUE;

  end SD_A_3_B;

  architecture Structure of SD_A_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA3_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_3: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDA3_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA3_out)
    VARIABLE SDA3_zd         	: std_logic := 'X';
    VARIABLE SDA3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA3_zd 	:= SDA3_out;

    VitalPathDelay01 (
      OutSignal => SDA3, OutSignalName => "SDA3", OutTemp => SDA3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA3,
                           PathCondition => TRUE)),
      GlitchData => SDA3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_A_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_2_B : ENTITY IS TRUE;

  end SD_A_2_B;

  architecture Structure of SD_A_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA2_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_2: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDA2_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA2_out)
    VARIABLE SDA2_zd         	: std_logic := 'X';
    VARIABLE SDA2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA2_zd 	:= SDA2_out;

    VitalPathDelay01 (
      OutSignal => SDA2, OutSignalName => "SDA2", OutTemp => SDA2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA2,
                           PathCondition => TRUE)),
      GlitchData => SDA2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_A_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_1_B : ENTITY IS TRUE;

  end SD_A_1_B;

  architecture Structure of SD_A_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA1_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_1: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDA1_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA1_out)
    VARIABLE SDA1_zd         	: std_logic := 'X';
    VARIABLE SDA1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA1_zd 	:= SDA1_out;

    VitalPathDelay01 (
      OutSignal => SDA1, OutSignalName => "SDA1", OutTemp => SDA1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA1,
                           PathCondition => TRUE)),
      GlitchData => SDA1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_A_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDA0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDA0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_0_B : ENTITY IS TRUE;

  end SD_A_0_B;

  architecture Structure of SD_A_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDA0_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_0: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>SDA0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDA0_out)
    VARIABLE SDA0_zd         	: std_logic := 'X';
    VARIABLE SDA0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA0_zd 	:= SDA0_out;

    VitalPathDelay01 (
      OutSignal => SDA0, OutSignalName => "SDA0", OutTemp => SDA0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDA0,
                           PathCondition => TRUE)),
      GlitchData => SDA0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_BA_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDBA1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDBA1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_BA_1_B : ENTITY IS TRUE;

  end SD_BA_1_B;

  architecture Structure of SD_BA_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDBA1_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_BA_pad_1: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDBA1_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDBA1_out)
    VARIABLE SDBA1_zd         	: std_logic := 'X';
    VARIABLE SDBA1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDBA1_zd 	:= SDBA1_out;

    VitalPathDelay01 (
      OutSignal => SDBA1, OutSignalName => "SDBA1", OutTemp => SDBA1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDBA1,
                           PathCondition => TRUE)),
      GlitchData => SDBA1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_BA_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDBA0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDBA0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_BA_0_B : ENTITY IS TRUE;

  end SD_BA_0_B;

  architecture Structure of SD_BA_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDBA0_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_BA_pad_0: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDBA0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDBA0_out)
    VARIABLE SDBA0_zd         	: std_logic := 'X';
    VARIABLE SDBA0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDBA0_zd 	:= SDBA0_out;

    VitalPathDelay01 (
      OutSignal => SDBA0, OutSignalName => "SDBA0", OutTemp => SDBA0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDBA0,
                           PathCondition => TRUE)),
      GlitchData => SDBA0_GlitchData,
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

-- entity SD_DQ_15_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_15_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_15_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ15	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ15	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ15: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_15_B : ENTITY IS TRUE;

  end SD_DQ_15_B;

  architecture Structure of SD_DQ_15_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ15_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_15: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ15_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ15_out)
    VARIABLE SDDQ15_zd         	: std_logic := 'X';
    VARIABLE SDDQ15_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ15_zd 	:= SDDQ15_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ15, OutSignalName => "SDDQ15", OutTemp => SDDQ15_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ15,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ15,
                           PathCondition => TRUE)),
      GlitchData => SDDQ15_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_14_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_14_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_14_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ14	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ14	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ14: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_14_B : ENTITY IS TRUE;

  end SD_DQ_14_B;

  architecture Structure of SD_DQ_14_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ14_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_14: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ14_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ14_out)
    VARIABLE SDDQ14_zd         	: std_logic := 'X';
    VARIABLE SDDQ14_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ14_zd 	:= SDDQ14_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ14, OutSignalName => "SDDQ14", OutTemp => SDDQ14_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ14,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ14,
                           PathCondition => TRUE)),
      GlitchData => SDDQ14_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_13_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_13_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_13_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ13	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ13	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ13: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_13_B : ENTITY IS TRUE;

  end SD_DQ_13_B;

  architecture Structure of SD_DQ_13_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ13_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_13: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ13_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ13_out)
    VARIABLE SDDQ13_zd         	: std_logic := 'X';
    VARIABLE SDDQ13_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ13_zd 	:= SDDQ13_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ13, OutSignalName => "SDDQ13", OutTemp => SDDQ13_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ13,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ13,
                           PathCondition => TRUE)),
      GlitchData => SDDQ13_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_12_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_12_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_12_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ12	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ12	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ12: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_12_B : ENTITY IS TRUE;

  end SD_DQ_12_B;

  architecture Structure of SD_DQ_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ12_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_12: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ12_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ12_out)
    VARIABLE SDDQ12_zd         	: std_logic := 'X';
    VARIABLE SDDQ12_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ12_zd 	:= SDDQ12_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ12, OutSignalName => "SDDQ12", OutTemp => SDDQ12_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ12,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ12,
                           PathCondition => TRUE)),
      GlitchData => SDDQ12_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_11_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_11_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_11_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ11	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ11	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ11: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_11_B : ENTITY IS TRUE;

  end SD_DQ_11_B;

  architecture Structure of SD_DQ_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ11_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_11: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ11_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ11_out)
    VARIABLE SDDQ11_zd         	: std_logic := 'X';
    VARIABLE SDDQ11_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ11_zd 	:= SDDQ11_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ11, OutSignalName => "SDDQ11", OutTemp => SDDQ11_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ11,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ11,
                           PathCondition => TRUE)),
      GlitchData => SDDQ11_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_10_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_10_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_10_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ10	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ10	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ10: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_10_B : ENTITY IS TRUE;

  end SD_DQ_10_B;

  architecture Structure of SD_DQ_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ10_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_10: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ10_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ10_out)
    VARIABLE SDDQ10_zd         	: std_logic := 'X';
    VARIABLE SDDQ10_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ10_zd 	:= SDDQ10_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ10, OutSignalName => "SDDQ10", OutTemp => SDDQ10_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ10,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ10,
                           PathCondition => TRUE)),
      GlitchData => SDDQ10_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_9_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_9_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_9_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ9	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ9	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ9: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_9_B : ENTITY IS TRUE;

  end SD_DQ_9_B;

  architecture Structure of SD_DQ_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ9_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_9: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ9_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ9_out)
    VARIABLE SDDQ9_zd         	: std_logic := 'X';
    VARIABLE SDDQ9_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ9_zd 	:= SDDQ9_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ9, OutSignalName => "SDDQ9", OutTemp => SDDQ9_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ9,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ9,
                           PathCondition => TRUE)),
      GlitchData => SDDQ9_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_8_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_8_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ8	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ8	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_8_B : ENTITY IS TRUE;

  end SD_DQ_8_B;

  architecture Structure of SD_DQ_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ8_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_8: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ8_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ8_out)
    VARIABLE SDDQ8_zd         	: std_logic := 'X';
    VARIABLE SDDQ8_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ8_zd 	:= SDDQ8_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ8, OutSignalName => "SDDQ8", OutTemp => SDDQ8_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ8,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ8,
                           PathCondition => TRUE)),
      GlitchData => SDDQ8_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_7_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ7	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ7	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_7_B : ENTITY IS TRUE;

  end SD_DQ_7_B;

  architecture Structure of SD_DQ_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ7_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_7: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ7_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ7_out)
    VARIABLE SDDQ7_zd         	: std_logic := 'X';
    VARIABLE SDDQ7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ7_zd 	:= SDDQ7_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ7, OutSignalName => "SDDQ7", OutTemp => SDDQ7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ7,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ7,
                           PathCondition => TRUE)),
      GlitchData => SDDQ7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_6_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ6	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ6	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_6_B : ENTITY IS TRUE;

  end SD_DQ_6_B;

  architecture Structure of SD_DQ_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ6_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_6: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ6_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ6_out)
    VARIABLE SDDQ6_zd         	: std_logic := 'X';
    VARIABLE SDDQ6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ6_zd 	:= SDDQ6_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ6, OutSignalName => "SDDQ6", OutTemp => SDDQ6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ6,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ6,
                           PathCondition => TRUE)),
      GlitchData => SDDQ6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_5_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ5	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ5	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_5_B : ENTITY IS TRUE;

  end SD_DQ_5_B;

  architecture Structure of SD_DQ_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ5_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_5: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ5_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ5_out)
    VARIABLE SDDQ5_zd         	: std_logic := 'X';
    VARIABLE SDDQ5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ5_zd 	:= SDDQ5_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ5, OutSignalName => "SDDQ5", OutTemp => SDDQ5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ5,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ5,
                           PathCondition => TRUE)),
      GlitchData => SDDQ5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_4_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ4	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ4	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_4_B : ENTITY IS TRUE;

  end SD_DQ_4_B;

  architecture Structure of SD_DQ_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ4_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_4: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ4_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ4_out)
    VARIABLE SDDQ4_zd         	: std_logic := 'X';
    VARIABLE SDDQ4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ4_zd 	:= SDDQ4_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ4, OutSignalName => "SDDQ4", OutTemp => SDDQ4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ4,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ4,
                           PathCondition => TRUE)),
      GlitchData => SDDQ4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_3_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ3	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ3	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_3_B : ENTITY IS TRUE;

  end SD_DQ_3_B;

  architecture Structure of SD_DQ_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ3_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_3: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ3_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ3_out)
    VARIABLE SDDQ3_zd         	: std_logic := 'X';
    VARIABLE SDDQ3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ3_zd 	:= SDDQ3_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ3, OutSignalName => "SDDQ3", OutTemp => SDDQ3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ3,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ3,
                           PathCondition => TRUE)),
      GlitchData => SDDQ3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_2_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_2_B : ENTITY IS TRUE;

  end SD_DQ_2_B;

  architecture Structure of SD_DQ_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ2_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_2: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ2_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ2_out)
    VARIABLE SDDQ2_zd         	: std_logic := 'X';
    VARIABLE SDDQ2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ2_zd 	:= SDDQ2_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ2, OutSignalName => "SDDQ2", OutTemp => SDDQ2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ2,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ2,
                           PathCondition => TRUE)),
      GlitchData => SDDQ2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_1_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ1	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ1	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_1_B : ENTITY IS TRUE;

  end SD_DQ_1_B;

  architecture Structure of SD_DQ_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ1_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_1: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ1_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ1_out)
    VARIABLE SDDQ1_zd         	: std_logic := 'X';
    VARIABLE SDDQ1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ1_zd 	:= SDDQ1_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ1, OutSignalName => "SDDQ1", OutTemp => SDDQ1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ1,
                           PathCondition => TRUE)),
      GlitchData => SDDQ1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SD_DQ_0_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SD_DQ_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SD_DQ_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQ0	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_SDDQ0	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_0_B : ENTITY IS TRUE;

  end SD_DQ_0_B;

  architecture Structure of SD_DQ_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal SDDQ0_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0004
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    SD_DQ_pad_0: sapiobuf0004
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>SDDQ0_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, SDDQ0_out)
    VARIABLE SDDQ0_zd         	: std_logic := 'X';
    VARIABLE SDDQ0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ0_zd 	:= SDDQ0_out;

    VitalPathDelay01Z (
      OutSignal => SDDQ0, OutSignalName => "SDDQ0", OutTemp => SDDQ0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_SDDQ0,
                           PathCondition => TRUE)),
      GlitchData => SDDQ0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "SD_DQM_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQM1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDDQM1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQM_1_B : ENTITY IS TRUE;

  end SD_DQM_1_B;

  architecture Structure of SD_DQM_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDDQM1_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQM_pad_1: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDDQM1_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDDQM1_out)
    VARIABLE SDDQM1_zd         	: std_logic := 'X';
    VARIABLE SDDQM1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQM1_zd 	:= SDDQM1_out;

    VitalPathDelay01 (
      OutSignal => SDDQM1, OutSignalName => "SDDQM1", OutTemp => SDDQM1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQM1,
                           PathCondition => TRUE)),
      GlitchData => SDDQM1_GlitchData,
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
      InstancePath  	: string := "SD_DQM_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_SDDQM0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDDQM0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQM_0_B : ENTITY IS TRUE;

  end SD_DQM_0_B;

  architecture Structure of SD_DQM_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDDQM0_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQM_pad_0: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>SDDQM0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDDQM0_out)
    VARIABLE SDDQM0_zd         	: std_logic := 'X';
    VARIABLE SDDQM0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQM0_zd 	:= SDDQM0_out;

    VitalPathDelay01 (
      OutSignal => SDDQM0, OutSignalName => "SDDQM0", OutTemp => SDDQM0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQM0,
                           PathCondition => TRUE)),
      GlitchData => SDDQM0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0005
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0005 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0005 : ENTITY IS TRUE;

  end sapiobuf0005;

  architecture Structure of sapiobuf0005 is
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

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    PCLK_pad: sapiobuf0005
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

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    VSYNC_pad: sapiobuf0005
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

-- entity HREFB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity HREFB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "HREFB";

      tipd_HREFS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_HREFS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_HREFS 	: VitalDelayType := 0 ns;
      tpw_HREFS_posedge	: VitalDelayType := 0 ns;
      tpw_HREFS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; HREFS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF HREFB : ENTITY IS TRUE;

  end HREFB;

  architecture Structure of HREFB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal HREFS_ipd 	: std_logic := 'X';

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    HREF_pad: sapiobuf0005
      port map (Z=>PADDI_out, PAD=>HREFS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(HREFS_ipd, HREFS, tipd_HREFS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, HREFS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_HREFS_HREFS          	: x01 := '0';
    VARIABLE periodcheckinfo_HREFS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => HREFS_ipd,
        TestSignalName => "HREFS",
        Period => tperiod_HREFS,
        PulseWidthHigh => tpw_HREFS_posedge,
        PulseWidthLow => tpw_HREFS_negedge,
        PeriodData => periodcheckinfo_HREFS,
        Violation => tviol_HREFS_HREFS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => HREFS_ipd'last_event,
                           PathDelay => tpd_HREFS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Y9B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity Y9B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Y9B";

      tipd_Y9S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Y9S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Y9S 	: VitalDelayType := 0 ns;
      tpw_Y9S_posedge	: VitalDelayType := 0 ns;
      tpw_Y9S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Y9S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Y9B : ENTITY IS TRUE;

  end Y9B;

  architecture Structure of Y9B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Y9S_ipd 	: std_logic := 'X';

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y9_pad: sapiobuf0005
      port map (Z=>PADDI_out, PAD=>Y9S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Y9S_ipd, Y9S, tipd_Y9S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Y9S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Y9S_Y9S          	: x01 := '0';
    VARIABLE periodcheckinfo_Y9S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Y9S_ipd,
        TestSignalName => "Y9S",
        Period => tperiod_Y9S,
        PulseWidthHigh => tpw_Y9S_posedge,
        PulseWidthLow => tpw_Y9S_negedge,
        PeriodData => periodcheckinfo_Y9S,
        Violation => tviol_Y9S_Y9S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Y9S_ipd'last_event,
                           PathDelay => tpd_Y9S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Y8B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity Y8B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Y8B";

      tipd_Y8S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Y8S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Y8S 	: VitalDelayType := 0 ns;
      tpw_Y8S_posedge	: VitalDelayType := 0 ns;
      tpw_Y8S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Y8S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Y8B : ENTITY IS TRUE;

  end Y8B;

  architecture Structure of Y8B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Y8S_ipd 	: std_logic := 'X';

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y8_pad: sapiobuf0005
      port map (Z=>PADDI_out, PAD=>Y8S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Y8S_ipd, Y8S, tipd_Y8S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Y8S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Y8S_Y8S          	: x01 := '0';
    VARIABLE periodcheckinfo_Y8S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Y8S_ipd,
        TestSignalName => "Y8S",
        Period => tperiod_Y8S,
        PulseWidthHigh => tpw_Y8S_posedge,
        PulseWidthLow => tpw_Y8S_negedge,
        PeriodData => periodcheckinfo_Y8S,
        Violation => tviol_Y8S_Y8S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Y8S_ipd'last_event,
                           PathDelay => tpd_Y8S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Y7B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity Y7B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Y7B";

      tipd_Y7S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Y7S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Y7S 	: VitalDelayType := 0 ns;
      tpw_Y7S_posedge	: VitalDelayType := 0 ns;
      tpw_Y7S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Y7S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Y7B : ENTITY IS TRUE;

  end Y7B;

  architecture Structure of Y7B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Y7S_ipd 	: std_logic := 'X';

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y7_pad: sapiobuf0005
      port map (Z=>PADDI_out, PAD=>Y7S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Y7S_ipd, Y7S, tipd_Y7S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Y7S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Y7S_Y7S          	: x01 := '0';
    VARIABLE periodcheckinfo_Y7S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Y7S_ipd,
        TestSignalName => "Y7S",
        Period => tperiod_Y7S,
        PulseWidthHigh => tpw_Y7S_posedge,
        PulseWidthLow => tpw_Y7S_negedge,
        PeriodData => periodcheckinfo_Y7S,
        Violation => tviol_Y7S_Y7S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Y7S_ipd'last_event,
                           PathDelay => tpd_Y7S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Y6B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity Y6B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Y6B";

      tipd_Y6S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Y6S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Y6S 	: VitalDelayType := 0 ns;
      tpw_Y6S_posedge	: VitalDelayType := 0 ns;
      tpw_Y6S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Y6S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Y6B : ENTITY IS TRUE;

  end Y6B;

  architecture Structure of Y6B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Y6S_ipd 	: std_logic := 'X';

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y6_pad: sapiobuf0005
      port map (Z=>PADDI_out, PAD=>Y6S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Y6S_ipd, Y6S, tipd_Y6S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Y6S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Y6S_Y6S          	: x01 := '0';
    VARIABLE periodcheckinfo_Y6S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Y6S_ipd,
        TestSignalName => "Y6S",
        Period => tperiod_Y6S,
        PulseWidthHigh => tpw_Y6S_posedge,
        PulseWidthLow => tpw_Y6S_negedge,
        PeriodData => periodcheckinfo_Y6S,
        Violation => tviol_Y6S_Y6S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Y6S_ipd'last_event,
                           PathDelay => tpd_Y6S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Y5B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity Y5B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Y5B";

      tipd_Y5S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Y5S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Y5S 	: VitalDelayType := 0 ns;
      tpw_Y5S_posedge	: VitalDelayType := 0 ns;
      tpw_Y5S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Y5S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Y5B : ENTITY IS TRUE;

  end Y5B;

  architecture Structure of Y5B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Y5S_ipd 	: std_logic := 'X';

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y5_pad: sapiobuf0005
      port map (Z=>PADDI_out, PAD=>Y5S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Y5S_ipd, Y5S, tipd_Y5S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Y5S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Y5S_Y5S          	: x01 := '0';
    VARIABLE periodcheckinfo_Y5S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Y5S_ipd,
        TestSignalName => "Y5S",
        Period => tperiod_Y5S,
        PulseWidthHigh => tpw_Y5S_posedge,
        PulseWidthLow => tpw_Y5S_negedge,
        PeriodData => periodcheckinfo_Y5S,
        Violation => tviol_Y5S_Y5S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Y5S_ipd'last_event,
                           PathDelay => tpd_Y5S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Y4B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity Y4B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Y4B";

      tipd_Y4S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Y4S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Y4S 	: VitalDelayType := 0 ns;
      tpw_Y4S_posedge	: VitalDelayType := 0 ns;
      tpw_Y4S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Y4S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Y4B : ENTITY IS TRUE;

  end Y4B;

  architecture Structure of Y4B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Y4S_ipd 	: std_logic := 'X';

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y4_pad: sapiobuf0005
      port map (Z=>PADDI_out, PAD=>Y4S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Y4S_ipd, Y4S, tipd_Y4S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Y4S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Y4S_Y4S          	: x01 := '0';
    VARIABLE periodcheckinfo_Y4S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Y4S_ipd,
        TestSignalName => "Y4S",
        Period => tperiod_Y4S,
        PulseWidthHigh => tpw_Y4S_posedge,
        PulseWidthLow => tpw_Y4S_negedge,
        PeriodData => periodcheckinfo_Y4S,
        Violation => tviol_Y4S_Y4S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Y4S_ipd'last_event,
                           PathDelay => tpd_Y4S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Y3B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity Y3B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Y3B";

      tipd_Y3S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Y3S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Y3S 	: VitalDelayType := 0 ns;
      tpw_Y3S_posedge	: VitalDelayType := 0 ns;
      tpw_Y3S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Y3S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Y3B : ENTITY IS TRUE;

  end Y3B;

  architecture Structure of Y3B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Y3S_ipd 	: std_logic := 'X';

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y3_pad: sapiobuf0005
      port map (Z=>PADDI_out, PAD=>Y3S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Y3S_ipd, Y3S, tipd_Y3S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Y3S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Y3S_Y3S          	: x01 := '0';
    VARIABLE periodcheckinfo_Y3S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Y3S_ipd,
        TestSignalName => "Y3S",
        Period => tperiod_Y3S,
        PulseWidthHigh => tpw_Y3S_posedge,
        PulseWidthLow => tpw_Y3S_negedge,
        PeriodData => periodcheckinfo_Y3S,
        Violation => tviol_Y3S_Y3S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Y3S_ipd'last_event,
                           PathDelay => tpd_Y3S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Y2B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity Y2B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Y2B";

      tipd_Y2S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Y2S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Y2S 	: VitalDelayType := 0 ns;
      tpw_Y2S_posedge	: VitalDelayType := 0 ns;
      tpw_Y2S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Y2S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Y2B : ENTITY IS TRUE;

  end Y2B;

  architecture Structure of Y2B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Y2S_ipd 	: std_logic := 'X';

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y2_pad: sapiobuf0005
      port map (Z=>PADDI_out, PAD=>Y2S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Y2S_ipd, Y2S, tipd_Y2S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Y2S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Y2S_Y2S          	: x01 := '0';
    VARIABLE periodcheckinfo_Y2S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Y2S_ipd,
        TestSignalName => "Y2S",
        Period => tperiod_Y2S,
        PulseWidthHigh => tpw_Y2S_posedge,
        PulseWidthLow => tpw_Y2S_negedge,
        PeriodData => periodcheckinfo_Y2S,
        Violation => tviol_Y2S_Y2S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Y2S_ipd'last_event,
                           PathDelay => tpd_Y2S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity CCLKB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity CCLKB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "CCLKB";

      tipd_CCLKS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CCLKS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_CCLKS 	: VitalDelayType := 0 ns;
      tpw_CCLKS_posedge	: VitalDelayType := 0 ns;
      tpw_CCLKS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; CCLKS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF CCLKB : ENTITY IS TRUE;

  end CCLKB;

  architecture Structure of CCLKB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal CCLKS_ipd 	: std_logic := 'X';

    component sapiobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    CCLK_pad: sapiobuf
      port map (Z=>PADDI_out, PAD=>CCLKS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CCLKS_ipd, CCLKS, tipd_CCLKS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, CCLKS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_CCLKS_CCLKS          	: x01 := '0';
    VARIABLE periodcheckinfo_CCLKS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => CCLKS_ipd,
        TestSignalName => "CCLKS",
        Period => tperiod_CCLKS,
        PulseWidthHigh => tpw_CCLKS_posedge,
        PulseWidthLow => tpw_CCLKS_negedge,
        PeriodData => periodcheckinfo_CCLKS,
        Violation => tviol_CCLKS_CCLKS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => CCLKS_ipd'last_event,
                           PathDelay => tpd_CCLKS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0006
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0006 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0006 : ENTITY IS TRUE;

  end sapiobuf0006;

  architecture Structure of sapiobuf0006 is
  begin
    INST1: IBPU
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity SSPI_CS_nB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity SSPI_CS_nB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SSPI_CS_nB";

      tipd_SSPICSn  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_SSPICSn_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_SSPICSn 	: VitalDelayType := 0 ns;
      tpw_SSPICSn_posedge	: VitalDelayType := 0 ns;
      tpw_SSPICSn_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; SSPICSn: in Std_logic);

    ATTRIBUTE Vital_Level0 OF SSPI_CS_nB : ENTITY IS TRUE;

  end SSPI_CS_nB;

  architecture Structure of SSPI_CS_nB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal SSPICSn_ipd 	: std_logic := 'X';

    component sapiobuf0006
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    SSPI_CS_n_pad: sapiobuf0006
      port map (Z=>PADDI_out, PAD=>SSPICSn_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(SSPICSn_ipd, SSPICSn, tipd_SSPICSn);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, SSPICSn_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_SSPICSn_SSPICSn          	: x01 := '0';
    VARIABLE periodcheckinfo_SSPICSn	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => SSPICSn_ipd,
        TestSignalName => "SSPICSn",
        Period => tperiod_SSPICSn,
        PulseWidthHigh => tpw_SSPICSn_posedge,
        PulseWidthLow => tpw_SSPICSn_negedge,
        PeriodData => periodcheckinfo_SSPICSn,
        Violation => tviol_SSPICSn_SSPICSn,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => SSPICSn_ipd'last_event,
                           PathDelay => tpd_SSPICSn_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0007
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0007 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0007 : ENTITY IS TRUE;

  end sapiobuf0007;

  architecture Structure of sapiobuf0007 is
  begin
    INST1: IB
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity DINB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DINB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DINB";

      tipd_DINS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_DINS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DINS 	: VitalDelayType := 0 ns;
      tpw_DINS_posedge	: VitalDelayType := 0 ns;
      tpw_DINS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; DINS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF DINB : ENTITY IS TRUE;

  end DINB;

  architecture Structure of DINB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal DINS_ipd 	: std_logic := 'X';

    component sapiobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    DIN_pad: sapiobuf0007
      port map (Z=>PADDI_out, PAD=>DINS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DINS_ipd, DINS, tipd_DINS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, DINS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DINS_DINS          	: x01 := '0';
    VARIABLE periodcheckinfo_DINS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DINS_ipd,
        TestSignalName => "DINS",
        Period => tperiod_DINS,
        PulseWidthHigh => tpw_DINS_posedge,
        PulseWidthLow => tpw_DINS_negedge,
        PeriodData => periodcheckinfo_DINS,
        Violation => tviol_DINS_DINS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DINS_ipd'last_event,
                           PathDelay => tpd_DINS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity GSR5MODE
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity GSR5MODE is
    port (GSRP: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR5MODE : ENTITY IS TRUE;

  end GSR5MODE;

  architecture Structure of GSR5MODE is
    signal GSRMODE: Std_logic;
  begin
    INST10: BUFBA
      port map (A=>GSRP, Z=>GSRMODE);
    INST20: GSR
      port map (GSR=>GSRMODE);
  end Structure;

-- entity GSR_INSTB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity GSR_INSTB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "GSR_INSTB";

      tipd_GSRNET  	: VitalDelayType01 := (0 ns, 0 ns));

    port (GSRNET: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR_INSTB : ENTITY IS TRUE;

  end GSR_INSTB;

  architecture Structure of GSR_INSTB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal GSRNET_ipd 	: std_logic := 'X';

    component GSR5MODE
      port (GSRP: in Std_logic);
    end component;
  begin
    GSR_INST_GSRMODE: GSR5MODE
      port map (GSRP=>GSRNET_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(GSRNET_ipd, GSRNET, tipd_GSRNET);
    END BLOCK;

    VitalBehavior : PROCESS (GSRNET_ipd)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;



    END PROCESS;

  end Structure;

-- entity DP16KDB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DP16KDB is
    port (CEA: in Std_logic; OCEA: in Std_logic; CLKA: in Std_logic; 
          WEA: in Std_logic; CSA0: in Std_logic; CSA1: in Std_logic; 
          CSA2: in Std_logic; RSTA: in Std_logic; CEB: in Std_logic; 
          OCEB: in Std_logic; CLKB: in Std_logic; WEB: in Std_logic; 
          CSB0: in Std_logic; CSB1: in Std_logic; CSB2: in Std_logic; 
          RSTB: in Std_logic; DIA0: in Std_logic; DIA1: in Std_logic; 
          DIA2: in Std_logic; DIA3: in Std_logic; DIA4: in Std_logic; 
          DIA5: in Std_logic; DIA6: in Std_logic; DIA7: in Std_logic; 
          DIA8: in Std_logic; DIA9: in Std_logic; DIA10: in Std_logic; 
          DIA11: in Std_logic; DIA12: in Std_logic; DIA13: in Std_logic; 
          DIA14: in Std_logic; DIA15: in Std_logic; DIA16: in Std_logic; 
          DIA17: in Std_logic; ADA0: in Std_logic; ADA1: in Std_logic; 
          ADA2: in Std_logic; ADA3: in Std_logic; ADA4: in Std_logic; 
          ADA5: in Std_logic; ADA6: in Std_logic; ADA7: in Std_logic; 
          ADA8: in Std_logic; ADA9: in Std_logic; ADA10: in Std_logic; 
          ADA11: in Std_logic; ADA12: in Std_logic; ADA13: in Std_logic; 
          DIB0: in Std_logic; DIB1: in Std_logic; DIB2: in Std_logic; 
          DIB3: in Std_logic; DIB4: in Std_logic; DIB5: in Std_logic; 
          DIB6: in Std_logic; DIB7: in Std_logic; DIB8: in Std_logic; 
          DIB9: in Std_logic; DIB10: in Std_logic; DIB11: in Std_logic; 
          DIB12: in Std_logic; DIB13: in Std_logic; DIB14: in Std_logic; 
          DIB15: in Std_logic; DIB16: in Std_logic; DIB17: in Std_logic; 
          ADB0: in Std_logic; ADB1: in Std_logic; ADB2: in Std_logic; 
          ADB3: in Std_logic; ADB4: in Std_logic; ADB5: in Std_logic; 
          ADB6: in Std_logic; ADB7: in Std_logic; ADB8: in Std_logic; 
          ADB9: in Std_logic; ADB10: in Std_logic; ADB11: in Std_logic; 
          ADB12: in Std_logic; ADB13: in Std_logic; DOA0: out Std_logic; 
          DOA1: out Std_logic; DOA2: out Std_logic; DOA3: out Std_logic; 
          DOA4: out Std_logic; DOA5: out Std_logic; DOA6: out Std_logic; 
          DOA7: out Std_logic; DOA8: out Std_logic; DOA9: out Std_logic; 
          DOA10: out Std_logic; DOA11: out Std_logic; DOA12: out Std_logic; 
          DOA13: out Std_logic; DOA14: out Std_logic; DOA15: out Std_logic; 
          DOA16: out Std_logic; DOA17: out Std_logic; DOB0: out Std_logic; 
          DOB1: out Std_logic; DOB2: out Std_logic; DOB3: out Std_logic; 
          DOB4: out Std_logic; DOB5: out Std_logic; DOB6: out Std_logic; 
          DOB7: out Std_logic; DOB8: out Std_logic; DOB9: out Std_logic; 
          DOB10: out Std_logic; DOB11: out Std_logic; DOB12: out Std_logic; 
          DOB13: out Std_logic; DOB14: out Std_logic; DOB15: out Std_logic; 
          DOB16: out Std_logic; DOB17: out Std_logic);

    ATTRIBUTE Vital_Level0 OF DP16KDB : ENTITY IS TRUE;

  end DP16KDB;

  architecture Structure of DP16KDB is
  begin
    INST10: DP16KD
      generic map (ASYNC_RESET_RELEASE => "SYNC", CSDECODE_A => "0b000", 
                   CSDECODE_B => "0b000", DATA_WIDTH_A => 9, DATA_WIDTH_B => 9, 
                   GSR => "DISABLED", 
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
                   , INIT_DATA => "STATIC", REGMODE_A => "NOREG", 
                   REGMODE_B => "NOREG", RESETMODE => "SYNC", 
                   WRITEMODE_A => "WRITETHROUGH", 
                   WRITEMODE_B => "WRITETHROUGH")
      port map (DIA0=>DIA0, DIA1=>DIA1, DIA2=>DIA2, DIA3=>DIA3, DIA4=>DIA4, 
                DIA5=>DIA5, DIA6=>DIA6, DIA7=>DIA7, DIA8=>DIA8, DIA9=>DIA9, 
                DIA10=>DIA10, DIA11=>DIA11, DIA12=>DIA12, DIA13=>DIA13, 
                DIA14=>DIA14, DIA15=>DIA15, DIA16=>DIA16, DIA17=>DIA17, 
                ADA0=>ADA0, ADA1=>ADA1, ADA2=>ADA2, ADA3=>ADA3, ADA4=>ADA4, 
                ADA5=>ADA5, ADA6=>ADA6, ADA7=>ADA7, ADA8=>ADA8, ADA9=>ADA9, 
                ADA10=>ADA10, ADA11=>ADA11, ADA12=>ADA12, ADA13=>ADA13, 
                CEA=>CEA, OCEA=>OCEA, CLKA=>CLKA, WEA=>WEA, CSA0=>CSA0, 
                CSA1=>CSA1, CSA2=>CSA2, RSTA=>RSTA, DIB0=>DIB0, DIB1=>DIB1, 
                DIB2=>DIB2, DIB3=>DIB3, DIB4=>DIB4, DIB5=>DIB5, DIB6=>DIB6, 
                DIB7=>DIB7, DIB8=>DIB8, DIB9=>DIB9, DIB10=>DIB10, DIB11=>DIB11, 
                DIB12=>DIB12, DIB13=>DIB13, DIB14=>DIB14, DIB15=>DIB15, 
                DIB16=>DIB16, DIB17=>DIB17, ADB0=>ADB0, ADB1=>ADB1, ADB2=>ADB2, 
                ADB3=>ADB3, ADB4=>ADB4, ADB5=>ADB5, ADB6=>ADB6, ADB7=>ADB7, 
                ADB8=>ADB8, ADB9=>ADB9, ADB10=>ADB10, ADB11=>ADB11, 
                ADB12=>ADB12, ADB13=>ADB13, CEB=>CEB, OCEB=>OCEB, CLKB=>CLKB, 
                WEB=>WEB, CSB0=>CSB0, CSB1=>CSB1, CSB2=>CSB2, RSTB=>RSTB, 
                DOA0=>DOA0, DOA1=>DOA1, DOA2=>DOA2, DOA3=>DOA3, DOA4=>DOA4, 
                DOA5=>DOA5, DOA6=>DOA6, DOA7=>DOA7, DOA8=>DOA8, DOA9=>DOA9, 
                DOA10=>DOA10, DOA11=>DOA11, DOA12=>DOA12, DOA13=>DOA13, 
                DOA14=>DOA14, DOA15=>DOA15, DOA16=>DOA16, DOA17=>DOA17, 
                DOB0=>DOB0, DOB1=>DOB1, DOB2=>DOB2, DOB3=>DOB3, DOB4=>DOB4, 
                DOB5=>DOB5, DOB6=>DOB6, DOB7=>DOB7, DOB8=>DOB8, DOB9=>DOB9, 
                DOB10=>DOB10, DOB11=>DOB11, DOB12=>DOB12, DOB13=>DOB13, 
                DOB14=>DOB14, DOB15=>DOB15, DOB16=>DOB16, DOB17=>DOB17);
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

-- entity u_stream_u_dc_mem0
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_stream_u_dc_mem0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_stream_u_dc_mem0";

      tipd_DIA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA13  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WEA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
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
      ticd_CLKA	: VitalDelayType := 0 ns;
      tisd_DIA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA1_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA0_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA13_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA13_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA13_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA12_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA12_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA12_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA11_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA11_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA11_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA10_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA10_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA10_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA9_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA9_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA9_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA8_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WEA_CLKA	: VitalDelayType := 0 ns;
      tsetup_WEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      ticd_CLKB	: VitalDelayType := 0 ns;
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
      tperiod_CLKA 	: VitalDelayType := 0 ns;
      tpw_CLKA_posedge	: VitalDelayType := 0 ns;
      tpw_CLKA_negedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (DIA7: in Std_logic; DIA6: in Std_logic; DIA5: in Std_logic; 
          DIA4: in Std_logic; DIA3: in Std_logic; DIA2: in Std_logic; 
          DIA1: in Std_logic; DIA0: in Std_logic; ADA13: in Std_logic; 
          ADA12: in Std_logic; ADA11: in Std_logic; ADA10: in Std_logic; 
          ADA9: in Std_logic; ADA8: in Std_logic; ADA7: in Std_logic; 
          ADA6: in Std_logic; ADA5: in Std_logic; ADA4: in Std_logic; 
          ADA3: in Std_logic; WEA: in Std_logic; CLKA: in Std_logic; 
          CLKB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
          DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
          DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
          ADB3: in Std_logic; ADB4: in Std_logic; ADB5: in Std_logic; 
          ADB6: in Std_logic; ADB7: in Std_logic; ADB8: in Std_logic; 
          ADB9: in Std_logic; ADB10: in Std_logic; ADB11: in Std_logic; 
          ADB12: in Std_logic; ADB13: in Std_logic);

    ATTRIBUTE Vital_Level0 OF u_stream_u_dc_mem0 : ENTITY IS TRUE;

  end u_stream_u_dc_mem0;

  architecture Structure of u_stream_u_dc_mem0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DIA7_ipd 	: std_logic := 'X';
    signal DIA7_dly 	: std_logic := 'X';
    signal DIA6_ipd 	: std_logic := 'X';
    signal DIA6_dly 	: std_logic := 'X';
    signal DIA5_ipd 	: std_logic := 'X';
    signal DIA5_dly 	: std_logic := 'X';
    signal DIA4_ipd 	: std_logic := 'X';
    signal DIA4_dly 	: std_logic := 'X';
    signal DIA3_ipd 	: std_logic := 'X';
    signal DIA3_dly 	: std_logic := 'X';
    signal DIA2_ipd 	: std_logic := 'X';
    signal DIA2_dly 	: std_logic := 'X';
    signal DIA1_ipd 	: std_logic := 'X';
    signal DIA1_dly 	: std_logic := 'X';
    signal DIA0_ipd 	: std_logic := 'X';
    signal DIA0_dly 	: std_logic := 'X';
    signal ADA13_ipd 	: std_logic := 'X';
    signal ADA13_dly 	: std_logic := 'X';
    signal ADA12_ipd 	: std_logic := 'X';
    signal ADA12_dly 	: std_logic := 'X';
    signal ADA11_ipd 	: std_logic := 'X';
    signal ADA11_dly 	: std_logic := 'X';
    signal ADA10_ipd 	: std_logic := 'X';
    signal ADA10_dly 	: std_logic := 'X';
    signal ADA9_ipd 	: std_logic := 'X';
    signal ADA9_dly 	: std_logic := 'X';
    signal ADA8_ipd 	: std_logic := 'X';
    signal ADA8_dly 	: std_logic := 'X';
    signal ADA7_ipd 	: std_logic := 'X';
    signal ADA7_dly 	: std_logic := 'X';
    signal ADA6_ipd 	: std_logic := 'X';
    signal ADA6_dly 	: std_logic := 'X';
    signal ADA5_ipd 	: std_logic := 'X';
    signal ADA5_dly 	: std_logic := 'X';
    signal ADA4_ipd 	: std_logic := 'X';
    signal ADA4_dly 	: std_logic := 'X';
    signal ADA3_ipd 	: std_logic := 'X';
    signal ADA3_dly 	: std_logic := 'X';
    signal WEA_ipd 	: std_logic := 'X';
    signal WEA_dly 	: std_logic := 'X';
    signal CLKA_ipd 	: std_logic := 'X';
    signal CLKA_dly 	: std_logic := 'X';
    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
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
    component DP16KDB
      port (CEA: in Std_logic; OCEA: in Std_logic; CLKA: in Std_logic; 
            WEA: in Std_logic; CSA0: in Std_logic; CSA1: in Std_logic; 
            CSA2: in Std_logic; RSTA: in Std_logic; CEB: in Std_logic; 
            OCEB: in Std_logic; CLKB: in Std_logic; WEB: in Std_logic; 
            CSB0: in Std_logic; CSB1: in Std_logic; CSB2: in Std_logic; 
            RSTB: in Std_logic; DIA0: in Std_logic; DIA1: in Std_logic; 
            DIA2: in Std_logic; DIA3: in Std_logic; DIA4: in Std_logic; 
            DIA5: in Std_logic; DIA6: in Std_logic; DIA7: in Std_logic; 
            DIA8: in Std_logic; DIA9: in Std_logic; DIA10: in Std_logic; 
            DIA11: in Std_logic; DIA12: in Std_logic; DIA13: in Std_logic; 
            DIA14: in Std_logic; DIA15: in Std_logic; DIA16: in Std_logic; 
            DIA17: in Std_logic; ADA0: in Std_logic; ADA1: in Std_logic; 
            ADA2: in Std_logic; ADA3: in Std_logic; ADA4: in Std_logic; 
            ADA5: in Std_logic; ADA6: in Std_logic; ADA7: in Std_logic; 
            ADA8: in Std_logic; ADA9: in Std_logic; ADA10: in Std_logic; 
            ADA11: in Std_logic; ADA12: in Std_logic; ADA13: in Std_logic; 
            DIB0: in Std_logic; DIB1: in Std_logic; DIB2: in Std_logic; 
            DIB3: in Std_logic; DIB4: in Std_logic; DIB5: in Std_logic; 
            DIB6: in Std_logic; DIB7: in Std_logic; DIB8: in Std_logic; 
            DIB9: in Std_logic; DIB10: in Std_logic; DIB11: in Std_logic; 
            DIB12: in Std_logic; DIB13: in Std_logic; DIB14: in Std_logic; 
            DIB15: in Std_logic; DIB16: in Std_logic; DIB17: in Std_logic; 
            ADB0: in Std_logic; ADB1: in Std_logic; ADB2: in Std_logic; 
            ADB3: in Std_logic; ADB4: in Std_logic; ADB5: in Std_logic; 
            ADB6: in Std_logic; ADB7: in Std_logic; ADB8: in Std_logic; 
            ADB9: in Std_logic; ADB10: in Std_logic; ADB11: in Std_logic; 
            ADB12: in Std_logic; ADB13: in Std_logic; DOA0: out Std_logic; 
            DOA1: out Std_logic; DOA2: out Std_logic; DOA3: out Std_logic; 
            DOA4: out Std_logic; DOA5: out Std_logic; DOA6: out Std_logic; 
            DOA7: out Std_logic; DOA8: out Std_logic; DOA9: out Std_logic; 
            DOA10: out Std_logic; DOA11: out Std_logic; DOA12: out Std_logic; 
            DOA13: out Std_logic; DOA14: out Std_logic; DOA15: out Std_logic; 
            DOA16: out Std_logic; DOA17: out Std_logic; DOB0: out Std_logic; 
            DOB1: out Std_logic; DOB2: out Std_logic; DOB3: out Std_logic; 
            DOB4: out Std_logic; DOB5: out Std_logic; DOB6: out Std_logic; 
            DOB7: out Std_logic; DOB8: out Std_logic; DOB9: out Std_logic; 
            DOB10: out Std_logic; DOB11: out Std_logic; DOB12: out Std_logic; 
            DOB13: out Std_logic; DOB14: out Std_logic; DOB15: out Std_logic; 
            DOB16: out Std_logic; DOB17: out Std_logic);
    end component;
  begin
    u_stream_u_dc_mem0_DP16KD: DP16KDB
      port map (CEA=>VCCI, OCEA=>VCCI, CLKA=>CLKA_dly, WEA=>WEA_dly, 
                CSA0=>GNDI, CSA1=>GNDI, CSA2=>GNDI, RSTA=>GNDI, CEB=>VCCI, 
                OCEB=>VCCI, CLKB=>CLKB_dly, WEB=>GNDI, CSB0=>GNDI, CSB1=>GNDI, 
                CSB2=>GNDI, RSTB=>GNDI, DIA0=>DIA0_dly, DIA1=>DIA1_dly, 
                DIA2=>DIA2_dly, DIA3=>DIA3_dly, DIA4=>DIA4_dly, DIA5=>DIA5_dly, 
                DIA6=>DIA6_dly, DIA7=>DIA7_dly, DIA8=>GNDI, DIA9=>'X', 
                DIA10=>'X', DIA11=>'X', DIA12=>'X', DIA13=>'X', DIA14=>'X', 
                DIA15=>'X', DIA16=>'X', DIA17=>'X', ADA0=>GNDI, ADA1=>GNDI, 
                ADA2=>GNDI, ADA3=>ADA3_dly, ADA4=>ADA4_dly, ADA5=>ADA5_dly, 
                ADA6=>ADA6_dly, ADA7=>ADA7_dly, ADA8=>ADA8_dly, ADA9=>ADA9_dly, 
                ADA10=>ADA10_dly, ADA11=>ADA11_dly, ADA12=>ADA12_dly, 
                ADA13=>ADA13_dly, DIB0=>GNDI, DIB1=>GNDI, DIB2=>GNDI, 
                DIB3=>GNDI, DIB4=>GNDI, DIB5=>GNDI, DIB6=>GNDI, DIB7=>GNDI, 
                DIB8=>GNDI, DIB9=>'X', DIB10=>'X', DIB11=>'X', DIB12=>'X', 
                DIB13=>'X', DIB14=>'X', DIB15=>'X', DIB16=>'X', DIB17=>'X', 
                ADB0=>GNDI, ADB1=>GNDI, ADB2=>GNDI, ADB3=>ADB3_dly, 
                ADB4=>ADB4_dly, ADB5=>ADB5_dly, ADB6=>ADB6_dly, ADB7=>ADB7_dly, 
                ADB8=>ADB8_dly, ADB9=>ADB9_dly, ADB10=>ADB10_dly, 
                ADB11=>ADB11_dly, ADB12=>ADB12_dly, ADB13=>ADB13_dly, 
                DOA0=>open, DOA1=>open, DOA2=>open, DOA3=>open, DOA4=>open, 
                DOA5=>open, DOA6=>open, DOA7=>open, DOA8=>open, DOA9=>open, 
                DOA10=>open, DOA11=>open, DOA12=>open, DOA13=>open, 
                DOA14=>open, DOA15=>open, DOA16=>open, DOA17=>open, 
                DOB0=>DOB0_out, DOB1=>DOB1_out, DOB2=>DOB2_out, DOB3=>DOB3_out, 
                DOB4=>DOB4_out, DOB5=>DOB5_out, DOB6=>DOB6_out, DOB7=>DOB7_out, 
                DOB8=>open, DOB9=>open, DOB10=>open, DOB11=>open, DOB12=>open, 
                DOB13=>open, DOB14=>open, DOB15=>open, DOB16=>open, 
                DOB17=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DIA7_ipd, DIA7, tipd_DIA7);
      VitalWireDelay(DIA6_ipd, DIA6, tipd_DIA6);
      VitalWireDelay(DIA5_ipd, DIA5, tipd_DIA5);
      VitalWireDelay(DIA4_ipd, DIA4, tipd_DIA4);
      VitalWireDelay(DIA3_ipd, DIA3, tipd_DIA3);
      VitalWireDelay(DIA2_ipd, DIA2, tipd_DIA2);
      VitalWireDelay(DIA1_ipd, DIA1, tipd_DIA1);
      VitalWireDelay(DIA0_ipd, DIA0, tipd_DIA0);
      VitalWireDelay(ADA13_ipd, ADA13, tipd_ADA13);
      VitalWireDelay(ADA12_ipd, ADA12, tipd_ADA12);
      VitalWireDelay(ADA11_ipd, ADA11, tipd_ADA11);
      VitalWireDelay(ADA10_ipd, ADA10, tipd_ADA10);
      VitalWireDelay(ADA9_ipd, ADA9, tipd_ADA9);
      VitalWireDelay(ADA8_ipd, ADA8, tipd_ADA8);
      VitalWireDelay(ADA7_ipd, ADA7, tipd_ADA7);
      VitalWireDelay(ADA6_ipd, ADA6, tipd_ADA6);
      VitalWireDelay(ADA5_ipd, ADA5, tipd_ADA5);
      VitalWireDelay(ADA4_ipd, ADA4, tipd_ADA4);
      VitalWireDelay(ADA3_ipd, ADA3, tipd_ADA3);
      VitalWireDelay(WEA_ipd, WEA, tipd_WEA);
      VitalWireDelay(CLKA_ipd, CLKA, tipd_CLKA);
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
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
      VitalSignalDelay(DIA7_dly, DIA7_ipd, tisd_DIA7_CLKA);
      VitalSignalDelay(DIA6_dly, DIA6_ipd, tisd_DIA6_CLKA);
      VitalSignalDelay(DIA5_dly, DIA5_ipd, tisd_DIA5_CLKA);
      VitalSignalDelay(DIA4_dly, DIA4_ipd, tisd_DIA4_CLKA);
      VitalSignalDelay(DIA3_dly, DIA3_ipd, tisd_DIA3_CLKA);
      VitalSignalDelay(DIA2_dly, DIA2_ipd, tisd_DIA2_CLKA);
      VitalSignalDelay(DIA1_dly, DIA1_ipd, tisd_DIA1_CLKA);
      VitalSignalDelay(DIA0_dly, DIA0_ipd, tisd_DIA0_CLKA);
      VitalSignalDelay(ADA13_dly, ADA13_ipd, tisd_ADA13_CLKA);
      VitalSignalDelay(ADA12_dly, ADA12_ipd, tisd_ADA12_CLKA);
      VitalSignalDelay(ADA11_dly, ADA11_ipd, tisd_ADA11_CLKA);
      VitalSignalDelay(ADA10_dly, ADA10_ipd, tisd_ADA10_CLKA);
      VitalSignalDelay(ADA9_dly, ADA9_ipd, tisd_ADA9_CLKA);
      VitalSignalDelay(ADA8_dly, ADA8_ipd, tisd_ADA8_CLKA);
      VitalSignalDelay(ADA7_dly, ADA7_ipd, tisd_ADA7_CLKA);
      VitalSignalDelay(ADA6_dly, ADA6_ipd, tisd_ADA6_CLKA);
      VitalSignalDelay(ADA5_dly, ADA5_ipd, tisd_ADA5_CLKA);
      VitalSignalDelay(ADA4_dly, ADA4_ipd, tisd_ADA4_CLKA);
      VitalSignalDelay(ADA3_dly, ADA3_ipd, tisd_ADA3_CLKA);
      VitalSignalDelay(WEA_dly, WEA_ipd, tisd_WEA_CLKA);
      VitalSignalDelay(CLKA_dly, CLKA_ipd, ticd_CLKA);
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
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

    VitalBehavior : PROCESS (DIA7_dly, DIA6_dly, DIA5_dly, DIA4_dly, DIA3_dly, 
      DIA2_dly, DIA1_dly, DIA0_dly, ADA13_dly, ADA12_dly, ADA11_dly, ADA10_dly, 
      ADA9_dly, ADA8_dly, ADA7_dly, ADA6_dly, ADA5_dly, ADA4_dly, ADA3_dly, 
      WEA_dly, CLKA_dly, CLKB_dly, DOB0_out, DOB1_out, DOB2_out, DOB3_out, 
      DOB4_out, DOB5_out, DOB6_out, DOB7_out, ADB3_dly, ADB4_dly, ADB5_dly, 
      ADB6_dly, ADB7_dly, ADB8_dly, ADB9_dly, ADB10_dly, ADB11_dly, ADB12_dly, 
      ADB13_dly)
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

    VARIABLE tviol_DIA7_CLKA       	: x01 := '0';
    VARIABLE DIA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA6_CLKA       	: x01 := '0';
    VARIABLE DIA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA5_CLKA       	: x01 := '0';
    VARIABLE DIA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA4_CLKA       	: x01 := '0';
    VARIABLE DIA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA3_CLKA       	: x01 := '0';
    VARIABLE DIA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA2_CLKA       	: x01 := '0';
    VARIABLE DIA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA1_CLKA       	: x01 := '0';
    VARIABLE DIA1_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA0_CLKA       	: x01 := '0';
    VARIABLE DIA0_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA13_CLKA       	: x01 := '0';
    VARIABLE ADA13_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA12_CLKA       	: x01 := '0';
    VARIABLE ADA12_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA11_CLKA       	: x01 := '0';
    VARIABLE ADA11_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA10_CLKA       	: x01 := '0';
    VARIABLE ADA10_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA9_CLKA       	: x01 := '0';
    VARIABLE ADA9_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA8_CLKA       	: x01 := '0';
    VARIABLE ADA8_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA7_CLKA       	: x01 := '0';
    VARIABLE ADA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA6_CLKA       	: x01 := '0';
    VARIABLE ADA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA5_CLKA       	: x01 := '0';
    VARIABLE ADA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA4_CLKA       	: x01 := '0';
    VARIABLE ADA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA3_CLKA       	: x01 := '0';
    VARIABLE ADA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WEA_CLKA       	: x01 := '0';
    VARIABLE WEA_CLKA_TimingDatash	: VitalTimingDataType;
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
    VARIABLE tviol_CLKA_CLKA          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKA	: VitalPeriodDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DIA7_dly,
        TestSignalName => "DIA7",
        TestDelay => tisd_DIA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA7_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA7_CLKA_noedge_posedge,
        HoldHigh => thold_DIA7_CLKA_noedge_posedge,
        HoldLow => thold_DIA7_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA7_CLKA_TimingDatash,
        Violation => tviol_DIA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA6_dly,
        TestSignalName => "DIA6",
        TestDelay => tisd_DIA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA6_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA6_CLKA_noedge_posedge,
        HoldHigh => thold_DIA6_CLKA_noedge_posedge,
        HoldLow => thold_DIA6_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA6_CLKA_TimingDatash,
        Violation => tviol_DIA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA5_dly,
        TestSignalName => "DIA5",
        TestDelay => tisd_DIA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA5_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA5_CLKA_noedge_posedge,
        HoldHigh => thold_DIA5_CLKA_noedge_posedge,
        HoldLow => thold_DIA5_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA5_CLKA_TimingDatash,
        Violation => tviol_DIA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA4_dly,
        TestSignalName => "DIA4",
        TestDelay => tisd_DIA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA4_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA4_CLKA_noedge_posedge,
        HoldHigh => thold_DIA4_CLKA_noedge_posedge,
        HoldLow => thold_DIA4_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA4_CLKA_TimingDatash,
        Violation => tviol_DIA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA3_dly,
        TestSignalName => "DIA3",
        TestDelay => tisd_DIA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA3_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA3_CLKA_noedge_posedge,
        HoldHigh => thold_DIA3_CLKA_noedge_posedge,
        HoldLow => thold_DIA3_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA3_CLKA_TimingDatash,
        Violation => tviol_DIA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA2_dly,
        TestSignalName => "DIA2",
        TestDelay => tisd_DIA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA2_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA2_CLKA_noedge_posedge,
        HoldHigh => thold_DIA2_CLKA_noedge_posedge,
        HoldLow => thold_DIA2_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA2_CLKA_TimingDatash,
        Violation => tviol_DIA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA1_dly,
        TestSignalName => "DIA1",
        TestDelay => tisd_DIA1_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA1_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA1_CLKA_noedge_posedge,
        HoldHigh => thold_DIA1_CLKA_noedge_posedge,
        HoldLow => thold_DIA1_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA1_CLKA_TimingDatash,
        Violation => tviol_DIA1_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA0_dly,
        TestSignalName => "DIA0",
        TestDelay => tisd_DIA0_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA0_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA0_CLKA_noedge_posedge,
        HoldHigh => thold_DIA0_CLKA_noedge_posedge,
        HoldLow => thold_DIA0_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA0_CLKA_TimingDatash,
        Violation => tviol_DIA0_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA13_dly,
        TestSignalName => "ADA13",
        TestDelay => tisd_ADA13_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA13_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA13_CLKA_noedge_posedge,
        HoldHigh => thold_ADA13_CLKA_noedge_posedge,
        HoldLow => thold_ADA13_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA13_CLKA_TimingDatash,
        Violation => tviol_ADA13_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA12_dly,
        TestSignalName => "ADA12",
        TestDelay => tisd_ADA12_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA12_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA12_CLKA_noedge_posedge,
        HoldHigh => thold_ADA12_CLKA_noedge_posedge,
        HoldLow => thold_ADA12_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA12_CLKA_TimingDatash,
        Violation => tviol_ADA12_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA11_dly,
        TestSignalName => "ADA11",
        TestDelay => tisd_ADA11_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA11_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA11_CLKA_noedge_posedge,
        HoldHigh => thold_ADA11_CLKA_noedge_posedge,
        HoldLow => thold_ADA11_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA11_CLKA_TimingDatash,
        Violation => tviol_ADA11_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA10_dly,
        TestSignalName => "ADA10",
        TestDelay => tisd_ADA10_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA10_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA10_CLKA_noedge_posedge,
        HoldHigh => thold_ADA10_CLKA_noedge_posedge,
        HoldLow => thold_ADA10_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA10_CLKA_TimingDatash,
        Violation => tviol_ADA10_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA9_dly,
        TestSignalName => "ADA9",
        TestDelay => tisd_ADA9_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA9_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA9_CLKA_noedge_posedge,
        HoldHigh => thold_ADA9_CLKA_noedge_posedge,
        HoldLow => thold_ADA9_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA9_CLKA_TimingDatash,
        Violation => tviol_ADA9_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA8_dly,
        TestSignalName => "ADA8",
        TestDelay => tisd_ADA8_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA8_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA8_CLKA_noedge_posedge,
        HoldHigh => thold_ADA8_CLKA_noedge_posedge,
        HoldLow => thold_ADA8_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA8_CLKA_TimingDatash,
        Violation => tviol_ADA8_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA7_dly,
        TestSignalName => "ADA7",
        TestDelay => tisd_ADA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA7_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA7_CLKA_noedge_posedge,
        HoldHigh => thold_ADA7_CLKA_noedge_posedge,
        HoldLow => thold_ADA7_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA7_CLKA_TimingDatash,
        Violation => tviol_ADA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA6_dly,
        TestSignalName => "ADA6",
        TestDelay => tisd_ADA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA6_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA6_CLKA_noedge_posedge,
        HoldHigh => thold_ADA6_CLKA_noedge_posedge,
        HoldLow => thold_ADA6_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA6_CLKA_TimingDatash,
        Violation => tviol_ADA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA5_dly,
        TestSignalName => "ADA5",
        TestDelay => tisd_ADA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA5_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA5_CLKA_noedge_posedge,
        HoldHigh => thold_ADA5_CLKA_noedge_posedge,
        HoldLow => thold_ADA5_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA5_CLKA_TimingDatash,
        Violation => tviol_ADA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA4_dly,
        TestSignalName => "ADA4",
        TestDelay => tisd_ADA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA4_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA4_CLKA_noedge_posedge,
        HoldHigh => thold_ADA4_CLKA_noedge_posedge,
        HoldLow => thold_ADA4_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA4_CLKA_TimingDatash,
        Violation => tviol_ADA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA3_dly,
        TestSignalName => "ADA3",
        TestDelay => tisd_ADA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA3_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA3_CLKA_noedge_posedge,
        HoldHigh => thold_ADA3_CLKA_noedge_posedge,
        HoldLow => thold_ADA3_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA3_CLKA_TimingDatash,
        Violation => tviol_ADA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WEA_dly,
        TestSignalName => "WEA",
        TestDelay => tisd_WEA_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_WEA_CLKA_noedge_posedge,
        SetupLow => tsetup_WEA_CLKA_noedge_posedge,
        HoldHigh => thold_WEA_CLKA_noedge_posedge,
        HoldLow => thold_WEA_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WEA_CLKA_TimingDatash,
        Violation => tviol_WEA_CLKA,
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
        TestSignal => CLKA_ipd,
        TestSignalName => "CLKA",
        Period => tperiod_CLKA,
        PulseWidthHigh => tpw_CLKA_posedge,
        PulseWidthLow => tpw_CLKA_negedge,
        PeriodData => periodcheckinfo_CLKA,
        Violation => tviol_CLKA_CLKA,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
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
      generic map (CLKFB_DIV => 4, CLKI_DIV => 1, CLKOP_CPHASE => 5, 
                   CLKOP_DIV => 6, CLKOP_ENABLE => "ENABLED", 
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

-- entity DP16KD0008
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DP16KD0008 is
    port (CEA: in Std_logic; OCEA: in Std_logic; CLKA: in Std_logic; 
          WEA: in Std_logic; CSA0: in Std_logic; CSA1: in Std_logic; 
          CSA2: in Std_logic; RSTA: in Std_logic; CEB: in Std_logic; 
          OCEB: in Std_logic; CLKB: in Std_logic; WEB: in Std_logic; 
          CSB0: in Std_logic; CSB1: in Std_logic; CSB2: in Std_logic; 
          RSTB: in Std_logic; DIA0: in Std_logic; DIA1: in Std_logic; 
          DIA2: in Std_logic; DIA3: in Std_logic; DIA4: in Std_logic; 
          DIA5: in Std_logic; DIA6: in Std_logic; DIA7: in Std_logic; 
          DIA8: in Std_logic; DIA9: in Std_logic; DIA10: in Std_logic; 
          DIA11: in Std_logic; DIA12: in Std_logic; DIA13: in Std_logic; 
          DIA14: in Std_logic; DIA15: in Std_logic; DIA16: in Std_logic; 
          DIA17: in Std_logic; ADA0: in Std_logic; ADA1: in Std_logic; 
          ADA2: in Std_logic; ADA3: in Std_logic; ADA4: in Std_logic; 
          ADA5: in Std_logic; ADA6: in Std_logic; ADA7: in Std_logic; 
          ADA8: in Std_logic; ADA9: in Std_logic; ADA10: in Std_logic; 
          ADA11: in Std_logic; ADA12: in Std_logic; ADA13: in Std_logic; 
          DIB0: in Std_logic; DIB1: in Std_logic; DIB2: in Std_logic; 
          DIB3: in Std_logic; DIB4: in Std_logic; DIB5: in Std_logic; 
          DIB6: in Std_logic; DIB7: in Std_logic; DIB8: in Std_logic; 
          DIB9: in Std_logic; DIB10: in Std_logic; DIB11: in Std_logic; 
          DIB12: in Std_logic; DIB13: in Std_logic; DIB14: in Std_logic; 
          DIB15: in Std_logic; DIB16: in Std_logic; DIB17: in Std_logic; 
          ADB0: in Std_logic; ADB1: in Std_logic; ADB2: in Std_logic; 
          ADB3: in Std_logic; ADB4: in Std_logic; ADB5: in Std_logic; 
          ADB6: in Std_logic; ADB7: in Std_logic; ADB8: in Std_logic; 
          ADB9: in Std_logic; ADB10: in Std_logic; ADB11: in Std_logic; 
          ADB12: in Std_logic; ADB13: in Std_logic; DOA0: out Std_logic; 
          DOA1: out Std_logic; DOA2: out Std_logic; DOA3: out Std_logic; 
          DOA4: out Std_logic; DOA5: out Std_logic; DOA6: out Std_logic; 
          DOA7: out Std_logic; DOA8: out Std_logic; DOA9: out Std_logic; 
          DOA10: out Std_logic; DOA11: out Std_logic; DOA12: out Std_logic; 
          DOA13: out Std_logic; DOA14: out Std_logic; DOA15: out Std_logic; 
          DOA16: out Std_logic; DOA17: out Std_logic; DOB0: out Std_logic; 
          DOB1: out Std_logic; DOB2: out Std_logic; DOB3: out Std_logic; 
          DOB4: out Std_logic; DOB5: out Std_logic; DOB6: out Std_logic; 
          DOB7: out Std_logic; DOB8: out Std_logic; DOB9: out Std_logic; 
          DOB10: out Std_logic; DOB11: out Std_logic; DOB12: out Std_logic; 
          DOB13: out Std_logic; DOB14: out Std_logic; DOB15: out Std_logic; 
          DOB16: out Std_logic; DOB17: out Std_logic);

    ATTRIBUTE Vital_Level0 OF DP16KD0008 : ENTITY IS TRUE;

  end DP16KD0008;

  architecture Structure of DP16KD0008 is
  begin
    INST10: DP16KD
      generic map (ASYNC_RESET_RELEASE => "SYNC", CSDECODE_A => "0b000", 
                   CSDECODE_B => "0b000", DATA_WIDTH_A => 18, 
                   DATA_WIDTH_B => 18, GSR => "DISABLED", 
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
                   , INIT_DATA => "STATIC", REGMODE_A => "NOREG", 
                   REGMODE_B => "NOREG", RESETMODE => "SYNC", 
                   WRITEMODE_A => "WRITETHROUGH", 
                   WRITEMODE_B => "WRITETHROUGH")
      port map (DIA0=>DIA0, DIA1=>DIA1, DIA2=>DIA2, DIA3=>DIA3, DIA4=>DIA4, 
                DIA5=>DIA5, DIA6=>DIA6, DIA7=>DIA7, DIA8=>DIA8, DIA9=>DIA9, 
                DIA10=>DIA10, DIA11=>DIA11, DIA12=>DIA12, DIA13=>DIA13, 
                DIA14=>DIA14, DIA15=>DIA15, DIA16=>DIA16, DIA17=>DIA17, 
                ADA0=>ADA0, ADA1=>ADA1, ADA2=>ADA2, ADA3=>ADA3, ADA4=>ADA4, 
                ADA5=>ADA5, ADA6=>ADA6, ADA7=>ADA7, ADA8=>ADA8, ADA9=>ADA9, 
                ADA10=>ADA10, ADA11=>ADA11, ADA12=>ADA12, ADA13=>ADA13, 
                CEA=>CEA, OCEA=>OCEA, CLKA=>CLKA, WEA=>WEA, CSA0=>CSA0, 
                CSA1=>CSA1, CSA2=>CSA2, RSTA=>RSTA, DIB0=>DIB0, DIB1=>DIB1, 
                DIB2=>DIB2, DIB3=>DIB3, DIB4=>DIB4, DIB5=>DIB5, DIB6=>DIB6, 
                DIB7=>DIB7, DIB8=>DIB8, DIB9=>DIB9, DIB10=>DIB10, DIB11=>DIB11, 
                DIB12=>DIB12, DIB13=>DIB13, DIB14=>DIB14, DIB15=>DIB15, 
                DIB16=>DIB16, DIB17=>DIB17, ADB0=>ADB0, ADB1=>ADB1, ADB2=>ADB2, 
                ADB3=>ADB3, ADB4=>ADB4, ADB5=>ADB5, ADB6=>ADB6, ADB7=>ADB7, 
                ADB8=>ADB8, ADB9=>ADB9, ADB10=>ADB10, ADB11=>ADB11, 
                ADB12=>ADB12, ADB13=>ADB13, CEB=>CEB, OCEB=>OCEB, CLKB=>CLKB, 
                WEB=>WEB, CSB0=>CSB0, CSB1=>CSB1, CSB2=>CSB2, RSTB=>RSTB, 
                DOA0=>DOA0, DOA1=>DOA1, DOA2=>DOA2, DOA3=>DOA3, DOA4=>DOA4, 
                DOA5=>DOA5, DOA6=>DOA6, DOA7=>DOA7, DOA8=>DOA8, DOA9=>DOA9, 
                DOA10=>DOA10, DOA11=>DOA11, DOA12=>DOA12, DOA13=>DOA13, 
                DOA14=>DOA14, DOA15=>DOA15, DOA16=>DOA16, DOA17=>DOA17, 
                DOB0=>DOB0, DOB1=>DOB1, DOB2=>DOB2, DOB3=>DOB3, DOB4=>DOB4, 
                DOB5=>DOB5, DOB6=>DOB6, DOB7=>DOB7, DOB8=>DOB8, DOB9=>DOB9, 
                DOB10=>DOB10, DOB11=>DOB11, DOB12=>DOB12, DOB13=>DOB13, 
                DOB14=>DOB14, DOB15=>DOB15, DOB16=>DOB16, DOB17=>DOB17);
  end Structure;

-- entity u_sdram_u_fifo_mem0
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_sdram_u_fifo_mem0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_sdram_u_fifo_mem0";

      tipd_DIA15  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA14  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA13  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WEA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADB12  	: VitalDelayType01 := (0 ns, 0 ns);
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
      ticd_CLKA	: VitalDelayType := 0 ns;
      tisd_DIA15_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA15_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA15_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA14_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA14_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA14_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA13_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA13_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA13_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA12_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA12_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA12_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA11_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA11_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA11_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA10_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA10_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA10_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA9_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA9_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA9_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA8_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA1_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA0_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA12_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA12_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA12_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA11_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA11_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA11_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA10_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA10_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA10_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA9_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA9_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA9_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA8_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_ADA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_ADA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_WEA_CLKA	: VitalDelayType := 0 ns;
      tsetup_WEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_WEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      ticd_CLKB	: VitalDelayType := 0 ns;
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
      tperiod_CLKA 	: VitalDelayType := 0 ns;
      tpw_CLKA_posedge	: VitalDelayType := 0 ns;
      tpw_CLKA_negedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (DIA15: in Std_logic; DIA14: in Std_logic; DIA13: in Std_logic; 
          DIA12: in Std_logic; DIA11: in Std_logic; DIA10: in Std_logic; 
          DIA9: in Std_logic; DIA8: in Std_logic; DIA7: in Std_logic; 
          DIA6: in Std_logic; DIA5: in Std_logic; DIA4: in Std_logic; 
          DIA3: in Std_logic; DIA2: in Std_logic; DIA1: in Std_logic; 
          DIA0: in Std_logic; ADA12: in Std_logic; ADA11: in Std_logic; 
          ADA10: in Std_logic; ADA9: in Std_logic; ADA8: in Std_logic; 
          ADA7: in Std_logic; ADA6: in Std_logic; ADA5: in Std_logic; 
          ADA4: in Std_logic; WEA: in Std_logic; CLKA: in Std_logic; 
          CLKB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
          DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
          DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
          DOB8: out Std_logic; DOB9: out Std_logic; DOB10: out Std_logic; 
          DOB11: out Std_logic; DOB12: out Std_logic; DOB13: out Std_logic; 
          DOB14: out Std_logic; DOB15: out Std_logic; ADB4: in Std_logic; 
          ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
          ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
          ADB11: in Std_logic; ADB12: in Std_logic);

    ATTRIBUTE Vital_Level0 OF u_sdram_u_fifo_mem0 : ENTITY IS TRUE;

  end u_sdram_u_fifo_mem0;

  architecture Structure of u_sdram_u_fifo_mem0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DIA15_ipd 	: std_logic := 'X';
    signal DIA15_dly 	: std_logic := 'X';
    signal DIA14_ipd 	: std_logic := 'X';
    signal DIA14_dly 	: std_logic := 'X';
    signal DIA13_ipd 	: std_logic := 'X';
    signal DIA13_dly 	: std_logic := 'X';
    signal DIA12_ipd 	: std_logic := 'X';
    signal DIA12_dly 	: std_logic := 'X';
    signal DIA11_ipd 	: std_logic := 'X';
    signal DIA11_dly 	: std_logic := 'X';
    signal DIA10_ipd 	: std_logic := 'X';
    signal DIA10_dly 	: std_logic := 'X';
    signal DIA9_ipd 	: std_logic := 'X';
    signal DIA9_dly 	: std_logic := 'X';
    signal DIA8_ipd 	: std_logic := 'X';
    signal DIA8_dly 	: std_logic := 'X';
    signal DIA7_ipd 	: std_logic := 'X';
    signal DIA7_dly 	: std_logic := 'X';
    signal DIA6_ipd 	: std_logic := 'X';
    signal DIA6_dly 	: std_logic := 'X';
    signal DIA5_ipd 	: std_logic := 'X';
    signal DIA5_dly 	: std_logic := 'X';
    signal DIA4_ipd 	: std_logic := 'X';
    signal DIA4_dly 	: std_logic := 'X';
    signal DIA3_ipd 	: std_logic := 'X';
    signal DIA3_dly 	: std_logic := 'X';
    signal DIA2_ipd 	: std_logic := 'X';
    signal DIA2_dly 	: std_logic := 'X';
    signal DIA1_ipd 	: std_logic := 'X';
    signal DIA1_dly 	: std_logic := 'X';
    signal DIA0_ipd 	: std_logic := 'X';
    signal DIA0_dly 	: std_logic := 'X';
    signal ADA12_ipd 	: std_logic := 'X';
    signal ADA12_dly 	: std_logic := 'X';
    signal ADA11_ipd 	: std_logic := 'X';
    signal ADA11_dly 	: std_logic := 'X';
    signal ADA10_ipd 	: std_logic := 'X';
    signal ADA10_dly 	: std_logic := 'X';
    signal ADA9_ipd 	: std_logic := 'X';
    signal ADA9_dly 	: std_logic := 'X';
    signal ADA8_ipd 	: std_logic := 'X';
    signal ADA8_dly 	: std_logic := 'X';
    signal ADA7_ipd 	: std_logic := 'X';
    signal ADA7_dly 	: std_logic := 'X';
    signal ADA6_ipd 	: std_logic := 'X';
    signal ADA6_dly 	: std_logic := 'X';
    signal ADA5_ipd 	: std_logic := 'X';
    signal ADA5_dly 	: std_logic := 'X';
    signal ADA4_ipd 	: std_logic := 'X';
    signal ADA4_dly 	: std_logic := 'X';
    signal WEA_ipd 	: std_logic := 'X';
    signal WEA_dly 	: std_logic := 'X';
    signal CLKA_ipd 	: std_logic := 'X';
    signal CLKA_dly 	: std_logic := 'X';
    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
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

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component DP16KD0008
      port (CEA: in Std_logic; OCEA: in Std_logic; CLKA: in Std_logic; 
            WEA: in Std_logic; CSA0: in Std_logic; CSA1: in Std_logic; 
            CSA2: in Std_logic; RSTA: in Std_logic; CEB: in Std_logic; 
            OCEB: in Std_logic; CLKB: in Std_logic; WEB: in Std_logic; 
            CSB0: in Std_logic; CSB1: in Std_logic; CSB2: in Std_logic; 
            RSTB: in Std_logic; DIA0: in Std_logic; DIA1: in Std_logic; 
            DIA2: in Std_logic; DIA3: in Std_logic; DIA4: in Std_logic; 
            DIA5: in Std_logic; DIA6: in Std_logic; DIA7: in Std_logic; 
            DIA8: in Std_logic; DIA9: in Std_logic; DIA10: in Std_logic; 
            DIA11: in Std_logic; DIA12: in Std_logic; DIA13: in Std_logic; 
            DIA14: in Std_logic; DIA15: in Std_logic; DIA16: in Std_logic; 
            DIA17: in Std_logic; ADA0: in Std_logic; ADA1: in Std_logic; 
            ADA2: in Std_logic; ADA3: in Std_logic; ADA4: in Std_logic; 
            ADA5: in Std_logic; ADA6: in Std_logic; ADA7: in Std_logic; 
            ADA8: in Std_logic; ADA9: in Std_logic; ADA10: in Std_logic; 
            ADA11: in Std_logic; ADA12: in Std_logic; ADA13: in Std_logic; 
            DIB0: in Std_logic; DIB1: in Std_logic; DIB2: in Std_logic; 
            DIB3: in Std_logic; DIB4: in Std_logic; DIB5: in Std_logic; 
            DIB6: in Std_logic; DIB7: in Std_logic; DIB8: in Std_logic; 
            DIB9: in Std_logic; DIB10: in Std_logic; DIB11: in Std_logic; 
            DIB12: in Std_logic; DIB13: in Std_logic; DIB14: in Std_logic; 
            DIB15: in Std_logic; DIB16: in Std_logic; DIB17: in Std_logic; 
            ADB0: in Std_logic; ADB1: in Std_logic; ADB2: in Std_logic; 
            ADB3: in Std_logic; ADB4: in Std_logic; ADB5: in Std_logic; 
            ADB6: in Std_logic; ADB7: in Std_logic; ADB8: in Std_logic; 
            ADB9: in Std_logic; ADB10: in Std_logic; ADB11: in Std_logic; 
            ADB12: in Std_logic; ADB13: in Std_logic; DOA0: out Std_logic; 
            DOA1: out Std_logic; DOA2: out Std_logic; DOA3: out Std_logic; 
            DOA4: out Std_logic; DOA5: out Std_logic; DOA6: out Std_logic; 
            DOA7: out Std_logic; DOA8: out Std_logic; DOA9: out Std_logic; 
            DOA10: out Std_logic; DOA11: out Std_logic; DOA12: out Std_logic; 
            DOA13: out Std_logic; DOA14: out Std_logic; DOA15: out Std_logic; 
            DOA16: out Std_logic; DOA17: out Std_logic; DOB0: out Std_logic; 
            DOB1: out Std_logic; DOB2: out Std_logic; DOB3: out Std_logic; 
            DOB4: out Std_logic; DOB5: out Std_logic; DOB6: out Std_logic; 
            DOB7: out Std_logic; DOB8: out Std_logic; DOB9: out Std_logic; 
            DOB10: out Std_logic; DOB11: out Std_logic; DOB12: out Std_logic; 
            DOB13: out Std_logic; DOB14: out Std_logic; DOB15: out Std_logic; 
            DOB16: out Std_logic; DOB17: out Std_logic);
    end component;
  begin
    u_sdram_u_fifo_mem0_DP16KD: DP16KD0008
      port map (CEA=>VCCI, OCEA=>VCCI, CLKA=>CLKA_dly, WEA=>WEA_dly, 
                CSA0=>GNDI, CSA1=>GNDI, CSA2=>GNDI, RSTA=>GNDI, CEB=>VCCI, 
                OCEB=>VCCI, CLKB=>CLKB_dly, WEB=>GNDI, CSB0=>GNDI, CSB1=>GNDI, 
                CSB2=>GNDI, RSTB=>GNDI, DIA0=>DIA0_dly, DIA1=>DIA1_dly, 
                DIA2=>DIA2_dly, DIA3=>DIA3_dly, DIA4=>DIA4_dly, DIA5=>DIA5_dly, 
                DIA6=>DIA6_dly, DIA7=>DIA7_dly, DIA8=>DIA8_dly, DIA9=>DIA9_dly, 
                DIA10=>DIA10_dly, DIA11=>DIA11_dly, DIA12=>DIA12_dly, 
                DIA13=>DIA13_dly, DIA14=>DIA14_dly, DIA15=>DIA15_dly, 
                DIA16=>GNDI, DIA17=>GNDI, ADA0=>VCCI, ADA1=>VCCI, ADA2=>GNDI, 
                ADA3=>GNDI, ADA4=>ADA4_dly, ADA5=>ADA5_dly, ADA6=>ADA6_dly, 
                ADA7=>ADA7_dly, ADA8=>ADA8_dly, ADA9=>ADA9_dly, 
                ADA10=>ADA10_dly, ADA11=>ADA11_dly, ADA12=>ADA12_dly, 
                ADA13=>GNDI, DIB0=>GNDI, DIB1=>GNDI, DIB2=>GNDI, DIB3=>GNDI, 
                DIB4=>GNDI, DIB5=>GNDI, DIB6=>GNDI, DIB7=>GNDI, DIB8=>GNDI, 
                DIB9=>GNDI, DIB10=>GNDI, DIB11=>GNDI, DIB12=>GNDI, DIB13=>GNDI, 
                DIB14=>GNDI, DIB15=>GNDI, DIB16=>GNDI, DIB17=>GNDI, ADB0=>VCCI, 
                ADB1=>VCCI, ADB2=>GNDI, ADB3=>GNDI, ADB4=>ADB4_dly, 
                ADB5=>ADB5_dly, ADB6=>ADB6_dly, ADB7=>ADB7_dly, ADB8=>ADB8_dly, 
                ADB9=>ADB9_dly, ADB10=>ADB10_dly, ADB11=>ADB11_dly, 
                ADB12=>ADB12_dly, ADB13=>GNDI, DOA0=>open, DOA1=>open, 
                DOA2=>open, DOA3=>open, DOA4=>open, DOA5=>open, DOA6=>open, 
                DOA7=>open, DOA8=>open, DOA9=>open, DOA10=>open, DOA11=>open, 
                DOA12=>open, DOA13=>open, DOA14=>open, DOA15=>open, 
                DOA16=>open, DOA17=>open, DOB0=>DOB0_out, DOB1=>DOB1_out, 
                DOB2=>DOB2_out, DOB3=>DOB3_out, DOB4=>DOB4_out, DOB5=>DOB5_out, 
                DOB6=>DOB6_out, DOB7=>DOB7_out, DOB8=>DOB8_out, DOB9=>DOB9_out, 
                DOB10=>DOB10_out, DOB11=>DOB11_out, DOB12=>DOB12_out, 
                DOB13=>DOB13_out, DOB14=>DOB14_out, DOB15=>DOB15_out, 
                DOB16=>open, DOB17=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DIA15_ipd, DIA15, tipd_DIA15);
      VitalWireDelay(DIA14_ipd, DIA14, tipd_DIA14);
      VitalWireDelay(DIA13_ipd, DIA13, tipd_DIA13);
      VitalWireDelay(DIA12_ipd, DIA12, tipd_DIA12);
      VitalWireDelay(DIA11_ipd, DIA11, tipd_DIA11);
      VitalWireDelay(DIA10_ipd, DIA10, tipd_DIA10);
      VitalWireDelay(DIA9_ipd, DIA9, tipd_DIA9);
      VitalWireDelay(DIA8_ipd, DIA8, tipd_DIA8);
      VitalWireDelay(DIA7_ipd, DIA7, tipd_DIA7);
      VitalWireDelay(DIA6_ipd, DIA6, tipd_DIA6);
      VitalWireDelay(DIA5_ipd, DIA5, tipd_DIA5);
      VitalWireDelay(DIA4_ipd, DIA4, tipd_DIA4);
      VitalWireDelay(DIA3_ipd, DIA3, tipd_DIA3);
      VitalWireDelay(DIA2_ipd, DIA2, tipd_DIA2);
      VitalWireDelay(DIA1_ipd, DIA1, tipd_DIA1);
      VitalWireDelay(DIA0_ipd, DIA0, tipd_DIA0);
      VitalWireDelay(ADA12_ipd, ADA12, tipd_ADA12);
      VitalWireDelay(ADA11_ipd, ADA11, tipd_ADA11);
      VitalWireDelay(ADA10_ipd, ADA10, tipd_ADA10);
      VitalWireDelay(ADA9_ipd, ADA9, tipd_ADA9);
      VitalWireDelay(ADA8_ipd, ADA8, tipd_ADA8);
      VitalWireDelay(ADA7_ipd, ADA7, tipd_ADA7);
      VitalWireDelay(ADA6_ipd, ADA6, tipd_ADA6);
      VitalWireDelay(ADA5_ipd, ADA5, tipd_ADA5);
      VitalWireDelay(ADA4_ipd, ADA4, tipd_ADA4);
      VitalWireDelay(WEA_ipd, WEA, tipd_WEA);
      VitalWireDelay(CLKA_ipd, CLKA, tipd_CLKA);
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
      VitalWireDelay(ADB4_ipd, ADB4, tipd_ADB4);
      VitalWireDelay(ADB5_ipd, ADB5, tipd_ADB5);
      VitalWireDelay(ADB6_ipd, ADB6, tipd_ADB6);
      VitalWireDelay(ADB7_ipd, ADB7, tipd_ADB7);
      VitalWireDelay(ADB8_ipd, ADB8, tipd_ADB8);
      VitalWireDelay(ADB9_ipd, ADB9, tipd_ADB9);
      VitalWireDelay(ADB10_ipd, ADB10, tipd_ADB10);
      VitalWireDelay(ADB11_ipd, ADB11, tipd_ADB11);
      VitalWireDelay(ADB12_ipd, ADB12, tipd_ADB12);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DIA15_dly, DIA15_ipd, tisd_DIA15_CLKA);
      VitalSignalDelay(DIA14_dly, DIA14_ipd, tisd_DIA14_CLKA);
      VitalSignalDelay(DIA13_dly, DIA13_ipd, tisd_DIA13_CLKA);
      VitalSignalDelay(DIA12_dly, DIA12_ipd, tisd_DIA12_CLKA);
      VitalSignalDelay(DIA11_dly, DIA11_ipd, tisd_DIA11_CLKA);
      VitalSignalDelay(DIA10_dly, DIA10_ipd, tisd_DIA10_CLKA);
      VitalSignalDelay(DIA9_dly, DIA9_ipd, tisd_DIA9_CLKA);
      VitalSignalDelay(DIA8_dly, DIA8_ipd, tisd_DIA8_CLKA);
      VitalSignalDelay(DIA7_dly, DIA7_ipd, tisd_DIA7_CLKA);
      VitalSignalDelay(DIA6_dly, DIA6_ipd, tisd_DIA6_CLKA);
      VitalSignalDelay(DIA5_dly, DIA5_ipd, tisd_DIA5_CLKA);
      VitalSignalDelay(DIA4_dly, DIA4_ipd, tisd_DIA4_CLKA);
      VitalSignalDelay(DIA3_dly, DIA3_ipd, tisd_DIA3_CLKA);
      VitalSignalDelay(DIA2_dly, DIA2_ipd, tisd_DIA2_CLKA);
      VitalSignalDelay(DIA1_dly, DIA1_ipd, tisd_DIA1_CLKA);
      VitalSignalDelay(DIA0_dly, DIA0_ipd, tisd_DIA0_CLKA);
      VitalSignalDelay(ADA12_dly, ADA12_ipd, tisd_ADA12_CLKA);
      VitalSignalDelay(ADA11_dly, ADA11_ipd, tisd_ADA11_CLKA);
      VitalSignalDelay(ADA10_dly, ADA10_ipd, tisd_ADA10_CLKA);
      VitalSignalDelay(ADA9_dly, ADA9_ipd, tisd_ADA9_CLKA);
      VitalSignalDelay(ADA8_dly, ADA8_ipd, tisd_ADA8_CLKA);
      VitalSignalDelay(ADA7_dly, ADA7_ipd, tisd_ADA7_CLKA);
      VitalSignalDelay(ADA6_dly, ADA6_ipd, tisd_ADA6_CLKA);
      VitalSignalDelay(ADA5_dly, ADA5_ipd, tisd_ADA5_CLKA);
      VitalSignalDelay(ADA4_dly, ADA4_ipd, tisd_ADA4_CLKA);
      VitalSignalDelay(WEA_dly, WEA_ipd, tisd_WEA_CLKA);
      VitalSignalDelay(CLKA_dly, CLKA_ipd, ticd_CLKA);
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
      VitalSignalDelay(ADB4_dly, ADB4_ipd, tisd_ADB4_CLKB);
      VitalSignalDelay(ADB5_dly, ADB5_ipd, tisd_ADB5_CLKB);
      VitalSignalDelay(ADB6_dly, ADB6_ipd, tisd_ADB6_CLKB);
      VitalSignalDelay(ADB7_dly, ADB7_ipd, tisd_ADB7_CLKB);
      VitalSignalDelay(ADB8_dly, ADB8_ipd, tisd_ADB8_CLKB);
      VitalSignalDelay(ADB9_dly, ADB9_ipd, tisd_ADB9_CLKB);
      VitalSignalDelay(ADB10_dly, ADB10_ipd, tisd_ADB10_CLKB);
      VitalSignalDelay(ADB11_dly, ADB11_ipd, tisd_ADB11_CLKB);
      VitalSignalDelay(ADB12_dly, ADB12_ipd, tisd_ADB12_CLKB);
    END BLOCK;

    VitalBehavior : PROCESS (DIA15_dly, DIA14_dly, DIA13_dly, DIA12_dly, 
      DIA11_dly, DIA10_dly, DIA9_dly, DIA8_dly, DIA7_dly, DIA6_dly, DIA5_dly, 
      DIA4_dly, DIA3_dly, DIA2_dly, DIA1_dly, DIA0_dly, ADA12_dly, ADA11_dly, 
      ADA10_dly, ADA9_dly, ADA8_dly, ADA7_dly, ADA6_dly, ADA5_dly, ADA4_dly, 
      WEA_dly, CLKA_dly, CLKB_dly, DOB0_out, DOB1_out, DOB2_out, DOB3_out, 
      DOB4_out, DOB5_out, DOB6_out, DOB7_out, DOB8_out, DOB9_out, DOB10_out, 
      DOB11_out, DOB12_out, DOB13_out, DOB14_out, DOB15_out, ADB4_dly, 
      ADB5_dly, ADB6_dly, ADB7_dly, ADB8_dly, ADB9_dly, ADB10_dly, ADB11_dly, 
      ADB12_dly)
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

    VARIABLE tviol_DIA15_CLKA       	: x01 := '0';
    VARIABLE DIA15_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA14_CLKA       	: x01 := '0';
    VARIABLE DIA14_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA13_CLKA       	: x01 := '0';
    VARIABLE DIA13_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA12_CLKA       	: x01 := '0';
    VARIABLE DIA12_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA11_CLKA       	: x01 := '0';
    VARIABLE DIA11_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA10_CLKA       	: x01 := '0';
    VARIABLE DIA10_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA9_CLKA       	: x01 := '0';
    VARIABLE DIA9_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA8_CLKA       	: x01 := '0';
    VARIABLE DIA8_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA7_CLKA       	: x01 := '0';
    VARIABLE DIA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA6_CLKA       	: x01 := '0';
    VARIABLE DIA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA5_CLKA       	: x01 := '0';
    VARIABLE DIA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA4_CLKA       	: x01 := '0';
    VARIABLE DIA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA3_CLKA       	: x01 := '0';
    VARIABLE DIA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA2_CLKA       	: x01 := '0';
    VARIABLE DIA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA1_CLKA       	: x01 := '0';
    VARIABLE DIA1_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA0_CLKA       	: x01 := '0';
    VARIABLE DIA0_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA12_CLKA       	: x01 := '0';
    VARIABLE ADA12_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA11_CLKA       	: x01 := '0';
    VARIABLE ADA11_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA10_CLKA       	: x01 := '0';
    VARIABLE ADA10_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA9_CLKA       	: x01 := '0';
    VARIABLE ADA9_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA8_CLKA       	: x01 := '0';
    VARIABLE ADA8_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA7_CLKA       	: x01 := '0';
    VARIABLE ADA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA6_CLKA       	: x01 := '0';
    VARIABLE ADA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA5_CLKA       	: x01 := '0';
    VARIABLE ADA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA4_CLKA       	: x01 := '0';
    VARIABLE ADA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WEA_CLKA       	: x01 := '0';
    VARIABLE WEA_CLKA_TimingDatash	: VitalTimingDataType;
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
    VARIABLE tviol_CLKA_CLKA          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKA	: VitalPeriodDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DIA15_dly,
        TestSignalName => "DIA15",
        TestDelay => tisd_DIA15_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA15_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA15_CLKA_noedge_posedge,
        HoldHigh => thold_DIA15_CLKA_noedge_posedge,
        HoldLow => thold_DIA15_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA15_CLKA_TimingDatash,
        Violation => tviol_DIA15_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA14_dly,
        TestSignalName => "DIA14",
        TestDelay => tisd_DIA14_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA14_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA14_CLKA_noedge_posedge,
        HoldHigh => thold_DIA14_CLKA_noedge_posedge,
        HoldLow => thold_DIA14_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA14_CLKA_TimingDatash,
        Violation => tviol_DIA14_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA13_dly,
        TestSignalName => "DIA13",
        TestDelay => tisd_DIA13_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA13_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA13_CLKA_noedge_posedge,
        HoldHigh => thold_DIA13_CLKA_noedge_posedge,
        HoldLow => thold_DIA13_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA13_CLKA_TimingDatash,
        Violation => tviol_DIA13_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA12_dly,
        TestSignalName => "DIA12",
        TestDelay => tisd_DIA12_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA12_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA12_CLKA_noedge_posedge,
        HoldHigh => thold_DIA12_CLKA_noedge_posedge,
        HoldLow => thold_DIA12_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA12_CLKA_TimingDatash,
        Violation => tviol_DIA12_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA11_dly,
        TestSignalName => "DIA11",
        TestDelay => tisd_DIA11_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA11_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA11_CLKA_noedge_posedge,
        HoldHigh => thold_DIA11_CLKA_noedge_posedge,
        HoldLow => thold_DIA11_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA11_CLKA_TimingDatash,
        Violation => tviol_DIA11_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA10_dly,
        TestSignalName => "DIA10",
        TestDelay => tisd_DIA10_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA10_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA10_CLKA_noedge_posedge,
        HoldHigh => thold_DIA10_CLKA_noedge_posedge,
        HoldLow => thold_DIA10_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA10_CLKA_TimingDatash,
        Violation => tviol_DIA10_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA9_dly,
        TestSignalName => "DIA9",
        TestDelay => tisd_DIA9_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA9_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA9_CLKA_noedge_posedge,
        HoldHigh => thold_DIA9_CLKA_noedge_posedge,
        HoldLow => thold_DIA9_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA9_CLKA_TimingDatash,
        Violation => tviol_DIA9_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA8_dly,
        TestSignalName => "DIA8",
        TestDelay => tisd_DIA8_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA8_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA8_CLKA_noedge_posedge,
        HoldHigh => thold_DIA8_CLKA_noedge_posedge,
        HoldLow => thold_DIA8_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA8_CLKA_TimingDatash,
        Violation => tviol_DIA8_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA7_dly,
        TestSignalName => "DIA7",
        TestDelay => tisd_DIA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA7_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA7_CLKA_noedge_posedge,
        HoldHigh => thold_DIA7_CLKA_noedge_posedge,
        HoldLow => thold_DIA7_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA7_CLKA_TimingDatash,
        Violation => tviol_DIA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA6_dly,
        TestSignalName => "DIA6",
        TestDelay => tisd_DIA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA6_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA6_CLKA_noedge_posedge,
        HoldHigh => thold_DIA6_CLKA_noedge_posedge,
        HoldLow => thold_DIA6_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA6_CLKA_TimingDatash,
        Violation => tviol_DIA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA5_dly,
        TestSignalName => "DIA5",
        TestDelay => tisd_DIA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA5_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA5_CLKA_noedge_posedge,
        HoldHigh => thold_DIA5_CLKA_noedge_posedge,
        HoldLow => thold_DIA5_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA5_CLKA_TimingDatash,
        Violation => tviol_DIA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA4_dly,
        TestSignalName => "DIA4",
        TestDelay => tisd_DIA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA4_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA4_CLKA_noedge_posedge,
        HoldHigh => thold_DIA4_CLKA_noedge_posedge,
        HoldLow => thold_DIA4_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA4_CLKA_TimingDatash,
        Violation => tviol_DIA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA3_dly,
        TestSignalName => "DIA3",
        TestDelay => tisd_DIA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA3_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA3_CLKA_noedge_posedge,
        HoldHigh => thold_DIA3_CLKA_noedge_posedge,
        HoldLow => thold_DIA3_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA3_CLKA_TimingDatash,
        Violation => tviol_DIA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA2_dly,
        TestSignalName => "DIA2",
        TestDelay => tisd_DIA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA2_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA2_CLKA_noedge_posedge,
        HoldHigh => thold_DIA2_CLKA_noedge_posedge,
        HoldLow => thold_DIA2_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA2_CLKA_TimingDatash,
        Violation => tviol_DIA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA1_dly,
        TestSignalName => "DIA1",
        TestDelay => tisd_DIA1_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA1_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA1_CLKA_noedge_posedge,
        HoldHigh => thold_DIA1_CLKA_noedge_posedge,
        HoldLow => thold_DIA1_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA1_CLKA_TimingDatash,
        Violation => tviol_DIA1_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA0_dly,
        TestSignalName => "DIA0",
        TestDelay => tisd_DIA0_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA0_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA0_CLKA_noedge_posedge,
        HoldHigh => thold_DIA0_CLKA_noedge_posedge,
        HoldLow => thold_DIA0_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA0_CLKA_TimingDatash,
        Violation => tviol_DIA0_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA12_dly,
        TestSignalName => "ADA12",
        TestDelay => tisd_ADA12_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA12_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA12_CLKA_noedge_posedge,
        HoldHigh => thold_ADA12_CLKA_noedge_posedge,
        HoldLow => thold_ADA12_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA12_CLKA_TimingDatash,
        Violation => tviol_ADA12_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA11_dly,
        TestSignalName => "ADA11",
        TestDelay => tisd_ADA11_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA11_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA11_CLKA_noedge_posedge,
        HoldHigh => thold_ADA11_CLKA_noedge_posedge,
        HoldLow => thold_ADA11_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA11_CLKA_TimingDatash,
        Violation => tviol_ADA11_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA10_dly,
        TestSignalName => "ADA10",
        TestDelay => tisd_ADA10_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA10_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA10_CLKA_noedge_posedge,
        HoldHigh => thold_ADA10_CLKA_noedge_posedge,
        HoldLow => thold_ADA10_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA10_CLKA_TimingDatash,
        Violation => tviol_ADA10_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA9_dly,
        TestSignalName => "ADA9",
        TestDelay => tisd_ADA9_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA9_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA9_CLKA_noedge_posedge,
        HoldHigh => thold_ADA9_CLKA_noedge_posedge,
        HoldLow => thold_ADA9_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA9_CLKA_TimingDatash,
        Violation => tviol_ADA9_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA8_dly,
        TestSignalName => "ADA8",
        TestDelay => tisd_ADA8_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA8_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA8_CLKA_noedge_posedge,
        HoldHigh => thold_ADA8_CLKA_noedge_posedge,
        HoldLow => thold_ADA8_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA8_CLKA_TimingDatash,
        Violation => tviol_ADA8_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA7_dly,
        TestSignalName => "ADA7",
        TestDelay => tisd_ADA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA7_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA7_CLKA_noedge_posedge,
        HoldHigh => thold_ADA7_CLKA_noedge_posedge,
        HoldLow => thold_ADA7_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA7_CLKA_TimingDatash,
        Violation => tviol_ADA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA6_dly,
        TestSignalName => "ADA6",
        TestDelay => tisd_ADA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA6_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA6_CLKA_noedge_posedge,
        HoldHigh => thold_ADA6_CLKA_noedge_posedge,
        HoldLow => thold_ADA6_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA6_CLKA_TimingDatash,
        Violation => tviol_ADA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA5_dly,
        TestSignalName => "ADA5",
        TestDelay => tisd_ADA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA5_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA5_CLKA_noedge_posedge,
        HoldHigh => thold_ADA5_CLKA_noedge_posedge,
        HoldLow => thold_ADA5_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA5_CLKA_TimingDatash,
        Violation => tviol_ADA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA4_dly,
        TestSignalName => "ADA4",
        TestDelay => tisd_ADA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA4_CLKA_noedge_posedge,
        SetupLow => tsetup_ADA4_CLKA_noedge_posedge,
        HoldHigh => thold_ADA4_CLKA_noedge_posedge,
        HoldLow => thold_ADA4_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA4_CLKA_TimingDatash,
        Violation => tviol_ADA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WEA_dly,
        TestSignalName => "WEA",
        TestDelay => tisd_WEA_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_WEA_CLKA_noedge_posedge,
        SetupLow => tsetup_WEA_CLKA_noedge_posedge,
        HoldHigh => thold_WEA_CLKA_noedge_posedge,
        HoldLow => thold_WEA_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WEA_CLKA_TimingDatash,
        Violation => tviol_WEA_CLKA,
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
      VitalPeriodPulseCheck (
        TestSignal => CLKA_ipd,
        TestSignalName => "CLKA",
        Period => tperiod_CLKA,
        PulseWidthHigh => tpw_CLKA_posedge,
        PulseWidthLow => tpw_CLKA_negedge,
        PeriodData => periodcheckinfo_CLKA,
        Violation => tviol_CLKA_CLKA,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
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
    DOB8_zd 	:= DOB8_out;
    DOB9_zd 	:= DOB9_out;
    DOB10_zd 	:= DOB10_out;
    DOB11_zd 	:= DOB11_out;
    DOB12_zd 	:= DOB12_out;
    DOB13_zd 	:= DOB13_out;
    DOB14_zd 	:= DOB14_out;
    DOB15_zd 	:= DOB15_out;

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

    END PROCESS;

  end Structure;

-- entity fpga_top
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity fpga_top is
    port (CRYSTAL: in Std_logic; PCLK: in Std_logic; VSYNC: in Std_logic; 
          HREF: in Std_logic; FSDA: in Std_logic; FSCL: in Std_logic; 
          Y9: in Std_logic; Y8: in Std_logic; Y7: in Std_logic; 
          Y6: in Std_logic; Y5: in Std_logic; Y4: in Std_logic; 
          Y3: in Std_logic; Y2: in Std_logic; MCLK: out Std_logic; 
          CCLK: in Std_logic; SSPI_CS_n: in Std_logic; DIN: in Std_logic; 
          DOUT: out Std_logic; ESP_D: in Std_logic_vector (7 downto 0); 
          PROGRAMN: in Std_logic; INITN: in Std_logic; DONE: in Std_logic; 
          SD_CLK: out Std_logic; SD_CS_N: out Std_logic; 
          SD_WE_N: out Std_logic; SD_RAS_N: out Std_logic; 
          SD_CAS_N: out Std_logic; SD_A: out Std_logic_vector (12 downto 0); 
          SD_BA: out Std_logic_vector (1 downto 0); 
          SD_DQ: out Std_logic_vector (15 downto 0); 
          SD_DQM: out Std_logic_vector (1 downto 0));



  end fpga_top;

  architecture Structure of fpga_top is
    signal pix_y_6: Std_logic;
    signal pix_y_5: Std_logic;
    signal n4527: Std_logic;
    signal n4528: Std_logic;
    signal pix_y_4: Std_logic;
    signal pix_y_3: Std_logic;
    signal n4526: Std_logic;
    signal pix_y_2: Std_logic;
    signal pix_y_1: Std_logic;
    signal n4525: Std_logic;
    signal pix_x_8: Std_logic;
    signal pix_x_7: Std_logic;
    signal n4486: Std_logic;
    signal n40: Std_logic;
    signal n37_adj_1352: Std_logic;
    signal n4487: Std_logic;
    signal pix_x_10: Std_logic;
    signal pix_x_9: Std_logic;
    signal n34_adj_1357: Std_logic;
    signal n31_adj_1358: Std_logic;
    signal n4488: Std_logic;
    signal n49_adj_1350: Std_logic;
    signal n52: Std_logic;
    signal u_cam_PCLK_c_enable_50: Std_logic;
    signal VSYNC_c: Std_logic;
    signal PCLK_c: Std_logic;
    signal n4498: Std_logic;
    signal n4499: Std_logic;
    signal pix_x_2: Std_logic;
    signal pix_x_1: Std_logic;
    signal n4483: Std_logic;
    signal n58_adj_1354: Std_logic;
    signal n55_adj_1355: Std_logic;
    signal n4484: Std_logic;
    signal pix_y_0: Std_logic;
    signal n29: Std_logic;
    signal rptr_gray_11_N_1192_11: Std_logic;
    signal rd_data_7_N_1177: Std_logic;
    signal CCLK_c: Std_logic;
    signal n4524: Std_logic;
    signal n32: Std_logic;
    signal n35: Std_logic;
    signal rptr_bin_11_N_1180_10: Std_logic;
    signal rptr_bin_11_N_1180_9: Std_logic;
    signal n4523: Std_logic;
    signal pix_x_11: Std_logic;
    signal n28_adj_1359: Std_logic;
    signal n55: Std_logic;
    signal n58: Std_logic;
    signal n4497: Std_logic;
    signal n38: Std_logic;
    signal n41: Std_logic;
    signal rptr_bin_11_N_1180_8: Std_logic;
    signal rptr_bin_11_N_1180_7: Std_logic;
    signal n4522: Std_logic;
    signal pix_x_4: Std_logic;
    signal pix_x_3: Std_logic;
    signal n52_adj_1356: Std_logic;
    signal n49: Std_logic;
    signal n4485: Std_logic;
    signal n5350: Std_logic;
    signal n4889: Std_logic;
    signal n61: Std_logic;
    signal n44: Std_logic;
    signal n47: Std_logic;
    signal rptr_bin_11_N_1180_6: Std_logic;
    signal rptr_bin_11_N_1180_5: Std_logic;
    signal n4521: Std_logic;
    signal n50: Std_logic;
    signal n53: Std_logic;
    signal rptr_bin_11_N_1180_4: Std_logic;
    signal rptr_bin_11_N_1180_3: Std_logic;
    signal n4520: Std_logic;
    signal n56: Std_logic;
    signal n59: Std_logic;
    signal rptr_bin_11_N_1180_2: Std_logic;
    signal rptr_bin_11_N_1180_1: Std_logic;
    signal n4519: Std_logic;
    signal n62: Std_logic;
    signal rptr_bin_11_N_1180_0: Std_logic;
    signal wptr_gray_11: Std_logic;
    signal wptr_gray_11_N_1157_11: Std_logic;
    signal u_stream_u_dc_wptr_bin_11_N_1150: Std_logic;
    signal n4518: Std_logic;
    signal wptr_bin_10: Std_logic;
    signal wptr_bin_9: Std_logic;
    signal wptr_bin_11_N_1138_10: Std_logic;
    signal wptr_bin_11_N_1138_9: Std_logic;
    signal n4517: Std_logic;
    signal wptr_bin_8_adj_1360: Std_logic;
    signal wptr_bin_7_adj_1361: Std_logic;
    signal wptr_bin_11_N_1138_8: Std_logic;
    signal wptr_bin_11_N_1138_7: Std_logic;
    signal n4516: Std_logic;
    signal wptr_bin_6_adj_1362: Std_logic;
    signal wptr_bin_5_adj_1363: Std_logic;
    signal wptr_bin_11_N_1138_6: Std_logic;
    signal wptr_bin_11_N_1138_5: Std_logic;
    signal n4515: Std_logic;
    signal wptr_bin_4_adj_1364: Std_logic;
    signal wptr_bin_3_adj_1365: Std_logic;
    signal wptr_bin_11_N_1138_4: Std_logic;
    signal wptr_bin_11_N_1138_3: Std_logic;
    signal n4514: Std_logic;
    signal wptr_bin_2_adj_1366: Std_logic;
    signal wptr_bin_1_adj_1367: Std_logic;
    signal wptr_bin_11_N_1138_2: Std_logic;
    signal wptr_bin_11_N_1138_1: Std_logic;
    signal n4513: Std_logic;
    signal wptr_bin_0_adj_1368: Std_logic;
    signal wptr_bin_11_N_1138_0: Std_logic;
    signal timer_15: Std_logic;
    signal n4496: Std_logic;
    signal n36: Std_logic;
    signal ref_cnt_15: Std_logic;
    signal n36_adj_1378: Std_logic;
    signal u_sdram_ref_due_N_811: Std_logic;
    signal u_sdram_ref_cnt_15_N_577: Std_logic;
    signal SD_CLK_c: Std_logic;
    signal n4544: Std_logic;
    signal timer_14: Std_logic;
    signal timer_13: Std_logic;
    signal n4495: Std_logic;
    signal n42: Std_logic;
    signal n39: Std_logic;
    signal ref_cnt_14: Std_logic;
    signal ref_cnt_13: Std_logic;
    signal n39_adj_1379: Std_logic;
    signal n42_adj_1380: Std_logic;
    signal n4543: Std_logic;
    signal n25: Std_logic;
    signal rptr_gray_9_N_932_9: Std_logic;
    signal SD_CLK_c_enable_63: Std_logic;
    signal n4512: Std_logic;
    signal n28_adj_1369: Std_logic;
    signal n31_adj_1370: Std_logic;
    signal rptr_bin_9_N_922_8: Std_logic;
    signal rptr_bin_9_N_922_7: Std_logic;
    signal n4511: Std_logic;
    signal timer_12: Std_logic;
    signal timer_11: Std_logic;
    signal n4494: Std_logic;
    signal n48: Std_logic;
    signal n45: Std_logic;
    signal ref_cnt_12: Std_logic;
    signal ref_cnt_11: Std_logic;
    signal n45_adj_1381: Std_logic;
    signal n48_adj_1382: Std_logic;
    signal n4542: Std_logic;
    signal n34_adj_1371: Std_logic;
    signal n37_adj_1372: Std_logic;
    signal rptr_bin_9_N_922_6: Std_logic;
    signal rptr_bin_9_N_922_5: Std_logic;
    signal n4510: Std_logic;
    signal ref_cnt_10: Std_logic;
    signal ref_cnt_9: Std_logic;
    signal n51_adj_1383: Std_logic;
    signal n54_adj_1384: Std_logic;
    signal n4541: Std_logic;
    signal ref_cnt_8: Std_logic;
    signal ref_cnt_7: Std_logic;
    signal n57_adj_1385: Std_logic;
    signal n60_adj_1386: Std_logic;
    signal n4540: Std_logic;
    signal ref_cnt_6: Std_logic;
    signal ref_cnt_5: Std_logic;
    signal ref_cnt_15_N_561_6: Std_logic;
    signal ref_cnt_15_N_561_5: Std_logic;
    signal u_sdram_SD_CLK_c_enable_30: Std_logic;
    signal n4539: Std_logic;
    signal ref_cnt_4: Std_logic;
    signal ref_cnt_3: Std_logic;
    signal n69_adj_1387: Std_logic;
    signal n72_adj_1388: Std_logic;
    signal n4538: Std_logic;
    signal n40_adj_1373: Std_logic;
    signal n43_adj_1374: Std_logic;
    signal rptr_bin_9_N_922_4: Std_logic;
    signal rptr_bin_9_N_922_3: Std_logic;
    signal n4509: Std_logic;
    signal n46_adj_1375: Std_logic;
    signal n49_adj_1376: Std_logic;
    signal rptr_bin_9_N_922_2: Std_logic;
    signal rptr_bin_9_N_922_1: Std_logic;
    signal n4508: Std_logic;
    signal n52_adj_1377: Std_logic;
    signal rptr_bin_9_N_922_0: Std_logic;
    signal timer_10: Std_logic;
    signal timer_9: Std_logic;
    signal n4493: Std_logic;
    signal n54: Std_logic;
    signal n51: Std_logic;
    signal timer_8: Std_logic;
    signal timer_7: Std_logic;
    signal n4492: Std_logic;
    signal n60: Std_logic;
    signal n57: Std_logic;
    signal ref_cnt_2: Std_logic;
    signal ref_cnt_1: Std_logic;
    signal ref_cnt_15_N_561_1: Std_logic;
    signal n4537: Std_logic;
    signal n75: Std_logic;
    signal ref_cnt_0: Std_logic;
    signal n81: Std_logic;
    signal wptr_gray_9: Std_logic;
    signal wptr_gray_9_N_893_9: Std_logic;
    signal wptr_bin_9_N_886: Std_logic;
    signal n4507: Std_logic;
    signal wptr_bin_8: Std_logic;
    signal wptr_bin_7: Std_logic;
    signal wptr_bin_9_N_876_8: Std_logic;
    signal wptr_bin_9_N_876_7: Std_logic;
    signal n4506: Std_logic;
    signal timer_6: Std_logic;
    signal timer_5: Std_logic;
    signal n4491: Std_logic;
    signal n66: Std_logic;
    signal n63: Std_logic;
    signal wptr_bin_6: Std_logic;
    signal wptr_bin_5: Std_logic;
    signal wptr_bin_9_N_876_6: Std_logic;
    signal wptr_bin_9_N_876_5: Std_logic;
    signal n4505: Std_logic;
    signal n4536: Std_logic;
    signal wr_en_N_1077: Std_logic;
    signal timer_4: Std_logic;
    signal timer_3: Std_logic;
    signal n4490: Std_logic;
    signal n72: Std_logic;
    signal n69: Std_logic;
    signal timer_2: Std_logic;
    signal timer_1: Std_logic;
    signal n4489: Std_logic;
    signal n461: Std_logic;
    signal n460: Std_logic;
    signal timer_0: Std_logic;
    signal n462: Std_logic;
    signal wptr_bin_4: Std_logic;
    signal wptr_bin_3: Std_logic;
    signal wptr_bin_9_N_876_4: Std_logic;
    signal wptr_bin_9_N_876_3: Std_logic;
    signal n4504: Std_logic;
    signal n4535: Std_logic;
    signal n4534: Std_logic;
    signal pix_x_6: Std_logic;
    signal pix_x_5: Std_logic;
    signal n4533: Std_logic;
    signal n4532: Std_logic;
    signal wptr_bin_2: Std_logic;
    signal wptr_bin_1: Std_logic;
    signal wptr_bin_9_N_876_2: Std_logic;
    signal wptr_bin_9_N_876_1: Std_logic;
    signal n4503: Std_logic;
    signal wptr_bin_0: Std_logic;
    signal wptr_bin_9_N_876_0: Std_logic;
    signal n46: Std_logic;
    signal n43: Std_logic;
    signal pix_y_11: Std_logic;
    signal n28: Std_logic;
    signal n4502: Std_logic;
    signal pix_y_10: Std_logic;
    signal pix_y_9: Std_logic;
    signal n31: Std_logic;
    signal n34: Std_logic;
    signal n4501: Std_logic;
    signal n4531: Std_logic;
    signal pix_y_8: Std_logic;
    signal pix_y_7: Std_logic;
    signal n37: Std_logic;
    signal n40_adj_1351: Std_logic;
    signal n4500: Std_logic;
    signal n43_adj_1348: Std_logic;
    signal n46_adj_1349: Std_logic;
    signal pix_x_0: Std_logic;
    signal n61_adj_1353: Std_logic;
    signal n4530: Std_logic;
    signal wr_en_N_1079: Std_logic;
    signal u_stream_u_dc_wptr_gray_8: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_8: Std_logic;
    signal u_stream_u_dc_wptr_gray_9: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_9: Std_logic;
    signal u_stream_u_dc_n4447: Std_logic;
    signal u_stream_u_dc_n4455: Std_logic;
    signal u_stream_u_dc_n1781: Std_logic;
    signal u_stream_u_dc_n1759: Std_logic;
    signal u_stream_u_dc_n1760: Std_logic;
    signal u_stream_u_dc_n1761: Std_logic;
    signal u_stream_u_dc_n1762: Std_logic;
    signal u_stream_u_dc_n1763: Std_logic;
    signal u_stream_u_dc_n1764: Std_logic;
    signal u_stream_u_dc_n1765: Std_logic;
    signal u_stream_u_dc_n1766: Std_logic;
    signal u_stream_u_dc_n4454: Std_logic;
    signal u_stream_u_dc_n1767: Std_logic;
    signal u_stream_u_dc_n1768: Std_logic;
    signal u_stream_u_dc_n1769: Std_logic;
    signal u_stream_u_dc_n1770: Std_logic;
    signal u_stream_u_dc_n1771: Std_logic;
    signal u_stream_u_dc_n1772: Std_logic;
    signal u_stream_u_dc_n1773: Std_logic;
    signal u_stream_u_dc_n1774: Std_logic;
    signal u_stream_u_dc_n4453: Std_logic;
    signal u_stream_u_dc_n1775: Std_logic;
    signal u_stream_u_dc_n1776: Std_logic;
    signal u_stream_u_dc_n1777: Std_logic;
    signal u_stream_u_dc_n1778: Std_logic;
    signal u_stream_u_dc_n1779: Std_logic;
    signal u_stream_u_dc_n1780: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_0: Std_logic;
    signal u_stream_u_dc_rptr_gray_0: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_1: Std_logic;
    signal u_stream_u_dc_rptr_gray_1: Std_logic;
    signal u_stream_u_dc_n4452: Std_logic;
    signal stream_fifo_empty: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_2: Std_logic;
    signal u_stream_u_dc_rptr_gray_2: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_3: Std_logic;
    signal u_stream_u_dc_rptr_gray_3: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_4: Std_logic;
    signal u_stream_u_dc_rptr_gray_4: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_5: Std_logic;
    signal u_stream_u_dc_rptr_gray_5: Std_logic;
    signal u_stream_u_dc_n4451: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_6: Std_logic;
    signal u_stream_u_dc_rptr_gray_6: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_7: Std_logic;
    signal u_stream_u_dc_rptr_gray_7: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_8: Std_logic;
    signal u_stream_u_dc_rptr_gray_8: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_9: Std_logic;
    signal u_stream_u_dc_rptr_gray_9: Std_logic;
    signal u_stream_u_dc_n4450: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_10: Std_logic;
    signal u_stream_u_dc_rptr_gray_10: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd2_11: Std_logic;
    signal u_stream_u_dc_rptr_gray_11: Std_logic;
    signal u_stream_u_dc_n4449: Std_logic;
    signal u_stream_u_dc_wr_full_N_1156: Std_logic;
    signal u_stream_u_dc_wptr_gray_0: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_0: Std_logic;
    signal u_stream_u_dc_wptr_gray_1: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_1: Std_logic;
    signal u_stream_u_dc_wptr_gray_2: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_2: Std_logic;
    signal u_stream_u_dc_wptr_gray_3: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_3: Std_logic;
    signal u_stream_u_dc_n4448: Std_logic;
    signal u_stream_u_dc_wptr_gray_4: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_4: Std_logic;
    signal u_stream_u_dc_wptr_gray_5: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_5: Std_logic;
    signal u_stream_u_dc_wptr_gray_6: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_6: Std_logic;
    signal u_stream_u_dc_wptr_gray_7: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_7: Std_logic;
    signal n4529: Std_logic;
    signal u_sdram_row_12: Std_logic;
    signal u_sdram_row_11: Std_logic;
    signal u_sdram_n58: Std_logic;
    signal u_sdram_n59: Std_logic;
    signal u_sdram_SD_CLK_c_enable_24: Std_logic;
    signal u_sdram_n3161: Std_logic;
    signal u_sdram_n4555: Std_logic;
    signal u_sdram_row_10: Std_logic;
    signal u_sdram_row_9: Std_logic;
    signal u_sdram_n60_adj_1317: Std_logic;
    signal u_sdram_n61: Std_logic;
    signal u_sdram_n4554: Std_logic;
    signal u_sdram_row_8: Std_logic;
    signal u_sdram_row_7: Std_logic;
    signal u_sdram_n62: Std_logic;
    signal u_sdram_n63_adj_1308: Std_logic;
    signal u_sdram_n4553: Std_logic;
    signal u_sdram_row_6: Std_logic;
    signal u_sdram_row_5: Std_logic;
    signal u_sdram_n64: Std_logic;
    signal u_sdram_n65: Std_logic;
    signal u_sdram_n4552: Std_logic;
    signal u_sdram_row_4: Std_logic;
    signal u_sdram_row_3: Std_logic;
    signal u_sdram_n66_adj_1310: Std_logic;
    signal u_sdram_n67: Std_logic;
    signal u_sdram_n4551: Std_logic;
    signal u_sdram_row_2: Std_logic;
    signal u_sdram_row_1: Std_logic;
    signal u_sdram_n68: Std_logic;
    signal u_sdram_n69_adj_1316: Std_logic;
    signal u_sdram_n4550: Std_logic;
    signal u_sdram_row_0: Std_logic;
    signal u_sdram_n70: Std_logic;
    signal u_sdram_col_8: Std_logic;
    signal u_sdram_col_7: Std_logic;
    signal u_sdram_n42: Std_logic;
    signal u_sdram_n43: Std_logic;
    signal u_sdram_SD_CLK_c_enable_29: Std_logic;
    signal u_sdram_n4548: Std_logic;
    signal u_sdram_col_6: Std_logic;
    signal u_sdram_col_5: Std_logic;
    signal u_sdram_n44: Std_logic;
    signal u_sdram_n45_adj_1332: Std_logic;
    signal u_sdram_n4547: Std_logic;
    signal u_sdram_col_4: Std_logic;
    signal u_sdram_col_3: Std_logic;
    signal u_sdram_n46: Std_logic;
    signal u_sdram_n47: Std_logic;
    signal u_sdram_n4546: Std_logic;
    signal u_sdram_col_2: Std_logic;
    signal u_sdram_col_1: Std_logic;
    signal u_sdram_n48_adj_1315: Std_logic;
    signal u_sdram_n49: Std_logic;
    signal u_sdram_n4545: Std_logic;
    signal u_sdram_col_0: Std_logic;
    signal u_sdram_n50: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_0: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr2_0: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_1: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr2_1: Std_logic;
    signal u_sdram_u_fifo_n4443: Std_logic;
    signal wr_full_N_892: Std_logic;
    signal u_sdram_u_fifo_n1821: Std_logic;
    signal u_sdram_u_fifo_n1717: Std_logic;
    signal u_sdram_u_fifo_n1823: Std_logic;
    signal u_sdram_u_fifo_n1824: Std_logic;
    signal u_sdram_u_fifo_n4457: Std_logic;
    signal u_sdram_u_fifo_n1839: Std_logic;
    signal u_sdram_u_fifo_n1825: Std_logic;
    signal u_sdram_u_fifo_n1826: Std_logic;
    signal u_sdram_u_fifo_n1827: Std_logic;
    signal u_sdram_u_fifo_n1828: Std_logic;
    signal u_sdram_u_fifo_n1829: Std_logic;
    signal u_sdram_u_fifo_n1830: Std_logic;
    signal u_sdram_u_fifo_n1831: Std_logic;
    signal u_sdram_u_fifo_n1832: Std_logic;
    signal u_sdram_u_fifo_n4456: Std_logic;
    signal u_sdram_u_fifo_n1833: Std_logic;
    signal u_sdram_u_fifo_n1834: Std_logic;
    signal u_sdram_u_fifo_n1835: Std_logic;
    signal u_sdram_u_fifo_n1836: Std_logic;
    signal u_sdram_u_fifo_n1837: Std_logic;
    signal u_sdram_u_fifo_n1838: Std_logic;
    signal u_sdram_u_fifo_n4446: Std_logic;
    signal u_sdram_rd_empty: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_2: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr2_2: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_3: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr2_3: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_4: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr2_4: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_5: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr2_5: Std_logic;
    signal u_sdram_u_fifo_n4442: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd2_0: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_0: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd2_1: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_1: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd2_2: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_2: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd2_3: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_3: Std_logic;
    signal u_sdram_u_fifo_n4445: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd2_4: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_4: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd2_5: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_5: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd2_6: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_6: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd2_7: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_7: Std_logic;
    signal u_sdram_u_fifo_n4444: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_6: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr2_6: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_7: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr2_7: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd2_8: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_8: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd2_9: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_9: Std_logic;
    signal u_spi_shift_out_7: Std_logic;
    signal DOUT_c: Std_logic;
    signal u_sdram_n6735: Std_logic;
    signal u_sdram_n5877: Std_logic;
    signal u_sdram_n5975: Std_logic;
    signal u_sdram_n6747: Std_logic;
    signal u_sdram_n4753: Std_logic;
    signal u_sdram_n635: Std_logic;
    signal u_sdram_n3139: Std_logic;
    signal SD_A_c_0: Std_logic;
    signal u_sdram_n5915: Std_logic;
    signal u_sdram_n4751: Std_logic;
    signal SD_A_c_1: Std_logic;
    signal u_sdram_n5835: Std_logic;
    signal u_sdram_n1341: Std_logic;
    signal SD_A_c_2: Std_logic;
    signal u_sdram_n5875: Std_logic;
    signal u_sdram_n1340: Std_logic;
    signal SD_A_c_3: Std_logic;
    signal u_sdram_n5855: Std_logic;
    signal u_sdram_n4749: Std_logic;
    signal SD_A_c_4: Std_logic;
    signal u_sdram_n5955: Std_logic;
    signal u_sdram_n1338: Std_logic;
    signal SD_A_c_5: Std_logic;
    signal u_sdram_n5935: Std_logic;
    signal u_sdram_n4755: Std_logic;
    signal SD_A_c_6: Std_logic;
    signal u_sdram_n5995: Std_logic;
    signal u_sdram_n1336: Std_logic;
    signal SD_A_c_7: Std_logic;
    signal u_sdram_n5895: Std_logic;
    signal u_sdram_n1335: Std_logic;
    signal SD_A_c_8: Std_logic;
    signal u_sdram_n636: Std_logic;
    signal u_sdram_n2895: Std_logic;
    signal SD_A_c_9: Std_logic;
    signal u_sdram_n5091: Std_logic;
    signal u_sdram_n6758: Std_logic;
    signal u_sdram_n6043: Std_logic;
    signal u_sdram_n28: Std_logic;
    signal u_sdram_SD_A_12_N_482_10: Std_logic;
    signal u_sdram_n6757: Std_logic;
    signal SD_A_c_10: Std_logic;
    signal SD_A_c_11: Std_logic;
    signal SD_A_c_12: Std_logic;
    signal u_sdram_bank_1: Std_logic;
    signal u_sdram_bank_0: Std_logic;
    signal SD_BA_c_0: Std_logic;
    signal SD_BA_c_1: Std_logic;
    signal u_sdram_SD_DQM_1_N_499_0: Std_logic;
    signal u_sdram_SD_CAS_N_N_809: Std_logic;
    signal SD_CAS_N_c: Std_logic;
    signal u_sdram_n5589: Std_logic;
    signal u_sdram_n6137: Std_logic;
    signal u_sdram_n6732: Std_logic;
    signal SD_DQM_c_0: Std_logic;
    signal u_sdram_SD_DQM_1_N_802_1: Std_logic;
    signal u_sdram_n767: Std_logic;
    signal u_sdram_n87: Std_logic;
    signal SD_RAS_N_c: Std_logic;
    signal u_sdram_n5093: Std_logic;
    signal u_sdram_n1058: Std_logic;
    signal u_sdram_n3138: Std_logic;
    signal SD_WE_N_c: Std_logic;
    signal HREF_c: Std_logic;
    signal byte_sel: Std_logic;
    signal u_cam_byte_sel_N_202: Std_logic;
    signal u_sdram_u_fifo_n1844: Std_logic;
    signal u_sdram_u_fifo_n1845: Std_logic;
    signal u_sdram_u_fifo_n1840: Std_logic;
    signal u_sdram_u_fifo_n1842: Std_logic;
    signal u_sdram_u_fifo_n1843: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_1: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_0: Std_logic;
    signal fifo_dout_0: Std_logic;
    signal fifo_dout_1: Std_logic;
    signal u_sdram_u_fifo_n1848: Std_logic;
    signal u_sdram_u_fifo_n1849: Std_logic;
    signal u_sdram_u_fifo_n1846: Std_logic;
    signal u_sdram_u_fifo_n1847: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_3: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_2: Std_logic;
    signal fifo_dout_2: Std_logic;
    signal fifo_dout_3: Std_logic;
    signal u_sdram_u_fifo_n1852: Std_logic;
    signal u_sdram_u_fifo_n1853: Std_logic;
    signal u_sdram_u_fifo_n1850: Std_logic;
    signal u_sdram_u_fifo_n1851: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_5: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_4: Std_logic;
    signal fifo_dout_4: Std_logic;
    signal fifo_dout_5: Std_logic;
    signal u_sdram_u_fifo_n1856: Std_logic;
    signal u_sdram_u_fifo_n1857: Std_logic;
    signal u_sdram_u_fifo_n1854: Std_logic;
    signal u_sdram_u_fifo_n1855: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_7: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_6: Std_logic;
    signal fifo_dout_6: Std_logic;
    signal fifo_dout_7: Std_logic;
    signal u_sdram_u_fifo_n1860: Std_logic;
    signal u_sdram_u_fifo_n1861: Std_logic;
    signal u_sdram_u_fifo_n1858: Std_logic;
    signal u_sdram_u_fifo_n1859: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_9: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_8: Std_logic;
    signal fifo_dout_8: Std_logic;
    signal fifo_dout_9: Std_logic;
    signal u_sdram_u_fifo_n1864: Std_logic;
    signal u_sdram_u_fifo_n1865: Std_logic;
    signal u_sdram_u_fifo_n1862: Std_logic;
    signal u_sdram_u_fifo_n1863: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_11: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_10: Std_logic;
    signal fifo_dout_10: Std_logic;
    signal fifo_dout_11: Std_logic;
    signal u_sdram_u_fifo_n1868: Std_logic;
    signal u_sdram_u_fifo_n1869: Std_logic;
    signal u_sdram_u_fifo_n1866: Std_logic;
    signal u_sdram_u_fifo_n1867: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_13: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_12: Std_logic;
    signal fifo_dout_12: Std_logic;
    signal fifo_dout_13: Std_logic;
    signal u_sdram_u_fifo_n1872: Std_logic;
    signal u_sdram_u_fifo_n1873: Std_logic;
    signal u_sdram_u_fifo_n1870: Std_logic;
    signal u_sdram_u_fifo_n1871: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_15: Std_logic;
    signal u_sdram_u_fifo_rd_data_15_N_903_14: Std_logic;
    signal fifo_dout_14: Std_logic;
    signal fifo_dout_15: Std_logic;
    signal frame_start: Std_logic;
    signal Y3_c_1: Std_logic;
    signal Y2_c_0: Std_logic;
    signal u_cam_PCLK_c_enable_51: Std_logic;
    signal pix_rgb565_0: Std_logic;
    signal pix_rgb565_1: Std_logic;
    signal Y5_c_3: Std_logic;
    signal Y4_c_2: Std_logic;
    signal pix_rgb565_2: Std_logic;
    signal pix_rgb565_3: Std_logic;
    signal Y7_c_5: Std_logic;
    signal Y6_c_4: Std_logic;
    signal pix_rgb565_4: Std_logic;
    signal pix_rgb565_5: Std_logic;
    signal Y9_c_7: Std_logic;
    signal Y8_c_6: Std_logic;
    signal pix_rgb565_6: Std_logic;
    signal pix_rgb565_7: Std_logic;
    signal u_cam_byte0_1: Std_logic;
    signal u_cam_byte0_0: Std_logic;
    signal pix_rgb565_8: Std_logic;
    signal pix_rgb565_9: Std_logic;
    signal u_cam_byte0_3: Std_logic;
    signal u_cam_byte0_2: Std_logic;
    signal pix_rgb565_10: Std_logic;
    signal pix_rgb565_11: Std_logic;
    signal u_cam_byte0_5: Std_logic;
    signal u_cam_byte0_4: Std_logic;
    signal pix_rgb565_12: Std_logic;
    signal pix_rgb565_13: Std_logic;
    signal u_cam_byte0_7: Std_logic;
    signal u_cam_byte0_6: Std_logic;
    signal pix_rgb565_14: Std_logic;
    signal pix_rgb565_15: Std_logic;
    signal u_cam_n6754: Std_logic;
    signal pix_valid_rgb: Std_logic;
    signal u_cam_n893: Std_logic;
    signal u_cam_n892: Std_logic;
    signal PCLK_c_enable_39: Std_logic;
    signal u_cam_n895: Std_logic;
    signal u_cam_n894: Std_logic;
    signal u_cam_n897: Std_logic;
    signal u_cam_n896: Std_logic;
    signal u_cam_n899: Std_logic;
    signal u_cam_n898: Std_logic;
    signal u_cam_n901: Std_logic;
    signal u_cam_n900: Std_logic;
    signal u_cam_n903: Std_logic;
    signal u_cam_n902: Std_logic;
    signal u_spi_shift_in_1: Std_logic;
    signal u_spi_stream_arm_N_1307: Std_logic;
    signal u_spi_shift_in_0: Std_logic;
    signal u_spi_shift_in_6: Std_logic;
    signal n6201: Std_logic;
    signal n6203: Std_logic;
    signal stream_arm_spi: Std_logic;
    signal n6380: Std_logic;
    signal u_spi_CCLK_c_enable_5: Std_logic;
    signal u_stream_u_dc_n1786: Std_logic;
    signal u_stream_u_dc_n1787: Std_logic;
    signal u_stream_u_dc_n1782: Std_logic;
    signal u_stream_u_dc_n1784: Std_logic;
    signal u_stream_u_dc_n1785: Std_logic;
    signal u_stream_u_dc_rd_data_7_N_1169_1: Std_logic;
    signal u_stream_u_dc_rd_data_7_N_1169_0: Std_logic;
    signal stream_fifo_rd_data_0: Std_logic;
    signal stream_fifo_rd_data_1: Std_logic;
    signal u_stream_u_dc_n1790: Std_logic;
    signal u_stream_u_dc_n1791: Std_logic;
    signal u_stream_u_dc_n1788: Std_logic;
    signal u_stream_u_dc_n1789: Std_logic;
    signal u_stream_u_dc_rd_data_7_N_1169_3: Std_logic;
    signal u_stream_u_dc_rd_data_7_N_1169_2: Std_logic;
    signal stream_fifo_rd_data_2: Std_logic;
    signal stream_fifo_rd_data_3: Std_logic;
    signal u_stream_u_dc_n1794: Std_logic;
    signal u_stream_u_dc_n1795: Std_logic;
    signal u_stream_u_dc_n1792: Std_logic;
    signal u_stream_u_dc_n1793: Std_logic;
    signal u_stream_u_dc_rd_data_7_N_1169_5: Std_logic;
    signal u_stream_u_dc_rd_data_7_N_1169_4: Std_logic;
    signal stream_fifo_rd_data_4: Std_logic;
    signal stream_fifo_rd_data_5: Std_logic;
    signal u_stream_u_dc_n1798: Std_logic;
    signal u_stream_u_dc_n1799: Std_logic;
    signal u_stream_u_dc_n1796: Std_logic;
    signal u_stream_u_dc_n1797: Std_logic;
    signal u_stream_u_dc_rd_data_7_N_1169_7: Std_logic;
    signal u_stream_u_dc_rd_data_7_N_1169_6: Std_logic;
    signal stream_fifo_rd_data_6: Std_logic;
    signal stream_fifo_rd_data_7: Std_logic;
    signal u_sdram_n3_adj_1331: Std_logic;
    signal u_sdram_n6724: Std_logic;
    signal u_sdram_timer_15_N_529_0: Std_logic;
    signal u_sdram_n6725: Std_logic;
    signal u_sdram_n5491: Std_logic;
    signal u_sdram_n4741: Std_logic;
    signal u_sdram_n634: Std_logic;
    signal u_sdram_n16: Std_logic;
    signal u_sdram_n6737: Std_logic;
    signal u_sdram_n5779: Std_logic;
    signal u_sdram_n3: Std_logic;
    signal u_sdram_n6723: Std_logic;
    signal u_sdram_timer_15_N_529_3: Std_logic;
    signal u_sdram_timer_15_N_529_2: Std_logic;
    signal u_sdram_n5787: Std_logic;
    signal u_sdram_n5094: Std_logic;
    signal u_sdram_timer_15_N_529_5: Std_logic;
    signal u_sdram_timer_15_N_529_4: Std_logic;
    signal u_sdram_n11: Std_logic;
    signal u_sdram_n5783: Std_logic;
    signal u_sdram_timer_15_N_529_7: Std_logic;
    signal u_sdram_timer_15_N_529_6: Std_logic;
    signal u_sdram_n5801: Std_logic;
    signal u_sdram_n11_adj_1309: Std_logic;
    signal u_sdram_timer_15_N_529_9: Std_logic;
    signal u_sdram_timer_15_N_529_8: Std_logic;
    signal u_sdram_timer_15_N_529_11: Std_logic;
    signal u_sdram_timer_15_N_529_10: Std_logic;
    signal u_sdram_n6111: Std_logic;
    signal u_sdram_n15: Std_logic;
    signal u_sdram_n5090: Std_logic;
    signal u_sdram_timer_15_N_529_13: Std_logic;
    signal u_sdram_timer_15_N_529_12: Std_logic;
    signal u_sdram_n11_adj_1313: Std_logic;
    signal u_sdram_n11_adj_1312: Std_logic;
    signal u_sdram_timer_15_N_529_15: Std_logic;
    signal u_sdram_timer_15_N_529_14: Std_logic;
    signal u_cam_PCLK_c_enable_12: Std_logic;
    signal u_sdram_n5653: Std_logic;
    signal u_sdram_n632: Std_logic;
    signal u_sdram_bank_1_N_523_0: Std_logic;
    signal u_sdram_SD_CLK_c_enable_1: Std_logic;
    signal u_sdram_bank_1_N_523_1: Std_logic;
    signal u_sdram_SD_CLK_c_enable_28: Std_logic;
    signal u_sdram_n6733: Std_logic;
    signal u_sdram_n6330: Std_logic;
    signal u_sdram_SD_A_12_N_789_6: Std_logic;
    signal u_sdram_dq_oe: Std_logic;
    signal u_sdram_fs_meta: Std_logic;
    signal u_sdram_fs_sync: Std_logic;
    signal u_sdram_n6017: Std_logic;
    signal u_sdram_n6352: Std_logic;
    signal u_sdram_n5322: Std_logic;
    signal u_sdram_n6731: Std_logic;
    signal u_sdram_n2750: Std_logic;
    signal u_sdram_n2748: Std_logic;
    signal u_sdram_n62_adj_1318: Std_logic;
    signal u_sdram_n6312: Std_logic;
    signal u_sdram_n6262: Std_logic;
    signal u_sdram_n6187: Std_logic;
    signal u_sdram_n6346: Std_logic;
    signal u_sdram_n6193: Std_logic;
    signal u_sdram_n2738: Std_logic;
    signal u_sdram_u_fifo_n1809: Std_logic;
    signal u_sdram_u_fifo_n1808: Std_logic;
    signal u_sdram_u_fifo_n1807: Std_logic;
    signal u_sdram_u_fifo_n1806: Std_logic;
    signal u_sdram_u_fifo_n1805: Std_logic;
    signal u_sdram_u_fifo_n1804: Std_logic;
    signal u_sdram_u_fifo_n1803: Std_logic;
    signal u_sdram_u_fifo_n1802: Std_logic;
    signal u_spi_mode_req_0: Std_logic;
    signal u_spi_mode_req_1: Std_logic;
    signal u_spi_n5323: Std_logic;
    signal u_sdram_u_fifo_n1801: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_9_N_932_1: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_9_N_932_0: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_9_N_932_3: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_9_N_932_2: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_9_N_932_5: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_9_N_932_4: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_9_N_932_7: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_9_N_932_6: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_9_N_932_8: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr1_0: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr1_1: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr1_2: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr1_3: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr1_4: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr1_5: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr1_6: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr1_7: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr1_8: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr1_9: Std_logic;
    signal u_sdram_u_fifo_rptr_gray_wr2_8: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_9_N_893_1: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_9_N_893_0: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_9_N_893_3: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_9_N_893_2: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_9_N_893_5: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_9_N_893_4: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_9_N_893_7: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_9_N_893_6: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_9_N_893_8: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_8: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd1_0: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd1_1: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd1_2: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd1_3: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd1_4: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd1_5: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd1_6: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd1_7: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd1_8: Std_logic;
    signal u_sdram_u_fifo_wptr_gray_rd1_9: Std_logic;
    signal u_spi_bit_cnt_0: Std_logic;
    signal u_spi_bit_cnt_1: Std_logic;
    signal u_spi_n19: Std_logic;
    signal u_spi_n20: Std_logic;
    signal u_spi_bit_cnt_2: Std_logic;
    signal u_spi_n18: Std_logic;
    signal u_spi_CCLK_c_enable_20: Std_logic;
    signal DIN_c: Std_logic;
    signal u_spi_cmd_0: Std_logic;
    signal u_spi_cmd_1: Std_logic;
    signal u_spi_shift_in_2: Std_logic;
    signal u_spi_cmd_2: Std_logic;
    signal u_spi_cmd_3: Std_logic;
    signal u_spi_shift_in_4: Std_logic;
    signal u_spi_shift_in_3: Std_logic;
    signal u_spi_cmd_4: Std_logic;
    signal u_spi_cmd_5: Std_logic;
    signal u_spi_shift_in_5: Std_logic;
    signal u_spi_cmd_6: Std_logic;
    signal u_spi_cmd_7: Std_logic;
    signal u_spi_rx_byte_1: Std_logic;
    signal u_spi_rx_byte_0: Std_logic;
    signal u_spi_CCLK_c_enable_26: Std_logic;
    signal u_spi_n501: Std_logic;
    signal u_spi_n500: Std_logic;
    signal u_spi_CCLK_c_enable_29: Std_logic;
    signal u_spi_n499: Std_logic;
    signal u_spi_n503: Std_logic;
    signal u_spi_n502: Std_logic;
    signal u_spi_n505: Std_logic;
    signal u_spi_n504: Std_logic;
    signal u_spi_n507: Std_logic;
    signal u_spi_n506: Std_logic;
    signal u_spi_n509: Std_logic;
    signal u_spi_n508: Std_logic;
    signal u_spi_n511: Std_logic;
    signal u_spi_n510: Std_logic;
    signal u_spi_out_byte_7_N_1258: Std_logic;
    signal u_spi_out_byte_7_N_1257: Std_logic;
    signal u_spi_CCLK_c_enable_27: Std_logic;
    signal u_spi_n6368: Std_logic;
    signal u_spi_shift_out_7_N_1277_0: Std_logic;
    signal u_spi_n5: Std_logic;
    signal u_spi_shift_out_0: Std_logic;
    signal u_spi_n6597: Std_logic;
    signal u_spi_shift_out_1: Std_logic;
    signal u_spi_n6378: Std_logic;
    signal u_spi_n6581: Std_logic;
    signal u_spi_shift_out_7_N_1209_2: Std_logic;
    signal u_spi_shift_out_7_N_1209_1: Std_logic;
    signal u_spi_shift_out_2: Std_logic;
    signal u_spi_n4: Std_logic;
    signal u_spi_shift_out_3: Std_logic;
    signal u_spi_n5533: Std_logic;
    signal u_spi_n5581: Std_logic;
    signal u_spi_shift_out_7_N_1209_4: Std_logic;
    signal u_spi_shift_out_7_N_1209_3: Std_logic;
    signal u_spi_shift_out_4: Std_logic;
    signal u_spi_shift_out_5: Std_logic;
    signal u_spi_n5569: Std_logic;
    signal u_spi_n5545: Std_logic;
    signal u_spi_shift_out_7_N_1209_6: Std_logic;
    signal u_spi_shift_out_7_N_1209_5: Std_logic;
    signal u_spi_shift_out_6: Std_logic;
    signal u_spi_n5557: Std_logic;
    signal u_spi_shift_out_7_N_1209_7: Std_logic;
    signal u_spi_n7: Std_logic;
    signal u_spi_n6147: Std_logic;
    signal u_spi_n4968: Std_logic;
    signal u_spi_n5334: Std_logic;
    signal u_spi_n5379: Std_logic;
    signal u_stream_arm_meta: Std_logic;
    signal u_stream_arm_pclk: Std_logic;
    signal u_stream_u_dc_wr_full_N_1155: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_11: Std_logic;
    signal u_stream_state_1: Std_logic;
    signal u_stream_state_2: Std_logic;
    signal u_stream_fifo_full: Std_logic;
    signal u_stream_state_0: Std_logic;
    signal u_stream_state_2_N_943_0: Std_logic;
    signal u_stream_PCLK_c_enable_28: Std_logic;
    signal u_stream_state_2_N_943_1: Std_logic;
    signal u_stream_PCLK_c_enable_5: Std_logic;
    signal u_stream_state_2_N_943_2: Std_logic;
    signal u_stream_PCLK_c_enable_4: Std_logic;
    signal u_stream_u_dc_n1745: Std_logic;
    signal u_stream_u_dc_n1744: Std_logic;
    signal u_stream_u_dc_n1743: Std_logic;
    signal u_stream_u_dc_n1742: Std_logic;
    signal u_stream_u_dc_n1741: Std_logic;
    signal u_stream_u_dc_n1740: Std_logic;
    signal u_stream_u_dc_n1739: Std_logic;
    signal u_stream_u_dc_n1738: Std_logic;
    signal u_stream_u_dc_n1737: Std_logic;
    signal u_stream_u_dc_n1736: Std_logic;
    signal u_stream_wr_en: Std_logic;
    signal u_stream_u_dc_n6750: Std_logic;
    signal u_stream_u_dc_n1735: Std_logic;
    signal u_stream_wr_data_1: Std_logic;
    signal u_stream_wr_data_0: Std_logic;
    signal u_stream_wr_data_3: Std_logic;
    signal u_stream_wr_data_2: Std_logic;
    signal u_stream_wr_data_5: Std_logic;
    signal u_stream_wr_data_4: Std_logic;
    signal u_stream_wr_data_7: Std_logic;
    signal u_stream_wr_data_6: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_1: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_0: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_3: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_2: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_5: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_4: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_7: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_6: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_9: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_8: Std_logic;
    signal u_stream_u_dc_rptr_gray_11_N_1192_10: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_0: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_1: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_2: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_3: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_4: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_5: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_6: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_7: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_8: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_9: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_10: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr1_11: Std_logic;
    signal u_stream_u_dc_rptr_gray_wr2_10: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_1: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_0: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_3: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_2: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_5: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_4: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_7: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_6: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_9: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_8: Std_logic;
    signal u_stream_u_dc_wptr_gray_11_N_1157_10: Std_logic;
    signal u_stream_u_dc_wptr_gray_10: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_0: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_1: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_2: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_3: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_4: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_5: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_6: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_7: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_8: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_9: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_10: Std_logic;
    signal u_stream_u_dc_wptr_gray_rd1_11: Std_logic;
    signal u_stream_n3142: Std_logic;
    signal u_stream_wr_en_N_1072: Std_logic;
    signal u_stream_n6728: Std_logic;
    signal u_stream_n6291: Std_logic;
    signal u_stream_n3168: Std_logic;
    signal u_stream_n6295: Std_logic;
    signal u_stream_n6293: Std_logic;
    signal u_stream_n5423: Std_logic;
    signal u_stream_wr_data_7_N_946_4: Std_logic;
    signal u_stream_n6297: Std_logic;
    signal u_stream_n5399: Std_logic;
    signal u_stream_n2796: Std_logic;
    signal u_stream_n34: Std_logic;
    signal u_sdram_n3409: Std_logic;
    signal u_sdram_n6751: Std_logic;
    signal u_sdram_n15_adj_1319: Std_logic;
    signal u_sdram_n5501: Std_logic;
    signal u_cam_n10: Std_logic;
    signal u_cam_n14: Std_logic;
    signal line_end_N_200: Std_logic;
    signal u_cam_n6753: Std_logic;
    signal u_cam_n6091: Std_logic;
    signal u_cam_n6085: Std_logic;
    signal u_stream_u_dc_n6730: Std_logic;
    signal u_stream_n27: Std_logic;
    signal u_sdram_n6749: Std_logic;
    signal u_sdram_n6071: Std_logic;
    signal u_sdram_n5625: Std_logic;
    signal u_sdram_n6129: Std_logic;
    signal u_sdram_n6752: Std_logic;
    signal u_sdram_n5453: Std_logic;
    signal u_sdram_n6350: Std_logic;
    signal u_sdram_n6316: Std_logic;
    signal u_sdram_n6356: Std_logic;
    signal u_sdram_n5595: Std_logic;
    signal u_sdram_n6746: Std_logic;
    signal u_sdram_n6: Std_logic;
    signal u_sdram_n6348: Std_logic;
    signal u_sdram_n6734: Std_logic;
    signal u_sdram_n5823: Std_logic;
    signal u_sdram_n6739: Std_logic;
    signal u_sdram_n6741: Std_logic;
    signal u_sdram_n4884: Std_logic;
    signal u_sdram_n6274: Std_logic;
    signal u_sdram_n6_adj_1314: Std_logic;
    signal u_sdram_n8: Std_logic;
    signal u_sdram_n5765: Std_logic;
    signal u_sdram_n6326: Std_logic;
    signal u_sdram_n6744: Std_logic;
    signal u_sdram_n13: Std_logic;
    signal u_sdram_n6077: Std_logic;
    signal u_sdram_n6127: Std_logic;
    signal u_sdram_n6029: Std_logic;
    signal u_sdram_n6039: Std_logic;
    signal u_sdram_n4828: Std_logic;
    signal u_sdram_n6069: Std_logic;
    signal u_sdram_n6738: Std_logic;
    signal u_sdram_n6740: Std_logic;
    signal u_sdram_n6332: Std_logic;
    signal u_sdram_n6745: Std_logic;
    signal u_sdram_n5597: Std_logic;
    signal u_sdram_n6318: Std_logic;
    signal u_sdram_n5691: Std_logic;
    signal u_sdram_n5693: Std_logic;
    signal u_sdram_n5679: Std_logic;
    signal u_sdram_n5669: Std_logic;
    signal u_sdram_n5681: Std_logic;
    signal u_sdram_n5677: Std_logic;
    signal u_sdram_n6742: Std_logic;
    signal rptr_gray_wr2_9: Std_logic;
    signal wr_full_N_891: Std_logic;
    signal SSPI_CS_n_c: Std_logic;
    signal u_spi_n6298: Std_logic;
    signal u_spi_n6364: Std_logic;
    signal u_spi_n6338: Std_logic;
    signal u_spi_n6755: Std_logic;
    signal u_spi_n6756: Std_logic;
    signal u_spi_n5571: Std_logic;
    signal u_spi_n6284: Std_logic;
    signal u_spi_n6286: Std_logic;
    signal u_spi_n5547: Std_logic;
    signal u_spi_n5523: Std_logic;
    signal u_spi_n5535: Std_logic;
    signal u_spi_n5559: Std_logic;
    signal u_spi_n6153: Std_logic;
    signal u_spi_n6163: Std_logic;
    signal u_spi_n6149: Std_logic;
    signal u_spi_n6218: Std_logic;
    signal GND_net: Std_logic;
    signal buf_CLKI: Std_logic;
    signal MCLK_c: Std_logic;
    signal VCCI: Std_logic;
    component CRYSTALB
      port (PADDI: out Std_logic; CRYSTALS: in Std_logic);
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
    component SD_RAS_NB
      port (PADDO: in Std_logic; SDRASN: out Std_logic);
    end component;
    component DOUTB
      port (PADDO: in Std_logic; DOUTS: out Std_logic);
    end component;
    component MCLKB
      port (PADDO: in Std_logic; MCLKS: out Std_logic);
    end component;
    component SD_CAS_NB
      port (PADDO: in Std_logic; SDCASN: out Std_logic);
    end component;
    component SD_A_12_B
      port (PADDO: in Std_logic; SDA12: out Std_logic);
    end component;
    component SD_A_11_B
      port (PADDO: in Std_logic; SDA11: out Std_logic);
    end component;
    component SD_A_10_B
      port (PADDO: in Std_logic; SDA10: out Std_logic);
    end component;
    component SD_A_9_B
      port (PADDO: in Std_logic; SDA9: out Std_logic);
    end component;
    component SD_A_8_B
      port (PADDO: in Std_logic; SDA8: out Std_logic);
    end component;
    component SD_A_7_B
      port (PADDO: in Std_logic; SDA7: out Std_logic);
    end component;
    component SD_A_6_B
      port (PADDO: in Std_logic; SDA6: out Std_logic);
    end component;
    component SD_A_5_B
      port (PADDO: in Std_logic; SDA5: out Std_logic);
    end component;
    component SD_A_4_B
      port (PADDO: in Std_logic; SDA4: out Std_logic);
    end component;
    component SD_A_3_B
      port (PADDO: in Std_logic; SDA3: out Std_logic);
    end component;
    component SD_A_2_B
      port (PADDO: in Std_logic; SDA2: out Std_logic);
    end component;
    component SD_A_1_B
      port (PADDO: in Std_logic; SDA1: out Std_logic);
    end component;
    component SD_A_0_B
      port (PADDO: in Std_logic; SDA0: out Std_logic);
    end component;
    component SD_BA_1_B
      port (PADDO: in Std_logic; SDBA1: out Std_logic);
    end component;
    component SD_BA_0_B
      port (PADDO: in Std_logic; SDBA0: out Std_logic);
    end component;
    component SD_DQ_15_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ15: out Std_logic);
    end component;
    component SD_DQ_14_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ14: out Std_logic);
    end component;
    component SD_DQ_13_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ13: out Std_logic);
    end component;
    component SD_DQ_12_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ12: out Std_logic);
    end component;
    component SD_DQ_11_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ11: out Std_logic);
    end component;
    component SD_DQ_10_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ10: out Std_logic);
    end component;
    component SD_DQ_9_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ9: out Std_logic);
    end component;
    component SD_DQ_8_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ8: out Std_logic);
    end component;
    component SD_DQ_7_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ7: out Std_logic);
    end component;
    component SD_DQ_6_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ6: out Std_logic);
    end component;
    component SD_DQ_5_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ5: out Std_logic);
    end component;
    component SD_DQ_4_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ4: out Std_logic);
    end component;
    component SD_DQ_3_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ3: out Std_logic);
    end component;
    component SD_DQ_2_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ2: out Std_logic);
    end component;
    component SD_DQ_1_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ1: out Std_logic);
    end component;
    component SD_DQ_0_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; SDDQ0: out Std_logic);
    end component;
    component SD_DQM_1_B
      port (PADDO: in Std_logic; SDDQM1: out Std_logic);
    end component;
    component SD_DQM_0_B
      port (PADDO: in Std_logic; SDDQM0: out Std_logic);
    end component;
    component PCLKB
      port (PADDI: out Std_logic; PCLKS: in Std_logic);
    end component;
    component VSYNCB
      port (PADDI: out Std_logic; VSYNCS: in Std_logic);
    end component;
    component HREFB
      port (PADDI: out Std_logic; HREFS: in Std_logic);
    end component;
    component Y9B
      port (PADDI: out Std_logic; Y9S: in Std_logic);
    end component;
    component Y8B
      port (PADDI: out Std_logic; Y8S: in Std_logic);
    end component;
    component Y7B
      port (PADDI: out Std_logic; Y7S: in Std_logic);
    end component;
    component Y6B
      port (PADDI: out Std_logic; Y6S: in Std_logic);
    end component;
    component Y5B
      port (PADDI: out Std_logic; Y5S: in Std_logic);
    end component;
    component Y4B
      port (PADDI: out Std_logic; Y4S: in Std_logic);
    end component;
    component Y3B
      port (PADDI: out Std_logic; Y3S: in Std_logic);
    end component;
    component Y2B
      port (PADDI: out Std_logic; Y2S: in Std_logic);
    end component;
    component CCLKB
      port (PADDI: out Std_logic; CCLKS: in Std_logic);
    end component;
    component SSPI_CS_nB
      port (PADDI: out Std_logic; SSPICSn: in Std_logic);
    end component;
    component DINB
      port (PADDI: out Std_logic; DINS: in Std_logic);
    end component;
    component GSR_INSTB
      port (GSRNET: in Std_logic);
    end component;
    component u_stream_u_dc_mem0
      port (DIA7: in Std_logic; DIA6: in Std_logic; DIA5: in Std_logic; 
            DIA4: in Std_logic; DIA3: in Std_logic; DIA2: in Std_logic; 
            DIA1: in Std_logic; DIA0: in Std_logic; ADA13: in Std_logic; 
            ADA12: in Std_logic; ADA11: in Std_logic; ADA10: in Std_logic; 
            ADA9: in Std_logic; ADA8: in Std_logic; ADA7: in Std_logic; 
            ADA6: in Std_logic; ADA5: in Std_logic; ADA4: in Std_logic; 
            ADA3: in Std_logic; WEA: in Std_logic; CLKA: in Std_logic; 
            CLKB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
            DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
            DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
            ADB3: in Std_logic; ADB4: in Std_logic; ADB5: in Std_logic; 
            ADB6: in Std_logic; ADB7: in Std_logic; ADB8: in Std_logic; 
            ADB9: in Std_logic; ADB10: in Std_logic; ADB11: in Std_logic; 
            ADB12: in Std_logic; ADB13: in Std_logic);
    end component;
    component u_pll_PLLInst_0
      port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
            CLKOS: out Std_logic; CLKOP: out Std_logic);
    end component;
    component u_sdram_u_fifo_mem0
      port (DIA15: in Std_logic; DIA14: in Std_logic; DIA13: in Std_logic; 
            DIA12: in Std_logic; DIA11: in Std_logic; DIA10: in Std_logic; 
            DIA9: in Std_logic; DIA8: in Std_logic; DIA7: in Std_logic; 
            DIA6: in Std_logic; DIA5: in Std_logic; DIA4: in Std_logic; 
            DIA3: in Std_logic; DIA2: in Std_logic; DIA1: in Std_logic; 
            DIA0: in Std_logic; ADA12: in Std_logic; ADA11: in Std_logic; 
            ADA10: in Std_logic; ADA9: in Std_logic; ADA8: in Std_logic; 
            ADA7: in Std_logic; ADA6: in Std_logic; ADA5: in Std_logic; 
            ADA4: in Std_logic; WEA: in Std_logic; CLKA: in Std_logic; 
            CLKB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
            DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
            DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
            DOB8: out Std_logic; DOB9: out Std_logic; DOB10: out Std_logic; 
            DOB11: out Std_logic; DOB12: out Std_logic; DOB13: out Std_logic; 
            DOB14: out Std_logic; DOB15: out Std_logic; ADB4: in Std_logic; 
            ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
            ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
            ADB11: in Std_logic; ADB12: in Std_logic);
    end component;
  begin
    SLICE_0I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_y_6, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_y_5, B0=>'X', C0=>'X', D0=>'1', FCI=>n4527, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4528, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_1I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_y_4, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_y_3, B0=>'X', C0=>'X', D0=>'1', FCI=>n4526, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4527, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_2I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_y_2, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_y_1, B0=>'X', C0=>'X', D0=>'1', FCI=>n4525, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4526, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_3I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>pix_x_8, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_x_7, B0=>'X', C0=>'X', D0=>'1', FCI=>n4486, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4487, 
                F1=>n37_adj_1352, Q1=>open, F0=>n40, Q0=>open);
    SLICE_4I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>pix_x_10, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_x_9, B0=>'X', C0=>'X', D0=>'1', FCI=>n4487, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4488, 
                F1=>n31_adj_1358, Q1=>open, F0=>n34_adj_1357, Q0=>open);
    SLICE_5I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>pix_y_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n49_adj_1350, DI0=>n52, A0=>pix_y_3, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n4498, M0=>'X', CE=>u_cam_PCLK_c_enable_50, 
                CLK=>PCLK_c, LSR=>VSYNC_c, FCO=>n4499, F1=>n49_adj_1350, 
                Q1=>pix_y_4, F0=>n52, Q0=>pix_y_3);
    SLICE_6I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>pix_x_2, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_x_1, B0=>'X', C0=>'X', D0=>'1', FCI=>n4483, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4484, 
                F1=>n55_adj_1355, Q1=>open, F0=>n58_adj_1354, Q0=>open);
    SLICE_7I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"00FF", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_y_0, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4525, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_8I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>rptr_gray_11_N_1192_11, A0=>n29, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n4524, M0=>'X', CE=>rd_data_7_N_1177, 
                CLK=>CCLK_c, LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>rptr_gray_11_N_1192_11, Q0=>n29);
    SLICE_9I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n32, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_11_N_1180_10, DI0=>rptr_bin_11_N_1180_9, A0=>n35, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n4523, M0=>'X', 
                CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', FCO=>n4524, 
                F1=>rptr_bin_11_N_1180_10, Q1=>n32, F0=>rptr_bin_11_N_1180_9, 
                Q0=>n35);
    SLICE_10I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>pix_x_11, B0=>'X', C0=>'X', D0=>'1', FCI=>n4488, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>open, 
                Q1=>open, F0=>n28_adj_1359, Q0=>open);
    SLICE_11I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>pix_y_2, B1=>'X', C1=>'X', D1=>'1', DI1=>n55, 
                DI0=>n58, A0=>pix_y_1, B0=>'X', C0=>'X', D0=>'1', FCI=>n4497, 
                M0=>'X', CE=>u_cam_PCLK_c_enable_50, CLK=>PCLK_c, LSR=>VSYNC_c, 
                FCO=>n4498, F1=>n55, Q1=>pix_y_2, F0=>n58, Q0=>pix_y_1);
    SLICE_12I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n38, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_11_N_1180_8, DI0=>rptr_bin_11_N_1180_7, A0=>n41, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n4522, M0=>'X', 
                CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', FCO=>n4523, 
                F1=>rptr_bin_11_N_1180_8, Q1=>n38, F0=>rptr_bin_11_N_1180_7, 
                Q0=>n41);
    SLICE_13I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>pix_x_4, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_x_3, B0=>'X', C0=>'X', D0=>'1', FCI=>n4484, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4485, F1=>n49, 
                Q1=>open, F0=>n52_adj_1356, Q0=>open);
    SLICE_14I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"1e1e", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n4889, B1=>n5350, C1=>pix_y_0, D1=>'1', DI1=>n61, 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>u_cam_PCLK_c_enable_50, CLK=>PCLK_c, LSR=>VSYNC_c, 
                FCO=>n4497, F1=>n61, Q1=>pix_y_0, F0=>open, Q0=>open);
    SLICE_15I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n44, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_11_N_1180_6, DI0=>rptr_bin_11_N_1180_5, A0=>n47, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n4521, M0=>'X', 
                CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', FCO=>n4522, 
                F1=>rptr_bin_11_N_1180_6, Q1=>n44, F0=>rptr_bin_11_N_1180_5, 
                Q0=>n47);
    SLICE_16I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n50, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_11_N_1180_4, DI0=>rptr_bin_11_N_1180_3, A0=>n53, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n4520, M0=>'X', 
                CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', FCO=>n4521, 
                F1=>rptr_bin_11_N_1180_4, Q1=>n50, F0=>rptr_bin_11_N_1180_3, 
                Q0=>n53);
    SLICE_17I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n56, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_11_N_1180_2, DI0=>rptr_bin_11_N_1180_1, A0=>n59, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n4519, M0=>'X', 
                CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', FCO=>n4520, 
                F1=>rptr_bin_11_N_1180_2, Q1=>n56, F0=>rptr_bin_11_N_1180_1, 
                Q0=>n59);
    SLICE_18I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n62, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_11_N_1180_0, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>rd_data_7_N_1177, CLK=>CCLK_c, 
                LSR=>'X', FCO=>n4519, F1=>rptr_bin_11_N_1180_0, Q1=>n62, 
                F0=>open, Q0=>open);
    SLICE_19I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>wptr_gray_11_N_1157_11, A0=>wptr_gray_11, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>n4518, M0=>'X', 
                CE=>u_stream_u_dc_wptr_bin_11_N_1150, CLK=>PCLK_c, LSR=>'X', 
                FCO=>open, F1=>open, Q1=>open, F0=>wptr_gray_11_N_1157_11, 
                Q0=>wptr_gray_11);
    SLICE_20I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_10, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_11_N_1138_10, DI0=>wptr_bin_11_N_1138_9, 
                A0=>wptr_bin_9, B0=>'X', C0=>'X', D0=>'1', FCI=>n4517, M0=>'X', 
                CE=>u_stream_u_dc_wptr_bin_11_N_1150, CLK=>PCLK_c, LSR=>'X', 
                FCO=>n4518, F1=>wptr_bin_11_N_1138_10, Q1=>wptr_bin_10, 
                F0=>wptr_bin_11_N_1138_9, Q0=>wptr_bin_9);
    SLICE_21I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_8_adj_1360, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_11_N_1138_8, DI0=>wptr_bin_11_N_1138_7, 
                A0=>wptr_bin_7_adj_1361, B0=>'X', C0=>'X', D0=>'1', FCI=>n4516, 
                M0=>'X', CE=>u_stream_u_dc_wptr_bin_11_N_1150, CLK=>PCLK_c, 
                LSR=>'X', FCO=>n4517, F1=>wptr_bin_11_N_1138_8, 
                Q1=>wptr_bin_8_adj_1360, F0=>wptr_bin_11_N_1138_7, 
                Q0=>wptr_bin_7_adj_1361);
    SLICE_22I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_6_adj_1362, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_11_N_1138_6, DI0=>wptr_bin_11_N_1138_5, 
                A0=>wptr_bin_5_adj_1363, B0=>'X', C0=>'X', D0=>'1', FCI=>n4515, 
                M0=>'X', CE=>u_stream_u_dc_wptr_bin_11_N_1150, CLK=>PCLK_c, 
                LSR=>'X', FCO=>n4516, F1=>wptr_bin_11_N_1138_6, 
                Q1=>wptr_bin_6_adj_1362, F0=>wptr_bin_11_N_1138_5, 
                Q0=>wptr_bin_5_adj_1363);
    SLICE_23I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_4_adj_1364, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_11_N_1138_4, DI0=>wptr_bin_11_N_1138_3, 
                A0=>wptr_bin_3_adj_1365, B0=>'X', C0=>'X', D0=>'1', FCI=>n4514, 
                M0=>'X', CE=>u_stream_u_dc_wptr_bin_11_N_1150, CLK=>PCLK_c, 
                LSR=>'X', FCO=>n4515, F1=>wptr_bin_11_N_1138_4, 
                Q1=>wptr_bin_4_adj_1364, F0=>wptr_bin_11_N_1138_3, 
                Q0=>wptr_bin_3_adj_1365);
    SLICE_24I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_2_adj_1366, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_11_N_1138_2, DI0=>wptr_bin_11_N_1138_1, 
                A0=>wptr_bin_1_adj_1367, B0=>'X', C0=>'X', D0=>'1', FCI=>n4513, 
                M0=>'X', CE=>u_stream_u_dc_wptr_bin_11_N_1150, CLK=>PCLK_c, 
                LSR=>'X', FCO=>n4514, F1=>wptr_bin_11_N_1138_2, 
                Q1=>wptr_bin_2_adj_1366, F0=>wptr_bin_11_N_1138_1, 
                Q0=>wptr_bin_1_adj_1367);
    SLICE_25I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_0_adj_1368, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_11_N_1138_0, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', 
                CE=>u_stream_u_dc_wptr_bin_11_N_1150, CLK=>PCLK_c, LSR=>'X', 
                FCO=>n4513, F1=>wptr_bin_11_N_1138_0, Q1=>wptr_bin_0_adj_1368, 
                F0=>open, Q0=>open);
    SLICE_26I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>timer_15, B0=>'X', C0=>'X', D0=>'1', FCI=>n4496, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>open, 
                Q1=>open, F0=>n36, Q0=>open);
    SLICE_27I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>n36_adj_1378, A0=>ref_cnt_15, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n4544, M0=>'X', CE=>u_sdram_ref_due_N_811, CLK=>SD_CLK_c, 
                LSR=>u_sdram_ref_cnt_15_N_577, FCO=>open, F1=>open, Q1=>open, 
                F0=>n36_adj_1378, Q0=>ref_cnt_15);
    SLICE_28I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>timer_14, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>timer_13, B0=>'X', C0=>'X', D0=>'1', FCI=>n4495, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4496, F1=>n39, 
                Q1=>open, F0=>n42, Q0=>open);
    SLICE_29I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>ref_cnt_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n39_adj_1379, DI0=>n42_adj_1380, A0=>ref_cnt_13, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>n4543, M0=>'X', 
                CE=>u_sdram_ref_due_N_811, CLK=>SD_CLK_c, 
                LSR=>u_sdram_ref_cnt_15_N_577, FCO=>n4544, F1=>n39_adj_1379, 
                Q1=>ref_cnt_14, F0=>n42_adj_1380, Q0=>ref_cnt_13);
    SLICE_30I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>rptr_gray_9_N_932_9, A0=>n25, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n4512, M0=>'X', CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>rptr_gray_9_N_932_9, Q0=>n25);
    SLICE_31I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n28_adj_1369, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_9_N_922_8, DI0=>rptr_bin_9_N_922_7, 
                A0=>n31_adj_1370, B0=>'X', C0=>'X', D0=>'1', FCI=>n4511, 
                M0=>'X', CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', 
                FCO=>n4512, F1=>rptr_bin_9_N_922_8, Q1=>n28_adj_1369, 
                F0=>rptr_bin_9_N_922_7, Q0=>n31_adj_1370);
    SLICE_32I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>timer_12, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>timer_11, B0=>'X', C0=>'X', D0=>'1', FCI=>n4494, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4495, F1=>n45, 
                Q1=>open, F0=>n48, Q0=>open);
    SLICE_33I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>ref_cnt_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n45_adj_1381, DI0=>n48_adj_1382, A0=>ref_cnt_11, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>n4542, M0=>'X', 
                CE=>u_sdram_ref_due_N_811, CLK=>SD_CLK_c, 
                LSR=>u_sdram_ref_cnt_15_N_577, FCO=>n4543, F1=>n45_adj_1381, 
                Q1=>ref_cnt_12, F0=>n48_adj_1382, Q0=>ref_cnt_11);
    SLICE_34I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n34_adj_1371, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_9_N_922_6, DI0=>rptr_bin_9_N_922_5, 
                A0=>n37_adj_1372, B0=>'X', C0=>'X', D0=>'1', FCI=>n4510, 
                M0=>'X', CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', 
                FCO=>n4511, F1=>rptr_bin_9_N_922_6, Q1=>n34_adj_1371, 
                F0=>rptr_bin_9_N_922_5, Q0=>n37_adj_1372);
    SLICE_35I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>ref_cnt_10, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n51_adj_1383, DI0=>n54_adj_1384, A0=>ref_cnt_9, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>n4541, M0=>'X', 
                CE=>u_sdram_ref_due_N_811, CLK=>SD_CLK_c, 
                LSR=>u_sdram_ref_cnt_15_N_577, FCO=>n4542, F1=>n51_adj_1383, 
                Q1=>ref_cnt_10, F0=>n54_adj_1384, Q0=>ref_cnt_9);
    SLICE_36I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>ref_cnt_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n57_adj_1385, DI0=>n60_adj_1386, A0=>ref_cnt_7, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>n4540, M0=>'X', 
                CE=>u_sdram_ref_due_N_811, CLK=>SD_CLK_c, 
                LSR=>u_sdram_ref_cnt_15_N_577, FCO=>n4541, F1=>n57_adj_1385, 
                Q1=>ref_cnt_8, F0=>n60_adj_1386, Q0=>ref_cnt_7);
    SLICE_37I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>ref_cnt_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>ref_cnt_15_N_561_6, DI0=>ref_cnt_15_N_561_5, 
                A0=>ref_cnt_5, B0=>'X', C0=>'X', D0=>'1', FCI=>n4539, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_30, CLK=>SD_CLK_c, 
                LSR=>u_sdram_ref_cnt_15_N_577, FCO=>n4540, 
                F1=>ref_cnt_15_N_561_6, Q1=>ref_cnt_6, F0=>ref_cnt_15_N_561_5, 
                Q0=>ref_cnt_5);
    SLICE_38I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>ref_cnt_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n69_adj_1387, DI0=>n72_adj_1388, A0=>ref_cnt_3, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>n4538, M0=>'X', 
                CE=>u_sdram_ref_due_N_811, CLK=>SD_CLK_c, 
                LSR=>u_sdram_ref_cnt_15_N_577, FCO=>n4539, F1=>n69_adj_1387, 
                Q1=>ref_cnt_4, F0=>n72_adj_1388, Q0=>ref_cnt_3);
    SLICE_39I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n40_adj_1373, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_9_N_922_4, DI0=>rptr_bin_9_N_922_3, 
                A0=>n43_adj_1374, B0=>'X', C0=>'X', D0=>'1', FCI=>n4509, 
                M0=>'X', CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', 
                FCO=>n4510, F1=>rptr_bin_9_N_922_4, Q1=>n40_adj_1373, 
                F0=>rptr_bin_9_N_922_3, Q0=>n43_adj_1374);
    SLICE_40I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n46_adj_1375, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_9_N_922_2, DI0=>rptr_bin_9_N_922_1, 
                A0=>n49_adj_1376, B0=>'X', C0=>'X', D0=>'1', FCI=>n4508, 
                M0=>'X', CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', 
                FCO=>n4509, F1=>rptr_bin_9_N_922_2, Q1=>n46_adj_1375, 
                F0=>rptr_bin_9_N_922_1, Q0=>n49_adj_1376);
    SLICE_41I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n52_adj_1377, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>rptr_bin_9_N_922_0, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>SD_CLK_c_enable_63, 
                CLK=>SD_CLK_c, LSR=>'X', FCO=>n4508, F1=>rptr_bin_9_N_922_0, 
                Q1=>n52_adj_1377, F0=>open, Q0=>open);
    SLICE_42I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>timer_10, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>timer_9, B0=>'X', C0=>'X', D0=>'1', FCI=>n4493, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4494, F1=>n51, 
                Q1=>open, F0=>n54, Q0=>open);
    SLICE_43I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>timer_8, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>timer_7, B0=>'X', C0=>'X', D0=>'1', FCI=>n4492, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4493, F1=>n57, 
                Q1=>open, F0=>n60, Q0=>open);
    SLICE_44I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", INIT0_INITVAL=>X"55FF", 
                   INIT1_INITVAL=>X"55FF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>ref_cnt_2, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>ref_cnt_15_N_561_1, A0=>ref_cnt_1, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n4537, M0=>'X', CE=>u_sdram_SD_CLK_c_enable_30, 
                CLK=>SD_CLK_c, LSR=>u_sdram_ref_cnt_15_N_577, FCO=>n4538, 
                F1=>n75, Q1=>open, F0=>ref_cnt_15_N_561_1, Q0=>ref_cnt_1);
    SLICE_45I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>ref_cnt_0, B1=>'X', C1=>'X', D1=>'1', DI1=>n81, 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>u_sdram_ref_due_N_811, CLK=>SD_CLK_c, 
                LSR=>u_sdram_ref_cnt_15_N_577, FCO=>n4537, F1=>n81, 
                Q1=>ref_cnt_0, F0=>open, Q0=>open);
    SLICE_46I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>wptr_gray_9_N_893_9, A0=>wptr_gray_9, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n4507, M0=>'X', CE=>wptr_bin_9_N_886, 
                CLK=>PCLK_c, LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>wptr_gray_9_N_893_9, Q0=>wptr_gray_9);
    SLICE_47I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_9_N_876_8, DI0=>wptr_bin_9_N_876_7, 
                A0=>wptr_bin_7, B0=>'X', C0=>'X', D0=>'1', FCI=>n4506, M0=>'X', 
                CE=>wptr_bin_9_N_886, CLK=>PCLK_c, LSR=>'X', FCO=>n4507, 
                F1=>wptr_bin_9_N_876_8, Q1=>wptr_bin_8, F0=>wptr_bin_9_N_876_7, 
                Q0=>wptr_bin_7);
    SLICE_48I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>timer_6, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>timer_5, B0=>'X', C0=>'X', D0=>'1', FCI=>n4491, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4492, F1=>n63, 
                Q1=>open, F0=>n66, Q0=>open);
    SLICE_49I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_9_N_876_6, DI0=>wptr_bin_9_N_876_5, 
                A0=>wptr_bin_5, B0=>'X', C0=>'X', D0=>'1', FCI=>n4505, M0=>'X', 
                CE=>wptr_bin_9_N_886, CLK=>PCLK_c, LSR=>'X', FCO=>n4506, 
                F1=>wptr_bin_9_N_876_6, Q1=>wptr_bin_6, F0=>wptr_bin_9_N_876_5, 
                Q0=>wptr_bin_5);
    SLICE_50I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>pix_x_11, B0=>'X', C0=>'X', D0=>'1', FCI=>n4536, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>wr_en_N_1077, Q1=>open, F0=>open, Q0=>open);
    SLICE_51I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>timer_4, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>timer_3, B0=>'X', C0=>'X', D0=>'1', FCI=>n4490, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4491, F1=>n69, 
                Q1=>open, F0=>n72, Q0=>open);
    SLICE_52I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>timer_2, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>timer_1, B0=>'X', C0=>'X', D0=>'1', FCI=>n4489, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4490, F1=>n460, 
                Q1=>open, F0=>n461, Q0=>open);
    SLICE_53I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>timer_0, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4489, F1=>n462, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_54I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_9_N_876_4, DI0=>wptr_bin_9_N_876_3, 
                A0=>wptr_bin_3, B0=>'X', C0=>'X', D0=>'1', FCI=>n4504, M0=>'X', 
                CE=>wptr_bin_9_N_886, CLK=>PCLK_c, LSR=>'X', FCO=>n4505, 
                F1=>wptr_bin_9_N_876_4, Q1=>wptr_bin_4, F0=>wptr_bin_9_N_876_3, 
                Q0=>wptr_bin_3);
    SLICE_55I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_x_10, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_x_9, B0=>'X', C0=>'X', D0=>'1', FCI=>n4535, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4536, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_56I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_x_8, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_x_7, B0=>'X', C0=>'X', D0=>'1', FCI=>n4534, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4535, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_57I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_x_6, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_x_5, B0=>'X', C0=>'X', D0=>'1', FCI=>n4533, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4534, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_58I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_x_4, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_x_3, B0=>'X', C0=>'X', D0=>'1', FCI=>n4532, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4533, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_59I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_9_N_876_2, DI0=>wptr_bin_9_N_876_1, 
                A0=>wptr_bin_1, B0=>'X', C0=>'X', D0=>'1', FCI=>n4503, M0=>'X', 
                CE=>wptr_bin_9_N_886, CLK=>PCLK_c, LSR=>'X', FCO=>n4504, 
                F1=>wptr_bin_9_N_876_2, Q1=>wptr_bin_2, F0=>wptr_bin_9_N_876_1, 
                Q0=>wptr_bin_1);
    SLICE_60I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>wptr_bin_0, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>wptr_bin_9_N_876_0, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>wptr_bin_9_N_886, CLK=>PCLK_c, 
                LSR=>'X', FCO=>n4503, F1=>wptr_bin_9_N_876_0, Q1=>wptr_bin_0, 
                F0=>open, Q0=>open);
    SLICE_61I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>pix_x_6, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_x_5, B0=>'X', C0=>'X', D0=>'1', FCI=>n4485, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4486, F1=>n43, 
                Q1=>open, F0=>n46, Q0=>open);
    SLICE_62I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>n28, A0=>pix_y_11, B0=>'X', C0=>'X', D0=>'1', FCI=>n4502, 
                M0=>'X', CE=>u_cam_PCLK_c_enable_50, CLK=>PCLK_c, LSR=>VSYNC_c, 
                FCO=>open, F1=>open, Q1=>open, F0=>n28, Q0=>pix_y_11);
    SLICE_63I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>pix_y_10, B1=>'X', C1=>'X', D1=>'1', DI1=>n31, 
                DI0=>n34, A0=>pix_y_9, B0=>'X', C0=>'X', D0=>'1', FCI=>n4501, 
                M0=>'X', CE=>u_cam_PCLK_c_enable_50, CLK=>PCLK_c, LSR=>VSYNC_c, 
                FCO=>n4502, F1=>n31, Q1=>pix_y_10, F0=>n34, Q0=>pix_y_9);
    SLICE_64I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_x_2, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_x_1, B0=>'X', C0=>'X', D0=>'1', FCI=>n4531, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4532, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_65I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>pix_y_8, B1=>'X', C1=>'X', D1=>'1', DI1=>n37, 
                DI0=>n40_adj_1351, A0=>pix_y_7, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n4500, M0=>'X', CE=>u_cam_PCLK_c_enable_50, CLK=>PCLK_c, 
                LSR=>VSYNC_c, FCO=>n4501, F1=>n37, Q1=>pix_y_8, 
                F0=>n40_adj_1351, Q0=>pix_y_7);
    SLICE_66I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>pix_y_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n43_adj_1348, DI0=>n46_adj_1349, A0=>pix_y_5, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>n4499, M0=>'X', 
                CE=>u_cam_PCLK_c_enable_50, CLK=>PCLK_c, LSR=>VSYNC_c, 
                FCO=>n4500, F1=>n43_adj_1348, Q1=>pix_y_6, F0=>n46_adj_1349, 
                Q0=>pix_y_5);
    SLICE_67I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"00FF", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_x_0, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4531, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_68I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>pix_x_0, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4483, 
                F1=>n61_adj_1353, Q1=>open, F0=>open, Q0=>open);
    SLICE_69I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>pix_y_11, B0=>'X', C0=>'X', D0=>'1', FCI=>n4530, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>wr_en_N_1079, Q1=>open, F0=>open, Q0=>open);
    u_stream_u_dc_SLICE_70I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"00FF", 
                   INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_stream_u_dc_rptr_gray_wr2_9, 
                B1=>u_stream_u_dc_wptr_gray_9, 
                C1=>u_stream_u_dc_rptr_gray_wr2_8, 
                D1=>u_stream_u_dc_wptr_gray_8, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'1', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>u_stream_u_dc_n4447, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    u_stream_u_dc_SLICE_71I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>u_stream_u_dc_n4455, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>open, Q1=>open, F0=>u_stream_u_dc_n1781, 
                Q0=>open);
    u_stream_u_dc_SLICE_72I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_stream_u_dc_n1762, B1=>u_stream_u_dc_n1761, 
                C1=>u_stream_u_dc_n1760, D1=>u_stream_u_dc_n1759, DI1=>'X', 
                DI0=>'X', A0=>u_stream_u_dc_n1766, B0=>u_stream_u_dc_n1765, 
                C0=>u_stream_u_dc_n1764, D0=>u_stream_u_dc_n1763, 
                FCI=>u_stream_u_dc_n4454, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>u_stream_u_dc_n4455, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    u_stream_u_dc_SLICE_73I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_stream_u_dc_n1770, B1=>u_stream_u_dc_n1769, 
                C1=>u_stream_u_dc_n1768, D1=>u_stream_u_dc_n1767, DI1=>'X', 
                DI0=>'X', A0=>u_stream_u_dc_n1774, B0=>u_stream_u_dc_n1773, 
                C0=>u_stream_u_dc_n1772, D0=>u_stream_u_dc_n1771, 
                FCI=>u_stream_u_dc_n4453, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>u_stream_u_dc_n4454, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    u_stream_u_dc_SLICE_74I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"0099", 
                   INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_stream_u_dc_n1778, B1=>u_stream_u_dc_n1777, 
                C1=>u_stream_u_dc_n1776, D1=>u_stream_u_dc_n1775, DI1=>'X', 
                DI0=>'X', A0=>u_stream_u_dc_n1780, B0=>u_stream_u_dc_n1779, 
                C0=>'X', D0=>'1', FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>u_stream_u_dc_n4453, F1=>open, Q1=>open, 
                F0=>open, Q0=>open);
    u_stream_u_dc_SLICE_75I: SCCU2C
      generic map (CCU2_INJECT1_1=>"NO", INIT0_INITVAL=>X"9009", 
                   INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_stream_u_dc_rptr_gray_1, 
                B0=>u_stream_u_dc_wptr_gray_rd2_1, 
                C0=>u_stream_u_dc_rptr_gray_0, 
                D0=>u_stream_u_dc_wptr_gray_rd2_0, FCI=>u_stream_u_dc_n4452, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>stream_fifo_empty, Q1=>open, F0=>open, Q0=>open);
    u_stream_u_dc_SLICE_76I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_stream_u_dc_rptr_gray_3, 
                B1=>u_stream_u_dc_wptr_gray_rd2_3, 
                C1=>u_stream_u_dc_rptr_gray_2, 
                D1=>u_stream_u_dc_wptr_gray_rd2_2, DI1=>'X', DI0=>'X', 
                A0=>u_stream_u_dc_rptr_gray_5, 
                B0=>u_stream_u_dc_wptr_gray_rd2_5, 
                C0=>u_stream_u_dc_rptr_gray_4, 
                D0=>u_stream_u_dc_wptr_gray_rd2_4, FCI=>u_stream_u_dc_n4451, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_stream_u_dc_n4452, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_stream_u_dc_SLICE_77I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_stream_u_dc_rptr_gray_7, 
                B1=>u_stream_u_dc_wptr_gray_rd2_7, 
                C1=>u_stream_u_dc_rptr_gray_6, 
                D1=>u_stream_u_dc_wptr_gray_rd2_6, DI1=>'X', DI0=>'X', 
                A0=>u_stream_u_dc_rptr_gray_9, 
                B0=>u_stream_u_dc_wptr_gray_rd2_9, 
                C0=>u_stream_u_dc_rptr_gray_8, 
                D0=>u_stream_u_dc_wptr_gray_rd2_8, FCI=>u_stream_u_dc_n4450, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_stream_u_dc_n4451, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_stream_u_dc_SLICE_78I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"00FF", 
                   INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_stream_u_dc_rptr_gray_11, 
                B1=>u_stream_u_dc_wptr_gray_rd2_11, 
                C1=>u_stream_u_dc_rptr_gray_10, 
                D1=>u_stream_u_dc_wptr_gray_rd2_10, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>u_stream_u_dc_n4450, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    u_stream_u_dc_SLICE_79I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>u_stream_u_dc_n4449, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>open, Q1=>open, 
                F0=>u_stream_u_dc_wr_full_N_1156, Q0=>open);
    u_stream_u_dc_SLICE_80I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_stream_u_dc_rptr_gray_wr2_1, 
                B1=>u_stream_u_dc_wptr_gray_1, 
                C1=>u_stream_u_dc_rptr_gray_wr2_0, 
                D1=>u_stream_u_dc_wptr_gray_0, DI1=>'X', DI0=>'X', 
                A0=>u_stream_u_dc_rptr_gray_wr2_3, 
                B0=>u_stream_u_dc_wptr_gray_3, 
                C0=>u_stream_u_dc_rptr_gray_wr2_2, 
                D0=>u_stream_u_dc_wptr_gray_2, FCI=>u_stream_u_dc_n4448, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_stream_u_dc_n4449, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_stream_u_dc_SLICE_81I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_stream_u_dc_rptr_gray_wr2_5, 
                B1=>u_stream_u_dc_wptr_gray_5, 
                C1=>u_stream_u_dc_rptr_gray_wr2_4, 
                D1=>u_stream_u_dc_wptr_gray_4, DI1=>'X', DI0=>'X', 
                A0=>u_stream_u_dc_rptr_gray_wr2_7, 
                B0=>u_stream_u_dc_wptr_gray_7, 
                C0=>u_stream_u_dc_rptr_gray_wr2_6, 
                D0=>u_stream_u_dc_wptr_gray_6, FCI=>u_stream_u_dc_n4447, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_stream_u_dc_n4448, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_82I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_y_10, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_y_9, B0=>'X', C0=>'X', D0=>'1', FCI=>n4529, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4530, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_83I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>pix_y_8, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>pix_y_7, B0=>'X', C0=>'X', D0=>'1', FCI=>n4528, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n4529, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    u_sdram_SLICE_84I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_row_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n58, DI0=>u_sdram_n59, A0=>u_sdram_row_11, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n4555, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_24, CLK=>SD_CLK_c, 
                LSR=>u_sdram_n3161, FCO=>open, F1=>u_sdram_n58, 
                Q1=>u_sdram_row_12, F0=>u_sdram_n59, Q0=>u_sdram_row_11);
    u_sdram_SLICE_85I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_row_10, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n60_adj_1317, DI0=>u_sdram_n61, A0=>u_sdram_row_9, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n4554, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_24, CLK=>SD_CLK_c, 
                LSR=>u_sdram_n3161, FCO=>u_sdram_n4555, 
                F1=>u_sdram_n60_adj_1317, Q1=>u_sdram_row_10, F0=>u_sdram_n61, 
                Q0=>u_sdram_row_9);
    u_sdram_SLICE_86I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_row_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n62, DI0=>u_sdram_n63_adj_1308, A0=>u_sdram_row_7, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n4553, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_24, CLK=>SD_CLK_c, 
                LSR=>u_sdram_n3161, FCO=>u_sdram_n4554, F1=>u_sdram_n62, 
                Q1=>u_sdram_row_8, F0=>u_sdram_n63_adj_1308, Q0=>u_sdram_row_7);
    u_sdram_SLICE_87I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_row_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n64, DI0=>u_sdram_n65, A0=>u_sdram_row_5, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>u_sdram_n4552, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_24, CLK=>SD_CLK_c, 
                LSR=>u_sdram_n3161, FCO=>u_sdram_n4553, F1=>u_sdram_n64, 
                Q1=>u_sdram_row_6, F0=>u_sdram_n65, Q0=>u_sdram_row_5);
    u_sdram_SLICE_88I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_row_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n66_adj_1310, DI0=>u_sdram_n67, A0=>u_sdram_row_3, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n4551, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_24, CLK=>SD_CLK_c, 
                LSR=>u_sdram_n3161, FCO=>u_sdram_n4552, 
                F1=>u_sdram_n66_adj_1310, Q1=>u_sdram_row_4, F0=>u_sdram_n67, 
                Q0=>u_sdram_row_3);
    u_sdram_SLICE_89I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_row_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n68, DI0=>u_sdram_n69_adj_1316, A0=>u_sdram_row_1, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n4550, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_24, CLK=>SD_CLK_c, 
                LSR=>u_sdram_n3161, FCO=>u_sdram_n4551, F1=>u_sdram_n68, 
                Q1=>u_sdram_row_2, F0=>u_sdram_n69_adj_1316, Q0=>u_sdram_row_1);
    u_sdram_SLICE_90I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_row_0, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n70, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>'X', M0=>'X', CE=>u_sdram_SD_CLK_c_enable_24, 
                CLK=>SD_CLK_c, LSR=>u_sdram_n3161, FCO=>u_sdram_n4550, 
                F1=>u_sdram_n70, Q1=>u_sdram_row_0, F0=>open, Q0=>open);
    u_sdram_SLICE_91I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_col_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n42, DI0=>u_sdram_n43, A0=>u_sdram_col_7, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>u_sdram_n4548, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_29, CLK=>SD_CLK_c, 
                LSR=>u_sdram_SD_CLK_c_enable_24, FCO=>open, F1=>u_sdram_n42, 
                Q1=>u_sdram_col_8, F0=>u_sdram_n43, Q0=>u_sdram_col_7);
    u_sdram_SLICE_92I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_col_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n44, DI0=>u_sdram_n45_adj_1332, A0=>u_sdram_col_5, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n4547, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_29, CLK=>SD_CLK_c, 
                LSR=>u_sdram_SD_CLK_c_enable_24, FCO=>u_sdram_n4548, 
                F1=>u_sdram_n44, Q1=>u_sdram_col_6, F0=>u_sdram_n45_adj_1332, 
                Q0=>u_sdram_col_5);
    u_sdram_SLICE_93I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_col_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n46, DI0=>u_sdram_n47, A0=>u_sdram_col_3, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>u_sdram_n4546, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_29, CLK=>SD_CLK_c, 
                LSR=>u_sdram_SD_CLK_c_enable_24, FCO=>u_sdram_n4547, 
                F1=>u_sdram_n46, Q1=>u_sdram_col_4, F0=>u_sdram_n47, 
                Q0=>u_sdram_col_3);
    u_sdram_SLICE_94I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_col_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n48_adj_1315, DI0=>u_sdram_n49, A0=>u_sdram_col_1, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n4545, M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_29, CLK=>SD_CLK_c, 
                LSR=>u_sdram_SD_CLK_c_enable_24, FCO=>u_sdram_n4546, 
                F1=>u_sdram_n48_adj_1315, Q1=>u_sdram_col_2, F0=>u_sdram_n49, 
                Q0=>u_sdram_col_1);
    u_sdram_SLICE_95I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_col_0, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n50, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>'X', M0=>'X', CE=>u_sdram_SD_CLK_c_enable_29, 
                CLK=>SD_CLK_c, LSR=>u_sdram_SD_CLK_c_enable_24, 
                FCO=>u_sdram_n4545, F1=>u_sdram_n50, Q1=>u_sdram_col_0, 
                F0=>open, Q0=>open);
    u_sdram_u_fifo_SLICE_96I: SCCU2C
      generic map (CCU2_INJECT1_1=>"NO", INIT0_INITVAL=>X"9009", 
                   INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sdram_u_fifo_rptr_gray_wr2_1, 
                B0=>u_sdram_u_fifo_wptr_gray_1, 
                C0=>u_sdram_u_fifo_rptr_gray_wr2_0, 
                D0=>u_sdram_u_fifo_wptr_gray_0, FCI=>u_sdram_u_fifo_n4443, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>wr_full_N_892, Q1=>open, F0=>open, Q0=>open);
    u_sdram_u_fifo_SLICE_97I: SCCU2C
      generic map (CCU2_INJECT1_1=>"NO", INIT0_INITVAL=>X"9009", 
                   INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sdram_u_fifo_n1824, B0=>u_sdram_u_fifo_n1823, 
                C0=>u_sdram_u_fifo_n1717, D0=>u_sdram_u_fifo_n1821, 
                FCI=>u_sdram_u_fifo_n4457, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>open, F1=>u_sdram_u_fifo_n1839, Q1=>open, 
                F0=>open, Q0=>open);
    u_sdram_u_fifo_SLICE_98I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_sdram_u_fifo_n1828, B1=>u_sdram_u_fifo_n1827, 
                C1=>u_sdram_u_fifo_n1826, D1=>u_sdram_u_fifo_n1825, DI1=>'X', 
                DI0=>'X', A0=>u_sdram_u_fifo_n1832, B0=>u_sdram_u_fifo_n1831, 
                C0=>u_sdram_u_fifo_n1830, D0=>u_sdram_u_fifo_n1829, 
                FCI=>u_sdram_u_fifo_n4456, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>u_sdram_u_fifo_n4457, F1=>open, Q1=>open, 
                F0=>open, Q0=>open);
    u_sdram_u_fifo_SLICE_99I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"0099", 
                   INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_sdram_u_fifo_n1836, B1=>u_sdram_u_fifo_n1835, 
                C1=>u_sdram_u_fifo_n1834, D1=>u_sdram_u_fifo_n1833, DI1=>'X', 
                DI0=>'X', A0=>u_sdram_u_fifo_n1838, B0=>u_sdram_u_fifo_n1837, 
                C0=>'X', D0=>'1', FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>u_sdram_u_fifo_n4456, F1=>open, Q1=>open, 
                F0=>open, Q0=>open);
    u_sdram_u_fifo_SLICE_100I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>u_sdram_u_fifo_n4446, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>open, F1=>open, Q1=>open, F0=>u_sdram_rd_empty, 
                Q0=>open);
    u_sdram_u_fifo_SLICE_101I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_sdram_u_fifo_rptr_gray_wr2_3, 
                B1=>u_sdram_u_fifo_wptr_gray_3, 
                C1=>u_sdram_u_fifo_rptr_gray_wr2_2, 
                D1=>u_sdram_u_fifo_wptr_gray_2, DI1=>'X', DI0=>'X', 
                A0=>u_sdram_u_fifo_rptr_gray_wr2_5, 
                B0=>u_sdram_u_fifo_wptr_gray_5, 
                C0=>u_sdram_u_fifo_rptr_gray_wr2_4, 
                D0=>u_sdram_u_fifo_wptr_gray_4, FCI=>u_sdram_u_fifo_n4442, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>u_sdram_u_fifo_n4443, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    u_sdram_u_fifo_SLICE_102I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_sdram_u_fifo_rptr_gray_1, 
                B1=>u_sdram_u_fifo_wptr_gray_rd2_1, 
                C1=>u_sdram_u_fifo_rptr_gray_0, 
                D1=>u_sdram_u_fifo_wptr_gray_rd2_0, DI1=>'X', DI0=>'X', 
                A0=>u_sdram_u_fifo_rptr_gray_3, 
                B0=>u_sdram_u_fifo_wptr_gray_rd2_3, 
                C0=>u_sdram_u_fifo_rptr_gray_2, 
                D0=>u_sdram_u_fifo_wptr_gray_rd2_2, FCI=>u_sdram_u_fifo_n4445, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>u_sdram_u_fifo_n4446, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    u_sdram_u_fifo_SLICE_103I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_sdram_u_fifo_rptr_gray_5, 
                B1=>u_sdram_u_fifo_wptr_gray_rd2_5, 
                C1=>u_sdram_u_fifo_rptr_gray_4, 
                D1=>u_sdram_u_fifo_wptr_gray_rd2_4, DI1=>'X', DI0=>'X', 
                A0=>u_sdram_u_fifo_rptr_gray_7, 
                B0=>u_sdram_u_fifo_wptr_gray_rd2_7, 
                C0=>u_sdram_u_fifo_rptr_gray_6, 
                D0=>u_sdram_u_fifo_wptr_gray_rd2_6, FCI=>u_sdram_u_fifo_n4444, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>u_sdram_u_fifo_n4445, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    u_sdram_u_fifo_SLICE_104I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"00FF", 
                   INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_sdram_u_fifo_rptr_gray_wr2_7, 
                B1=>u_sdram_u_fifo_wptr_gray_7, 
                C1=>u_sdram_u_fifo_rptr_gray_wr2_6, 
                D1=>u_sdram_u_fifo_wptr_gray_6, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'1', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>u_sdram_u_fifo_n4442, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    u_sdram_u_fifo_SLICE_105I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"00FF", 
                   INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_sdram_u_fifo_rptr_gray_9, 
                B1=>u_sdram_u_fifo_wptr_gray_rd2_9, 
                C1=>u_sdram_u_fifo_rptr_gray_8, 
                D1=>u_sdram_u_fifo_wptr_gray_rd2_8, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>u_sdram_u_fifo_n4444, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    u_spi_SLICE_106I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_spi_shift_out_7, CE=>'X', CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>DOUT_c);
    u_sdram_SLICE_107I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"4040", 
                   LUT1_INITVAL=>X"4000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6747, 
                B1=>u_sdram_n5975, C1=>u_sdram_n5877, D1=>u_sdram_n6735, 
                DI1=>'X', DI0=>u_sdram_n4753, A0=>u_sdram_rd_empty, 
                B0=>u_sdram_row_0, C0=>u_sdram_ref_due_N_811, D0=>'X', 
                M0=>u_sdram_n635, CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n3139, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n4753, F0=>open, 
                Q0=>SD_A_c_0);
    u_sdram_SLICE_108I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"4040", 
                   LUT1_INITVAL=>X"4000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6747, 
                B1=>u_sdram_n5915, C1=>u_sdram_n5877, D1=>u_sdram_n6735, 
                DI1=>'X', DI0=>u_sdram_n4751, A0=>u_sdram_rd_empty, 
                B0=>u_sdram_row_1, C0=>u_sdram_ref_due_N_811, D0=>'X', 
                M0=>u_sdram_n635, CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n3139, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n4751, F0=>open, 
                Q0=>SD_A_c_1);
    u_sdram_SLICE_109I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"4040", 
                   LUT1_INITVAL=>X"4000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6747, 
                B1=>u_sdram_n5835, C1=>u_sdram_n5877, D1=>u_sdram_n6735, 
                DI1=>'X', DI0=>u_sdram_n1341, A0=>u_sdram_rd_empty, 
                B0=>u_sdram_row_2, C0=>u_sdram_ref_due_N_811, D0=>'X', 
                M0=>u_sdram_n635, CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n3139, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n1341, F0=>open, 
                Q0=>SD_A_c_2);
    u_sdram_SLICE_110I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"4040", 
                   LUT1_INITVAL=>X"4000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6747, 
                B1=>u_sdram_n5875, C1=>u_sdram_n5877, D1=>u_sdram_n6735, 
                DI1=>'X', DI0=>u_sdram_n1340, A0=>u_sdram_rd_empty, 
                B0=>u_sdram_row_3, C0=>u_sdram_ref_due_N_811, D0=>'X', 
                M0=>u_sdram_n635, CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n3139, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n1340, F0=>open, 
                Q0=>SD_A_c_3);
    u_sdram_SLICE_111I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"4040", 
                   LUT1_INITVAL=>X"4000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6747, 
                B1=>u_sdram_n5855, C1=>u_sdram_n5877, D1=>u_sdram_n6735, 
                DI1=>'X', DI0=>u_sdram_n4749, A0=>u_sdram_rd_empty, 
                B0=>u_sdram_row_4, C0=>u_sdram_ref_due_N_811, D0=>'X', 
                M0=>u_sdram_n635, CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n3139, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n4749, F0=>open, 
                Q0=>SD_A_c_4);
    u_sdram_SLICE_112I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"4040", 
                   LUT1_INITVAL=>X"4000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6747, 
                B1=>u_sdram_n5955, C1=>u_sdram_n5877, D1=>u_sdram_n6735, 
                DI1=>'X', DI0=>u_sdram_n1338, A0=>u_sdram_rd_empty, 
                B0=>u_sdram_row_5, C0=>u_sdram_ref_due_N_811, D0=>'X', 
                M0=>u_sdram_n635, CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n3139, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n1338, F0=>open, 
                Q0=>SD_A_c_5);
    u_sdram_SLICE_113I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"4040", 
                   LUT1_INITVAL=>X"4000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6747, 
                B1=>u_sdram_n5935, C1=>u_sdram_n5877, D1=>u_sdram_n6735, 
                DI1=>'X', DI0=>u_sdram_n4755, A0=>u_sdram_rd_empty, 
                B0=>u_sdram_row_6, C0=>u_sdram_ref_due_N_811, D0=>'X', 
                M0=>u_sdram_n635, CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n3139, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n4755, F0=>open, 
                Q0=>SD_A_c_6);
    u_sdram_SLICE_114I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"4040", 
                   LUT1_INITVAL=>X"4000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6747, 
                B1=>u_sdram_n5995, C1=>u_sdram_n5877, D1=>u_sdram_n6735, 
                DI1=>'X', DI0=>u_sdram_n1336, A0=>u_sdram_rd_empty, 
                B0=>u_sdram_row_7, C0=>u_sdram_ref_due_N_811, D0=>'X', 
                M0=>u_sdram_n635, CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n3139, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n1336, F0=>open, 
                Q0=>SD_A_c_7);
    u_sdram_SLICE_115I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"4040", 
                   LUT1_INITVAL=>X"4000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6747, 
                B1=>u_sdram_n5895, C1=>u_sdram_n5877, D1=>u_sdram_n6735, 
                DI1=>'X', DI0=>u_sdram_n1335, A0=>u_sdram_rd_empty, 
                B0=>u_sdram_row_8, C0=>u_sdram_ref_due_N_811, D0=>'X', 
                M0=>u_sdram_n635, CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n3139, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n1335, F0=>open, 
                Q0=>SD_A_c_8);
    u_sdram_SLICE_116I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"1000", LUT1_INITVAL=>X"8000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_ref_due_N_811, 
                B1=>u_sdram_rd_empty, C1=>u_sdram_n636, D1=>timer_11, DI1=>'X', 
                DI0=>u_sdram_n2895, A0=>u_sdram_n635, B0=>u_sdram_rd_empty, 
                C0=>u_sdram_n636, D0=>u_sdram_ref_due_N_811, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_sdram_row_9, OFX1=>open, 
                F1=>u_sdram_n5091, Q1=>open, OFX0=>open, F0=>u_sdram_n2895, 
                Q0=>SD_A_c_9);
    u_sdram_SLICE_117I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0001", 
                   LUT1_INITVAL=>X"0040", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n635, 
                B1=>u_sdram_ref_due_N_811, C1=>u_sdram_row_10, 
                D1=>u_sdram_rd_empty, DI1=>'X', DI0=>u_sdram_SD_A_12_N_482_10, 
                A0=>u_sdram_n28, B0=>u_sdram_n6043, C0=>u_sdram_n6758, 
                D0=>u_sdram_n6747, M0=>u_sdram_n6757, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sdram_SD_A_12_N_482_10, F0=>open, Q0=>SD_A_c_10);
    u_sdram_SLICE_118I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sdram_n2895, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_row_11, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>SD_A_c_11);
    u_sdram_SLICE_119I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sdram_n2895, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_row_12, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>SD_A_c_12);
    u_sdram_SLICE_120I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_bank_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_sdram_bank_0, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>SD_BA_c_1, OFX0=>open, 
                F0=>open, Q0=>SD_BA_c_0);
    u_sdram_SLICE_121I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"EEEE", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>ref_cnt_11, B1=>ref_cnt_5, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>u_sdram_SD_CAS_N_N_809, 
                A0=>u_sdram_SD_DQM_1_N_499_0, B0=>u_sdram_ref_due_N_811, 
                C0=>u_sdram_n636, D0=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_n5589, Q1=>open, OFX0=>open, 
                F0=>u_sdram_SD_CAS_N_N_809, Q0=>SD_CAS_N_c);
    u_sdram_SLICE_122I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFFD", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_SD_DQM_1_N_499_0, 
                A0=>u_sdram_n635, B0=>u_sdram_n28, C0=>u_sdram_n6732, 
                D0=>u_sdram_n6137, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_SD_DQM_1_N_499_0, Q0=>SD_DQM_c_0);
    u_sdram_SLICE_123I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"CA0A", 
                   LUT1_INITVAL=>X"8000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_ref_due_N_811, 
                B1=>u_sdram_rd_empty, C1=>u_sdram_n636, D1=>timer_10, DI1=>'X', 
                DI0=>u_sdram_n767, A0=>u_sdram_SD_DQM_1_N_802_1, 
                B0=>u_sdram_rd_empty, C0=>u_sdram_n636, 
                D0=>u_sdram_ref_due_N_811, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n87, OFX1=>open, F1=>u_sdram_n5093, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n767, Q0=>SD_RAS_N_c);
    u_sdram_SLICE_124I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"5555", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_n3138, A0=>u_sdram_n1058, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_SD_DQM_1_N_802_1, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n3138, Q0=>SD_WE_N_c);
    u_cam_SLICE_125I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"6666", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_cam_byte_sel_N_202, A0=>byte_sel, 
                B0=>HREF_c, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>PCLK_c, 
                LSR=>VSYNC_c, OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_byte_sel_N_202, Q0=>byte_sel);
    u_sdram_u_fifo_SLICE_126I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_u_fifo_n1840, 
                B1=>u_sdram_u_fifo_n1839, C1=>u_sdram_u_fifo_n1845, 
                D1=>u_sdram_u_fifo_n1844, 
                DI1=>u_sdram_u_fifo_rd_data_15_N_903_1, 
                DI0=>u_sdram_u_fifo_rd_data_15_N_903_0, 
                A0=>u_sdram_u_fifo_n1840, B0=>u_sdram_u_fifo_n1839, 
                C0=>u_sdram_u_fifo_n1843, D0=>u_sdram_u_fifo_n1842, M0=>'X', 
                CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sdram_u_fifo_rd_data_15_N_903_1, Q1=>fifo_dout_1, 
                OFX0=>open, F0=>u_sdram_u_fifo_rd_data_15_N_903_0, 
                Q0=>fifo_dout_0);
    u_sdram_u_fifo_SLICE_127I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_u_fifo_n1840, 
                B1=>u_sdram_u_fifo_n1839, C1=>u_sdram_u_fifo_n1849, 
                D1=>u_sdram_u_fifo_n1848, 
                DI1=>u_sdram_u_fifo_rd_data_15_N_903_3, 
                DI0=>u_sdram_u_fifo_rd_data_15_N_903_2, 
                A0=>u_sdram_u_fifo_n1840, B0=>u_sdram_u_fifo_n1839, 
                C0=>u_sdram_u_fifo_n1847, D0=>u_sdram_u_fifo_n1846, M0=>'X', 
                CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sdram_u_fifo_rd_data_15_N_903_3, Q1=>fifo_dout_3, 
                OFX0=>open, F0=>u_sdram_u_fifo_rd_data_15_N_903_2, 
                Q0=>fifo_dout_2);
    u_sdram_u_fifo_SLICE_128I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_u_fifo_n1840, 
                B1=>u_sdram_u_fifo_n1839, C1=>u_sdram_u_fifo_n1853, 
                D1=>u_sdram_u_fifo_n1852, 
                DI1=>u_sdram_u_fifo_rd_data_15_N_903_5, 
                DI0=>u_sdram_u_fifo_rd_data_15_N_903_4, 
                A0=>u_sdram_u_fifo_n1840, B0=>u_sdram_u_fifo_n1839, 
                C0=>u_sdram_u_fifo_n1851, D0=>u_sdram_u_fifo_n1850, M0=>'X', 
                CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sdram_u_fifo_rd_data_15_N_903_5, Q1=>fifo_dout_5, 
                OFX0=>open, F0=>u_sdram_u_fifo_rd_data_15_N_903_4, 
                Q0=>fifo_dout_4);
    u_sdram_u_fifo_SLICE_129I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_u_fifo_n1840, 
                B1=>u_sdram_u_fifo_n1839, C1=>u_sdram_u_fifo_n1857, 
                D1=>u_sdram_u_fifo_n1856, 
                DI1=>u_sdram_u_fifo_rd_data_15_N_903_7, 
                DI0=>u_sdram_u_fifo_rd_data_15_N_903_6, 
                A0=>u_sdram_u_fifo_n1840, B0=>u_sdram_u_fifo_n1839, 
                C0=>u_sdram_u_fifo_n1855, D0=>u_sdram_u_fifo_n1854, M0=>'X', 
                CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sdram_u_fifo_rd_data_15_N_903_7, Q1=>fifo_dout_7, 
                OFX0=>open, F0=>u_sdram_u_fifo_rd_data_15_N_903_6, 
                Q0=>fifo_dout_6);
    u_sdram_u_fifo_SLICE_130I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_u_fifo_n1840, 
                B1=>u_sdram_u_fifo_n1839, C1=>u_sdram_u_fifo_n1861, 
                D1=>u_sdram_u_fifo_n1860, 
                DI1=>u_sdram_u_fifo_rd_data_15_N_903_9, 
                DI0=>u_sdram_u_fifo_rd_data_15_N_903_8, 
                A0=>u_sdram_u_fifo_n1840, B0=>u_sdram_u_fifo_n1839, 
                C0=>u_sdram_u_fifo_n1859, D0=>u_sdram_u_fifo_n1858, M0=>'X', 
                CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sdram_u_fifo_rd_data_15_N_903_9, Q1=>fifo_dout_9, 
                OFX0=>open, F0=>u_sdram_u_fifo_rd_data_15_N_903_8, 
                Q0=>fifo_dout_8);
    u_sdram_u_fifo_SLICE_131I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_u_fifo_n1840, 
                B1=>u_sdram_u_fifo_n1839, C1=>u_sdram_u_fifo_n1865, 
                D1=>u_sdram_u_fifo_n1864, 
                DI1=>u_sdram_u_fifo_rd_data_15_N_903_11, 
                DI0=>u_sdram_u_fifo_rd_data_15_N_903_10, 
                A0=>u_sdram_u_fifo_n1840, B0=>u_sdram_u_fifo_n1839, 
                C0=>u_sdram_u_fifo_n1863, D0=>u_sdram_u_fifo_n1862, M0=>'X', 
                CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sdram_u_fifo_rd_data_15_N_903_11, Q1=>fifo_dout_11, 
                OFX0=>open, F0=>u_sdram_u_fifo_rd_data_15_N_903_10, 
                Q0=>fifo_dout_10);
    u_sdram_u_fifo_SLICE_132I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_u_fifo_n1840, 
                B1=>u_sdram_u_fifo_n1839, C1=>u_sdram_u_fifo_n1869, 
                D1=>u_sdram_u_fifo_n1868, 
                DI1=>u_sdram_u_fifo_rd_data_15_N_903_13, 
                DI0=>u_sdram_u_fifo_rd_data_15_N_903_12, 
                A0=>u_sdram_u_fifo_n1840, B0=>u_sdram_u_fifo_n1839, 
                C0=>u_sdram_u_fifo_n1867, D0=>u_sdram_u_fifo_n1866, M0=>'X', 
                CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sdram_u_fifo_rd_data_15_N_903_13, Q1=>fifo_dout_13, 
                OFX0=>open, F0=>u_sdram_u_fifo_rd_data_15_N_903_12, 
                Q0=>fifo_dout_12);
    u_sdram_u_fifo_SLICE_133I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_u_fifo_n1840, 
                B1=>u_sdram_u_fifo_n1839, C1=>u_sdram_u_fifo_n1873, 
                D1=>u_sdram_u_fifo_n1872, 
                DI1=>u_sdram_u_fifo_rd_data_15_N_903_15, 
                DI0=>u_sdram_u_fifo_rd_data_15_N_903_14, 
                A0=>u_sdram_u_fifo_n1840, B0=>u_sdram_u_fifo_n1839, 
                C0=>u_sdram_u_fifo_n1871, D0=>u_sdram_u_fifo_n1870, M0=>'X', 
                CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sdram_u_fifo_rd_data_15_N_903_15, Q1=>fifo_dout_15, 
                OFX0=>open, F0=>u_sdram_u_fifo_rd_data_15_N_903_14, 
                Q0=>fifo_dout_14);
    u_cam_SLICE_134I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>VSYNC_c, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>frame_start);
    u_cam_SLICE_135I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>Y3_c_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y2_c_0, CE=>u_cam_PCLK_c_enable_51, CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>pix_rgb565_1, OFX0=>open, 
                F0=>open, Q0=>pix_rgb565_0);
    u_cam_SLICE_136I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>Y5_c_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y4_c_2, CE=>u_cam_PCLK_c_enable_51, CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>pix_rgb565_3, OFX0=>open, 
                F0=>open, Q0=>pix_rgb565_2);
    u_cam_SLICE_137I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>Y7_c_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y6_c_4, CE=>u_cam_PCLK_c_enable_51, CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>pix_rgb565_5, OFX0=>open, 
                F0=>open, Q0=>pix_rgb565_4);
    u_cam_SLICE_138I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>Y9_c_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y8_c_6, CE=>u_cam_PCLK_c_enable_51, CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>pix_rgb565_7, OFX0=>open, 
                F0=>open, Q0=>pix_rgb565_6);
    u_cam_SLICE_139I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_cam_byte0_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_cam_byte0_0, 
                CE=>u_cam_PCLK_c_enable_51, CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>pix_rgb565_9, OFX0=>open, F0=>open, 
                Q0=>pix_rgb565_8);
    u_cam_SLICE_140I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_cam_byte0_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_cam_byte0_2, 
                CE=>u_cam_PCLK_c_enable_51, CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>pix_rgb565_11, OFX0=>open, F0=>open, 
                Q0=>pix_rgb565_10);
    u_cam_SLICE_141I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_cam_byte0_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_cam_byte0_4, 
                CE=>u_cam_PCLK_c_enable_51, CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>pix_rgb565_13, OFX0=>open, F0=>open, 
                Q0=>pix_rgb565_12);
    u_cam_SLICE_142I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_cam_byte0_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_cam_byte0_6, 
                CE=>u_cam_PCLK_c_enable_51, CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>pix_rgb565_15, OFX0=>open, F0=>open, 
                Q0=>pix_rgb565_14);
    u_cam_SLICE_143I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"2222", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_cam_n6754, A0=>HREF_c, B0=>VSYNC_c, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>PCLK_c, LSR=>byte_sel, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_n6754, 
                Q0=>pix_valid_rgb);
    u_cam_SLICE_144I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"8080", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>HREF_c, B1=>byte_sel, 
                C1=>n58_adj_1354, D1=>'X', DI1=>u_cam_n893, DI0=>u_cam_n892, 
                A0=>HREF_c, B0=>byte_sel, C0=>n61_adj_1353, D0=>'X', M0=>'X', 
                CE=>PCLK_c_enable_39, CLK=>PCLK_c, LSR=>VSYNC_c, OFX1=>open, 
                F1=>u_cam_n893, Q1=>pix_x_1, OFX0=>open, F0=>u_cam_n892, 
                Q0=>pix_x_0);
    u_cam_SLICE_145I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"8080", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>HREF_c, B1=>byte_sel, 
                C1=>n52_adj_1356, D1=>'X', DI1=>u_cam_n895, DI0=>u_cam_n894, 
                A0=>HREF_c, B0=>byte_sel, C0=>n55_adj_1355, D0=>'X', M0=>'X', 
                CE=>PCLK_c_enable_39, CLK=>PCLK_c, LSR=>VSYNC_c, OFX1=>open, 
                F1=>u_cam_n895, Q1=>pix_x_3, OFX0=>open, F0=>u_cam_n894, 
                Q0=>pix_x_2);
    u_cam_SLICE_146I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"8080", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>HREF_c, B1=>byte_sel, C1=>n46, 
                D1=>'X', DI1=>u_cam_n897, DI0=>u_cam_n896, A0=>HREF_c, 
                B0=>byte_sel, C0=>n49, D0=>'X', M0=>'X', CE=>PCLK_c_enable_39, 
                CLK=>PCLK_c, LSR=>VSYNC_c, OFX1=>open, F1=>u_cam_n897, 
                Q1=>pix_x_5, OFX0=>open, F0=>u_cam_n896, Q0=>pix_x_4);
    u_cam_SLICE_147I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"8080", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>HREF_c, B1=>byte_sel, C1=>n40, 
                D1=>'X', DI1=>u_cam_n899, DI0=>u_cam_n898, A0=>HREF_c, 
                B0=>byte_sel, C0=>n43, D0=>'X', M0=>'X', CE=>PCLK_c_enable_39, 
                CLK=>PCLK_c, LSR=>VSYNC_c, OFX1=>open, F1=>u_cam_n899, 
                Q1=>pix_x_7, OFX0=>open, F0=>u_cam_n898, Q0=>pix_x_6);
    u_cam_SLICE_148I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"8080", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>HREF_c, B1=>byte_sel, 
                C1=>n34_adj_1357, D1=>'X', DI1=>u_cam_n901, DI0=>u_cam_n900, 
                A0=>HREF_c, B0=>byte_sel, C0=>n37_adj_1352, D0=>'X', M0=>'X', 
                CE=>PCLK_c_enable_39, CLK=>PCLK_c, LSR=>VSYNC_c, OFX1=>open, 
                F1=>u_cam_n901, Q1=>pix_x_9, OFX0=>open, F0=>u_cam_n900, 
                Q0=>pix_x_8);
    u_cam_SLICE_149I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"8080", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>HREF_c, B1=>byte_sel, 
                C1=>n28_adj_1359, D1=>'X', DI1=>u_cam_n903, DI0=>u_cam_n902, 
                A0=>HREF_c, B0=>byte_sel, C0=>n31_adj_1358, D0=>'X', M0=>'X', 
                CE=>PCLK_c_enable_39, CLK=>PCLK_c, LSR=>VSYNC_c, OFX1=>open, 
                F1=>u_cam_n903, Q1=>pix_x_11, OFX0=>open, F0=>u_cam_n902, 
                Q0=>pix_x_10);
    SLICE_152I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"EAEA", LUT1_INITVAL=>X"1000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_shift_in_6, 
                B1=>u_spi_shift_in_0, C1=>u_spi_stream_arm_N_1307, 
                D1=>u_spi_shift_in_1, DI1=>'X', DI0=>n6380, A0=>stream_arm_spi, 
                B0=>n6203, C0=>n6201, D0=>'X', M0=>'X', 
                CE=>u_spi_CCLK_c_enable_5, CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>n6201, Q1=>open, OFX0=>open, F0=>n6380, Q0=>stream_arm_spi);
    u_stream_u_dc_SLICE_153I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_u_dc_n1782, 
                B1=>u_stream_u_dc_n1781, C1=>u_stream_u_dc_n1787, 
                D1=>u_stream_u_dc_n1786, DI1=>u_stream_u_dc_rd_data_7_N_1169_1, 
                DI0=>u_stream_u_dc_rd_data_7_N_1169_0, A0=>u_stream_u_dc_n1782, 
                B0=>u_stream_u_dc_n1781, C0=>u_stream_u_dc_n1785, 
                D0=>u_stream_u_dc_n1784, M0=>'X', CE=>rd_data_7_N_1177, 
                CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_rd_data_7_N_1169_1, 
                Q1=>stream_fifo_rd_data_1, OFX0=>open, 
                F0=>u_stream_u_dc_rd_data_7_N_1169_0, 
                Q0=>stream_fifo_rd_data_0);
    u_stream_u_dc_SLICE_154I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_u_dc_n1782, 
                B1=>u_stream_u_dc_n1781, C1=>u_stream_u_dc_n1791, 
                D1=>u_stream_u_dc_n1790, DI1=>u_stream_u_dc_rd_data_7_N_1169_3, 
                DI0=>u_stream_u_dc_rd_data_7_N_1169_2, A0=>u_stream_u_dc_n1782, 
                B0=>u_stream_u_dc_n1781, C0=>u_stream_u_dc_n1789, 
                D0=>u_stream_u_dc_n1788, M0=>'X', CE=>rd_data_7_N_1177, 
                CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_rd_data_7_N_1169_3, 
                Q1=>stream_fifo_rd_data_3, OFX0=>open, 
                F0=>u_stream_u_dc_rd_data_7_N_1169_2, 
                Q0=>stream_fifo_rd_data_2);
    u_stream_u_dc_SLICE_155I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_u_dc_n1782, 
                B1=>u_stream_u_dc_n1781, C1=>u_stream_u_dc_n1795, 
                D1=>u_stream_u_dc_n1794, DI1=>u_stream_u_dc_rd_data_7_N_1169_5, 
                DI0=>u_stream_u_dc_rd_data_7_N_1169_4, A0=>u_stream_u_dc_n1782, 
                B0=>u_stream_u_dc_n1781, C0=>u_stream_u_dc_n1793, 
                D0=>u_stream_u_dc_n1792, M0=>'X', CE=>rd_data_7_N_1177, 
                CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_rd_data_7_N_1169_5, 
                Q1=>stream_fifo_rd_data_5, OFX0=>open, 
                F0=>u_stream_u_dc_rd_data_7_N_1169_4, 
                Q0=>stream_fifo_rd_data_4);
    u_stream_u_dc_SLICE_156I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_u_dc_n1782, 
                B1=>u_stream_u_dc_n1781, C1=>u_stream_u_dc_n1799, 
                D1=>u_stream_u_dc_n1798, DI1=>u_stream_u_dc_rd_data_7_N_1169_7, 
                DI0=>u_stream_u_dc_rd_data_7_N_1169_6, A0=>u_stream_u_dc_n1782, 
                B0=>u_stream_u_dc_n1781, C0=>u_stream_u_dc_n1797, 
                D0=>u_stream_u_dc_n1796, M0=>'X', CE=>rd_data_7_N_1177, 
                CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_rd_data_7_N_1169_7, 
                Q1=>stream_fifo_rd_data_7, OFX0=>open, 
                F0=>u_stream_u_dc_rd_data_7_N_1169_6, 
                Q0=>stream_fifo_rd_data_6);
    u_sdram_SLICE_157I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECEE", 
                   LUT1_INITVAL=>X"8888", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_rd_empty, B1=>timer_0, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>u_sdram_timer_15_N_529_0, 
                A0=>u_sdram_n636, B0=>u_sdram_n6724, C0=>u_sdram_n3_adj_1331, 
                D0=>u_sdram_ref_due_N_811, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_n3_adj_1331, Q1=>open, 
                OFX0=>open, F0=>u_sdram_timer_15_N_529_0, Q0=>timer_0);
    u_sdram_SLICE_158I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"FDF0", 
                   LUT1_INITVAL=>X"DDDD", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_ref_due_N_811, 
                B1=>timer_1, C1=>'X', D1=>'X', DI1=>'X', DI0=>u_sdram_n4741, 
                A0=>u_sdram_rd_empty, B0=>u_sdram_n5491, C0=>u_sdram_n6725, 
                D0=>u_sdram_n636, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n634, OFX1=>open, F1=>u_sdram_n5491, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n4741, Q0=>timer_1);
    u_sdram_SLICE_159I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECEE", 
                   LUT1_INITVAL=>X"ECA0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n5779, B1=>timer_3, 
                C1=>u_sdram_n6737, D1=>u_sdram_n16, 
                DI1=>u_sdram_timer_15_N_529_3, DI0=>u_sdram_timer_15_N_529_2, 
                A0=>u_sdram_n636, B0=>u_sdram_n6723, C0=>u_sdram_n3, 
                D0=>u_sdram_ref_due_N_811, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_timer_15_N_529_3, 
                Q1=>timer_3, OFX0=>open, F0=>u_sdram_timer_15_N_529_2, 
                Q0=>timer_2);
    u_sdram_SLICE_160I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EAAA", 
                   LUT1_INITVAL=>X"ECA0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n5787, B1=>timer_5, 
                C1=>u_sdram_n6737, D1=>u_sdram_n16, 
                DI1=>u_sdram_timer_15_N_529_5, DI0=>u_sdram_timer_15_N_529_4, 
                A0=>u_sdram_n5094, B0=>u_sdram_SD_DQM_1_N_802_1, 
                C0=>u_sdram_n6737, D0=>n69, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_timer_15_N_529_5, 
                Q1=>timer_5, OFX0=>open, F0=>u_sdram_timer_15_N_529_4, 
                Q0=>timer_4);
    u_sdram_SLICE_161I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECA0", 
                   LUT1_INITVAL=>X"ECCC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_SD_DQM_1_N_802_1, 
                B1=>u_sdram_n11, C1=>u_sdram_n6737, D1=>n60, 
                DI1=>u_sdram_timer_15_N_529_7, DI0=>u_sdram_timer_15_N_529_6, 
                A0=>u_sdram_n5783, B0=>timer_6, C0=>u_sdram_n6737, 
                D0=>u_sdram_n16, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sdram_timer_15_N_529_7, Q1=>timer_7, 
                OFX0=>open, F0=>u_sdram_timer_15_N_529_6, Q0=>timer_6);
    u_sdram_SLICE_162I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECCC", 
                   LUT1_INITVAL=>X"ECA0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n5801, B1=>timer_9, 
                C1=>u_sdram_SD_DQM_1_N_802_1, D1=>u_sdram_n16, 
                DI1=>u_sdram_timer_15_N_529_9, DI0=>u_sdram_timer_15_N_529_8, 
                A0=>u_sdram_SD_DQM_1_N_802_1, B0=>u_sdram_n11_adj_1309, 
                C0=>u_sdram_n6737, D0=>n57, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_timer_15_N_529_9, 
                Q1=>timer_9, OFX0=>open, F0=>u_sdram_timer_15_N_529_8, 
                Q0=>timer_8);
    u_sdram_SLICE_163I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EAAA", 
                   LUT1_INITVAL=>X"EAAA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n5091, 
                B1=>u_sdram_SD_DQM_1_N_802_1, C1=>u_sdram_n6737, D1=>n48, 
                DI1=>u_sdram_timer_15_N_529_11, DI0=>u_sdram_timer_15_N_529_10, 
                A0=>u_sdram_n5093, B0=>u_sdram_SD_DQM_1_N_802_1, 
                C0=>u_sdram_n6737, D0=>n51, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_timer_15_N_529_11, 
                Q1=>timer_11, OFX0=>open, F0=>u_sdram_timer_15_N_529_10, 
                Q0=>timer_10);
    u_sdram_SLICE_164I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EAAA", 
                   LUT1_INITVAL=>X"ECCC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_ref_due_N_811, 
                B1=>u_sdram_n15, C1=>u_sdram_rd_empty, D1=>u_sdram_n6111, 
                DI1=>u_sdram_timer_15_N_529_13, DI0=>u_sdram_timer_15_N_529_12, 
                A0=>u_sdram_n5090, B0=>u_sdram_SD_DQM_1_N_802_1, 
                C0=>u_sdram_n6737, D0=>n45, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_timer_15_N_529_13, 
                Q1=>timer_13, OFX0=>open, F0=>u_sdram_timer_15_N_529_12, 
                Q0=>timer_12);
    u_sdram_SLICE_165I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECCC", 
                   LUT1_INITVAL=>X"ECCC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_SD_DQM_1_N_802_1, 
                B1=>u_sdram_n11_adj_1313, C1=>u_sdram_n6737, D1=>n36, 
                DI1=>u_sdram_timer_15_N_529_15, DI0=>u_sdram_timer_15_N_529_14, 
                A0=>u_sdram_SD_DQM_1_N_802_1, B0=>u_sdram_n11_adj_1312, 
                C0=>u_sdram_n6737, D0=>n39, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_timer_15_N_529_15, 
                Q1=>timer_15, OFX0=>open, F0=>u_sdram_timer_15_N_529_14, 
                Q0=>timer_14);
    u_cam_SLICE_166I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>Y3_c_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y2_c_0, CE=>u_cam_PCLK_c_enable_12, CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_cam_byte0_1, OFX0=>open, 
                F0=>open, Q0=>u_cam_byte0_0);
    u_cam_SLICE_167I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>Y5_c_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y4_c_2, CE=>u_cam_PCLK_c_enable_12, CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_cam_byte0_3, OFX0=>open, 
                F0=>open, Q0=>u_cam_byte0_2);
    u_cam_SLICE_168I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>Y7_c_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y6_c_4, CE=>u_cam_PCLK_c_enable_12, CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_cam_byte0_5, OFX0=>open, 
                F0=>open, Q0=>u_cam_byte0_4);
    u_cam_SLICE_169I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>Y9_c_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y8_c_6, CE=>u_cam_PCLK_c_enable_12, CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_cam_byte0_7, OFX0=>open, 
                F0=>open, Q0=>u_cam_byte0_6);
    u_sdram_SLICE_170I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"28A0", 
                   LUT1_INITVAL=>X"0101", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_15, B1=>timer_11, 
                C1=>u_sdram_n28, D1=>'X', DI1=>'X', 
                DI0=>u_sdram_bank_1_N_523_0, A0=>u_sdram_n632, 
                B0=>u_sdram_n5653, C0=>u_sdram_bank_0, D0=>u_sdram_n6735, 
                M0=>'X', CE=>u_sdram_SD_CLK_c_enable_1, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_n6735, Q1=>open, OFX0=>open, 
                F0=>u_sdram_bank_1_N_523_0, Q0=>u_sdram_bank_0);
    u_sdram_SLICE_171I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"2828", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_bank_1_N_523_1, 
                A0=>u_sdram_n632, B0=>u_sdram_bank_1, C0=>u_sdram_bank_0, 
                D0=>'X', M0=>'X', CE=>u_sdram_SD_CLK_c_enable_28, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_bank_1_N_523_1, Q0=>u_sdram_bank_1);
    u_sdram_SLICE_172I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"0001", LUT1_INITVAL=>X"FFFE", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_15, B1=>timer_11, 
                C1=>timer_14, D1=>timer_8, DI1=>'X', 
                DI0=>u_sdram_SD_A_12_N_789_6, A0=>u_sdram_n6330, 
                B0=>u_sdram_n6137, C0=>u_sdram_n28, D0=>u_sdram_n6733, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n635, OFX1=>open, 
                F1=>u_sdram_n6137, Q1=>open, OFX0=>open, 
                F0=>u_sdram_SD_A_12_N_789_6, Q0=>u_sdram_dq_oe);
    u_sdram_SLICE_174I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>frame_start, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sdram_fs_meta, CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_sdram_fs_meta, OFX0=>open, 
                F0=>open, Q0=>u_sdram_fs_sync);
    u_sdram_SLICE_177I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D5C0", 
                   LUT1_INITVAL=>X"BAAA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n5322, 
                B1=>u_sdram_n6352, C1=>u_sdram_n6735, D1=>u_sdram_n6017, 
                DI1=>u_sdram_n2750, DI0=>u_sdram_n2748, A0=>u_sdram_rd_empty, 
                B0=>u_sdram_n635, C0=>u_sdram_SD_DQM_1_N_802_1, 
                D0=>u_sdram_n6731, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sdram_n2750, Q1=>u_sdram_n636, OFX0=>open, 
                F0=>u_sdram_n2748, Q0=>u_sdram_n635);
    u_sdram_SLICE_178I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"8888", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_n62_adj_1318, 
                A0=>u_sdram_SD_DQM_1_N_802_1, B0=>u_sdram_n1058, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n634, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n62_adj_1318, Q0=>u_sdram_n1058);
    u_sdram_SLICE_179I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"A0EC", 
                   LUT1_INITVAL=>X"0002", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6187, 
                B1=>u_sdram_n6262, C1=>u_sdram_n6312, D1=>ref_cnt_8, DI1=>'X', 
                DI0=>u_sdram_n2738, A0=>u_sdram_ref_cnt_15_N_577, 
                B0=>u_sdram_n6193, C0=>u_sdram_SD_DQM_1_N_802_1, 
                D0=>u_sdram_n6346, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sdram_n6193, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n2738, Q0=>u_sdram_ref_cnt_15_N_577);
    u_sdram_u_fifo_SLICE_180I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D8CC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_u_fifo_n1809, 
                A0=>u_sdram_rd_empty, B0=>u_sdram_u_fifo_n1717, 
                C0=>rptr_bin_9_N_922_0, D0=>u_sdram_dq_oe, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_u_fifo_n1809, Q0=>u_sdram_u_fifo_n1717);
    u_sdram_u_fifo_SLICE_181I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>wptr_bin_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_0, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_sdram_u_fifo_n1823, OFX0=>open, 
                F0=>open, Q0=>u_sdram_u_fifo_n1821);
    u_sdram_u_fifo_SLICE_182I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D8CC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_u_fifo_n1808, 
                A0=>u_sdram_rd_empty, B0=>u_sdram_u_fifo_n1824, 
                C0=>rptr_bin_9_N_922_1, D0=>u_sdram_dq_oe, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_u_fifo_n1808, Q0=>u_sdram_u_fifo_n1824);
    u_sdram_u_fifo_SLICE_183I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_2, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_n1825);
    u_sdram_u_fifo_SLICE_184I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D8CC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_u_fifo_n1807, 
                A0=>u_sdram_rd_empty, B0=>u_sdram_u_fifo_n1826, 
                C0=>rptr_bin_9_N_922_2, D0=>u_sdram_dq_oe, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_u_fifo_n1807, Q0=>u_sdram_u_fifo_n1826);
    u_sdram_u_fifo_SLICE_185I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_3, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_n1827);
    u_sdram_u_fifo_SLICE_186I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D8CC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_u_fifo_n1806, 
                A0=>u_sdram_rd_empty, B0=>u_sdram_u_fifo_n1828, 
                C0=>rptr_bin_9_N_922_3, D0=>u_sdram_dq_oe, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_u_fifo_n1806, Q0=>u_sdram_u_fifo_n1828);
    u_sdram_u_fifo_SLICE_187I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_4, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_n1829);
    u_sdram_u_fifo_SLICE_188I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D8CC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_u_fifo_n1805, 
                A0=>u_sdram_rd_empty, B0=>u_sdram_u_fifo_n1830, 
                C0=>rptr_bin_9_N_922_4, D0=>u_sdram_dq_oe, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_u_fifo_n1805, Q0=>u_sdram_u_fifo_n1830);
    u_sdram_u_fifo_SLICE_189I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_5, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_n1831);
    u_sdram_u_fifo_SLICE_190I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D8CC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_u_fifo_n1804, 
                A0=>u_sdram_rd_empty, B0=>u_sdram_u_fifo_n1832, 
                C0=>rptr_bin_9_N_922_5, D0=>u_sdram_dq_oe, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_u_fifo_n1804, Q0=>u_sdram_u_fifo_n1832);
    u_sdram_u_fifo_SLICE_191I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_6, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_n1833);
    u_sdram_u_fifo_SLICE_192I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D8CC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_u_fifo_n1803, 
                A0=>u_sdram_rd_empty, B0=>u_sdram_u_fifo_n1834, 
                C0=>rptr_bin_9_N_922_6, D0=>u_sdram_dq_oe, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_u_fifo_n1803, Q0=>u_sdram_u_fifo_n1834);
    u_sdram_u_fifo_SLICE_193I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_7, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_n1835);
    u_sdram_u_fifo_SLICE_194I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D8CC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_u_fifo_n1802, 
                A0=>u_sdram_rd_empty, B0=>u_sdram_u_fifo_n1836, 
                C0=>rptr_bin_9_N_922_7, D0=>u_sdram_dq_oe, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_u_fifo_n1802, Q0=>u_sdram_u_fifo_n1836);
    u_sdram_u_fifo_SLICE_195I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_8, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_n1837);
    SLICE_196I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D8CC", 
                   LUT1_INITVAL=>X"0020", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>pix_valid_rgb, 
                B1=>u_spi_n5323, C1=>u_spi_mode_req_1, D1=>u_spi_mode_req_0, 
                DI1=>wptr_bin_9_N_886, DI0=>u_sdram_u_fifo_n1801, 
                A0=>u_sdram_rd_empty, B0=>u_sdram_u_fifo_n1838, 
                C0=>rptr_bin_9_N_922_8, D0=>u_sdram_dq_oe, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>wptr_bin_9_N_886, 
                Q1=>u_sdram_u_fifo_n1840, OFX0=>open, F0=>u_sdram_u_fifo_n1801, 
                Q0=>u_sdram_u_fifo_n1838);
    u_sdram_u_fifo_SLICE_197I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>pix_rgb565_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>pix_rgb565_0, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_sdram_u_fifo_n1845, 
                OFX0=>open, F0=>open, Q0=>u_sdram_u_fifo_n1843);
    u_sdram_u_fifo_SLICE_198I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>pix_rgb565_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>pix_rgb565_2, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_sdram_u_fifo_n1849, 
                OFX0=>open, F0=>open, Q0=>u_sdram_u_fifo_n1847);
    u_sdram_u_fifo_SLICE_199I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>pix_rgb565_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>pix_rgb565_4, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_sdram_u_fifo_n1853, 
                OFX0=>open, F0=>open, Q0=>u_sdram_u_fifo_n1851);
    u_sdram_u_fifo_SLICE_200I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>pix_rgb565_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>pix_rgb565_6, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_sdram_u_fifo_n1857, 
                OFX0=>open, F0=>open, Q0=>u_sdram_u_fifo_n1855);
    u_sdram_u_fifo_SLICE_201I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>pix_rgb565_9, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>pix_rgb565_8, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_sdram_u_fifo_n1861, 
                OFX0=>open, F0=>open, Q0=>u_sdram_u_fifo_n1859);
    u_sdram_u_fifo_SLICE_202I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>pix_rgb565_11, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>pix_rgb565_10, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_sdram_u_fifo_n1865, 
                OFX0=>open, F0=>open, Q0=>u_sdram_u_fifo_n1863);
    u_sdram_u_fifo_SLICE_203I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>pix_rgb565_13, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>pix_rgb565_12, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_sdram_u_fifo_n1869, 
                OFX0=>open, F0=>open, Q0=>u_sdram_u_fifo_n1867);
    u_sdram_u_fifo_SLICE_204I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>pix_rgb565_15, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>pix_rgb565_14, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_sdram_u_fifo_n1873, 
                OFX0=>open, F0=>open, Q0=>u_sdram_u_fifo_n1871);
    u_sdram_u_fifo_SLICE_205I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rptr_bin_9_N_922_1, 
                B1=>rptr_bin_9_N_922_2, C1=>'X', D1=>'X', 
                DI1=>u_sdram_u_fifo_rptr_gray_9_N_932_1, 
                DI0=>u_sdram_u_fifo_rptr_gray_9_N_932_0, 
                A0=>rptr_bin_9_N_922_0, B0=>rptr_bin_9_N_922_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_u_fifo_rptr_gray_9_N_932_1, 
                Q1=>u_sdram_u_fifo_rptr_gray_1, OFX0=>open, 
                F0=>u_sdram_u_fifo_rptr_gray_9_N_932_0, 
                Q0=>u_sdram_u_fifo_rptr_gray_0);
    u_sdram_u_fifo_SLICE_206I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rptr_bin_9_N_922_3, 
                B1=>rptr_bin_9_N_922_4, C1=>'X', D1=>'X', 
                DI1=>u_sdram_u_fifo_rptr_gray_9_N_932_3, 
                DI0=>u_sdram_u_fifo_rptr_gray_9_N_932_2, 
                A0=>rptr_bin_9_N_922_2, B0=>rptr_bin_9_N_922_3, C0=>'X', 
                D0=>'X', M0=>'X', CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_u_fifo_rptr_gray_9_N_932_3, 
                Q1=>u_sdram_u_fifo_rptr_gray_3, OFX0=>open, 
                F0=>u_sdram_u_fifo_rptr_gray_9_N_932_2, 
                Q0=>u_sdram_u_fifo_rptr_gray_2);
    u_sdram_u_fifo_SLICE_207I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rptr_bin_9_N_922_5, 
                B1=>rptr_bin_9_N_922_6, C1=>'X', D1=>'X', 
                DI1=>u_sdram_u_fifo_rptr_gray_9_N_932_5, 
                DI0=>u_sdram_u_fifo_rptr_gray_9_N_932_4, 
                A0=>rptr_bin_9_N_922_4, B0=>rptr_bin_9_N_922_5, C0=>'X', 
                D0=>'X', M0=>'X', CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_u_fifo_rptr_gray_9_N_932_5, 
                Q1=>u_sdram_u_fifo_rptr_gray_5, OFX0=>open, 
                F0=>u_sdram_u_fifo_rptr_gray_9_N_932_4, 
                Q0=>u_sdram_u_fifo_rptr_gray_4);
    u_sdram_u_fifo_SLICE_208I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rptr_bin_9_N_922_7, 
                B1=>rptr_bin_9_N_922_8, C1=>'X', D1=>'X', 
                DI1=>u_sdram_u_fifo_rptr_gray_9_N_932_7, 
                DI0=>u_sdram_u_fifo_rptr_gray_9_N_932_6, 
                A0=>rptr_bin_9_N_922_6, B0=>rptr_bin_9_N_922_7, C0=>'X', 
                D0=>'X', M0=>'X', CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_u_fifo_rptr_gray_9_N_932_7, 
                Q1=>u_sdram_u_fifo_rptr_gray_7, OFX0=>open, 
                F0=>u_sdram_u_fifo_rptr_gray_9_N_932_6, 
                Q0=>u_sdram_u_fifo_rptr_gray_6);
    u_sdram_u_fifo_SLICE_209I: SLOGICB
      generic map (M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_M1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>rptr_gray_9_N_932_9, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_sdram_u_fifo_rptr_gray_9_N_932_8, 
                A0=>rptr_bin_9_N_922_8, B0=>rptr_gray_9_N_932_9, C0=>'X', 
                D0=>'X', M0=>'X', CE=>SD_CLK_c_enable_63, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_sdram_u_fifo_rptr_gray_9, 
                OFX0=>open, F0=>u_sdram_u_fifo_rptr_gray_9_N_932_8, 
                Q0=>u_sdram_u_fifo_rptr_gray_8);
    u_sdram_u_fifo_SLICE_210I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_rptr_gray_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_sdram_u_fifo_rptr_gray_0, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_rptr_gray_wr1_1, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_rptr_gray_wr1_0);
    u_sdram_u_fifo_SLICE_211I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_rptr_gray_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_sdram_u_fifo_rptr_gray_2, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_rptr_gray_wr1_3, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_rptr_gray_wr1_2);
    u_sdram_u_fifo_SLICE_212I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_rptr_gray_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_sdram_u_fifo_rptr_gray_4, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_rptr_gray_wr1_5, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_rptr_gray_wr1_4);
    u_sdram_u_fifo_SLICE_213I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_rptr_gray_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_sdram_u_fifo_rptr_gray_6, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_rptr_gray_wr1_7, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_rptr_gray_wr1_6);
    u_sdram_u_fifo_SLICE_214I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_rptr_gray_9, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_sdram_u_fifo_rptr_gray_8, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_rptr_gray_wr1_9, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_rptr_gray_wr1_8);
    u_sdram_u_fifo_SLICE_215I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_rptr_gray_wr1_1, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_sdram_u_fifo_rptr_gray_wr1_0, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_rptr_gray_wr2_1, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_rptr_gray_wr2_0);
    u_sdram_u_fifo_SLICE_216I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_rptr_gray_wr1_3, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_sdram_u_fifo_rptr_gray_wr1_2, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_rptr_gray_wr2_3, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_rptr_gray_wr2_2);
    u_sdram_u_fifo_SLICE_217I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_rptr_gray_wr1_5, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_sdram_u_fifo_rptr_gray_wr1_4, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_rptr_gray_wr2_5, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_rptr_gray_wr2_4);
    u_sdram_u_fifo_SLICE_218I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_rptr_gray_wr1_7, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_sdram_u_fifo_rptr_gray_wr1_6, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_rptr_gray_wr2_7, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_rptr_gray_wr2_6);
    u_sdram_u_fifo_SLICE_219I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sdram_u_fifo_rptr_gray_wr1_8, CE=>'X', 
                CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_sdram_u_fifo_rptr_gray_wr2_8);
    u_sdram_u_fifo_SLICE_220I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_bin_9_N_876_1, 
                B1=>wptr_bin_9_N_876_2, C1=>'X', D1=>'X', 
                DI1=>u_sdram_u_fifo_wptr_gray_9_N_893_1, 
                DI0=>u_sdram_u_fifo_wptr_gray_9_N_893_0, 
                A0=>wptr_bin_9_N_876_0, B0=>wptr_bin_9_N_876_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>wptr_bin_9_N_886, CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sdram_u_fifo_wptr_gray_9_N_893_1, 
                Q1=>u_sdram_u_fifo_wptr_gray_1, OFX0=>open, 
                F0=>u_sdram_u_fifo_wptr_gray_9_N_893_0, 
                Q0=>u_sdram_u_fifo_wptr_gray_0);
    u_sdram_u_fifo_SLICE_221I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_bin_9_N_876_3, 
                B1=>wptr_bin_9_N_876_4, C1=>'X', D1=>'X', 
                DI1=>u_sdram_u_fifo_wptr_gray_9_N_893_3, 
                DI0=>u_sdram_u_fifo_wptr_gray_9_N_893_2, 
                A0=>wptr_bin_9_N_876_2, B0=>wptr_bin_9_N_876_3, C0=>'X', 
                D0=>'X', M0=>'X', CE=>wptr_bin_9_N_886, CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sdram_u_fifo_wptr_gray_9_N_893_3, 
                Q1=>u_sdram_u_fifo_wptr_gray_3, OFX0=>open, 
                F0=>u_sdram_u_fifo_wptr_gray_9_N_893_2, 
                Q0=>u_sdram_u_fifo_wptr_gray_2);
    u_sdram_u_fifo_SLICE_222I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_bin_9_N_876_5, 
                B1=>wptr_bin_9_N_876_6, C1=>'X', D1=>'X', 
                DI1=>u_sdram_u_fifo_wptr_gray_9_N_893_5, 
                DI0=>u_sdram_u_fifo_wptr_gray_9_N_893_4, 
                A0=>wptr_bin_9_N_876_4, B0=>wptr_bin_9_N_876_5, C0=>'X', 
                D0=>'X', M0=>'X', CE=>wptr_bin_9_N_886, CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sdram_u_fifo_wptr_gray_9_N_893_5, 
                Q1=>u_sdram_u_fifo_wptr_gray_5, OFX0=>open, 
                F0=>u_sdram_u_fifo_wptr_gray_9_N_893_4, 
                Q0=>u_sdram_u_fifo_wptr_gray_4);
    u_sdram_u_fifo_SLICE_223I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_bin_9_N_876_7, 
                B1=>wptr_bin_9_N_876_8, C1=>'X', D1=>'X', 
                DI1=>u_sdram_u_fifo_wptr_gray_9_N_893_7, 
                DI0=>u_sdram_u_fifo_wptr_gray_9_N_893_6, 
                A0=>wptr_bin_9_N_876_6, B0=>wptr_bin_9_N_876_7, C0=>'X', 
                D0=>'X', M0=>'X', CE=>wptr_bin_9_N_886, CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sdram_u_fifo_wptr_gray_9_N_893_7, 
                Q1=>u_sdram_u_fifo_wptr_gray_7, OFX0=>open, 
                F0=>u_sdram_u_fifo_wptr_gray_9_N_893_6, 
                Q0=>u_sdram_u_fifo_wptr_gray_6);
    u_sdram_u_fifo_SLICE_224I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_u_fifo_wptr_gray_9_N_893_8, 
                A0=>wptr_bin_9_N_876_8, B0=>wptr_gray_9_N_893_9, C0=>'X', 
                D0=>'X', M0=>'X', CE=>wptr_bin_9_N_886, CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_u_fifo_wptr_gray_9_N_893_8, 
                Q0=>u_sdram_u_fifo_wptr_gray_8);
    u_sdram_u_fifo_SLICE_225I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_wptr_gray_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_sdram_u_fifo_wptr_gray_0, 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_wptr_gray_rd1_1, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_wptr_gray_rd1_0);
    u_sdram_u_fifo_SLICE_226I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_wptr_gray_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_sdram_u_fifo_wptr_gray_2, 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_wptr_gray_rd1_3, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_wptr_gray_rd1_2);
    u_sdram_u_fifo_SLICE_227I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_wptr_gray_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_sdram_u_fifo_wptr_gray_4, 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_wptr_gray_rd1_5, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_wptr_gray_rd1_4);
    u_sdram_u_fifo_SLICE_228I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_wptr_gray_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_sdram_u_fifo_wptr_gray_6, 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_wptr_gray_rd1_7, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_wptr_gray_rd1_6);
    u_sdram_u_fifo_SLICE_229I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>wptr_gray_9, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sdram_u_fifo_wptr_gray_8, CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_wptr_gray_rd1_9, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_wptr_gray_rd1_8);
    u_sdram_u_fifo_SLICE_230I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_wptr_gray_rd1_1, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_sdram_u_fifo_wptr_gray_rd1_0, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_wptr_gray_rd2_1, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_wptr_gray_rd2_0);
    u_sdram_u_fifo_SLICE_231I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_wptr_gray_rd1_3, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_sdram_u_fifo_wptr_gray_rd1_2, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_wptr_gray_rd2_3, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_wptr_gray_rd2_2);
    u_sdram_u_fifo_SLICE_232I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_wptr_gray_rd1_5, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_sdram_u_fifo_wptr_gray_rd1_4, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_wptr_gray_rd2_5, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_wptr_gray_rd2_4);
    u_sdram_u_fifo_SLICE_233I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_wptr_gray_rd1_7, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_sdram_u_fifo_wptr_gray_rd1_6, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_wptr_gray_rd2_7, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_wptr_gray_rd2_6);
    u_sdram_u_fifo_SLICE_234I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_sdram_u_fifo_wptr_gray_rd1_9, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_sdram_u_fifo_wptr_gray_rd1_8, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_sdram_u_fifo_wptr_gray_rd2_9, OFX0=>open, F0=>open, 
                Q0=>u_sdram_u_fifo_wptr_gray_rd2_8);
    u_spi_SLICE_235I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"5555", LUT1_INITVAL=>X"6666", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_bit_cnt_1, 
                B1=>u_spi_bit_cnt_0, C1=>'X', D1=>'X', DI1=>u_spi_n19, 
                DI0=>u_spi_n20, A0=>u_spi_bit_cnt_0, B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_spi_n19, Q1=>u_spi_bit_cnt_1, OFX0=>open, F0=>u_spi_n20, 
                Q0=>u_spi_bit_cnt_0);
    u_spi_SLICE_236I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"7878", LUT1_INITVAL=>X"8000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_bit_cnt_1, 
                B1=>u_spi_bit_cnt_0, C1=>u_spi_stream_arm_N_1307, 
                D1=>u_spi_bit_cnt_2, DI1=>'X', DI0=>u_spi_n18, 
                A0=>u_spi_bit_cnt_1, B0=>u_spi_bit_cnt_0, C0=>u_spi_bit_cnt_2, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_spi_CCLK_c_enable_20, Q1=>open, OFX0=>open, 
                F0=>u_spi_n18, Q0=>u_spi_bit_cnt_2);
    u_spi_SLICE_237I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>u_spi_shift_in_0, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>DIN_c, CE=>u_spi_CCLK_c_enable_20, 
                CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>u_spi_cmd_1, 
                OFX0=>open, F0=>open, Q0=>u_spi_cmd_0);
    u_spi_SLICE_238I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>u_spi_shift_in_2, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_spi_shift_in_1, 
                CE=>u_spi_CCLK_c_enable_20, CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>u_spi_cmd_3, OFX0=>open, F0=>open, 
                Q0=>u_spi_cmd_2);
    u_spi_SLICE_239I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>u_spi_shift_in_4, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_spi_shift_in_3, 
                CE=>u_spi_CCLK_c_enable_20, CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>u_spi_cmd_5, OFX0=>open, F0=>open, 
                Q0=>u_spi_cmd_4);
    u_spi_SLICE_240I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>u_spi_shift_in_6, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_spi_shift_in_5, 
                CE=>u_spi_CCLK_c_enable_20, CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>u_spi_cmd_7, OFX0=>open, F0=>open, 
                Q0=>u_spi_cmd_6);
    u_spi_SLICE_241I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>u_spi_rx_byte_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_spi_rx_byte_0, 
                CE=>u_spi_CCLK_c_enable_26, CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>u_spi_mode_req_1, OFX0=>open, F0=>open, 
                Q0=>u_spi_mode_req_0);
    u_spi_SLICE_242I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"SIG", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>u_spi_n501, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_spi_n500, CE=>u_spi_CCLK_c_enable_29, 
                CLK=>CCLK_c, LSR=>u_spi_CCLK_c_enable_20, OFX1=>open, F1=>open, 
                Q1=>u_spi_n500, OFX0=>open, F0=>open, Q0=>u_spi_n499);
    u_spi_SLICE_243I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"SIG", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>u_spi_n503, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_spi_n502, CE=>u_spi_CCLK_c_enable_29, 
                CLK=>CCLK_c, LSR=>u_spi_CCLK_c_enable_20, OFX1=>open, F1=>open, 
                Q1=>u_spi_n502, OFX0=>open, F0=>open, Q0=>u_spi_n501);
    u_spi_SLICE_244I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"SIG", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>u_spi_n505, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_spi_n504, CE=>u_spi_CCLK_c_enable_29, 
                CLK=>CCLK_c, LSR=>u_spi_CCLK_c_enable_20, OFX1=>open, F1=>open, 
                Q1=>u_spi_n504, OFX0=>open, F0=>open, Q0=>u_spi_n503);
    u_spi_SLICE_245I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"SIG", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>u_spi_n507, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_spi_n506, CE=>u_spi_CCLK_c_enable_29, 
                CLK=>CCLK_c, LSR=>u_spi_CCLK_c_enable_20, OFX1=>open, F1=>open, 
                Q1=>u_spi_n506, OFX0=>open, F0=>open, Q0=>u_spi_n505);
    u_spi_SLICE_246I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"SIG", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>u_spi_n509, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_spi_n508, CE=>u_spi_CCLK_c_enable_29, 
                CLK=>CCLK_c, LSR=>u_spi_CCLK_c_enable_20, OFX1=>open, F1=>open, 
                Q1=>u_spi_n508, OFX0=>open, F0=>open, Q0=>u_spi_n507);
    u_spi_SLICE_247I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"SIG", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>u_spi_n511, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_spi_n510, CE=>u_spi_CCLK_c_enable_29, 
                CLK=>CCLK_c, LSR=>u_spi_CCLK_c_enable_20, OFX1=>open, F1=>open, 
                Q1=>u_spi_n510, OFX0=>open, F0=>open, Q0=>u_spi_n509);
    u_spi_SLICE_250I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"SIG", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>u_spi_out_byte_7_N_1258, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_spi_out_byte_7_N_1257, 
                CE=>u_spi_CCLK_c_enable_29, CLK=>CCLK_c, 
                LSR=>u_spi_CCLK_c_enable_20, OFX1=>open, F1=>open, 
                Q1=>u_spi_n511, OFX0=>open, F0=>open, 
                Q0=>u_spi_out_byte_7_N_1258);
    u_spi_SLICE_251I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>u_spi_shift_in_0, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>DIN_c, CE=>u_spi_CCLK_c_enable_27, 
                CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_spi_rx_byte_1, OFX0=>open, F0=>open, Q0=>u_spi_rx_byte_0);
    u_spi_SLICE_252I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>u_spi_shift_in_0, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>DIN_c, CE=>'X', CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_spi_shift_in_1, OFX0=>open, 
                F0=>open, Q0=>u_spi_shift_in_0);
    u_spi_SLICE_253I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>u_spi_shift_in_2, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_spi_shift_in_1, CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_spi_shift_in_3, 
                OFX0=>open, F0=>open, Q0=>u_spi_shift_in_2);
    u_spi_SLICE_254I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>u_spi_shift_in_4, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_spi_shift_in_3, CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_spi_shift_in_5, 
                OFX0=>open, F0=>open, Q0=>u_spi_shift_in_4);
    u_spi_SLICE_255I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_spi_shift_in_5, CE=>'X', CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_spi_shift_in_6);
    u_spi_SLICE_256I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   LUT0_INITVAL=>X"3230", LUT1_INITVAL=>X"0404", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_n6368, 
                B1=>stream_fifo_rd_data_0, C1=>stream_fifo_empty, D1=>'X', 
                DI1=>'X', DI0=>u_spi_shift_out_7_N_1277_0, 
                A0=>u_spi_out_byte_7_N_1258, B0=>u_spi_n6368, 
                C0=>u_spi_out_byte_7_N_1257, D0=>u_spi_mode_req_0, 
                M0=>u_spi_cmd_2, CE=>'X', CLK=>CCLK_c, LSR=>u_spi_n5, 
                OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_spi_shift_out_7_N_1277_0, F0=>open, 
                Q0=>u_spi_shift_out_0);
    u_spi_SLICE_257I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"C5C0", LUT1_INITVAL=>X"C5C0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_n6378, 
                B1=>u_spi_shift_out_1, C1=>u_spi_n5, D1=>u_spi_n6597, 
                DI1=>u_spi_shift_out_7_N_1209_2, 
                DI0=>u_spi_shift_out_7_N_1209_1, A0=>u_spi_n6368, 
                B0=>u_spi_shift_out_0, C0=>u_spi_n5, D0=>u_spi_n6581, M0=>'X', 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_spi_shift_out_7_N_1209_2, Q1=>u_spi_shift_out_2, 
                OFX0=>open, F0=>u_spi_shift_out_7_N_1209_1, 
                Q0=>u_spi_shift_out_1);
    u_spi_SLICE_258I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"CAC0", LUT1_INITVAL=>X"CAC0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_n5533, 
                B1=>u_spi_shift_out_3, C1=>u_spi_n5, D1=>u_spi_n4, 
                DI1=>u_spi_shift_out_7_N_1209_4, 
                DI0=>u_spi_shift_out_7_N_1209_3, A0=>u_spi_n5581, 
                B0=>u_spi_shift_out_2, C0=>u_spi_n5, D0=>u_spi_n4, M0=>'X', 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_spi_shift_out_7_N_1209_4, Q1=>u_spi_shift_out_4, 
                OFX0=>open, F0=>u_spi_shift_out_7_N_1209_3, 
                Q0=>u_spi_shift_out_3);
    u_spi_SLICE_259I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"CAC0", LUT1_INITVAL=>X"CAC0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_n5569, 
                B1=>u_spi_shift_out_5, C1=>u_spi_n5, D1=>u_spi_n4, 
                DI1=>u_spi_shift_out_7_N_1209_6, 
                DI0=>u_spi_shift_out_7_N_1209_5, A0=>u_spi_n5545, 
                B0=>u_spi_shift_out_4, C0=>u_spi_n5, D0=>u_spi_n4, M0=>'X', 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_spi_shift_out_7_N_1209_6, Q1=>u_spi_shift_out_6, 
                OFX0=>open, F0=>u_spi_shift_out_7_N_1209_5, 
                Q0=>u_spi_shift_out_5);
    u_spi_SLICE_260I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"CAC0", LUT1_INITVAL=>X"FEFE", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_bit_cnt_0, 
                B1=>u_spi_bit_cnt_1, C1=>u_spi_bit_cnt_2, D1=>'X', DI1=>'X', 
                DI0=>u_spi_shift_out_7_N_1209_7, A0=>u_spi_n5557, 
                B0=>u_spi_shift_out_6, C0=>u_spi_n5, D0=>u_spi_n4, M0=>'X', 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>u_spi_n5, 
                Q1=>open, OFX0=>open, F0=>u_spi_shift_out_7_N_1209_7, 
                Q0=>u_spi_shift_out_7);
    u_spi_SLICE_261I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG0_REGSET=>"SET", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0100", 
                   LUT1_INITVAL=>X"FFFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_n6147, B1=>u_spi_n7, 
                C1=>u_spi_cmd_7, D1=>u_spi_cmd_1, DI1=>'X', DI0=>u_spi_n5379, 
                A0=>u_spi_n5334, B0=>u_spi_n4968, C0=>u_spi_stream_arm_N_1307, 
                D0=>u_spi_n499, M0=>'X', CE=>u_spi_CCLK_c_enable_29, 
                CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>u_spi_n4968, Q1=>open, 
                OFX0=>open, F0=>u_spi_n5379, Q0=>u_spi_stream_arm_N_1307);
    u_stream_SLICE_263I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>stream_arm_spi, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_stream_arm_meta, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_stream_arm_meta, 
                OFX0=>open, F0=>open, Q0=>u_stream_arm_pclk);
    u_stream_SLICE_264I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"9505", 
                   LUT1_INITVAL=>X"6000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_gray_11, 
                B1=>u_stream_u_dc_rptr_gray_wr2_11, 
                C1=>u_stream_u_dc_wr_full_N_1156, 
                D1=>u_stream_u_dc_wr_full_N_1155, DI1=>'X', 
                DI0=>u_stream_state_2_N_943_0, A0=>u_stream_state_0, 
                B0=>u_stream_fifo_full, C0=>u_stream_state_2, 
                D0=>u_stream_state_1, M0=>'X', CE=>u_stream_PCLK_c_enable_28, 
                CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>u_stream_fifo_full, 
                Q1=>open, OFX0=>open, F0=>u_stream_state_2_N_943_0, 
                Q0=>u_stream_state_0);
    u_stream_SLICE_265I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6262", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_state_2_N_943_1, 
                A0=>u_stream_state_0, B0=>u_stream_state_1, 
                C0=>u_stream_state_2, D0=>'X', M0=>'X', 
                CE=>u_stream_PCLK_c_enable_5, CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_state_2_N_943_1, Q0=>u_stream_state_1);
    u_stream_SLICE_266I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6C6C", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_state_2_N_943_2, 
                A0=>u_stream_state_0, B0=>u_stream_state_1, 
                C0=>u_stream_state_2, D0=>'X', M0=>'X', 
                CE=>u_stream_PCLK_c_enable_4, CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_state_2_N_943_2, Q0=>u_stream_state_2);
    u_stream_u_dc_SLICE_267I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_0_adj_1368, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1759);
    u_stream_u_dc_SLICE_268I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_n1745, 
                A0=>u_stream_u_dc_n1760, B0=>rptr_bin_11_N_1180_0, 
                C0=>rd_data_7_N_1177, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_n1745, Q0=>u_stream_u_dc_n1760);
    u_stream_u_dc_SLICE_269I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_1_adj_1367, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1761);
    u_stream_u_dc_SLICE_270I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_n1744, 
                A0=>u_stream_u_dc_n1762, B0=>rptr_bin_11_N_1180_1, 
                C0=>rd_data_7_N_1177, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_n1744, Q0=>u_stream_u_dc_n1762);
    u_stream_u_dc_SLICE_271I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_2_adj_1366, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1763);
    u_stream_u_dc_SLICE_272I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_n1743, 
                A0=>u_stream_u_dc_n1764, B0=>rptr_bin_11_N_1180_2, 
                C0=>rd_data_7_N_1177, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_n1743, Q0=>u_stream_u_dc_n1764);
    u_stream_u_dc_SLICE_273I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_3_adj_1365, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1765);
    u_stream_u_dc_SLICE_274I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_n1742, 
                A0=>u_stream_u_dc_n1766, B0=>rptr_bin_11_N_1180_3, 
                C0=>rd_data_7_N_1177, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_n1742, Q0=>u_stream_u_dc_n1766);
    u_stream_u_dc_SLICE_275I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_4_adj_1364, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1767);
    u_stream_u_dc_SLICE_276I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_n1741, 
                A0=>u_stream_u_dc_n1768, B0=>rptr_bin_11_N_1180_4, 
                C0=>rd_data_7_N_1177, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_n1741, Q0=>u_stream_u_dc_n1768);
    u_stream_u_dc_SLICE_277I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_5_adj_1363, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1769);
    u_stream_u_dc_SLICE_278I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_n1740, 
                A0=>u_stream_u_dc_n1770, B0=>rptr_bin_11_N_1180_5, 
                C0=>rd_data_7_N_1177, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_n1740, Q0=>u_stream_u_dc_n1770);
    u_stream_u_dc_SLICE_279I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_6_adj_1362, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1771);
    u_stream_u_dc_SLICE_280I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_n1739, 
                A0=>u_stream_u_dc_n1772, B0=>rptr_bin_11_N_1180_6, 
                C0=>rd_data_7_N_1177, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_n1739, Q0=>u_stream_u_dc_n1772);
    u_stream_u_dc_SLICE_281I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_7_adj_1361, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1773);
    u_stream_u_dc_SLICE_282I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_n1738, 
                A0=>u_stream_u_dc_n1774, B0=>rptr_bin_11_N_1180_7, 
                C0=>rd_data_7_N_1177, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_n1738, Q0=>u_stream_u_dc_n1774);
    u_stream_u_dc_SLICE_283I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_8_adj_1360, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1775);
    u_stream_u_dc_SLICE_284I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_n1737, 
                A0=>u_stream_u_dc_n1776, B0=>rptr_bin_11_N_1180_8, 
                C0=>rd_data_7_N_1177, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_n1737, Q0=>u_stream_u_dc_n1776);
    u_stream_u_dc_SLICE_285I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_9, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1777);
    u_stream_u_dc_SLICE_286I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_n1736, 
                A0=>u_stream_u_dc_n1778, B0=>rptr_bin_11_N_1180_9, 
                C0=>rd_data_7_N_1177, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_n1736, Q0=>u_stream_u_dc_n1778);
    u_stream_u_dc_SLICE_287I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>wptr_bin_10, CE=>'X', CLK=>PCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_n1779);
    u_stream_u_dc_SLICE_288I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"70F0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_u_dc_wr_full_N_1156, 
                B1=>u_stream_u_dc_n6750, C1=>u_stream_wr_en, 
                D1=>u_stream_u_dc_wr_full_N_1155, 
                DI1=>u_stream_u_dc_wptr_bin_11_N_1150, 
                DI0=>u_stream_u_dc_n1735, A0=>u_stream_u_dc_n1780, 
                B0=>rptr_bin_11_N_1180_10, C0=>rd_data_7_N_1177, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_wptr_bin_11_N_1150, Q1=>u_stream_u_dc_n1782, 
                OFX0=>open, F0=>u_stream_u_dc_n1735, Q0=>u_stream_u_dc_n1780);
    u_stream_u_dc_SLICE_289I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_wr_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_stream_wr_data_0, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_stream_u_dc_n1787, 
                OFX0=>open, F0=>open, Q0=>u_stream_u_dc_n1785);
    u_stream_u_dc_SLICE_290I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_wr_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_stream_wr_data_2, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_stream_u_dc_n1791, 
                OFX0=>open, F0=>open, Q0=>u_stream_u_dc_n1789);
    u_stream_u_dc_SLICE_291I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_wr_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_stream_wr_data_4, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_stream_u_dc_n1795, 
                OFX0=>open, F0=>open, Q0=>u_stream_u_dc_n1793);
    u_stream_u_dc_SLICE_292I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_wr_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_stream_wr_data_6, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>u_stream_u_dc_n1799, 
                OFX0=>open, F0=>open, Q0=>u_stream_u_dc_n1797);
    u_stream_u_dc_SLICE_293I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rptr_bin_11_N_1180_1, 
                B1=>rptr_bin_11_N_1180_2, C1=>'X', D1=>'X', 
                DI1=>u_stream_u_dc_rptr_gray_11_N_1192_1, 
                DI0=>u_stream_u_dc_rptr_gray_11_N_1192_0, 
                A0=>rptr_bin_11_N_1180_0, B0=>rptr_bin_11_N_1180_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_stream_u_dc_rptr_gray_11_N_1192_1, 
                Q1=>u_stream_u_dc_rptr_gray_1, OFX0=>open, 
                F0=>u_stream_u_dc_rptr_gray_11_N_1192_0, 
                Q0=>u_stream_u_dc_rptr_gray_0);
    u_stream_u_dc_SLICE_294I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rptr_bin_11_N_1180_3, 
                B1=>rptr_bin_11_N_1180_4, C1=>'X', D1=>'X', 
                DI1=>u_stream_u_dc_rptr_gray_11_N_1192_3, 
                DI0=>u_stream_u_dc_rptr_gray_11_N_1192_2, 
                A0=>rptr_bin_11_N_1180_2, B0=>rptr_bin_11_N_1180_3, C0=>'X', 
                D0=>'X', M0=>'X', CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_stream_u_dc_rptr_gray_11_N_1192_3, 
                Q1=>u_stream_u_dc_rptr_gray_3, OFX0=>open, 
                F0=>u_stream_u_dc_rptr_gray_11_N_1192_2, 
                Q0=>u_stream_u_dc_rptr_gray_2);
    u_stream_u_dc_SLICE_295I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rptr_bin_11_N_1180_5, 
                B1=>rptr_bin_11_N_1180_6, C1=>'X', D1=>'X', 
                DI1=>u_stream_u_dc_rptr_gray_11_N_1192_5, 
                DI0=>u_stream_u_dc_rptr_gray_11_N_1192_4, 
                A0=>rptr_bin_11_N_1180_4, B0=>rptr_bin_11_N_1180_5, C0=>'X', 
                D0=>'X', M0=>'X', CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_stream_u_dc_rptr_gray_11_N_1192_5, 
                Q1=>u_stream_u_dc_rptr_gray_5, OFX0=>open, 
                F0=>u_stream_u_dc_rptr_gray_11_N_1192_4, 
                Q0=>u_stream_u_dc_rptr_gray_4);
    u_stream_u_dc_SLICE_296I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rptr_bin_11_N_1180_7, 
                B1=>rptr_bin_11_N_1180_8, C1=>'X', D1=>'X', 
                DI1=>u_stream_u_dc_rptr_gray_11_N_1192_7, 
                DI0=>u_stream_u_dc_rptr_gray_11_N_1192_6, 
                A0=>rptr_bin_11_N_1180_6, B0=>rptr_bin_11_N_1180_7, C0=>'X', 
                D0=>'X', M0=>'X', CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_stream_u_dc_rptr_gray_11_N_1192_7, 
                Q1=>u_stream_u_dc_rptr_gray_7, OFX0=>open, 
                F0=>u_stream_u_dc_rptr_gray_11_N_1192_6, 
                Q0=>u_stream_u_dc_rptr_gray_6);
    u_stream_u_dc_SLICE_297I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rptr_bin_11_N_1180_9, 
                B1=>rptr_bin_11_N_1180_10, C1=>'X', D1=>'X', 
                DI1=>u_stream_u_dc_rptr_gray_11_N_1192_9, 
                DI0=>u_stream_u_dc_rptr_gray_11_N_1192_8, 
                A0=>rptr_bin_11_N_1180_8, B0=>rptr_bin_11_N_1180_9, C0=>'X', 
                D0=>'X', M0=>'X', CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_stream_u_dc_rptr_gray_11_N_1192_9, 
                Q1=>u_stream_u_dc_rptr_gray_9, OFX0=>open, 
                F0=>u_stream_u_dc_rptr_gray_11_N_1192_8, 
                Q0=>u_stream_u_dc_rptr_gray_8);
    u_stream_u_dc_SLICE_298I: SLOGICB
      generic map (M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_M1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>rptr_gray_11_N_1192_11, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_stream_u_dc_rptr_gray_11_N_1192_10, 
                A0=>rptr_bin_11_N_1180_10, B0=>rptr_gray_11_N_1192_11, C0=>'X', 
                D0=>'X', M0=>'X', CE=>rd_data_7_N_1177, CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_stream_u_dc_rptr_gray_11, 
                OFX0=>open, F0=>u_stream_u_dc_rptr_gray_11_N_1192_10, 
                Q0=>u_stream_u_dc_rptr_gray_10);
    u_stream_u_dc_SLICE_299I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_0, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr1_1, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr1_0);
    u_stream_u_dc_SLICE_300I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_2, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr1_3, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr1_2);
    u_stream_u_dc_SLICE_301I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_4, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr1_5, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr1_4);
    u_stream_u_dc_SLICE_302I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_6, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr1_7, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr1_6);
    u_stream_u_dc_SLICE_303I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_9, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_8, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr1_9, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr1_8);
    u_stream_u_dc_SLICE_304I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_11, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_10, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr1_11, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr1_10);
    u_stream_u_dc_SLICE_305I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_wr1_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_wr1_0, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr2_1, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr2_0);
    u_stream_u_dc_SLICE_306I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_wr1_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_wr1_2, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr2_3, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr2_2);
    u_stream_u_dc_SLICE_307I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_wr1_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_wr1_4, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr2_5, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr2_4);
    u_stream_u_dc_SLICE_308I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_wr1_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_wr1_6, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr2_7, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr2_6);
    u_stream_u_dc_SLICE_309I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_wr1_9, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_rptr_gray_wr1_8, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr2_9, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr2_8);
    u_stream_u_dc_SLICE_310I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_rptr_gray_wr1_11, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_stream_u_dc_rptr_gray_wr1_10, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_rptr_gray_wr2_11, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_rptr_gray_wr2_10);
    u_stream_u_dc_SLICE_311I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_bin_11_N_1138_1, 
                B1=>wptr_bin_11_N_1138_2, C1=>'X', D1=>'X', 
                DI1=>u_stream_u_dc_wptr_gray_11_N_1157_1, 
                DI0=>u_stream_u_dc_wptr_gray_11_N_1157_0, 
                A0=>wptr_bin_11_N_1138_0, B0=>wptr_bin_11_N_1138_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>u_stream_u_dc_wptr_bin_11_N_1150, 
                CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_wptr_gray_11_N_1157_1, 
                Q1=>u_stream_u_dc_wptr_gray_1, OFX0=>open, 
                F0=>u_stream_u_dc_wptr_gray_11_N_1157_0, 
                Q0=>u_stream_u_dc_wptr_gray_0);
    u_stream_u_dc_SLICE_312I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_bin_11_N_1138_3, 
                B1=>wptr_bin_11_N_1138_4, C1=>'X', D1=>'X', 
                DI1=>u_stream_u_dc_wptr_gray_11_N_1157_3, 
                DI0=>u_stream_u_dc_wptr_gray_11_N_1157_2, 
                A0=>wptr_bin_11_N_1138_2, B0=>wptr_bin_11_N_1138_3, C0=>'X', 
                D0=>'X', M0=>'X', CE=>u_stream_u_dc_wptr_bin_11_N_1150, 
                CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_wptr_gray_11_N_1157_3, 
                Q1=>u_stream_u_dc_wptr_gray_3, OFX0=>open, 
                F0=>u_stream_u_dc_wptr_gray_11_N_1157_2, 
                Q0=>u_stream_u_dc_wptr_gray_2);
    u_stream_u_dc_SLICE_313I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_bin_11_N_1138_5, 
                B1=>wptr_bin_11_N_1138_6, C1=>'X', D1=>'X', 
                DI1=>u_stream_u_dc_wptr_gray_11_N_1157_5, 
                DI0=>u_stream_u_dc_wptr_gray_11_N_1157_4, 
                A0=>wptr_bin_11_N_1138_4, B0=>wptr_bin_11_N_1138_5, C0=>'X', 
                D0=>'X', M0=>'X', CE=>u_stream_u_dc_wptr_bin_11_N_1150, 
                CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_wptr_gray_11_N_1157_5, 
                Q1=>u_stream_u_dc_wptr_gray_5, OFX0=>open, 
                F0=>u_stream_u_dc_wptr_gray_11_N_1157_4, 
                Q0=>u_stream_u_dc_wptr_gray_4);
    u_stream_u_dc_SLICE_314I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_bin_11_N_1138_7, 
                B1=>wptr_bin_11_N_1138_8, C1=>'X', D1=>'X', 
                DI1=>u_stream_u_dc_wptr_gray_11_N_1157_7, 
                DI0=>u_stream_u_dc_wptr_gray_11_N_1157_6, 
                A0=>wptr_bin_11_N_1138_6, B0=>wptr_bin_11_N_1138_7, C0=>'X', 
                D0=>'X', M0=>'X', CE=>u_stream_u_dc_wptr_bin_11_N_1150, 
                CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_wptr_gray_11_N_1157_7, 
                Q1=>u_stream_u_dc_wptr_gray_7, OFX0=>open, 
                F0=>u_stream_u_dc_wptr_gray_11_N_1157_6, 
                Q0=>u_stream_u_dc_wptr_gray_6);
    u_stream_u_dc_SLICE_315I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_bin_11_N_1138_9, 
                B1=>wptr_bin_11_N_1138_10, C1=>'X', D1=>'X', 
                DI1=>u_stream_u_dc_wptr_gray_11_N_1157_9, 
                DI0=>u_stream_u_dc_wptr_gray_11_N_1157_8, 
                A0=>wptr_bin_11_N_1138_8, B0=>wptr_bin_11_N_1138_9, C0=>'X', 
                D0=>'X', M0=>'X', CE=>u_stream_u_dc_wptr_bin_11_N_1150, 
                CLK=>PCLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_wptr_gray_11_N_1157_9, 
                Q1=>u_stream_u_dc_wptr_gray_9, OFX0=>open, 
                F0=>u_stream_u_dc_wptr_gray_11_N_1157_8, 
                Q0=>u_stream_u_dc_wptr_gray_8);
    u_stream_u_dc_SLICE_316I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_u_dc_wptr_gray_11_N_1157_10, 
                A0=>wptr_bin_11_N_1138_10, B0=>wptr_gray_11_N_1157_11, C0=>'X', 
                D0=>'X', M0=>'X', CE=>u_stream_u_dc_wptr_bin_11_N_1150, 
                CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_stream_u_dc_wptr_gray_11_N_1157_10, 
                Q0=>u_stream_u_dc_wptr_gray_10);
    u_stream_u_dc_SLICE_317I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_0, 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd1_1, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd1_0);
    u_stream_u_dc_SLICE_318I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_2, 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd1_3, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd1_2);
    u_stream_u_dc_SLICE_319I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_4, 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd1_5, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd1_4);
    u_stream_u_dc_SLICE_320I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_6, 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd1_7, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd1_6);
    u_stream_u_dc_SLICE_321I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_9, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_8, 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd1_9, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd1_8);
    u_stream_u_dc_SLICE_322I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>wptr_gray_11, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_10, CE=>'X', 
                CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd1_11, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd1_10);
    u_stream_u_dc_SLICE_323I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_rd1_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_rd1_0, 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd2_1, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd2_0);
    u_stream_u_dc_SLICE_324I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_rd1_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_rd1_2, 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd2_3, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd2_2);
    u_stream_u_dc_SLICE_325I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_rd1_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_rd1_4, 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd2_5, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd2_4);
    u_stream_u_dc_SLICE_326I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_rd1_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_rd1_6, 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd2_7, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd2_6);
    u_stream_u_dc_SLICE_327I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_rd1_9, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_stream_u_dc_wptr_gray_rd1_8, 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd2_9, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd2_8);
    u_stream_u_dc_SLICE_328I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_stream_u_dc_wptr_gray_rd1_11, FXA=>'X', FXB=>'X', 
                A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>u_stream_u_dc_wptr_gray_rd1_10, CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_stream_u_dc_wptr_gray_rd2_11, OFX0=>open, F0=>open, 
                Q0=>u_stream_u_dc_wptr_gray_rd2_10);
    u_stream_SLICE_329I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>pix_rgb565_0, CE=>'X', CLK=>PCLK_c, 
                LSR=>u_stream_n3142, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_stream_wr_data_0);
    u_stream_SLICE_330I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"C444", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_n6291, A0=>u_stream_state_0, 
                B0=>u_stream_n6728, C0=>u_stream_wr_en_N_1072, 
                D0=>pix_rgb565_1, M0=>'X', CE=>'X', CLK=>PCLK_c, 
                LSR=>u_stream_n3168, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_stream_n6291, Q0=>u_stream_wr_data_1);
    u_stream_SLICE_331I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>pix_rgb565_2, CE=>'X', CLK=>PCLK_c, 
                LSR=>u_stream_n3142, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_stream_wr_data_2);
    u_stream_SLICE_332I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"C444", LUT1_INITVAL=>X"C444", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_state_0, 
                B1=>u_stream_n6728, C1=>u_stream_wr_en_N_1072, 
                D1=>pix_rgb565_5, DI1=>u_stream_n6295, DI0=>u_stream_n6293, 
                A0=>u_stream_state_0, B0=>u_stream_n6728, 
                C0=>u_stream_wr_en_N_1072, D0=>pix_rgb565_3, M0=>'X', CE=>'X', 
                CLK=>PCLK_c, LSR=>u_stream_n3168, OFX1=>open, 
                F1=>u_stream_n6295, Q1=>u_stream_wr_data_5, OFX0=>open, 
                F0=>u_stream_n6293, Q0=>u_stream_wr_data_3);
    u_stream_SLICE_333I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"8000", 
                   LUT1_INITVAL=>X"0404", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_state_0, 
                B1=>u_stream_state_1, C1=>u_stream_fifo_full, D1=>'X', 
                DI1=>'X', DI0=>u_stream_wr_data_7_N_946_4, 
                A0=>u_stream_wr_en_N_1072, B0=>u_stream_n6728, 
                C0=>u_stream_n5423, D0=>u_stream_state_0, M0=>u_stream_state_2, 
                CE=>'X', CLK=>PCLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_stream_wr_data_7_N_946_4, F0=>open, 
                Q0=>u_stream_wr_data_4);
    u_stream_SLICE_334I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>pix_rgb565_6, CE=>'X', CLK=>PCLK_c, 
                LSR=>u_stream_n3142, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_stream_wr_data_6);
    u_stream_SLICE_335I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"C444", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_stream_n6297, A0=>u_stream_state_0, 
                B0=>u_stream_n6728, C0=>u_stream_wr_en_N_1072, 
                D0=>pix_rgb565_7, M0=>'X', CE=>'X', CLK=>PCLK_c, 
                LSR=>u_stream_n3168, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_stream_n6297, Q0=>u_stream_wr_data_7);
    u_stream_SLICE_336I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"9FFF", LUT1_INITVAL=>X"F7FF", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_wr_en_N_1072, 
                B1=>u_stream_n6728, C1=>u_stream_state_2, D1=>u_stream_n5399, 
                DI1=>'X', DI0=>u_stream_n6728, A0=>wptr_gray_11, 
                B0=>u_stream_u_dc_rptr_gray_wr2_11, 
                C0=>u_stream_u_dc_wr_full_N_1155, 
                D0=>u_stream_u_dc_wr_full_N_1156, M0=>'X', CE=>'X', 
                CLK=>PCLK_c, LSR=>u_stream_n2796, OFX1=>open, 
                F1=>u_stream_n3142, Q1=>open, OFX0=>open, F0=>u_stream_n6728, 
                Q0=>u_stream_wr_en);
    u_stream_i4607_SLICE_337I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F53C", LUT1_INITVAL=>X"F7C4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_fifo_full, 
                B1=>u_stream_state_2, C1=>u_stream_state_1, D1=>frame_start, 
                DI1=>'X', DI0=>'X', A0=>u_stream_fifo_full, 
                B0=>u_stream_arm_pclk, C0=>u_stream_state_2, 
                D0=>u_stream_state_1, M0=>u_stream_state_0, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_stream_PCLK_c_enable_28, F0=>open, Q0=>open);
    u_stream_i4624_SLICE_338I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2332", LUT1_INITVAL=>X"5454")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_n34, 
                B1=>u_stream_state_2, C1=>frame_start, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_stream_state_1, B0=>u_stream_n34, 
                C0=>u_stream_state_2, D0=>u_stream_arm_pclk, 
                M0=>u_stream_state_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_stream_PCLK_c_enable_5, F0=>open, 
                Q0=>open);
    u_stream_i4622_SLICE_339I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2332", LUT1_INITVAL=>X"5454")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_n34, 
                B1=>u_stream_state_2, C1=>frame_start, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_stream_state_1, B0=>u_stream_n34, 
                C0=>u_stream_state_2, D0=>u_stream_arm_pclk, 
                M0=>u_stream_state_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_stream_PCLK_c_enable_4, F0=>open, 
                Q0=>open);
    u_sdram_i21_SLICE_340I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FE00", LUT1_INITVAL=>X"E0E0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_ref_cnt_15_N_577, 
                B1=>u_sdram_n632, C1=>timer_13, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sdram_n6758, B0=>u_sdram_n1058, C0=>u_sdram_n635, 
                D0=>n42, M0=>u_sdram_SD_A_12_N_789_6, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n15, 
                F0=>open, Q0=>open);
    u_spi_i4561_SLICE_341I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"ECA8", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>stream_fifo_empty, 
                B1=>stream_fifo_rd_data_1, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_spi_mode_req_1, B0=>u_spi_out_byte_7_N_1257, 
                C0=>u_spi_out_byte_7_N_1258, D0=>u_spi_mode_req_0, 
                M0=>u_spi_cmd_2, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_spi_n6581, F0=>open, Q0=>open);
    u_spi_i4564_SLICE_342I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2020", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>stream_fifo_empty, 
                B1=>stream_fifo_rd_data_2, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_spi_out_byte_7_N_1257, B0=>u_spi_mode_req_0, 
                C0=>u_spi_mode_req_1, D0=>'X', M0=>u_spi_cmd_2, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_spi_n6597, F0=>open, Q0=>open);
    u_sdram_SLICE_343I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CA0A", 
                   LUT1_INITVAL=>X"4F40", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n632, 
                B1=>u_sdram_n6751, C1=>u_sdram_SD_DQM_1_N_802_1, 
                D1=>u_sdram_n3409, DI1=>'X', DI0=>'X', A0=>u_sdram_n6751, 
                B0=>u_sdram_n5501, C0=>u_sdram_n632, D0=>u_sdram_n15_adj_1319, 
                M0=>u_sdram_n1058, CE=>u_sdram_SD_A_12_N_789_6, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sdram_SD_CLK_c_enable_24, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n3409, Q0=>u_sdram_n632);
    u_cam_SLICE_344I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>pix_x_2, B1=>pix_x_6, 
                C1=>pix_x_7, D1=>pix_x_1, DI1=>'X', DI0=>'X', A0=>pix_x_0, 
                B0=>u_cam_n14, C0=>u_cam_n10, D0=>pix_x_4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_n14, Q1=>open, 
                OFX0=>open, F0=>n5350, Q0=>open);
    SLICE_345I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FCEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>line_end_N_200, B1=>VSYNC_c, 
                C1=>byte_sel, D1=>HREF_c, DI1=>'X', DI0=>'X', A0=>u_cam_n6085, 
                B0=>n4889, C0=>u_cam_n6091, D0=>u_cam_n6753, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>PCLK_c_enable_39, Q1=>open, 
                OFX0=>open, F0=>line_end_N_200, Q0=>open);
    u_stream_SLICE_346I: SLOGICB
      generic map (LUT0_INITVAL=>X"043F", LUT1_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wr_en_N_1079, 
                B1=>wr_en_N_1077, C1=>pix_valid_rgb, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_stream_wr_en_N_1072, B0=>u_stream_state_0, 
                C0=>u_stream_state_2, D0=>u_stream_state_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_stream_wr_en_N_1072, 
                Q1=>open, OFX0=>open, F0=>u_stream_n2796, Q0=>open);
    u_stream_SLICE_347I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"0880")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_stream_n27, 
                B1=>u_stream_u_dc_n6730, C1=>u_stream_u_dc_rptr_gray_wr2_10, 
                D1=>u_stream_u_dc_wptr_gray_10, DI1=>'X', DI0=>'X', 
                A0=>u_stream_state_1, B0=>u_stream_state_2, 
                C0=>u_stream_state_0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_stream_n34, Q1=>open, OFX0=>open, 
                F0=>u_stream_n27, Q0=>open);
    u_sdram_SLICE_348I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFEF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n28, 
                B1=>u_sdram_n6749, C1=>u_sdram_col_7, D1=>u_sdram_n6747, 
                DI1=>'X', DI0=>'X', A0=>timer_15, B0=>timer_11, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n6071, Q1=>open, OFX0=>open, F0=>u_sdram_n6749, 
                Q0=>open);
    u_sdram_SLICE_349I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n5625, 
                B1=>u_sdram_n6137, C1=>u_sdram_n28, D1=>u_sdram_n6733, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_SD_DQM_1_N_802_1, B0=>n72, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sdram_SD_DQM_1_N_802_1, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5779, Q0=>open);
    u_sdram_SLICE_350I: SLOGICB
      generic map (LUT0_INITVAL=>X"DCCC", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_8, B1=>timer_14, 
                C1=>u_sdram_n6752, D1=>u_sdram_n6129, DI1=>'X', DI0=>'X', 
                A0=>u_sdram_n6350, B0=>u_sdram_n5322, C0=>u_sdram_n6735, 
                D0=>u_sdram_n5453, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sdram_n6350, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n16, Q0=>open);
    u_sdram_SLICE_351I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n5595, 
                B1=>u_sdram_n6356, C1=>u_sdram_n6316, D1=>u_sdram_n5589, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_ref_due_N_811, 
                B0=>u_sdram_rd_empty, C0=>u_sdram_n636, D0=>timer_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_ref_due_N_811, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5094, Q0=>open);
    u_sdram_SLICE_352I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_12, B1=>timer_7, 
                C1=>u_sdram_n6758, D1=>u_sdram_n6746, DI1=>'X', DI0=>'X', 
                A0=>u_sdram_ref_cnt_15_N_577, B0=>u_sdram_n632, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n6017, Q1=>open, OFX0=>open, F0=>u_sdram_n6758, 
                Q0=>open);
    u_sdram_SLICE_353I: SLOGICB
      generic map (LUT0_INITVAL=>X"E0E0", LUT1_INITVAL=>X"88F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n462, B1=>u_sdram_n6737, 
                C1=>u_sdram_n6, D1=>u_sdram_SD_DQM_1_N_802_1, DI1=>'X', 
                DI0=>'X', A0=>u_sdram_ref_cnt_15_N_577, B0=>u_sdram_n632, 
                C0=>timer_0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sdram_n6724, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n6, Q0=>open);
    u_sdram_SLICE_354I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCCE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_9, B1=>timer_3, 
                C1=>timer_6, D1=>timer_5, DI1=>'X', DI0=>'X', 
                A0=>u_sdram_n5823, B0=>u_sdram_n6734, C0=>u_sdram_n6348, 
                D0=>u_sdram_n28, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sdram_n28, Q1=>open, OFX0=>open, 
                F0=>u_sdram_SD_CLK_c_enable_28, Q0=>open);
    u_sdram_SLICE_355I: SLOGICB
      generic map (LUT0_INITVAL=>X"0400", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_2, B1=>timer_1, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_n6137, 
                B0=>u_sdram_n4884, C0=>u_sdram_n6741, D0=>u_sdram_n6739, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n6741, Q1=>open, OFX0=>open, F0=>u_sdram_n5823, 
                Q0=>open);
    u_sdram_SLICE_356I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_12, B1=>timer_10, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_n6274, 
                B0=>timer_0, C0=>timer_13, D0=>timer_4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n6274, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n6348, Q0=>open);
    u_sdram_SLICE_357I: SLOGICB
      generic map (LUT0_INITVAL=>X"E0E0", LUT1_INITVAL=>X"88F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n460, B1=>u_sdram_n6737, 
                C1=>u_sdram_n6_adj_1314, D1=>u_sdram_SD_DQM_1_N_802_1, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_ref_cnt_15_N_577, 
                B0=>u_sdram_n632, C0=>timer_2, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n6723, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n6_adj_1314, Q0=>open);
    u_sdram_SLICE_358I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"F088")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6737, B1=>n461, 
                C1=>u_sdram_n8, D1=>u_sdram_SD_A_12_N_789_6, DI1=>'X', 
                DI0=>'X', A0=>u_sdram_ref_cnt_15_N_577, B0=>u_sdram_n632, 
                C0=>u_sdram_n635, D0=>u_sdram_n1058, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n6725, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n6737, Q0=>open);
    u_sdram_SLICE_359I: SLOGICB
      generic map (LUT0_INITVAL=>X"0020", LUT1_INITVAL=>X"ECCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n5765, 
                B1=>u_sdram_n6734, C1=>u_sdram_n6735, D1=>u_sdram_n5877, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_n636, B0=>u_sdram_fs_sync, 
                C0=>u_sdram_fs_meta, D0=>u_sdram_n632, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_SD_CLK_c_enable_29, 
                Q1=>open, OFX0=>open, F0=>u_sdram_n6734, Q0=>open);
    u_sdram_SLICE_360I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>ref_cnt_6, B1=>ref_cnt_0, 
                C1=>ref_cnt_3, D1=>ref_cnt_9, DI1=>'X', DI0=>'X', 
                A0=>u_sdram_n6326, B0=>ref_cnt_7, C0=>ref_cnt_10, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n6326, Q1=>open, OFX0=>open, F0=>u_sdram_n6346, 
                Q0=>open);
    u_sdram_SLICE_361I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_10, B1=>timer_4, 
                C1=>u_sdram_n6744, D1=>u_sdram_n6747, DI1=>'X', DI0=>'X', 
                A0=>timer_13, B0=>timer_2, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n6352, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n6744, Q0=>open);
    u_sdram_SLICE_362I: SLOGICB
      generic map (LUT0_INITVAL=>X"A8AA", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_col_0, 
                B1=>u_sdram_col_5, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sdram_SD_CLK_c_enable_24, B0=>u_sdram_n6077, 
                C0=>u_sdram_n6071, D0=>u_sdram_n13, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sdram_n13, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n3161, Q0=>open);
    u_sdram_SLICE_363I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_2, B1=>timer_0, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_10, B0=>timer_7, 
                C0=>u_sdram_n6758, D0=>u_sdram_n6127, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n6127, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n5453, Q0=>open);
    u_sdram_SLICE_364I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6039, 
                B1=>u_sdram_n6752, C1=>u_sdram_n6029, D1=>timer_0, DI1=>'X', 
                DI0=>'X', A0=>timer_4, B0=>timer_12, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n6043, 
                Q1=>open, OFX0=>open, F0=>u_sdram_n6752, Q0=>open);
    u_sdram_SLICE_365I: SLOGICB
      generic map (LUT0_INITVAL=>X"FBFF", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_col_4, 
                B1=>u_sdram_col_6, C1=>u_sdram_col_1, D1=>u_sdram_col_2, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_n6069, 
                B0=>u_sdram_n15_adj_1319, C0=>u_sdram_n4828, D0=>u_sdram_n632, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n15_adj_1319, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n6077, Q0=>open);
    u_sdram_SLICE_366I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6740, 
                B1=>u_sdram_n6738, C1=>u_sdram_n6127, D1=>u_sdram_n6129, 
                DI1=>'X', DI0=>'X', A0=>timer_13, B0=>timer_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n6732, Q1=>open, OFX0=>open, F0=>u_sdram_n6129, 
                Q0=>open);
    u_sdram_SLICE_367I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6747, 
                B1=>u_sdram_n6330, C1=>u_sdram_n4884, D1=>u_sdram_n6332, 
                DI1=>'X', DI0=>'X', A0=>timer_4, B0=>timer_12, C0=>timer_7, 
                D0=>timer_10, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n5653, Q1=>open, OFX0=>open, F0=>u_sdram_n6332, 
                Q0=>open);
    u_sdram_SLICE_368I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"FEFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n6129, 
                B1=>u_sdram_n6733, C1=>u_sdram_n6127, D1=>u_sdram_n6745, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_col_8, B0=>u_sdram_col_3, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sdram_n6069, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n6745, Q0=>open);
    u_sdram_SLICE_369I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>ref_cnt_13, B1=>u_sdram_n6318, 
                C1=>u_sdram_n5597, D1=>ref_cnt_7, DI1=>'X', DI0=>'X', 
                A0=>ref_cnt_14, B0=>ref_cnt_9, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n6356, 
                Q1=>open, OFX0=>open, F0=>u_sdram_n5597, Q0=>open);
    u_sdram_SLICE_370I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n5679, 
                B1=>u_sdram_n5693, C1=>u_sdram_n5691, D1=>u_sdram_row_3, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_n4828, B0=>u_sdram_n13, 
                C0=>u_sdram_n15_adj_1319, D0=>u_sdram_n5669, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n4828, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n4884, Q0=>open);
    u_sdram_SLICE_371I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_row_4, 
                B1=>u_sdram_row_5, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sdram_row_12, B0=>u_sdram_n5677, C0=>u_sdram_n5681, 
                D0=>u_sdram_row_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sdram_n5681, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5693, Q0=>open);
    u_sdram_SLICE_372I: SLOGICB
      generic map (LUT0_INITVAL=>X"0004", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_8, B1=>timer_14, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_7, 
                B0=>u_sdram_n632, C0=>u_sdram_n6742, D0=>u_sdram_n6747, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n6747, Q1=>open, OFX0=>open, F0=>u_sdram_n5765, 
                Q0=>open);
    SLICE_373I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"4080", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_gray_9, 
                B1=>wr_full_N_892, C1=>wr_full_N_891, D1=>rptr_gray_wr2_9, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_u_fifo_wptr_gray_8, 
                B0=>u_sdram_u_fifo_rptr_gray_wr2_8, C0=>'X', D0=>'X', 
                M0=>u_sdram_u_fifo_rptr_gray_wr1_9, CE=>'X', CLK=>PCLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_spi_n5323, Q1=>open, OFX0=>open, 
                F0=>wr_full_N_891, Q0=>rptr_gray_wr2_9);
    u_spi_SLICE_374I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_bit_cnt_2, 
                B1=>u_spi_n6298, C1=>u_spi_cmd_7, D1=>SSPI_CS_n_c, DI1=>'X', 
                DI0=>'X', A0=>u_spi_cmd_5, B0=>u_spi_cmd_0, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_spi_n6364, Q1=>open, OFX0=>open, F0=>u_spi_n6298, 
                Q0=>open);
    u_spi_SLICE_375I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_n7, B1=>u_spi_n4, 
                C1=>u_spi_n6364, D1=>u_spi_n6338, DI1=>'X', DI0=>'X', 
                A0=>u_spi_cmd_3, B0=>u_spi_cmd_6, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>rd_data_7_N_1177, 
                Q1=>open, OFX0=>open, F0=>u_spi_n7, Q0=>open);
    u_spi_SLICE_376I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"0008")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_bit_cnt_2, 
                B1=>u_spi_n6755, C1=>u_spi_shift_in_2, D1=>u_spi_shift_in_4, 
                DI1=>'X', DI0=>'X', A0=>u_spi_bit_cnt_1, B0=>u_spi_bit_cnt_0, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n6203, Q1=>open, OFX0=>open, F0=>u_spi_n6755, 
                Q0=>open);
    u_spi_SLICE_377I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"A0A2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_CCLK_c_enable_27, 
                B1=>u_spi_n4968, C1=>u_spi_stream_arm_N_1307, D1=>u_spi_n5334, 
                DI1=>'X', DI0=>'X', A0=>u_spi_bit_cnt_1, B0=>u_spi_bit_cnt_0, 
                C0=>u_spi_bit_cnt_2, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_spi_CCLK_c_enable_29, Q1=>open, 
                OFX0=>open, F0=>u_spi_CCLK_c_enable_27, Q0=>open);
    u_spi_SLICE_378I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_n6756, B1=>u_spi_n7, 
                C1=>u_spi_n6298, D1=>u_spi_cmd_7, DI1=>'X', DI0=>'X', 
                A0=>u_spi_cmd_4, B0=>u_spi_cmd_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_spi_n6378, 
                Q1=>open, OFX0=>open, F0=>u_spi_n6756, Q0=>open);
    u_spi_SLICE_379I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_cmd_4, B1=>u_spi_cmd_0, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_spi_n6286, 
                B0=>u_spi_n7, C0=>u_spi_n6284, D0=>u_spi_n5571, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_spi_n6284, 
                Q1=>open, OFX0=>open, F0=>u_spi_n5581, Q0=>open);
    u_spi_SLICE_380I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"0100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_n6286, B1=>u_spi_n7, 
                C1=>u_spi_n6284, D1=>u_spi_n5547, DI1=>'X', DI0=>'X', 
                A0=>u_spi_cmd_7, B0=>u_spi_cmd_5, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_spi_n5557, 
                Q1=>open, OFX0=>open, F0=>u_spi_n6286, Q0=>open);
    u_spi_SLICE_381I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_cmd_1, 
                B1=>stream_fifo_rd_data_4, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_spi_n6286, B0=>u_spi_n7, C0=>u_spi_n6284, 
                D0=>u_spi_n5523, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_spi_n5523, Q1=>open, OFX0=>open, 
                F0=>u_spi_n5533, Q0=>open);
    u_spi_SLICE_382I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_cmd_1, 
                B1=>stream_fifo_rd_data_5, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_spi_n6286, B0=>u_spi_n7, C0=>u_spi_n6284, 
                D0=>u_spi_n5535, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_spi_n5535, Q1=>open, OFX0=>open, 
                F0=>u_spi_n5545, Q0=>open);
    u_spi_SLICE_383I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_cmd_1, 
                B1=>stream_fifo_rd_data_6, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_spi_n6286, B0=>u_spi_n7, C0=>u_spi_n6284, 
                D0=>u_spi_n5559, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_spi_n5559, Q1=>open, OFX0=>open, 
                F0=>u_spi_n5569, Q0=>open);
    u_spi_SLICE_384I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"0040", LUT1_INITVAL=>X"F7FF", 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_bit_cnt_0, 
                B1=>u_spi_bit_cnt_1, C1=>u_spi_n6153, D1=>u_spi_bit_cnt_2, 
                DI1=>'X', DI0=>'X', A0=>u_spi_n6163, 
                B0=>u_spi_out_byte_7_N_1257, C0=>u_spi_cmd_1, D0=>u_spi_n7, 
                M0=>u_spi_stream_arm_N_1307, CE=>u_spi_CCLK_c_enable_29, 
                CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>u_spi_n6163, Q1=>open, 
                OFX0=>open, F0=>u_spi_CCLK_c_enable_26, 
                Q0=>u_spi_out_byte_7_N_1257);
    u_spi_SLICE_385I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_cmd_4, B1=>u_spi_cmd_5, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_spi_cmd_7, 
                B0=>u_spi_n6149, C0=>u_spi_n6147, D0=>u_spi_cmd_0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_spi_n6147, 
                Q1=>open, OFX0=>open, F0=>u_spi_n6153, Q0=>open);
    u_spi_SLICE_386I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_cmd_0, B1=>u_spi_cmd_1, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_spi_n6218, 
                B0=>u_spi_n7, C0=>u_spi_n6147, D0=>u_spi_cmd_7, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_spi_n6218, 
                Q1=>open, OFX0=>open, F0=>u_spi_n6368, Q0=>open);
    u_sdram_SLICE_387I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_1, B1=>timer_0, 
                C1=>timer_2, D1=>timer_13, DI1=>'X', DI0=>'X', A0=>timer_13, 
                B0=>timer_0, C0=>timer_1, D0=>timer_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n6330, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n5625, Q0=>open);
    u_cam_SLICE_388I: SLOGICB
      generic map (LUT0_INITVAL=>X"0202", LUT1_INITVAL=>X"4040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>VSYNC_c, B1=>HREF_c, 
                C1=>byte_sel, D1=>'X', DI1=>'X', DI0=>'X', A0=>HREF_c, 
                B0=>VSYNC_c, C0=>byte_sel, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_cam_PCLK_c_enable_51, Q1=>open, 
                OFX0=>open, F0=>u_cam_PCLK_c_enable_12, Q0=>open);
    u_sdram_SLICE_389I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_ref_due_N_811, 
                B1=>u_sdram_n636, C1=>u_sdram_rd_empty, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sdram_ref_due_N_811, B0=>u_sdram_rd_empty, 
                C0=>u_sdram_n636, D0=>timer_12, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sdram_n5322, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5090, Q0=>open);
    u_sdram_SLICE_390I: SLOGICB
      generic map (LUT0_INITVAL=>X"2020", LUT1_INITVAL=>X"FF20")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n636, 
                B1=>u_sdram_fs_sync, C1=>u_sdram_fs_meta, D1=>u_sdram_n632, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_n636, B0=>u_sdram_fs_sync, 
                C0=>u_sdram_fs_meta, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sdram_SD_CLK_c_enable_1, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n6751, Q0=>open);
    u_sdram_SLICE_391I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_col_8, 
                B1=>u_sdram_col_3, C1=>u_sdram_col_7, D1=>u_sdram_n13, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_col_7, B0=>u_sdram_col_8, 
                C0=>u_sdram_col_3, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sdram_n5501, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5669, Q0=>open);
    u_sdram_SLICE_392I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_13, B1=>timer_0, 
                C1=>u_sdram_col_4, D1=>timer_7, DI1=>'X', DI0=>'X', 
                A0=>timer_13, B0=>timer_0, C0=>u_sdram_col_0, D0=>timer_7, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n5855, Q1=>open, OFX0=>open, F0=>u_sdram_n5975, 
                Q0=>open);
    u_sdram_SLICE_393I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_13, B1=>timer_0, 
                C1=>u_sdram_col_1, D1=>timer_7, DI1=>'X', DI0=>'X', 
                A0=>timer_13, B0=>timer_0, C0=>u_sdram_col_6, D0=>timer_7, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n5915, Q1=>open, OFX0=>open, F0=>u_sdram_n5935, 
                Q0=>open);
    u_sdram_SLICE_394I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_13, B1=>timer_0, 
                C1=>u_sdram_col_2, D1=>timer_7, DI1=>'X', DI0=>'X', 
                A0=>timer_13, B0=>timer_0, C0=>u_sdram_col_8, D0=>timer_7, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n5835, Q1=>open, OFX0=>open, F0=>u_sdram_n5895, 
                Q0=>open);
    u_sdram_SLICE_395I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>timer_13, B1=>timer_0, 
                C1=>u_sdram_col_3, D1=>timer_7, DI1=>'X', DI0=>'X', 
                A0=>timer_13, B0=>timer_0, C0=>u_sdram_col_7, D0=>timer_7, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n5875, Q1=>open, OFX0=>open, F0=>u_sdram_n5995, 
                Q0=>open);
    u_sdram_SLICE_396I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_row_10, 
                B1=>u_sdram_row_11, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sdram_row_8, B0=>u_sdram_row_6, C0=>u_sdram_row_7, 
                D0=>u_sdram_row_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sdram_n5679, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5691, Q0=>open);
    u_cam_SLICE_397I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>pix_x_2, B1=>pix_x_6, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>pix_x_11, B0=>pix_x_10, 
                C0=>pix_x_5, D0=>pix_x_8, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_cam_n6753, Q1=>open, OFX0=>open, F0=>n4889, 
                Q0=>open);
    u_stream_u_dc_SLICE_398I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666", LUT1_INITVAL=>X"6060")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wptr_gray_11, 
                B1=>u_stream_u_dc_rptr_gray_wr2_11, 
                C1=>u_stream_u_dc_wr_full_N_1156, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_stream_u_dc_wptr_gray_10, 
                B0=>u_stream_u_dc_rptr_gray_wr2_10, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_stream_u_dc_n6730, Q1=>open, OFX0=>open, 
                F0=>u_stream_u_dc_wr_full_N_1155, Q0=>open);
    u_spi_SLICE_399I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_cmd_4, B1=>u_spi_cmd_1, 
                C1=>u_spi_bit_cnt_1, D1=>u_spi_bit_cnt_0, DI1=>'X', DI0=>'X', 
                A0=>stream_fifo_empty, B0=>u_spi_cmd_2, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_spi_n6338, Q1=>open, OFX0=>open, F0=>u_spi_n4, Q0=>open);
    u_sdram_SLICE_400I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"EEEE", 
                   LUT1_INITVAL=>X"EEEE", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_ref_due_N_811, 
                B1=>u_sdram_ref_cnt_15_N_577, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>ref_cnt_2, B0=>ref_cnt_6, C0=>'X', D0=>'X', 
                M0=>n75, CE=>u_sdram_ref_due_N_811, CLK=>SD_CLK_c, 
                LSR=>u_sdram_ref_cnt_15_N_577, OFX1=>open, 
                F1=>u_sdram_SD_CLK_c_enable_30, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5595, Q0=>ref_cnt_2);
    u_sdram_SLICE_401I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>ref_cnt_1, B1=>ref_cnt_15, 
                C1=>ref_cnt_4, D1=>ref_cnt_14, DI1=>'X', DI0=>'X', 
                A0=>ref_cnt_5, B0=>ref_cnt_13, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n6312, 
                Q1=>open, OFX0=>open, F0=>u_sdram_n6262, Q0=>open);
    u_cam_SLICE_402I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>pix_x_4, B1=>pix_x_0, 
                C1=>pix_x_1, D1=>pix_x_9, DI1=>'X', DI0=>'X', A0=>pix_x_3, 
                B0=>pix_x_7, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_cam_n6091, Q1=>open, OFX0=>open, 
                F0=>u_cam_n6085, Q0=>open);
    u_sdram_SLICE_403I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_ref_due_N_811, 
                B1=>u_sdram_n636, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>ref_cnt_3, B0=>ref_cnt_1, C0=>ref_cnt_12, D0=>ref_cnt_15, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n6731, Q1=>open, OFX0=>open, F0=>u_sdram_n6316, 
                Q0=>open);
    u_spi_SLICE_404I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_spi_stream_arm_N_1307, 
                B1=>u_spi_cmd_2, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_spi_cmd_2, B0=>u_spi_cmd_0, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_spi_n6149, 
                Q1=>open, OFX0=>open, F0=>u_spi_n5334, Q0=>open);
    u_sdram_SLICE_405I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>ref_cnt_12, B1=>ref_cnt_11, 
                C1=>u_sdram_n636, D1=>ref_cnt_2, DI1=>'X', DI0=>'X', 
                A0=>ref_cnt_10, B0=>ref_cnt_4, C0=>ref_cnt_0, D0=>ref_cnt_8, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n6187, Q1=>open, OFX0=>open, F0=>u_sdram_n6318, 
                Q0=>open);
    u_cam_SLICE_406I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>pix_x_3, B0=>pix_x_9, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_n10, Q0=>open);
    u_cam_SLICE_407I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBBB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>VSYNC_c, B0=>HREF_c, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_PCLK_c_enable_50, 
                Q0=>open);
    u_stream_SLICE_408I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_stream_state_1, 
                B0=>pix_rgb565_4, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_n5423, Q0=>open);
    u_stream_SLICE_409I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_stream_state_1, 
                B0=>u_stream_state_2, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_n3168, Q0=>open);
    u_stream_SLICE_410I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_stream_state_0, 
                B0=>u_stream_state_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_stream_n5399, Q0=>open);
    u_stream_u_dc_SLICE_411I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>wptr_gray_11, 
                B0=>u_stream_u_dc_rptr_gray_wr2_11, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_stream_u_dc_n6750, Q0=>open);
    u_sdram_SLICE_412I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_rd_empty, B0=>timer_2, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n3, 
                Q0=>open);
    u_sdram_SLICE_413I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_SD_DQM_1_N_802_1, 
                B0=>n66, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5787, Q0=>open);
    u_sdram_SLICE_414I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_SD_DQM_1_N_802_1, 
                B0=>n63, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5783, Q0=>open);
    u_sdram_SLICE_415I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_7, B0=>u_sdram_n16, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n11, 
                Q0=>open);
    u_sdram_SLICE_416I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_n636, 
                B0=>u_sdram_n635, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n6757, Q0=>open);
    u_sdram_SLICE_417I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_8, B0=>u_sdram_n16, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n11_adj_1309, Q0=>open);
    u_sdram_SLICE_418I: SLOGICB
      generic map (LUT0_INITVAL=>X"1111")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_n636, 
                B0=>u_sdram_n635, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n3139, Q0=>open);
    u_sdram_SLICE_419I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_n636, B0=>timer_13, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n6111, 
                Q0=>open);
    u_sdram_SLICE_420I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_14, B0=>u_sdram_n16, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n11_adj_1312, Q0=>open);
    u_sdram_SLICE_421I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_15, B0=>u_sdram_n16, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n11_adj_1313, Q0=>open);
    u_sdram_SLICE_422I: SLOGICB
      generic map (LUT0_INITVAL=>X"BAAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_n1058, 
                B0=>u_sdram_n636, C0=>u_sdram_n6758, D0=>timer_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n8, Q0=>open);
    u_sdram_SLICE_423I: SLOGICB
      generic map (LUT0_INITVAL=>X"0001")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_n6274, B0=>timer_1, 
                C0=>timer_2, D0=>timer_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n5877, 
                Q0=>open);
    u_sdram_SLICE_424I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"FFFE", CHECK_M0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_n6749, 
                B0=>u_sdram_n6744, C0=>timer_7, D0=>u_sdram_n634, 
                M0=>u_sdram_n635, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_SD_DQM_1_N_802_1, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n6039, Q0=>u_sdram_n634);
    u_sdram_SLICE_425I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_1, B0=>timer_10, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n6029, 
                Q0=>open);
    u_sdram_SLICE_426I: SLOGICB
      generic map (LUT0_INITVAL=>X"FE00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_n6758, 
                B0=>u_sdram_n1058, C0=>u_sdram_n635, D0=>n54, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5801, Q0=>open);
    u_sdram_SLICE_427I: SLOGICB
      generic map (LUT0_INITVAL=>X"1111")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_n636, 
                B0=>u_sdram_n1058, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n87, Q0=>open);
    u_sdram_SLICE_428I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_row_2, 
                B0=>u_sdram_row_9, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5677, Q0=>open);
    u_sdram_SLICE_429I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_12, B0=>timer_7, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n6738, 
                Q0=>open);
    u_sdram_SLICE_430I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_7, B0=>u_sdram_n632, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n6739, 
                Q0=>open);
    u_sdram_SLICE_431I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_10, B0=>timer_4, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n6740, 
                Q0=>open);
    u_sdram_SLICE_432I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_10, B0=>timer_4, 
                C0=>timer_7, D0=>timer_12, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n6733, Q0=>open);
    u_sdram_SLICE_433I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_13, B0=>timer_0, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n6742, 
                Q0=>open);
    u_sdram_SLICE_434I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_13, B0=>timer_0, 
                C0=>u_sdram_col_5, D0=>timer_7, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n5955, Q0=>open);
    u_sdram_SLICE_435I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>timer_1, B0=>timer_0, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n6746, Q0=>open);
    u_sdram_u_fifo_SLICE_436I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sdram_rd_empty, 
                B0=>u_sdram_dq_oe, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>SD_CLK_c_enable_63, Q0=>open);
    u_spi_SLICE_437I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_spi_cmd_1, 
                B0=>stream_fifo_rd_data_3, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_spi_n5571, Q0=>open);
    u_spi_SLICE_438I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_spi_cmd_1, 
                B0=>stream_fifo_rd_data_7, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_spi_n5547, Q0=>open);
    u_spi_SLICE_439I: SLOGICB
      generic map (LUT0_INITVAL=>X"0101")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_spi_shift_in_5, 
                B0=>u_spi_shift_in_3, C0=>DIN_c, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_spi_CCLK_c_enable_5, Q0=>open);
    SLICE_440I: SLOGICB
      generic map (LUT0_INITVAL=>X"0000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>GND_net, Q0=>open);
    CRYSTALI: CRYSTALB
      port map (PADDI=>buf_CLKI, CRYSTALS=>CRYSTAL);
    SD_WE_NI: SD_WE_NB
      port map (PADDO=>SD_WE_N_c, SDWEN=>SD_WE_N);
    SD_CS_NI: SD_CS_NB
      port map (SDCSN=>SD_CS_N);
    SD_CLKI: SD_CLKB
      port map (PADDO=>SD_CLK_c, SDCLK=>SD_CLK);
    SD_RAS_NI: SD_RAS_NB
      port map (PADDO=>SD_RAS_N_c, SDRASN=>SD_RAS_N);
    DOUTI: DOUTB
      port map (PADDO=>DOUT_c, DOUTS=>DOUT);
    MCLKI: MCLKB
      port map (PADDO=>MCLK_c, MCLKS=>MCLK);
    SD_CAS_NI: SD_CAS_NB
      port map (PADDO=>SD_CAS_N_c, SDCASN=>SD_CAS_N);
    SD_A_12_I: SD_A_12_B
      port map (PADDO=>SD_A_c_12, SDA12=>SD_A(12));
    SD_A_11_I: SD_A_11_B
      port map (PADDO=>SD_A_c_11, SDA11=>SD_A(11));
    SD_A_10_I: SD_A_10_B
      port map (PADDO=>SD_A_c_10, SDA10=>SD_A(10));
    SD_A_9_I: SD_A_9_B
      port map (PADDO=>SD_A_c_9, SDA9=>SD_A(9));
    SD_A_8_I: SD_A_8_B
      port map (PADDO=>SD_A_c_8, SDA8=>SD_A(8));
    SD_A_7_I: SD_A_7_B
      port map (PADDO=>SD_A_c_7, SDA7=>SD_A(7));
    SD_A_6_I: SD_A_6_B
      port map (PADDO=>SD_A_c_6, SDA6=>SD_A(6));
    SD_A_5_I: SD_A_5_B
      port map (PADDO=>SD_A_c_5, SDA5=>SD_A(5));
    SD_A_4_I: SD_A_4_B
      port map (PADDO=>SD_A_c_4, SDA4=>SD_A(4));
    SD_A_3_I: SD_A_3_B
      port map (PADDO=>SD_A_c_3, SDA3=>SD_A(3));
    SD_A_2_I: SD_A_2_B
      port map (PADDO=>SD_A_c_2, SDA2=>SD_A(2));
    SD_A_1_I: SD_A_1_B
      port map (PADDO=>SD_A_c_1, SDA1=>SD_A(1));
    SD_A_0_I: SD_A_0_B
      port map (PADDO=>SD_A_c_0, SDA0=>SD_A(0));
    SD_BA_1_I: SD_BA_1_B
      port map (PADDO=>SD_BA_c_1, SDBA1=>SD_BA(1));
    SD_BA_0_I: SD_BA_0_B
      port map (PADDO=>SD_BA_c_0, SDBA0=>SD_BA(0));
    SD_DQ_15_I: SD_DQ_15_B
      port map (PADDO=>fifo_dout_15, PADDT=>u_sdram_dq_oe, SDDQ15=>SD_DQ(15));
    SD_DQ_14_I: SD_DQ_14_B
      port map (PADDO=>fifo_dout_14, PADDT=>u_sdram_dq_oe, SDDQ14=>SD_DQ(14));
    SD_DQ_13_I: SD_DQ_13_B
      port map (PADDO=>fifo_dout_13, PADDT=>u_sdram_dq_oe, SDDQ13=>SD_DQ(13));
    SD_DQ_12_I: SD_DQ_12_B
      port map (PADDO=>fifo_dout_12, PADDT=>u_sdram_dq_oe, SDDQ12=>SD_DQ(12));
    SD_DQ_11_I: SD_DQ_11_B
      port map (PADDO=>fifo_dout_11, PADDT=>u_sdram_dq_oe, SDDQ11=>SD_DQ(11));
    SD_DQ_10_I: SD_DQ_10_B
      port map (PADDO=>fifo_dout_10, PADDT=>u_sdram_dq_oe, SDDQ10=>SD_DQ(10));
    SD_DQ_9_I: SD_DQ_9_B
      port map (PADDO=>fifo_dout_9, PADDT=>u_sdram_dq_oe, SDDQ9=>SD_DQ(9));
    SD_DQ_8_I: SD_DQ_8_B
      port map (PADDO=>fifo_dout_8, PADDT=>u_sdram_dq_oe, SDDQ8=>SD_DQ(8));
    SD_DQ_7_I: SD_DQ_7_B
      port map (PADDO=>fifo_dout_7, PADDT=>u_sdram_dq_oe, SDDQ7=>SD_DQ(7));
    SD_DQ_6_I: SD_DQ_6_B
      port map (PADDO=>fifo_dout_6, PADDT=>u_sdram_dq_oe, SDDQ6=>SD_DQ(6));
    SD_DQ_5_I: SD_DQ_5_B
      port map (PADDO=>fifo_dout_5, PADDT=>u_sdram_dq_oe, SDDQ5=>SD_DQ(5));
    SD_DQ_4_I: SD_DQ_4_B
      port map (PADDO=>fifo_dout_4, PADDT=>u_sdram_dq_oe, SDDQ4=>SD_DQ(4));
    SD_DQ_3_I: SD_DQ_3_B
      port map (PADDO=>fifo_dout_3, PADDT=>u_sdram_dq_oe, SDDQ3=>SD_DQ(3));
    SD_DQ_2_I: SD_DQ_2_B
      port map (PADDO=>fifo_dout_2, PADDT=>u_sdram_dq_oe, SDDQ2=>SD_DQ(2));
    SD_DQ_1_I: SD_DQ_1_B
      port map (PADDO=>fifo_dout_1, PADDT=>u_sdram_dq_oe, SDDQ1=>SD_DQ(1));
    SD_DQ_0_I: SD_DQ_0_B
      port map (PADDO=>fifo_dout_0, PADDT=>u_sdram_dq_oe, SDDQ0=>SD_DQ(0));
    SD_DQM_1_I: SD_DQM_1_B
      port map (PADDO=>SD_DQM_c_0, SDDQM1=>SD_DQM(1));
    SD_DQM_0_I: SD_DQM_0_B
      port map (PADDO=>SD_DQM_c_0, SDDQM0=>SD_DQM(0));
    PCLKI: PCLKB
      port map (PADDI=>PCLK_c, PCLKS=>PCLK);
    VSYNCI: VSYNCB
      port map (PADDI=>VSYNC_c, VSYNCS=>VSYNC);
    HREFI: HREFB
      port map (PADDI=>HREF_c, HREFS=>HREF);
    Y9I: Y9B
      port map (PADDI=>Y9_c_7, Y9S=>Y9);
    Y8I: Y8B
      port map (PADDI=>Y8_c_6, Y8S=>Y8);
    Y7I: Y7B
      port map (PADDI=>Y7_c_5, Y7S=>Y7);
    Y6I: Y6B
      port map (PADDI=>Y6_c_4, Y6S=>Y6);
    Y5I: Y5B
      port map (PADDI=>Y5_c_3, Y5S=>Y5);
    Y4I: Y4B
      port map (PADDI=>Y4_c_2, Y4S=>Y4);
    Y3I: Y3B
      port map (PADDI=>Y3_c_1, Y3S=>Y3);
    Y2I: Y2B
      port map (PADDI=>Y2_c_0, Y2S=>Y2);
    CCLKI: CCLKB
      port map (PADDI=>CCLK_c, CCLKS=>CCLK);
    SSPI_CS_nI: SSPI_CS_nB
      port map (PADDI=>SSPI_CS_n_c, SSPICSn=>SSPI_CS_n);
    DINI: DINB
      port map (PADDI=>DIN_c, DINS=>DIN);
    GSR_INST: GSR_INSTB
      port map (GSRNET=>SSPI_CS_n_c);
    u_stream_u_dc_mem0I: u_stream_u_dc_mem0
      port map (DIA7=>u_stream_wr_data_7, DIA6=>u_stream_wr_data_6, 
                DIA5=>u_stream_wr_data_5, DIA4=>u_stream_wr_data_4, 
                DIA3=>u_stream_wr_data_3, DIA2=>u_stream_wr_data_2, 
                DIA1=>u_stream_wr_data_1, DIA0=>u_stream_wr_data_0, 
                ADA13=>wptr_bin_10, ADA12=>wptr_bin_9, 
                ADA11=>wptr_bin_8_adj_1360, ADA10=>wptr_bin_7_adj_1361, 
                ADA9=>wptr_bin_6_adj_1362, ADA8=>wptr_bin_5_adj_1363, 
                ADA7=>wptr_bin_4_adj_1364, ADA6=>wptr_bin_3_adj_1365, 
                ADA5=>wptr_bin_2_adj_1366, ADA4=>wptr_bin_1_adj_1367, 
                ADA3=>wptr_bin_0_adj_1368, 
                WEA=>u_stream_u_dc_wptr_bin_11_N_1150, CLKA=>PCLK_c, 
                CLKB=>CCLK_c, DOB0=>u_stream_u_dc_n1784, 
                DOB1=>u_stream_u_dc_n1786, DOB2=>u_stream_u_dc_n1788, 
                DOB3=>u_stream_u_dc_n1790, DOB4=>u_stream_u_dc_n1792, 
                DOB5=>u_stream_u_dc_n1794, DOB6=>u_stream_u_dc_n1796, 
                DOB7=>u_stream_u_dc_n1798, ADB3=>u_stream_u_dc_n1745, 
                ADB4=>u_stream_u_dc_n1744, ADB5=>u_stream_u_dc_n1743, 
                ADB6=>u_stream_u_dc_n1742, ADB7=>u_stream_u_dc_n1741, 
                ADB8=>u_stream_u_dc_n1740, ADB9=>u_stream_u_dc_n1739, 
                ADB10=>u_stream_u_dc_n1738, ADB11=>u_stream_u_dc_n1737, 
                ADB12=>u_stream_u_dc_n1736, ADB13=>u_stream_u_dc_n1735);
    u_pll_PLLInst_0I: u_pll_PLLInst_0
      port map (CLKI=>buf_CLKI, CLKFB=>SD_CLK_c, STDBY=>GND_net, CLKOS=>MCLK_c, 
                CLKOP=>SD_CLK_c);
    u_sdram_u_fifo_mem0I: u_sdram_u_fifo_mem0
      port map (DIA15=>pix_rgb565_15, DIA14=>pix_rgb565_14, 
                DIA13=>pix_rgb565_13, DIA12=>pix_rgb565_12, 
                DIA11=>pix_rgb565_11, DIA10=>pix_rgb565_10, DIA9=>pix_rgb565_9, 
                DIA8=>pix_rgb565_8, DIA7=>pix_rgb565_7, DIA6=>pix_rgb565_6, 
                DIA5=>pix_rgb565_5, DIA4=>pix_rgb565_4, DIA3=>pix_rgb565_3, 
                DIA2=>pix_rgb565_2, DIA1=>pix_rgb565_1, DIA0=>pix_rgb565_0, 
                ADA12=>wptr_bin_8, ADA11=>wptr_bin_7, ADA10=>wptr_bin_6, 
                ADA9=>wptr_bin_5, ADA8=>wptr_bin_4, ADA7=>wptr_bin_3, 
                ADA6=>wptr_bin_2, ADA5=>wptr_bin_1, ADA4=>wptr_bin_0, 
                WEA=>wptr_bin_9_N_886, CLKA=>PCLK_c, CLKB=>SD_CLK_c, 
                DOB0=>u_sdram_u_fifo_n1842, DOB1=>u_sdram_u_fifo_n1844, 
                DOB2=>u_sdram_u_fifo_n1846, DOB3=>u_sdram_u_fifo_n1848, 
                DOB4=>u_sdram_u_fifo_n1850, DOB5=>u_sdram_u_fifo_n1852, 
                DOB6=>u_sdram_u_fifo_n1854, DOB7=>u_sdram_u_fifo_n1856, 
                DOB8=>u_sdram_u_fifo_n1858, DOB9=>u_sdram_u_fifo_n1860, 
                DOB10=>u_sdram_u_fifo_n1862, DOB11=>u_sdram_u_fifo_n1864, 
                DOB12=>u_sdram_u_fifo_n1866, DOB13=>u_sdram_u_fifo_n1868, 
                DOB14=>u_sdram_u_fifo_n1870, DOB15=>u_sdram_u_fifo_n1872, 
                ADB4=>u_sdram_u_fifo_n1809, ADB5=>u_sdram_u_fifo_n1808, 
                ADB6=>u_sdram_u_fifo_n1807, ADB7=>u_sdram_u_fifo_n1806, 
                ADB8=>u_sdram_u_fifo_n1805, ADB9=>u_sdram_u_fifo_n1804, 
                ADB10=>u_sdram_u_fifo_n1803, ADB11=>u_sdram_u_fifo_n1802, 
                ADB12=>u_sdram_u_fifo_n1801);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
  end Structure;



  library IEEE, vital2000, ECP5U;
  configuration Structure_CON of fpga_top is
    for Structure
    end for;
  end Structure_CON;


