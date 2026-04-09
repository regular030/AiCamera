
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.14.0.75.2

-- ldbanno -n VHDL -o AICAM_impl1_mapvho.vho -w -neg -gui -msgset C:/Users/kunsh/Desktop/AiCamera/Lattice Diamond/promote.xml AICAM_impl1_map.ncd 
-- Netlist created on Wed Mar 18 08:21:47 2026
-- Netlist written on Wed Mar 18 08:21:54 2026
-- Design is for device LFE5U-25F
-- Design is for package CABGA256
-- Design is for performance grade 6

-- entity sapiobuf
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf : ENTITY IS TRUE;

  end sapiobuf;

  architecture Structure of sapiobuf is
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
      InstancePath  	: string := "SD_DQ_13_B");

    port (SDDQ13: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_13_B : ENTITY IS TRUE;

  end SD_DQ_13_B;

  architecture Structure of SD_DQ_13_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ13_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_13: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ13_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ13_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ13 	<= SDDQ13_out;


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
      InstancePath  	: string := "SD_DQ_14_B");

    port (SDDQ14: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_14_B : ENTITY IS TRUE;

  end SD_DQ_14_B;

  architecture Structure of SD_DQ_14_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ14_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_14: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ14_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ14_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ14 	<= SDDQ14_out;


    END PROCESS;

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
      InstancePath  	: string := "SD_DQ_15_B");

    port (SDDQ15: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_15_B : ENTITY IS TRUE;

  end SD_DQ_15_B;

  architecture Structure of SD_DQ_15_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ15_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_15: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ15_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ15_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ15 	<= SDDQ15_out;


    END PROCESS;

  end Structure;

-- entity sapiobuf0001
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0001 is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0001 : ENTITY IS TRUE;

  end sapiobuf0001;

  architecture Structure of sapiobuf0001 is
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
    component sapiobuf0001
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    cam_sda_pad: sapiobuf0001
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

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    cam_scl_pad: sapiobuf0002
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

-- entity sapiobuf0004
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0004 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0004 : ENTITY IS TRUE;

  end sapiobuf0004;

  architecture Structure of sapiobuf0004 is
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

    component sapiobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    M_D0_pad: sapiobuf0004
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

    component sapiobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    RX_pad: sapiobuf0005
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

    component sapiobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    CRYSTAL_pad: sapiobuf0004
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

-- entity sapiobuf0006
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0006 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0006 : ENTITY IS TRUE;

  end sapiobuf0006;

  architecture Structure of sapiobuf0006 is
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
      tpd_PADDO_MCLKS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; MCLKS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF M_CLKB : ENTITY IS TRUE;

  end M_CLKB;

  architecture Structure of M_CLKB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal MCLKS_out 	: std_logic := 'X';

    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    M_CLK_pad: sapiobuf0006
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

    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    M_D3_pad: sapiobuf0006
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
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    M_D2_pad: sapiobuf
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
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    M_D1_pad: sapiobuf
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

    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    M_CMD_pad: sapiobuf0006
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

    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    TX_pad: sapiobuf0006
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
      InstancePath  	: string := "ESP_D_0_B");

    port (ESPD0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_0_B : ENTITY IS TRUE;

  end ESP_D_0_B;

  architecture Structure of ESP_D_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal ESPD0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_0: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>ESPD0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (ESPD0_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD0 	<= ESPD0_out;


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
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_1: sapiobuf
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
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_2: sapiobuf
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
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_3: sapiobuf
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
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_4: sapiobuf
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
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_5: sapiobuf
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
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_6: sapiobuf
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
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ESP_D_pad_7: sapiobuf
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
    component sapiobuf0007
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    DOUT_pad: sapiobuf0007
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_BA_pad_0: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_BA_pad_1: sapiobuf0006
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
    component sapiobuf0007
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_0: sapiobuf0007
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_1: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_2: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_3: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_4: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_5: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_6: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_7: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_8: sapiobuf0006
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

    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_9: sapiobuf0006
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
    component sapiobuf0007
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_10: sapiobuf0007
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_11: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_12: sapiobuf0006
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

    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_CAS_N_pad: sapiobuf0006
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

    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_RAS_N_pad: sapiobuf0006
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

    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_WE_N_pad: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_CS_N_pad: sapiobuf0006
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

    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_CLK_pad: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQM_pad_0: sapiobuf0006
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0006
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQM_pad_1: sapiobuf0006
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
      InstancePath  	: string := "SD_DQ_0_B");

    port (SDDQ0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_0_B : ENTITY IS TRUE;

  end SD_DQ_0_B;

  architecture Structure of SD_DQ_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_0: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ0_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ0 	<= SDDQ0_out;


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
      InstancePath  	: string := "SD_DQ_1_B");

    port (SDDQ1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_1_B : ENTITY IS TRUE;

  end SD_DQ_1_B;

  architecture Structure of SD_DQ_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_1: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ1_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ1 	<= SDDQ1_out;


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
      InstancePath  	: string := "SD_DQ_2_B");

    port (SDDQ2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_2_B : ENTITY IS TRUE;

  end SD_DQ_2_B;

  architecture Structure of SD_DQ_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_2: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ2_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ2 	<= SDDQ2_out;


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
      InstancePath  	: string := "SD_DQ_3_B");

    port (SDDQ3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_3_B : ENTITY IS TRUE;

  end SD_DQ_3_B;

  architecture Structure of SD_DQ_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_3: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ3_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ3 	<= SDDQ3_out;


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
      InstancePath  	: string := "SD_DQ_4_B");

    port (SDDQ4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_4_B : ENTITY IS TRUE;

  end SD_DQ_4_B;

  architecture Structure of SD_DQ_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_4: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ4_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ4 	<= SDDQ4_out;


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
      InstancePath  	: string := "SD_DQ_5_B");

    port (SDDQ5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_5_B : ENTITY IS TRUE;

  end SD_DQ_5_B;

  architecture Structure of SD_DQ_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_5: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ5_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ5 	<= SDDQ5_out;


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
      InstancePath  	: string := "SD_DQ_6_B");

    port (SDDQ6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_6_B : ENTITY IS TRUE;

  end SD_DQ_6_B;

  architecture Structure of SD_DQ_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_6: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ6_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ6 	<= SDDQ6_out;


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
      InstancePath  	: string := "SD_DQ_7_B");

    port (SDDQ7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_7_B : ENTITY IS TRUE;

  end SD_DQ_7_B;

  architecture Structure of SD_DQ_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_7: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ7_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ7 	<= SDDQ7_out;


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
      InstancePath  	: string := "SD_DQ_8_B");

    port (SDDQ8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_8_B : ENTITY IS TRUE;

  end SD_DQ_8_B;

  architecture Structure of SD_DQ_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ8_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_8: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ8_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ8_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ8 	<= SDDQ8_out;


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
      InstancePath  	: string := "SD_DQ_9_B");

    port (SDDQ9: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_9_B : ENTITY IS TRUE;

  end SD_DQ_9_B;

  architecture Structure of SD_DQ_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ9_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_9: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ9_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ9_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ9 	<= SDDQ9_out;


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
      InstancePath  	: string := "SD_DQ_10_B");

    port (SDDQ10: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_10_B : ENTITY IS TRUE;

  end SD_DQ_10_B;

  architecture Structure of SD_DQ_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ10_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_10: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ10_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ10_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ10 	<= SDDQ10_out;


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
      InstancePath  	: string := "SD_DQ_11_B");

    port (SDDQ11: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_11_B : ENTITY IS TRUE;

  end SD_DQ_11_B;

  architecture Structure of SD_DQ_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ11_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_11: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ11_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ11_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ11 	<= SDDQ11_out;


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
      InstancePath  	: string := "SD_DQ_12_B");

    port (SDDQ12: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_12_B : ENTITY IS TRUE;

  end SD_DQ_12_B;

  architecture Structure of SD_DQ_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDDQ12_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    SD_DQ_pad_12: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>SDDQ12_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDDQ12_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ12 	<= SDDQ12_out;


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

-- entity mux_341
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity mux_341 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "mux_341";

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

    ATTRIBUTE Vital_Level0 OF mux_341 : ENTITY IS TRUE;

  end mux_341;

  architecture Structure of mux_341 is
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
    mux_341_PDPW16KD: PDPW16KDB
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

-- entity PDPW16KD0008
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity PDPW16KD0008 is
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

    ATTRIBUTE Vital_Level0 OF PDPW16KD0008 : ENTITY IS TRUE;

  end PDPW16KD0008;

  architecture Structure of PDPW16KD0008 is
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

-- entity u_cam_cfg_u_rom_mux_839
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_cam_cfg_u_rom_mux_839 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_cam_cfg_u_rom_mux_839";

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

    ATTRIBUTE Vital_Level0 OF u_cam_cfg_u_rom_mux_839 : ENTITY IS TRUE;

  end u_cam_cfg_u_rom_mux_839;

  architecture Structure of u_cam_cfg_u_rom_mux_839 is
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
    component PDPW16KD0008
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
    u_cam_cfg_u_rom_mux_839_PDPW16KD: PDPW16KD0008
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

-- entity u_cam_cfg_u_rom_mux_835
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_cam_cfg_u_rom_mux_835 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_cam_cfg_u_rom_mux_835";

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

    ATTRIBUTE Vital_Level0 OF u_cam_cfg_u_rom_mux_835 : ENTITY IS TRUE;

  end u_cam_cfg_u_rom_mux_835;

  architecture Structure of u_cam_cfg_u_rom_mux_835 is
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
    u_cam_cfg_u_rom_mux_835_PDPW16KD: PDPW16KD0009
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

-- entity u_cam_cfg_u_rom_mux_838
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_cam_cfg_u_rom_mux_838 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_cam_cfg_u_rom_mux_838";

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

    ATTRIBUTE Vital_Level0 OF u_cam_cfg_u_rom_mux_838 : ENTITY IS TRUE;

  end u_cam_cfg_u_rom_mux_838;

  architecture Structure of u_cam_cfg_u_rom_mux_838 is
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
    u_cam_cfg_u_rom_mux_838_PDPW16KD: PDPW16KD0010
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

-- entity u_cam_cfg_u_rom_mux_836
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity u_cam_cfg_u_rom_mux_836 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "u_cam_cfg_u_rom_mux_836";

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

    ATTRIBUTE Vital_Level0 OF u_cam_cfg_u_rom_mux_836 : ENTITY IS TRUE;

  end u_cam_cfg_u_rom_mux_836;

  architecture Structure of u_cam_cfg_u_rom_mux_836 is
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
    u_cam_cfg_u_rom_mux_836_PDPW16KD: PDPW16KD0011
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
          SD_DQ: out Std_logic_vector (15 downto 0); 
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
    signal u_ctrl_u_tx_clk_cnt_4: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_3: Std_logic;
    signal u_ctrl_u_tx_n81: Std_logic;
    signal u_ctrl_u_tx_n82: Std_logic;
    signal u_ctrl_u_tx_n28555: Std_logic;
    signal SD_CLK_c: Std_logic;
    signal u_ctrl_u_tx_n56540: Std_logic;
    signal u_ctrl_u_tx_n56541: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_2: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_1: Std_logic;
    signal u_ctrl_u_tx_n83: Std_logic;
    signal u_ctrl_u_tx_n84: Std_logic;
    signal u_ctrl_u_tx_n56539: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_0: Std_logic;
    signal u_ctrl_u_tx_n85: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_15: Std_logic;
    signal u_ctrl_u_tx_n70: Std_logic;
    signal u_ctrl_u_tx_n56546: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_14: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_13: Std_logic;
    signal u_ctrl_u_tx_n71: Std_logic;
    signal u_ctrl_u_tx_n72: Std_logic;
    signal u_ctrl_u_tx_n56545: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_12: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_11: Std_logic;
    signal u_ctrl_u_tx_n73: Std_logic;
    signal u_ctrl_u_tx_n74: Std_logic;
    signal u_ctrl_u_tx_n56544: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_10: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_9: Std_logic;
    signal u_ctrl_u_tx_n75: Std_logic;
    signal u_ctrl_u_tx_n76: Std_logic;
    signal u_ctrl_u_tx_n56543: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_8: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_7: Std_logic;
    signal u_ctrl_u_tx_n77: Std_logic;
    signal u_ctrl_u_tx_n78: Std_logic;
    signal u_ctrl_u_tx_n56542: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_6: Std_logic;
    signal u_ctrl_u_tx_clk_cnt_5: Std_logic;
    signal u_ctrl_u_tx_n79: Std_logic;
    signal u_ctrl_u_tx_n80: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_15: Std_logic;
    signal u_ctrl_u_rx_n70: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_257: Std_logic;
    signal u_ctrl_u_rx_n51518: Std_logic;
    signal u_ctrl_u_rx_n56594: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_14: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_13: Std_logic;
    signal u_ctrl_u_rx_n71: Std_logic;
    signal u_ctrl_u_rx_n72: Std_logic;
    signal u_ctrl_u_rx_n56593: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_12: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_11: Std_logic;
    signal u_ctrl_u_rx_n73: Std_logic;
    signal u_ctrl_u_rx_n74: Std_logic;
    signal u_ctrl_u_rx_n56592: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_10: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_9: Std_logic;
    signal u_ctrl_u_rx_n75: Std_logic;
    signal u_ctrl_u_rx_n76: Std_logic;
    signal u_ctrl_u_rx_n56591: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_8: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_7: Std_logic;
    signal u_ctrl_u_rx_n77: Std_logic;
    signal u_ctrl_u_rx_n78: Std_logic;
    signal u_ctrl_u_rx_n56590: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_6: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_5: Std_logic;
    signal u_ctrl_u_rx_n79: Std_logic;
    signal u_ctrl_u_rx_n80: Std_logic;
    signal u_ctrl_u_rx_n56589: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_4: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_3: Std_logic;
    signal u_ctrl_u_rx_n81: Std_logic;
    signal u_ctrl_u_rx_n82: Std_logic;
    signal u_ctrl_u_rx_n56588: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_2: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_1: Std_logic;
    signal u_ctrl_u_rx_n83: Std_logic;
    signal u_ctrl_u_rx_n84: Std_logic;
    signal u_ctrl_u_rx_n56587: Std_logic;
    signal u_ctrl_u_rx_clk_cnt_0: Std_logic;
    signal u_ctrl_u_rx_n85: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_0: Std_logic;
    signal u_ctrl_rx_data_0: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_1: Std_logic;
    signal u_ctrl_rx_data_1: Std_logic;
    signal u_ctrl_u_cmd_n56361: Std_logic;
    signal u_ctrl_u_cmd_cmd_valid_N_765: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_2: Std_logic;
    signal u_ctrl_rx_data_2: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_3: Std_logic;
    signal u_ctrl_rx_data_3: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_4: Std_logic;
    signal u_ctrl_rx_data_4: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_5: Std_logic;
    signal u_ctrl_rx_data_5: Std_logic;
    signal u_ctrl_u_cmd_n56360: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_6: Std_logic;
    signal u_ctrl_rx_data_6: Std_logic;
    signal u_ctrl_u_cmd_chk_calc_7: Std_logic;
    signal u_ctrl_rx_data_7: Std_logic;
    signal rom_addr_2: Std_logic;
    signal st_3: Std_logic;
    signal st_0: Std_logic;
    signal n62058: Std_logic;
    signal rom_addr_1: Std_logic;
    signal n316: Std_logic;
    signal n317: Std_logic;
    signal tick: Std_logic;
    signal n56560: Std_logic;
    signal n56561: Std_logic;
    signal n54018: Std_logic;
    signal n58929: Std_logic;
    signal rom_addr_0: Std_logic;
    signal n318: Std_logic;
    signal resp_tries_7: Std_logic;
    signal n54095: Std_logic;
    signal spi_done: Std_logic;
    signal n56365: Std_logic;
    signal resp_tries_6: Std_logic;
    signal n56367: Std_logic;
    signal n56553: Std_logic;
    signal n23: Std_logic;
    signal n20: Std_logic;
    signal wr_count_6: Std_logic;
    signal wr_count_5: Std_logic;
    signal n56557: Std_logic;
    signal n36_adj_12259: Std_logic;
    signal n33: Std_logic;
    signal n56558: Std_logic;
    signal resp_tries_5: Std_logic;
    signal n56369: Std_logic;
    signal resp_tries_4: Std_logic;
    signal n56371: Std_logic;
    signal n56552: Std_logic;
    signal n29: Std_logic;
    signal n26: Std_logic;
    signal wr_count_8: Std_logic;
    signal wr_count_7: Std_logic;
    signal n30: Std_logic;
    signal n27: Std_logic;
    signal n56559: Std_logic;
    signal wr_count_9: Std_logic;
    signal n58356: Std_logic;
    signal wr_count_0: Std_logic;
    signal n51_adj_12254: Std_logic;
    signal n56555: Std_logic;
    signal resp_tries_3: Std_logic;
    signal n56373: Std_logic;
    signal resp_tries_2: Std_logic;
    signal n56375: Std_logic;
    signal n56551: Std_logic;
    signal n35: Std_logic;
    signal n32_adj_12253: Std_logic;
    signal resp_tries_1: Std_logic;
    signal n56377: Std_logic;
    signal resp_tries_0: Std_logic;
    signal n56379: Std_logic;
    signal n56550: Std_logic;
    signal n41: Std_logic;
    signal n38: Std_logic;
    signal div_cnt_15: Std_logic;
    signal n36: Std_logic;
    signal u_sd_SD_CLK_c_enable_263: Std_logic;
    signal u_sd_n36876: Std_logic;
    signal n56538: Std_logic;
    signal n58397: Std_logic;
    signal n53799: Std_logic;
    signal n53790: Std_logic;
    signal div_cnt_14: Std_logic;
    signal div_cnt_13: Std_logic;
    signal n39: Std_logic;
    signal n42: Std_logic;
    signal n56537: Std_logic;
    signal div_cnt_12: Std_logic;
    signal div_cnt_11: Std_logic;
    signal n45: Std_logic;
    signal n48: Std_logic;
    signal n56536: Std_logic;
    signal wr_count_4: Std_logic;
    signal wr_count_3: Std_logic;
    signal n56556: Std_logic;
    signal n42_adj_12257: Std_logic;
    signal n39_adj_12258: Std_logic;
    signal div_cnt_10: Std_logic;
    signal div_cnt_9: Std_logic;
    signal n51: Std_logic;
    signal n54: Std_logic;
    signal n56535: Std_logic;
    signal div_cnt_8: Std_logic;
    signal div_cnt_7: Std_logic;
    signal n57: Std_logic;
    signal n60: Std_logic;
    signal n56534: Std_logic;
    signal div_cnt_6: Std_logic;
    signal div_cnt_5: Std_logic;
    signal n63: Std_logic;
    signal n66: Std_logic;
    signal n56533: Std_logic;
    signal u_sdram_refresh_cnt_15: Std_logic;
    signal u_sdram_n70: Std_logic;
    signal u_sdram_n28589: Std_logic;
    signal u_sdram_n56586: Std_logic;
    signal u_sdram_refresh_cnt_14: Std_logic;
    signal u_sdram_refresh_cnt_13: Std_logic;
    signal u_sdram_n71: Std_logic;
    signal u_sdram_n72: Std_logic;
    signal u_sdram_n56585: Std_logic;
    signal u_sdram_refresh_cnt_12: Std_logic;
    signal u_sdram_refresh_cnt_11: Std_logic;
    signal u_sdram_n73: Std_logic;
    signal u_sdram_n74: Std_logic;
    signal u_sdram_n56584: Std_logic;
    signal u_sdram_refresh_cnt_10: Std_logic;
    signal u_sdram_refresh_cnt_9: Std_logic;
    signal u_sdram_n75: Std_logic;
    signal u_sdram_n76: Std_logic;
    signal u_sdram_n56583: Std_logic;
    signal u_sdram_refresh_cnt_8: Std_logic;
    signal u_sdram_refresh_cnt_7: Std_logic;
    signal u_sdram_n77: Std_logic;
    signal u_sdram_n78: Std_logic;
    signal u_sdram_n56582: Std_logic;
    signal u_sdram_refresh_cnt_6: Std_logic;
    signal u_sdram_refresh_cnt_5: Std_logic;
    signal u_sdram_n79: Std_logic;
    signal u_sdram_n80: Std_logic;
    signal u_sdram_n56581: Std_logic;
    signal u_sdram_refresh_cnt_4: Std_logic;
    signal u_sdram_n13: Std_logic;
    signal u_sdram_n81: Std_logic;
    signal u_sdram_n82: Std_logic;
    signal u_sdram_n56580: Std_logic;
    signal u_sdram_n14: Std_logic;
    signal u_sdram_n15: Std_logic;
    signal u_sdram_n83: Std_logic;
    signal u_sdram_n84: Std_logic;
    signal u_sdram_n56579: Std_logic;
    signal u_sdram_n16_adj_12245: Std_logic;
    signal u_sdram_n85: Std_logic;
    signal div_cnt_4: Std_logic;
    signal div_cnt_3: Std_logic;
    signal n69: Std_logic;
    signal n72: Std_logic;
    signal n56532: Std_logic;
    signal dummy_left_7: Std_logic;
    signal n14: Std_logic;
    signal n13: Std_logic;
    signal dummy_left_6: Std_logic;
    signal n56572: Std_logic;
    signal n25: Std_logic;
    signal n22: Std_logic;
    signal dummy_left_5: Std_logic;
    signal dummy_left_4: Std_logic;
    signal n56571: Std_logic;
    signal n31: Std_logic;
    signal n28: Std_logic;
    signal dummy_left_3: Std_logic;
    signal dummy_left_2: Std_logic;
    signal n56570: Std_logic;
    signal n37: Std_logic;
    signal n34: Std_logic;
    signal div_cnt_2: Std_logic;
    signal div_cnt_1: Std_logic;
    signal n75: Std_logic;
    signal n78: Std_logic;
    signal n56531: Std_logic;
    signal dummy_left_1: Std_logic;
    signal dummy_left_0: Std_logic;
    signal n56569: Std_logic;
    signal n43: Std_logic;
    signal n40: Std_logic;
    signal rom_addr_10: Std_logic;
    signal rom_addr_9: Std_logic;
    signal n308: Std_logic;
    signal n309: Std_logic;
    signal n56564: Std_logic;
    signal rom_addr_8: Std_logic;
    signal rom_addr_7: Std_logic;
    signal n310: Std_logic;
    signal n311: Std_logic;
    signal n56563: Std_logic;
    signal div_cnt_0: Std_logic;
    signal n81: Std_logic;
    signal n24: Std_logic;
    signal u_sd_sck_N_10230_3: Std_logic;
    signal u_sd_n56358: Std_logic;
    signal u_sd_n56359: Std_logic;
    signal u_sd_sck_N_10229: Std_logic;
    signal u_cam_cfg_divc_8: Std_logic;
    signal u_cam_cfg_divc_7: Std_logic;
    signal u_cam_cfg_n42: Std_logic;
    signal u_cam_cfg_n43_adj_12137: Std_logic;
    signal u_cam_cfg_tick_N_429: Std_logic;
    signal u_cam_cfg_n56577: Std_logic;
    signal u_cam_cfg_divc_6: Std_logic;
    signal u_cam_cfg_divc_5: Std_logic;
    signal u_cam_cfg_n44_adj_12138: Std_logic;
    signal u_cam_cfg_n45: Std_logic;
    signal u_cam_cfg_n56576: Std_logic;
    signal u_cam_cfg_divc_4: Std_logic;
    signal u_cam_cfg_divc_3: Std_logic;
    signal u_cam_cfg_n46: Std_logic;
    signal u_cam_cfg_n47: Std_logic;
    signal u_cam_cfg_n56575: Std_logic;
    signal u_cam_cfg_divc_2: Std_logic;
    signal u_cam_cfg_divc_1: Std_logic;
    signal u_cam_cfg_n48: Std_logic;
    signal u_cam_cfg_n49: Std_logic;
    signal u_cam_cfg_n56574: Std_logic;
    signal u_cam_cfg_divc_0: Std_logic;
    signal u_cam_cfg_n50: Std_logic;
    signal wr_count_2: Std_logic;
    signal wr_count_1: Std_logic;
    signal n48_adj_12255: Std_logic;
    signal n45_adj_12256: Std_logic;
    signal rom_addr_6: Std_logic;
    signal rom_addr_5: Std_logic;
    signal n312: Std_logic;
    signal n313: Std_logic;
    signal n56562: Std_logic;
    signal rom_addr_4: Std_logic;
    signal rom_addr_3: Std_logic;
    signal n314: Std_logic;
    signal n315: Std_logic;
    signal M_CLK_c: Std_logic;
    signal u_sd_sck_N_10228: Std_logic;
    signal u_sd_n36895: Std_logic;
    signal u_sd_n62515: Std_logic;
    signal u_sd_spi_busy: Std_logic;
    signal u_sd_spi_busy_N_10255: Std_logic;
    signal u_sd_spi_tx_7: Std_logic;
    signal u_sd_n49306: Std_logic;
    signal u_sd_SD_CLK_c_enable_12: Std_logic;
    signal M_CMD_c: Std_logic;
    signal u_sd_n25: Std_logic;
    signal M_D3_c: Std_logic;
    signal u_sd_st_5: Std_logic;
    signal u_sd_n23_adj_12171: Std_logic;
    signal u_sd_n27_adj_12170: Std_logic;
    signal u_sd_n62034: Std_logic;
    signal u_sd_cs_n_N_10075: Std_logic;
    signal u_sdram_SD_A_12_N_2210_9: Std_logic;
    signal SD_A_c_9: Std_logic;
    signal u_sdram_n62005: Std_logic;
    signal u_sdram_n19202: Std_logic;
    signal u_sdram_st_2: Std_logic;
    signal u_sdram_wait_cnt_2: Std_logic;
    signal u_sdram_wait_cnt_3: Std_logic;
    signal u_sdram_wait_cnt_1: Std_logic;
    signal u_sdram_wait_cnt_0: Std_logic;
    signal SD_CAS_N_c: Std_logic;
    signal u_sdram_n35931: Std_logic;
    signal u_sdram_n19204: Std_logic;
    signal u_sdram_SD_RAS_N_N_2416: Std_logic;
    signal SD_RAS_N_c: Std_logic;
    signal u_sdram_SD_CLK_c_enable_259: Std_logic;
    signal u_sdram_n62052: Std_logic;
    signal SD_WE_N_c: Std_logic;
    signal u_ctrl_u_tx_n24556: Std_logic;
    signal u_ctrl_u_tx_tx_N_1136: Std_logic;
    signal u_ctrl_u_tx_n24557: Std_logic;
    signal u_ctrl_u_tx_tx_N_1135: Std_logic;
    signal TX_c: Std_logic;
    signal u_cam_cfg_st_2: Std_logic;
    signal u_cam_cfg_st_1: Std_logic;
    signal u_cam_cfg_n61458: Std_logic;
    signal u_cam_cfg_scl_N_406: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_8: Std_logic;
    signal cam_scl_c: Std_logic;
    signal cmd_opcode_4: Std_logic;
    signal n58126: Std_logic;
    signal cmd_arg_0: Std_logic;
    signal capture_enable: Std_logic;
    signal n60440: Std_logic;
    signal u_ctrl_SD_CLK_c_enable_164: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_0: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_163: Std_logic;
    signal u_sd_n13: Std_logic;
    signal u_sd_n50935: Std_logic;
    signal u_sd_dummy_left_7_N_10021_1: Std_logic;
    signal u_sd_dummy_left_7_N_10021_0: Std_logic;
    signal u_sd_dummy_left_7_N_10021_3: Std_logic;
    signal u_sd_dummy_left_7_N_10021_2: Std_logic;
    signal u_sd_dummy_left_7_N_10021_5: Std_logic;
    signal u_sd_dummy_left_7_N_10021_4: Std_logic;
    signal u_sd_dummy_left_7_N_10021_7: Std_logic;
    signal u_sd_dummy_left_7_N_10021_6: Std_logic;
    signal u_cam_cfg_post_delay_7: Std_logic;
    signal post_delay_3: Std_logic;
    signal post_delay_5: Std_logic;
    signal post_delay_1: Std_logic;
    signal post_delay_2: Std_logic;
    signal u_cam_cfg_n59319: Std_logic;
    signal u_cam_cfg_n14_adj_12133: Std_logic;
    signal post_delay_0: Std_logic;
    signal u_cam_cfg_n43: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_250: Std_logic;
    signal u_cam_cfg_n51503: Std_logic;
    signal u_cam_cfg_n61986: Std_logic;
    signal n59497: Std_logic;
    signal n61999: Std_logic;
    signal u_cam_cfg_n58131: Std_logic;
    signal u_cam_cfg_n58130: Std_logic;
    signal n59339: Std_logic;
    signal u_cam_cfg_n61946: Std_logic;
    signal u_cam_cfg_phase_1: Std_logic;
    signal u_cam_cfg_phase_0: Std_logic;
    signal n58657: Std_logic;
    signal post_delay_4: Std_logic;
    signal u_cam_cfg_n58278: Std_logic;
    signal u_cam_cfg_n62055: Std_logic;
    signal post_delay_6: Std_logic;
    signal n59637: Std_logic;
    signal n59627: Std_logic;
    signal n62013: Std_logic;
    signal u_cam_cfg_n56800: Std_logic;
    signal u_cam_cfg_n56802: Std_logic;
    signal u_sd_n63: Std_logic;
    signal u_sd_n61_adj_12188: Std_logic;
    signal u_sd_n67_adj_12202: Std_logic;
    signal u_sd_n61: Std_logic;
    signal u_sd_n67: Std_logic;
    signal u_sd_resp_tries_7_N_9997_1: Std_logic;
    signal u_sd_resp_tries_7_N_9997_0: Std_logic;
    signal u_sd_n59137: Std_logic;
    signal u_sd_n70_adj_12244: Std_logic;
    signal u_sd_n61342: Std_logic;
    signal u_sd_st_2: Std_logic;
    signal u_sd_n59135: Std_logic;
    signal u_sd_n70: Std_logic;
    signal u_sd_n61294: Std_logic;
    signal u_sd_resp_tries_7_N_9997_3: Std_logic;
    signal u_sd_resp_tries_7_N_9997_2: Std_logic;
    signal u_sd_n59133: Std_logic;
    signal u_sd_n70_adj_12231: Std_logic;
    signal u_sd_n73_adj_12196: Std_logic;
    signal u_sd_n59131: Std_logic;
    signal u_sd_n70_adj_12199: Std_logic;
    signal u_sd_n61383: Std_logic;
    signal u_sd_resp_tries_7_N_9997_5: Std_logic;
    signal u_sd_resp_tries_7_N_9997_4: Std_logic;
    signal u_sd_n59129: Std_logic;
    signal u_sd_n70_adj_12213: Std_logic;
    signal u_sd_n61440: Std_logic;
    signal u_sd_n59127: Std_logic;
    signal u_sd_n70_adj_12220: Std_logic;
    signal u_sd_n61422: Std_logic;
    signal u_sd_resp_tries_7_N_9997_7: Std_logic;
    signal u_sd_resp_tries_7_N_9997_6: Std_logic;
    signal n12: Std_logic;
    signal n32: Std_logic;
    signal n62040: Std_logic;
    signal sda_oe: Std_logic;
    signal n60443: Std_logic;
    signal u_ctrl_u_rx_n12: Std_logic;
    signal u_ctrl_u_rx_n59913: Std_logic;
    signal u_ctrl_u_rx_n62035: Std_logic;
    signal u_ctrl_u_rx_bit_idx_1: Std_logic;
    signal n59881: Std_logic;
    signal n59883: Std_logic;
    signal rx_s2: Std_logic;
    signal shreg_7: Std_logic;
    signal n60441: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_183: Std_logic;
    signal u_sd_half_phase: Std_logic;
    signal u_sd_bit_cnt_0: Std_logic;
    signal u_sd_bit_cnt_3: Std_logic;
    signal u_sd_bit_cnt_2: Std_logic;
    signal u_sd_bit_cnt_1: Std_logic;
    signal u_sd_n61961: Std_logic;
    signal u_sd_SD_CLK_c_enable_193: Std_logic;
    signal u_cam_cfg_n58756: Std_logic;
    signal u_cam_cfg_n54085: Std_logic;
    signal u_cam_cfg_n54126: Std_logic;
    signal u_cam_cfg_n60488: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_216: Std_logic;
    signal u_cam_cfg_n62056: Std_logic;
    signal u_cam_cfg_n62057: Std_logic;
    signal u_cam_cfg_n59743: Std_logic;
    signal u_cam_cfg_n7_adj_12134: Std_logic;
    signal u_cam_cfg_n300: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_252: Std_logic;
    signal u_cam_cfg_n60242: Std_logic;
    signal u_cam_cfg_n60169: Std_logic;
    signal u_cam_cfg_n60306: Std_logic;
    signal u_cam_cfg_n60238: Std_logic;
    signal u_cam_cfg_byte_idx_1: Std_logic;
    signal u_cam_cfg_byte_idx_0: Std_logic;
    signal u_cam_cfg_bitn_0: Std_logic;
    signal u_cam_cfg_bitn_2: Std_logic;
    signal u_cam_cfg_bitn_1: Std_logic;
    signal u_cam_cfg_n62072: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_18: Std_logic;
    signal u_cam_cfg_n50625: Std_logic;
    signal u_cam_cfg_n50624: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_244: Std_logic;
    signal u_cam_cfg_n55737: Std_logic;
    signal u_cam_cfg_n50498: Std_logic;
    signal u_cam_cfg_n60439: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_219: Std_logic;
    signal u_cam_cfg_n58934: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_245: Std_logic;
    signal u_cam_cfg_u_rom_n28086: Std_logic;
    signal u_cam_cfg_u_rom_n28062: Std_logic;
    signal u_cam_cfg_u_rom_n28014: Std_logic;
    signal u_cam_cfg_u_rom_n27990: Std_logic;
    signal u_cam_cfg_rom_entry_8: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_243: Std_logic;
    signal u_cam_cfg_cur_reg_0: Std_logic;
    signal u_cam_cfg_u_rom_n28085: Std_logic;
    signal u_cam_cfg_u_rom_n28061: Std_logic;
    signal u_cam_cfg_u_rom_n28013: Std_logic;
    signal u_cam_cfg_u_rom_n27989: Std_logic;
    signal u_cam_cfg_rom_entry_9: Std_logic;
    signal u_cam_cfg_cur_reg_1: Std_logic;
    signal u_cam_cfg_u_rom_n28084: Std_logic;
    signal u_cam_cfg_u_rom_n28060: Std_logic;
    signal u_cam_cfg_u_rom_n28012: Std_logic;
    signal u_cam_cfg_u_rom_n27988: Std_logic;
    signal u_cam_cfg_rom_entry_10: Std_logic;
    signal u_cam_cfg_cur_reg_2: Std_logic;
    signal u_cam_cfg_u_rom_n28083: Std_logic;
    signal u_cam_cfg_u_rom_n28059: Std_logic;
    signal u_cam_cfg_u_rom_n28011: Std_logic;
    signal u_cam_cfg_u_rom_n27987: Std_logic;
    signal u_cam_cfg_rom_entry_11: Std_logic;
    signal u_cam_cfg_cur_reg_3: Std_logic;
    signal u_cam_cfg_u_rom_n28082: Std_logic;
    signal u_cam_cfg_u_rom_n28058: Std_logic;
    signal u_cam_cfg_u_rom_n28010: Std_logic;
    signal u_cam_cfg_u_rom_n27986: Std_logic;
    signal u_cam_cfg_rom_entry_12: Std_logic;
    signal u_cam_cfg_cur_reg_4: Std_logic;
    signal u_cam_cfg_u_rom_n28081: Std_logic;
    signal u_cam_cfg_u_rom_n28057: Std_logic;
    signal u_cam_cfg_u_rom_n28009: Std_logic;
    signal u_cam_cfg_u_rom_n27985: Std_logic;
    signal u_cam_cfg_rom_entry_13: Std_logic;
    signal u_cam_cfg_cur_reg_5: Std_logic;
    signal u_cam_cfg_u_rom_n28080: Std_logic;
    signal u_cam_cfg_u_rom_n28056: Std_logic;
    signal u_cam_cfg_u_rom_n28008: Std_logic;
    signal u_cam_cfg_u_rom_n27984: Std_logic;
    signal u_cam_cfg_rom_entry_15: Std_logic;
    signal u_cam_cfg_cur_reg_7: Std_logic;
    signal u_cam_cfg_u_rom_n28079: Std_logic;
    signal u_cam_cfg_u_rom_n28055: Std_logic;
    signal u_cam_cfg_u_rom_n28007: Std_logic;
    signal u_cam_cfg_u_rom_n27983: Std_logic;
    signal u_cam_cfg_rom_entry_16: Std_logic;
    signal u_cam_cfg_cur_reg_8: Std_logic;
    signal u_cam_cfg_u_rom_n28078: Std_logic;
    signal u_cam_cfg_u_rom_n28054: Std_logic;
    signal u_cam_cfg_u_rom_n28006: Std_logic;
    signal u_cam_cfg_u_rom_n27982: Std_logic;
    signal u_cam_cfg_rom_entry_17: Std_logic;
    signal u_cam_cfg_cur_reg_9: Std_logic;
    signal u_cam_cfg_u_rom_n28077: Std_logic;
    signal u_cam_cfg_u_rom_n28053: Std_logic;
    signal u_cam_cfg_u_rom_n28005: Std_logic;
    signal u_cam_cfg_u_rom_n27981: Std_logic;
    signal u_cam_cfg_rom_entry_18: Std_logic;
    signal u_cam_cfg_cur_reg_10: Std_logic;
    signal u_cam_cfg_u_rom_n28076: Std_logic;
    signal u_cam_cfg_u_rom_n28052: Std_logic;
    signal u_cam_cfg_u_rom_n28004: Std_logic;
    signal u_cam_cfg_u_rom_n27980: Std_logic;
    signal u_cam_cfg_rom_entry_19: Std_logic;
    signal u_cam_cfg_cur_reg_11: Std_logic;
    signal u_cam_cfg_u_rom_n28075: Std_logic;
    signal u_cam_cfg_u_rom_n28051: Std_logic;
    signal u_cam_cfg_u_rom_n28003: Std_logic;
    signal u_cam_cfg_u_rom_n27979: Std_logic;
    signal u_cam_cfg_rom_entry_20: Std_logic;
    signal u_cam_cfg_cur_reg_12: Std_logic;
    signal u_cam_cfg_u_rom_n28074: Std_logic;
    signal u_cam_cfg_u_rom_n28050: Std_logic;
    signal u_cam_cfg_u_rom_n28002: Std_logic;
    signal u_cam_cfg_u_rom_n27978: Std_logic;
    signal u_cam_cfg_rom_entry_21: Std_logic;
    signal u_cam_cfg_cur_reg_13: Std_logic;
    signal u_cam_cfg_u_rom_n28072: Std_logic;
    signal u_cam_cfg_u_rom_n28048: Std_logic;
    signal u_cam_cfg_u_rom_n28000: Std_logic;
    signal u_cam_cfg_u_rom_n27976: Std_logic;
    signal u_cam_cfg_rom_entry_22: Std_logic;
    signal u_cam_cfg_cur_reg_14: Std_logic;
    signal u_cam_cfg_u_rom_n28073: Std_logic;
    signal u_cam_cfg_u_rom_n28049: Std_logic;
    signal u_cam_cfg_u_rom_n28001: Std_logic;
    signal u_cam_cfg_u_rom_n27977: Std_logic;
    signal u_cam_cfg_rom_entry_23: Std_logic;
    signal u_cam_cfg_cur_reg_15: Std_logic;
    signal n27890: Std_logic;
    signal n27891: Std_logic;
    signal u_cam_cfg_cur_val_0: Std_logic;
    signal u_cam_cfg_cur_val_1: Std_logic;
    signal n27888: Std_logic;
    signal n27889: Std_logic;
    signal u_cam_cfg_cur_val_2: Std_logic;
    signal u_cam_cfg_cur_val_3: Std_logic;
    signal n27886: Std_logic;
    signal n27887: Std_logic;
    signal u_cam_cfg_cur_val_4: Std_logic;
    signal u_cam_cfg_cur_val_5: Std_logic;
    signal n27884: Std_logic;
    signal n27885: Std_logic;
    signal u_cam_cfg_cur_val_6: Std_logic;
    signal u_cam_cfg_cur_val_7: Std_logic;
    signal u_cam_cfg_n60442: Std_logic;
    signal u_cam_cfg_n7: Std_logic;
    signal n59649: Std_logic;
    signal n59647: Std_logic;
    signal u_cam_cfg_n56798: Std_logic;
    signal u_cam_cfg_n219: Std_logic;
    signal u_cam_cfg_n52366: Std_logic;
    signal u_cam_cfg_n241: Std_logic;
    signal u_cam_cfg_n243: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_255: Std_logic;
    signal u_cam_cfg_n55733: Std_logic;
    signal u_cam_cfg_sh_0: Std_logic;
    signal u_cam_cfg_sh_2: Std_logic;
    signal u_cam_cfg_n62099: Std_logic;
    signal u_cam_cfg_sh_1: Std_logic;
    signal u_cam_cfg_n217: Std_logic;
    signal u_cam_cfg_n218: Std_logic;
    signal u_cam_cfg_n239: Std_logic;
    signal u_cam_cfg_n240: Std_logic;
    signal u_cam_cfg_sh_3: Std_logic;
    signal u_cam_cfg_sh_4: Std_logic;
    signal u_cam_cfg_n215: Std_logic;
    signal u_cam_cfg_n216: Std_logic;
    signal u_cam_cfg_n237: Std_logic;
    signal u_cam_cfg_n238: Std_logic;
    signal u_cam_cfg_sh_5: Std_logic;
    signal u_cam_cfg_sh_6: Std_logic;
    signal u_cam_cfg_n214: Std_logic;
    signal u_cam_cfg_n236: Std_logic;
    signal u_cam_cfg_sh_7: Std_logic;
    signal u_cam_cfg_n51468: Std_logic;
    signal u_cam_cfg_n302: Std_logic;
    signal u_cam_cfg_n11: Std_logic;
    signal u_cam_cfg_n62111: Std_logic;
    signal u_cam_cfg_SD_CLK_c_enable_251: Std_logic;
    signal u_ctrl_cmd_seq_1: Std_logic;
    signal u_ctrl_cmd_seq_0: Std_logic;
    signal u_ctrl_cmd_valid: Std_logic;
    signal u_ctrl_ack_seq_0: Std_logic;
    signal u_ctrl_ack_seq_1: Std_logic;
    signal u_ctrl_cmd_seq_3: Std_logic;
    signal u_ctrl_cmd_seq_2: Std_logic;
    signal u_ctrl_ack_seq_2: Std_logic;
    signal u_ctrl_ack_seq_3: Std_logic;
    signal u_ctrl_cmd_seq_5: Std_logic;
    signal u_ctrl_cmd_seq_4: Std_logic;
    signal u_ctrl_ack_seq_4: Std_logic;
    signal u_ctrl_ack_seq_5: Std_logic;
    signal u_ctrl_cmd_seq_7: Std_logic;
    signal u_ctrl_cmd_seq_6: Std_logic;
    signal u_ctrl_ack_seq_6: Std_logic;
    signal u_ctrl_ack_seq_7: Std_logic;
    signal u_ctrl_n62014: Std_logic;
    signal u_ctrl_cmd_opcode_5: Std_logic;
    signal u_ctrl_n62017: Std_logic;
    signal u_ctrl_n62066: Std_logic;
    signal u_ctrl_cmd_opcode_2: Std_logic;
    signal u_ctrl_ack_type_0: Std_logic;
    signal u_ctrl_n62021: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_3: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_7: Std_logic;
    signal u_ctrl_u_cmd_cmd_opcode_6: Std_logic;
    signal u_ctrl_cmd_opcode_0: Std_logic;
    signal u_ctrl_u_cmd_n61983: Std_logic;
    signal u_ctrl_n58855: Std_logic;
    signal u_ctrl_ack_type_1: Std_logic;
    signal u_ctrl_cmd_opcode_1: Std_logic;
    signal u_ctrl_u_regs_n61911: Std_logic;
    signal u_ctrl_u_regs_n61914: Std_logic;
    signal u_ctrl_u_regs_n61915: Std_logic;
    signal u_ctrl_n51538: Std_logic;
    signal u_ctrl_ack_value_0: Std_logic;
    signal u_ctrl_cmd_arg_1: Std_logic;
    signal u_ctrl_u_regs_mode_0: Std_logic;
    signal u_ctrl_u_regs_n60976: Std_logic;
    signal u_ctrl_ack_value_1: Std_logic;
    signal u_ctrl_u_regs_mode_1: Std_logic;
    signal u_ctrl_cmd_arg_2: Std_logic;
    signal u_ctrl_u_regs_n61752: Std_logic;
    signal u_ctrl_ack_value_2: Std_logic;
    signal u_ctrl_cmd_arg_4: Std_logic;
    signal u_ctrl_n160: Std_logic;
    signal u_ctrl_n61998: Std_logic;
    signal u_ctrl_n4: Std_logic;
    signal u_ctrl_cmd_arg_3: Std_logic;
    signal u_ctrl_u_regs_n58030: Std_logic;
    signal u_ctrl_u_regs_n58031: Std_logic;
    signal u_ctrl_ack_value_3: Std_logic;
    signal u_ctrl_ack_value_4: Std_logic;
    signal u_ctrl_u_regs_n58023: Std_logic;
    signal u_ctrl_u_regs_n20: Std_logic;
    signal u_ctrl_u_regs_n58119: Std_logic;
    signal u_ctrl_n16: Std_logic;
    signal u_ctrl_u_regs_n14: Std_logic;
    signal u_ctrl_u_regs_n57818: Std_logic;
    signal u_ctrl_u_regs_n61955: Std_logic;
    signal u_ctrl_ack_value_5: Std_logic;
    signal u_ctrl_ack_value_6: Std_logic;
    signal u_ctrl_u_regs_n36: Std_logic;
    signal u_ctrl_n62000: Std_logic;
    signal u_ctrl_n16_adj_12252: Std_logic;
    signal u_ctrl_u_regs_n14_adj_12250: Std_logic;
    signal u_ctrl_u_regs_n50905: Std_logic;
    signal u_ctrl_u_regs_n61956: Std_logic;
    signal u_ctrl_ack_value_7: Std_logic;
    signal u_ctrl_ack_value_8: Std_logic;
    signal u_ctrl_n168: Std_logic;
    signal u_ctrl_n58158: Std_logic;
    signal u_ctrl_u_regs_n18: Std_logic;
    signal u_ctrl_u_regs_n54058: Std_logic;
    signal u_ctrl_u_regs_n58983: Std_logic;
    signal u_ctrl_ack_value_9: Std_logic;
    signal u_ctrl_ack_value_10: Std_logic;
    signal u_ctrl_u_regs_frame_stride_7: Std_logic;
    signal u_ctrl_n61996: Std_logic;
    signal u_ctrl_n58157: Std_logic;
    signal u_ctrl_u_regs_n59052: Std_logic;
    signal u_ctrl_u_regs_n54062: Std_logic;
    signal u_ctrl_ack_value_11: Std_logic;
    signal u_ctrl_ack_value_12: Std_logic;
    signal u_ctrl_u_cmd_n60908: Std_logic;
    signal u_ctrl_u_cmd_n60909: Std_logic;
    signal u_ctrl_n61951: Std_logic;
    signal u_ctrl_n58853: Std_logic;
    signal u_ctrl_ack_value_30: Std_logic;
    signal u_ctrl_ack_value_31: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_5: Std_logic;
    signal u_ctrl_cmd_arg_5: Std_logic;
    signal u_ctrl_cmd_arg_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_0: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_0: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_7: Std_logic;
    signal u_ctrl_u_cmd_bytes_6_6: Std_logic;
    signal u_ctrl_rx_valid: Std_logic;
    signal u_ctrl_u_cmd_n24331: Std_logic;
    signal u_ctrl_u_cmd_n62019: Std_logic;
    signal u_ctrl_SD_CLK_c_enable_54: Std_logic;
    signal u_ctrl_frame_stride_5: Std_logic;
    signal u_ctrl_frame_stride_6: Std_logic;
    signal u_ctrl_u_tx_n24555: Std_logic;
    signal u_ctrl_u_tx_n60284: Std_logic;
    signal u_ctrl_u_tx_n60286: Std_logic;
    signal u_ctrl_u_tx_n58744: Std_logic;
    signal u_ctrl_n62048: Std_logic;
    signal u_ctrl_u_tx_n59819: Std_logic;
    signal u_ctrl_n24558: Std_logic;
    signal u_ctrl_u_tx_n49222: Std_logic;
    signal u_ctrl_u_rx_shreg_1: Std_logic;
    signal u_ctrl_u_rx_shreg_0: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_182: Std_logic;
    signal u_ctrl_u_rx_shreg_3: Std_logic;
    signal u_ctrl_u_rx_shreg_2: Std_logic;
    signal u_ctrl_u_rx_shreg_5: Std_logic;
    signal u_ctrl_u_rx_shreg_4: Std_logic;
    signal u_ctrl_u_rx_shreg_6: Std_logic;
    signal u_ctrl_u_rx_n24193: Std_logic;
    signal u_ctrl_u_rx_n62025: Std_logic;
    signal u_ctrl_u_rx_n59899: Std_logic;
    signal u_ctrl_u_rx_n62004: Std_logic;
    signal u_ctrl_u_rx_n58764: Std_logic;
    signal u_ctrl_tx_busy: Std_logic;
    signal u_ctrl_tx_pkt_valid: Std_logic;
    signal u_ctrl_u_ack_pkt_7_0: Std_logic;
    signal u_ctrl_u_ack_idx_1: Std_logic;
    signal u_ctrl_u_ack_pkt_3_0: Std_logic;
    signal u_ctrl_u_ack_pkt_1_0: Std_logic;
    signal u_ctrl_u_ack_n60996: Std_logic;
    signal u_ctrl_u_ack_idx_0: Std_logic;
    signal u_ctrl_u_ack_idx_2: Std_logic;
    signal u_ctrl_u_ack_n60992: Std_logic;
    signal u_ctrl_u_ack_n60995: Std_logic;
    signal u_ctrl_u_ack_SD_CLK_c_enable_93: Std_logic;
    signal u_ctrl_tx_pkt_data_0: Std_logic;
    signal u_ctrl_u_ack_n61729: Std_logic;
    signal u_ctrl_u_ack_n61732: Std_logic;
    signal u_ctrl_u_ack_n61654: Std_logic;
    signal u_ctrl_u_ack_n61655: Std_logic;
    signal u_ctrl_u_ack_n61733: Std_logic;
    signal u_ctrl_u_ack_n61656: Std_logic;
    signal u_ctrl_tx_pkt_data_1: Std_logic;
    signal u_ctrl_tx_pkt_data_2: Std_logic;
    signal u_ctrl_u_ack_n60350: Std_logic;
    signal u_ctrl_u_ack_n3: Std_logic;
    signal u_ctrl_u_ack_pkt_4_7: Std_logic;
    signal u_ctrl_u_ack_n65: Std_logic;
    signal u_ctrl_u_ack_n60473: Std_logic;
    signal u_ctrl_tx_pkt_data_3: Std_logic;
    signal u_ctrl_u_ack_n60353: Std_logic;
    signal u_ctrl_u_ack_n3_adj_12247: Std_logic;
    signal u_ctrl_u_ack_n64: Std_logic;
    signal u_ctrl_tx_pkt_data_4: Std_logic;
    signal u_ctrl_u_ack_pkt_7_5: Std_logic;
    signal u_ctrl_u_ack_pkt_2_5: Std_logic;
    signal u_ctrl_u_ack_pkt_6_5: Std_logic;
    signal u_ctrl_u_ack_n62102: Std_logic;
    signal u_ctrl_tx_pkt_data_5: Std_logic;
    signal u_ctrl_u_ack_n60356: Std_logic;
    signal u_ctrl_u_ack_n3_adj_12246: Std_logic;
    signal u_ctrl_u_ack_pkt_3_6: Std_logic;
    signal u_ctrl_u_ack_n62: Std_logic;
    signal u_ctrl_tx_pkt_data_6: Std_logic;
    signal u_ctrl_u_ack_n2: Std_logic;
    signal u_ctrl_u_ack_pkt_7_7: Std_logic;
    signal u_ctrl_u_ack_pkt_6_7: Std_logic;
    signal u_ctrl_u_ack_n61: Std_logic;
    signal u_ctrl_u_ack_n60478: Std_logic;
    signal u_ctrl_tx_pkt_data_7: Std_logic;
    signal u_ctrl_u_ack_sending: Std_logic;
    signal u_ctrl_u_ack_SD_CLK_c_enable_86: Std_logic;
    signal u_ctrl_ack_valid: Std_logic;
    signal u_ctrl_u_ack_n8: Std_logic;
    signal u_ctrl_u_ack_SD_CLK_c_enable_40: Std_logic;
    signal u_ctrl_u_ack_n72: Std_logic;
    signal u_ctrl_u_ack_n73: Std_logic;
    signal u_ctrl_u_ack_pkt_1_1: Std_logic;
    signal u_ctrl_u_ack_pkt_2_0: Std_logic;
    signal u_ctrl_u_ack_pkt_2_1: Std_logic;
    signal u_ctrl_u_ack_pkt_2_2: Std_logic;
    signal u_ctrl_u_ack_pkt_2_3: Std_logic;
    signal u_ctrl_u_ack_pkt_2_4: Std_logic;
    signal u_ctrl_u_ack_pkt_2_6: Std_logic;
    signal u_ctrl_u_ack_pkt_2_7: Std_logic;
    signal u_ctrl_u_ack_pkt_3_1: Std_logic;
    signal u_ctrl_u_ack_pkt_3_2: Std_logic;
    signal u_ctrl_u_ack_pkt_3_3: Std_logic;
    signal u_ctrl_u_ack_pkt_3_4: Std_logic;
    signal u_ctrl_u_ack_pkt_6_0: Std_logic;
    signal u_ctrl_u_ack_pkt_6_1: Std_logic;
    signal u_ctrl_u_ack_pkt_6_2: Std_logic;
    signal u_ctrl_u_ack_pkt_6_3: Std_logic;
    signal u_ctrl_u_ack_pkt_6_4: Std_logic;
    signal u_ctrl_u_ack_pkt_6_6: Std_logic;
    signal u_ctrl_u_ack_n6_adj_12248: Std_logic;
    signal u_ctrl_u_ack_n4: Std_logic;
    signal u_ctrl_u_ack_chk_1: Std_logic;
    signal u_ctrl_u_ack_chk_0: Std_logic;
    signal u_ctrl_u_ack_pkt_7_1: Std_logic;
    signal u_ctrl_u_ack_n58176: Std_logic;
    signal u_ctrl_u_ack_chk_3: Std_logic;
    signal u_ctrl_u_ack_chk_2: Std_logic;
    signal u_ctrl_u_ack_pkt_7_2: Std_logic;
    signal u_ctrl_u_ack_pkt_7_3: Std_logic;
    signal u_ctrl_u_ack_chk_5: Std_logic;
    signal u_ctrl_u_ack_chk_4: Std_logic;
    signal u_ctrl_u_ack_pkt_7_4: Std_logic;
    signal u_ctrl_u_ack_chk_7: Std_logic;
    signal u_ctrl_u_ack_chk_6: Std_logic;
    signal u_ctrl_u_ack_pkt_7_6: Std_logic;
    signal u_ctrl_u_ack_n60163: Std_logic;
    signal u_ctrl_u_ack_n50298: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_102: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_1_7: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_110: Std_logic;
    signal u_ctrl_u_cmd_bytes_2_7: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_118: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_0: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_3_7: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_126: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_0: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_4_7: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_134: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_0: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_1: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_2: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_3: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_4: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_5: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_6: Std_logic;
    signal u_ctrl_u_cmd_bytes_5_7: Std_logic;
    signal u_ctrl_u_cmd_SD_CLK_c_enable_142: Std_logic;
    signal u_ctrl_u_cmd_n24333: Std_logic;
    signal u_ctrl_u_cmd_n24332: Std_logic;
    signal u_ctrl_u_cmd_n24335: Std_logic;
    signal u_ctrl_u_cmd_n24334: Std_logic;
    signal u_ctrl_u_cmd_n24337: Std_logic;
    signal u_ctrl_u_cmd_n24336: Std_logic;
    signal u_ctrl_u_cmd_n15: Std_logic;
    signal u_ctrl_u_cmd_n24338: Std_logic;
    signal u_ctrl_u_cmd_n49226: Std_logic;
    signal u_ctrl_u_cmd_n24353: Std_logic;
    signal u_ctrl_u_regs_n12: Std_logic;
    signal u_ctrl_u_regs_n59579: Std_logic;
    signal u_ctrl_u_regs_n59587: Std_logic;
    signal u_ctrl_u_regs_frame_stride_0: Std_logic;
    signal u_ctrl_u_regs_frame_stride_1: Std_logic;
    signal u_ctrl_u_regs_frame_stride_2: Std_logic;
    signal u_ctrl_u_regs_frame_stride_3: Std_logic;
    signal u_ctrl_cmd_arg_7: Std_logic;
    signal u_ctrl_u_regs_frame_stride_4: Std_logic;
    signal u_ctrl_SD_CLK_c_enable_94: Std_logic;
    signal u_ctrl_u_rx_bit_idx_0: Std_logic;
    signal u_ctrl_u_rx_n19: Std_logic;
    signal u_ctrl_u_rx_n20: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_265: Std_logic;
    signal u_ctrl_u_rx_n51533: Std_logic;
    signal u_ctrl_u_rx_bit_idx_2: Std_logic;
    signal u_ctrl_u_rx_n18: Std_logic;
    signal u_ctrl_u_rx_n61992: Std_logic;
    signal u_ctrl_u_rx_n11: Std_logic;
    signal u_ctrl_u_rx_n9: Std_logic;
    signal u_ctrl_u_rx_n59771: Std_logic;
    signal u_ctrl_u_rx_n49293: Std_logic;
    signal u_ctrl_u_rx_n24194: Std_logic;
    signal u_ctrl_u_rx_n31: Std_logic;
    signal u_ctrl_u_rx_n49294: Std_logic;
    signal u_ctrl_u_rx_n57848: Std_logic;
    signal u_ctrl_u_rx_n24196: Std_logic;
    signal u_ctrl_u_rx_n59088: Std_logic;
    signal u_ctrl_u_rx_n35729: Std_logic;
    signal u_ctrl_u_rx_n58841: Std_logic;
    signal u_ctrl_u_rx_n49298: Std_logic;
    signal u_ctrl_u_rx_n24195: Std_logic;
    signal u_ctrl_u_rx_rx_s1: Std_logic;
    signal RX_c: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_262: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_25: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_28: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_38: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_165: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_213: Std_logic;
    signal u_ctrl_u_rx_SD_CLK_c_enable_215: Std_logic;
    signal u_ctrl_u_tx_bit_idx_0: Std_logic;
    signal u_ctrl_u_tx_bit_idx_1: Std_logic;
    signal u_ctrl_u_tx_n19: Std_logic;
    signal u_ctrl_u_tx_n20: Std_logic;
    signal u_ctrl_u_tx_SD_CLK_c_enable_254: Std_logic;
    signal u_ctrl_u_tx_n51515: Std_logic;
    signal u_ctrl_u_tx_bit_idx_2: Std_logic;
    signal u_ctrl_u_tx_n18: Std_logic;
    signal u_ctrl_u_tx_n59833: Std_logic;
    signal u_ctrl_u_tx_n49229: Std_logic;
    signal u_ctrl_u_tx_n61962: Std_logic;
    signal u_ctrl_u_tx_n53999: Std_logic;
    signal u_ctrl_u_tx_n49230: Std_logic;
    signal u_ctrl_u_tx_n57932: Std_logic;
    signal u_ctrl_u_tx_n59607: Std_logic;
    signal u_ctrl_u_tx_n59691: Std_logic;
    signal u_ctrl_u_tx_n59693: Std_logic;
    signal u_ctrl_u_tx_n49223: Std_logic;
    signal u_ctrl_SD_CLK_c_enable_47: Std_logic;
    signal u_ctrl_u_tx_shreg_0: Std_logic;
    signal u_ctrl_u_tx_shreg_1: Std_logic;
    signal u_ctrl_u_tx_shreg_2: Std_logic;
    signal u_ctrl_u_tx_shreg_3: Std_logic;
    signal u_ctrl_u_tx_shreg_4: Std_logic;
    signal u_ctrl_u_tx_shreg_5: Std_logic;
    signal u_ctrl_u_tx_shreg_6: Std_logic;
    signal u_ctrl_u_tx_shreg_7: Std_logic;
    signal u_sd_n62022: Std_logic;
    signal u_sd_n62036: Std_logic;
    signal u_sd_SD_CLK_c_enable_264: Std_logic;
    signal u_sd_n50648: Std_logic;
    signal u_sd_n61985: Std_logic;
    signal u_sd_st_3: Std_logic;
    signal u_sd_n19: Std_logic;
    signal u_sd_n23: Std_logic;
    signal u_sd_n63074: Std_logic;
    signal u_sd_n58835: Std_logic;
    signal u_sd_n60047: Std_logic;
    signal u_sd_cmd_frame_1: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_3: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_1: Std_logic;
    signal u_sd_cmd_frame_3: Std_logic;
    signal u_sd_n29: Std_logic;
    signal u_sd_n23_adj_12147: Std_logic;
    signal u_sd_n27_adj_12224: Std_logic;
    signal u_sd_cmd_frame_5: Std_logic;
    signal u_sd_cmd_frame_4: Std_logic;
    signal u_sd_n24_adj_12204: Std_logic;
    signal u_sd_n27_adj_12203: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_5: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_4: Std_logic;
    signal u_sd_n20_adj_12151: Std_logic;
    signal u_sd_n17: Std_logic;
    signal u_sd_cmd_frame_7: Std_logic;
    signal u_sd_n27_adj_12223: Std_logic;
    signal u_sd_cmd_frame_6: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_7: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_6: Std_logic;
    signal u_sd_n25_adj_12215: Std_logic;
    signal u_sd_cmd_frame_11: Std_logic;
    signal u_sd_cmd_frame_9: Std_logic;
    signal u_sd_n26_adj_12219: Std_logic;
    signal u_sd_n26_adj_12222: Std_logic;
    signal u_sd_n50392: Std_logic;
    signal u_sd_cmd_frame_15: Std_logic;
    signal u_sd_cmd_frame_13: Std_logic;
    signal u_sd_n26_adj_12217: Std_logic;
    signal u_sd_n26_adj_12218: Std_logic;
    signal u_sd_cmd_frame_16: Std_logic;
    signal u_sd_n26_adj_12216: Std_logic;
    signal u_sd_n25_adj_12211: Std_logic;
    signal u_sd_n29_adj_12212: Std_logic;
    signal u_sd_n61988: Std_logic;
    signal u_sd_n52_adj_12167: Std_logic;
    signal u_sd_n26_adj_12214: Std_logic;
    signal u_sd_n61991: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_41: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_38: Std_logic;
    signal u_sd_cmd_frame_38: Std_logic;
    signal u_sd_cmd_frame_41: Std_logic;
    signal u_sd_n62427: Std_logic;
    signal u_sd_st_4: Std_logic;
    signal u_sd_st_1: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_40: Std_logic;
    signal u_sd_cmd_frame_40: Std_logic;
    signal u_sd_n62047: Std_logic;
    signal u_sd_n41_adj_12209: Std_logic;
    signal u_sd_cmd_frame_44: Std_logic;
    signal u_sd_cmd_frame_42: Std_logic;
    signal u_sd_n62084: Std_logic;
    signal u_sd_n23_adj_12227: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_44: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_42: Std_logic;
    signal u_sd_n15_adj_12156: Std_logic;
    signal u_sd_cmd_frame_43: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_43: Std_logic;
    signal u_sd_n58162: Std_logic;
    signal u_sd_n38_adj_12208: Std_logic;
    signal u_sd_cmd_frame_45: Std_logic;
    signal u_sd_cmd_frame_47_N_9938_45: Std_logic;
    signal u_sd_n34: Std_logic;
    signal u_sd_n50_adj_12207: Std_logic;
    signal u_sd_cmd_i_1: Std_logic;
    signal u_sd_n50: Std_logic;
    signal u_sd_cmd_i_0: Std_logic;
    signal u_sd_cmd_i_2_N_9986_1: Std_logic;
    signal u_sd_cmd_i_2_N_9986_0: Std_logic;
    signal u_sd_n50_adj_12205: Std_logic;
    signal u_sd_cmd_i_2: Std_logic;
    signal u_sd_cmd_i_2_N_9986_2: Std_logic;
    signal u_sd_st_0: Std_logic;
    signal u_sd_div_val_2: Std_logic;
    signal u_sd_n62006: Std_logic;
    signal u_sd_n62007: Std_logic;
    signal u_sd_speed_fast_N_10321: Std_logic;
    signal u_sd_half_phase_N_10260: Std_logic;
    signal u_sd_n30_adj_12192: Std_logic;
    signal u_sd_n57222: Std_logic;
    signal u_sd_n63084: Std_logic;
    signal M_D0_c: Std_logic;
    signal u_sd_SD_CLK_c_enable_266: Std_logic;
    signal u_sd_sh_rx_0: Std_logic;
    signal u_sd_SD_CLK_c_enable_256: Std_logic;
    signal u_sd_sh_rx_1: Std_logic;
    signal u_sd_SD_CLK_c_enable_261: Std_logic;
    signal u_sd_sh_rx_2: Std_logic;
    signal u_sd_SD_CLK_c_enable_258: Std_logic;
    signal u_sd_sh_rx_3: Std_logic;
    signal u_sd_SD_CLK_c_enable_10: Std_logic;
    signal u_sd_sh_rx_4: Std_logic;
    signal u_sd_SD_CLK_c_enable_11: Std_logic;
    signal u_sd_sh_rx_5: Std_logic;
    signal u_sd_SD_CLK_c_enable_16: Std_logic;
    signal u_sd_sh_rx_6: Std_logic;
    signal u_sd_SD_CLK_c_enable_17: Std_logic;
    signal u_sd_sh_rx_7: Std_logic;
    signal u_sd_n61965: Std_logic;
    signal u_sd_spi_start: Std_logic;
    signal u_sd_n51138: Std_logic;
    signal u_sd_spi_rx_0: Std_logic;
    signal u_sd_spi_rx_1: Std_logic;
    signal u_sd_spi_rx_2: Std_logic;
    signal u_sd_spi_rx_3: Std_logic;
    signal u_sd_spi_rx_4: Std_logic;
    signal u_sd_spi_rx_5: Std_logic;
    signal u_sd_spi_rx_6: Std_logic;
    signal u_sd_spi_rx_7: Std_logic;
    signal u_sd_n40: Std_logic;
    signal u_sd_n37: Std_logic;
    signal u_sd_n45_adj_12153: Std_logic;
    signal u_sd_n63068: Std_logic;
    signal u_sd_n51_adj_12155: Std_logic;
    signal u_sd_n75_adj_12229: Std_logic;
    signal u_sd_n72: Std_logic;
    signal u_sd_spi_tx_1: Std_logic;
    signal u_sd_n75: Std_logic;
    signal u_sd_spi_tx_0: Std_logic;
    signal u_sd_spi_tx_7_N_9904_1: Std_logic;
    signal u_sd_spi_tx_7_N_9904_0: Std_logic;
    signal u_sd_n75_adj_12228: Std_logic;
    signal u_sd_spi_tx_3: Std_logic;
    signal u_sd_n62329: Std_logic;
    signal u_sd_spi_tx_2: Std_logic;
    signal u_sd_spi_tx_7_N_9904_3: Std_logic;
    signal u_sd_spi_tx_7_N_9904_2: Std_logic;
    signal u_sd_n75_adj_12226: Std_logic;
    signal u_sd_spi_tx_5: Std_logic;
    signal u_sd_n62349: Std_logic;
    signal u_sd_spi_tx_4: Std_logic;
    signal u_sd_spi_tx_7_N_9904_5: Std_logic;
    signal u_sd_spi_tx_7_N_9904_4: Std_logic;
    signal u_sd_n75_adj_12225: Std_logic;
    signal u_sd_n62369: Std_logic;
    signal u_sd_spi_tx_6: Std_logic;
    signal u_sd_spi_tx_7_N_9904_7: Std_logic;
    signal u_sd_spi_tx_7_N_9904_6: Std_logic;
    signal u_sd_n61151: Std_logic;
    signal u_sd_n58669: Std_logic;
    signal u_sd_n19_adj_12195: Std_logic;
    signal u_sd_n18: Std_logic;
    signal u_sd_n62114: Std_logic;
    signal u_sd_n57130: Std_logic;
    signal u_sd_n57216: Std_logic;
    signal u_sd_n63078: Std_logic;
    signal u_sd_n11: Std_logic;
    signal u_sd_n62493: Std_logic;
    signal u_sd_n12_adj_12146: Std_logic;
    signal u_sd_n58930: Std_logic;
    signal u_sd_n62176: Std_logic;
    signal u_sd_n57220: Std_logic;
    signal u_sd_n62178: Std_logic;
    signal u_sdram_n62053: Std_logic;
    signal u_sdram_n61973: Std_logic;
    signal VCC_net_000_BUF1: Std_logic;
    signal u_sdram_refresh_req_N_2426: Std_logic;
    signal u_sdram_n50301: Std_logic;
    signal u_sdram_refresh_req: Std_logic;
    signal u_sdram_n4: Std_logic;
    signal u_sdram_n57908: Std_logic;
    signal u_sdram_n30: Std_logic;
    signal u_sdram_n31: Std_logic;
    signal u_sdram_n61015: Std_logic;
    signal u_sdram_n61044: Std_logic;
    signal u_sd_n31_adj_12160: Std_logic;
    signal u_sd_n28_adj_12179: Std_logic;
    signal u_sd_n28: Std_logic;
    signal u_sd_wr_count_9_N_10061_1: Std_logic;
    signal u_sd_wr_count_9_N_10061_0: Std_logic;
    signal u_sd_n28_adj_12177: Std_logic;
    signal u_sd_n28_adj_12178: Std_logic;
    signal u_sd_wr_count_9_N_10061_3: Std_logic;
    signal u_sd_wr_count_9_N_10061_2: Std_logic;
    signal u_sd_n28_adj_12175: Std_logic;
    signal u_sd_n28_adj_12176: Std_logic;
    signal u_sd_wr_count_9_N_10061_5: Std_logic;
    signal u_sd_wr_count_9_N_10061_4: Std_logic;
    signal u_sd_n28_adj_12173: Std_logic;
    signal u_sd_n28_adj_12174: Std_logic;
    signal u_sd_wr_count_9_N_10061_7: Std_logic;
    signal u_sd_wr_count_9_N_10061_6: Std_logic;
    signal u_sd_n28_adj_12168: Std_logic;
    signal u_sd_n28_adj_12169: Std_logic;
    signal u_sd_wr_count_9_N_10061_9: Std_logic;
    signal u_sd_wr_count_9_N_10061_8: Std_logic;
    signal u_ctrl_u_tx_n60494: Std_logic;
    signal u_ctrl_u_tx_n60495: Std_logic;
    signal u_sd_n62002: Std_logic;
    signal u_sd_n62003: Std_logic;
    signal u_sd_n57018: Std_logic;
    signal u_sd_n66: Std_logic;
    signal u_sd_n63073: Std_logic;
    signal u_sd_n60337: Std_logic;
    signal u_sd_n62325: Std_logic;
    signal u_sd_n66_adj_12142: Std_logic;
    signal u_sd_n63072: Std_logic;
    signal u_sd_n60341: Std_logic;
    signal u_sd_n62345: Std_logic;
    signal u_sd_n66_adj_12145: Std_logic;
    signal u_sd_n62008: Std_logic;
    signal u_sd_n50876: Std_logic;
    signal u_sd_n62326: Std_logic;
    signal u_sd_n333: Std_logic;
    signal u_sd_n60323: Std_logic;
    signal u_sd_n60334: Std_logic;
    signal u_sd_n60332: Std_logic;
    signal u_sd_n62788: Std_logic;
    signal u_sd_n62793: Std_logic;
    signal u_sd_n62795: Std_logic;
    signal u_sd_n62798: Std_logic;
    signal u_sd_n62792: Std_logic;
    signal u_sd_n61948: Std_logic;
    signal u_sd_n46: Std_logic;
    signal u_sd_n58286: Std_logic;
    signal u_sd_n56618: Std_logic;
    signal u_sd_n427: Std_logic;
    signal u_sd_n60_adj_12194: Std_logic;
    signal u_sd_n56612: Std_logic;
    signal u_sd_n425: Std_logic;
    signal u_sd_n60_adj_12198: Std_logic;
    signal u_sd_n56606: Std_logic;
    signal u_sd_n423: Std_logic;
    signal u_sd_n60_adj_12201: Std_logic;
    signal u_sd_n56600: Std_logic;
    signal u_sd_n428: Std_logic;
    signal u_sd_n60: Std_logic;
    signal u_sd_n27_adj_12210: Std_logic;
    signal u_sd_n63070: Std_logic;
    signal u_sd_n62511: Std_logic;
    signal u_sd_n62514: Std_logic;
    signal u_sd_n60342: Std_logic;
    signal u_sd_n60344: Std_logic;
    signal u_sd_n60343: Std_logic;
    signal n61979: Std_logic;
    signal u_sd_n61947: Std_logic;
    signal u_sd_n61982: Std_logic;
    signal u_sd_n62042: Std_logic;
    signal u_sd_n62043: Std_logic;
    signal u_sd_n61899: Std_logic;
    signal u_sd_n61900: Std_logic;
    signal u_sd_n61903: Std_logic;
    signal u_sd_n60326: Std_logic;
    signal u_sd_n60327: Std_logic;
    signal u_sd_n61890: Std_logic;
    signal u_sd_n61891: Std_logic;
    signal u_sd_n61894: Std_logic;
    signal u_sd_n60328: Std_logic;
    signal u_sd_n60330: Std_logic;
    signal u_sd_n60329: Std_logic;
    signal u_sd_n60324: Std_logic;
    signal u_sd_n60325: Std_logic;
    signal u_sd_n60915: Std_logic;
    signal u_sd_n61876: Std_logic;
    signal u_sd_n61879: Std_logic;
    signal u_sd_n50851: Std_logic;
    signal u_sd_n473: Std_logic;
    signal u_sd_n12_adj_12140: Std_logic;
    signal u_sd_n472: Std_logic;
    signal u_sd_n12: Std_logic;
    signal u_sd_n62365: Std_logic;
    signal u_sd_n62366: Std_logic;
    signal u_sd_n61950: Std_logic;
    signal u_sd_n58695: Std_logic;
    signal u_sd_n58377: Std_logic;
    signal u_sd_n66_adj_12193: Std_logic;
    signal u_sd_n63071: Std_logic;
    signal u_sd_n60339: Std_logic;
    signal u_sd_n61949: Std_logic;
    signal u_sd_n58696: Std_logic;
    signal u_sd_n58378: Std_logic;
    signal u_sd_n66_adj_12189: Std_logic;
    signal u_sd_n62346: Std_logic;
    signal u_sd_n62060: Std_logic;
    signal u_sd_n53766: Std_logic;
    signal u_sd_n59001: Std_logic;
    signal u_sd_n21: Std_logic;
    signal u_sd_n62090: Std_logic;
    signal u_cam_cfg_n44: Std_logic;
    signal u_cam_cfg_n54127: Std_logic;
    signal u_cam_cfg_n60501: Std_logic;
    signal u_cam_cfg_n60502: Std_logic;
    signal u_cam_cfg_sda_oe_N_417: Std_logic;
    signal u_cam_cfg_u_rom_n28094: Std_logic;
    signal u_cam_cfg_u_rom_n28070: Std_logic;
    signal u_cam_cfg_u_rom_n28022: Std_logic;
    signal u_cam_cfg_u_rom_n27998: Std_logic;
    signal u_cam_cfg_rom_entry_0: Std_logic;
    signal u_cam_cfg_u_rom_n28088: Std_logic;
    signal u_cam_cfg_u_rom_n28064: Std_logic;
    signal u_cam_cfg_u_rom_n28016: Std_logic;
    signal u_cam_cfg_u_rom_n27992: Std_logic;
    signal u_cam_cfg_rom_entry_6: Std_logic;
    signal u_cam_cfg_u_rom_n28089: Std_logic;
    signal u_cam_cfg_u_rom_n28065: Std_logic;
    signal u_cam_cfg_u_rom_n28017: Std_logic;
    signal u_cam_cfg_u_rom_n27993: Std_logic;
    signal u_cam_cfg_rom_entry_5: Std_logic;
    signal u_cam_cfg_u_rom_n28090: Std_logic;
    signal u_cam_cfg_u_rom_n28066: Std_logic;
    signal u_cam_cfg_u_rom_n28018: Std_logic;
    signal u_cam_cfg_u_rom_n27994: Std_logic;
    signal u_cam_cfg_rom_entry_4: Std_logic;
    signal u_cam_cfg_u_rom_n28091: Std_logic;
    signal u_cam_cfg_u_rom_n28067: Std_logic;
    signal u_cam_cfg_u_rom_n28019: Std_logic;
    signal u_cam_cfg_u_rom_n27995: Std_logic;
    signal u_cam_cfg_rom_entry_3: Std_logic;
    signal u_cam_cfg_u_rom_n28092: Std_logic;
    signal u_cam_cfg_u_rom_n28068: Std_logic;
    signal u_cam_cfg_u_rom_n28020: Std_logic;
    signal u_cam_cfg_u_rom_n27996: Std_logic;
    signal u_cam_cfg_rom_entry_2: Std_logic;
    signal u_cam_cfg_u_rom_n28093: Std_logic;
    signal u_cam_cfg_u_rom_n28069: Std_logic;
    signal u_cam_cfg_u_rom_n28021: Std_logic;
    signal u_cam_cfg_u_rom_n27997: Std_logic;
    signal u_cam_cfg_rom_entry_1: Std_logic;
    signal u_cam_cfg_u_rom_n28087: Std_logic;
    signal u_cam_cfg_u_rom_n28063: Std_logic;
    signal u_cam_cfg_u_rom_n28015: Std_logic;
    signal u_cam_cfg_u_rom_n27991: Std_logic;
    signal u_cam_cfg_rom_entry_7: Std_logic;
    signal u_ctrl_n58202: Std_logic;
    signal u_ctrl_u_tx_n61963: Std_logic;
    signal u_sd_n59153: Std_logic;
    signal u_sd_n59159: Std_logic;
    signal n31914: Std_logic;
    signal u_sdram_wr_ready_N_2408: Std_logic;
    signal u_sd_n60919: Std_logic;
    signal u_sd_n61976: Std_logic;
    signal u_sd_n60997: Std_logic;
    signal u_sd_n60906: Std_logic;
    signal u_sd_n55: Std_logic;
    signal u_sd_n4: Std_logic;
    signal u_sd_n59081: Std_logic;
    signal u_sd_n55_adj_12163: Std_logic;
    signal u_sd_n73_adj_12186: Std_logic;
    signal u_sd_n55_adj_12166: Std_logic;
    signal u_sd_n73: Std_logic;
    signal u_sd_n61149: Std_logic;
    signal u_sd_n84: Std_logic;
    signal u_cam_cfg_n62054: Std_logic;
    signal u_cam_cfg_n14: Std_logic;
    signal u_cam_cfg_n59433: Std_logic;
    signal u_cam_cfg_n61968: Std_logic;
    signal u_cam_cfg_n62023: Std_logic;
    signal u_cam_cfg_n59009: Std_logic;
    signal u_ctrl_u_tx_n60290: Std_logic;
    signal u_ctrl_u_tx_n60288: Std_logic;
    signal u_ctrl_u_tx_n59603: Std_logic;
    signal u_ctrl_u_rx_n60007: Std_logic;
    signal u_ctrl_u_rx_n60019: Std_logic;
    signal u_ctrl_u_rx_n59485: Std_logic;
    signal u_ctrl_u_rx_n62028: Std_logic;
    signal u_ctrl_u_rx_n59545: Std_logic;
    signal u_ctrl_u_rx_n59963: Std_logic;
    signal u_ctrl_u_rx_n60073: Std_logic;
    signal u_ctrl_u_rx_n60035: Std_logic;
    signal u_ctrl_u_rx_n60043: Std_logic;
    signal u_ctrl_u_rx_n59995: Std_logic;
    signal u_ctrl_u_rx_n60003: Std_logic;
    signal u_ctrl_u_rx_n60063: Std_logic;
    signal u_ctrl_u_rx_n62024: Std_logic;
    signal u_ctrl_u_rx_n60057: Std_logic;
    signal u_ctrl_u_rx_n62010: Std_logic;
    signal u_ctrl_u_rx_n60021: Std_logic;
    signal u_ctrl_u_rx_n59929: Std_logic;
    signal u_ctrl_u_rx_n62020: Std_logic;
    signal u_ctrl_u_rx_n59919: Std_logic;
    signal u_ctrl_u_rx_n59559: Std_logic;
    signal u_ctrl_u_rx_valid_N_511: Std_logic;
    signal u_ctrl_u_rx_n60240: Std_logic;
    signal u_ctrl_u_rx_n59939: Std_logic;
    signal u_ctrl_u_rx_n62026: Std_logic;
    signal u_ctrl_u_rx_n59955: Std_logic;
    signal u_ctrl_u_rx_n59533: Std_logic;
    signal u_ctrl_u_rx_n59873: Std_logic;
    signal u_ctrl_u_rx_n59457: Std_logic;
    signal u_ctrl_u_rx_n59465: Std_logic;
    signal u_ctrl_u_rx_n59765: Std_logic;
    signal u_ctrl_u_rx_n61993: Std_logic;
    signal u_ctrl_u_rx_n59983: Std_logic;
    signal u_ctrl_u_rx_n59547: Std_logic;
    signal u_ctrl_u_rx_n60194: Std_logic;
    signal u_ctrl_u_rx_n59977: Std_logic;
    signal u_ctrl_u_rx_n59971: Std_logic;
    signal u_ctrl_u_rx_n59537: Std_logic;
    signal u_ctrl_u_regs_n59571: Std_logic;
    signal u_ctrl_u_regs_n59577: Std_logic;
    signal u_ctrl_u_cmd_n60105: Std_logic;
    signal u_ctrl_u_cmd_n60109: Std_logic;
    signal u_ctrl_u_cmd_n62037: Std_logic;
    signal u_ctrl_u_cmd_n61964: Std_logic;
    signal u_ctrl_u_cmd_n60049: Std_logic;
    signal u_ctrl_u_cmd_n60051: Std_logic;
    signal u_ctrl_u_cmd_n61994: Std_logic;
    signal u_ctrl_u_cmd_n61974: Std_logic;
    signal u_ctrl_u_cmd_n60123: Std_logic;
    signal u_ctrl_u_cmd_n59855: Std_logic;
    signal u_ctrl_u_cmd_n59857: Std_logic;
    signal u_ctrl_u_cmd_n60137: Std_logic;
    signal u_ctrl_u_cmd_n60139: Std_logic;
    signal u_ctrl_u_cmd_n60129: Std_logic;
    signal u_ctrl_u_cmd_n60131: Std_logic;
    signal u_ctrl_u_cmd_n59863: Std_logic;
    signal u_ctrl_u_cmd_n59865: Std_logic;
    signal u_ctrl_u_cmd_n59841: Std_logic;
    signal u_ctrl_u_cmd_n59843: Std_logic;
    signal u_ctrl_u_cmd_n60115: Std_logic;
    signal u_ctrl_u_cmd_n60117: Std_logic;
    signal u_ctrl_u_cmd_n60147: Std_logic;
    signal u_ctrl_u_cmd_n60149: Std_logic;
    signal u_sd_n62009: Std_logic;
    signal u_sd_n59389: Std_logic;
    signal u_sd_n8_adj_12157: Std_logic;
    signal u_sd_n62011: Std_logic;
    signal u_sdram_n16: Std_logic;
    signal u_sdram_n59501: Std_logic;
    signal u_sdram_n59509: Std_logic;
    signal u_sdram_n59505: Std_logic;
    signal u_sd_n79: Std_logic;
    signal u_sd_n76: Std_logic;
    signal u_sd_n8: Std_logic;
    signal u_sd_n291: Std_logic;
    signal u_sd_n31: Std_logic;
    signal u_sd_n62049: Std_logic;
    signal u_sd_n14_adj_12154: Std_logic;
    signal u_sd_n289: Std_logic;
    signal u_sd_n31_adj_12139: Std_logic;
    signal u_sd_n60268: Std_logic;
    signal u_sd_n62031: Std_logic;
    signal u_sd_n62030: Std_logic;
    signal u_sd_n15: Std_logic;
    signal u_sd_n293: Std_logic;
    signal u_sd_n58949: Std_logic;
    signal u_sd_n58836: Std_logic;
    signal u_sd_n61969: Std_logic;
    signal u_sd_n50861: Std_logic;
    signal u_sd_n61997: Std_logic;
    signal u_sd_n69_adj_12187: Std_logic;
    signal u_sd_n50860: Std_logic;
    signal u_sd_n50857: Std_logic;
    signal u_sd_n50863: Std_logic;
    signal u_sd_n50859: Std_logic;
    signal u_sd_n50862: Std_logic;
    signal u_sd_n69: Std_logic;
    signal u_sd_n59247: Std_logic;
    signal u_sd_n59145: Std_logic;
    signal u_sd_n28863: Std_logic;
    signal u_sd_n58144: Std_logic;
    signal u_sd_n61989: Std_logic;
    signal u_sd_n62012: Std_logic;
    signal u_sd_n59177: Std_logic;
    signal u_sd_n59441: Std_logic;
    signal u_sd_n49970: Std_logic;
    signal u_sd_n62045: Std_logic;
    signal u_sd_n60228: Std_logic;
    signal u_sd_n56868: Std_logic;
    signal u_sd_n61990: Std_logic;
    signal u_sd_n59207: Std_logic;
    signal u_sd_n59443: Std_logic;
    signal u_sd_n30_adj_12161: Std_logic;
    signal u_sd_n268: Std_logic;
    signal u_sd_n62789: Std_logic;
    signal u_sd_n61293: Std_logic;
    signal u_sd_n58179: Std_logic;
    signal u_sd_n59447: Std_logic;
    signal u_sd_n61341: Std_logic;
    signal u_sd_n61967: Std_logic;
    signal u_sd_n61970: Std_logic;
    signal u_sd_n69_adj_12165: Std_logic;
    signal u_sd_n61972: Std_logic;
    signal u_sd_n61439: Std_logic;
    signal u_sd_n61971: Std_logic;
    signal u_sd_n8_adj_12172: Std_logic;
    signal u_sd_n58153: Std_logic;
    signal u_sd_n61382: Std_logic;
    signal u_sd_n61987: Std_logic;
    signal u_sd_n61421: Std_logic;
    signal u_sd_n58252: Std_logic;
    signal u_cam_cfg_n51433: Std_logic;
    signal u_cam_cfg_n59755: Std_logic;
    signal u_cam_cfg_n59267: Std_logic;
    signal u_cam_cfg_n59269: Std_logic;
    signal u_cam_cfg_n59739: Std_logic;
    signal u_cam_cfg_n23: Std_logic;
    signal u_cam_cfg_n59749: Std_logic;
    signal u_cam_cfg_n61984: Std_logic;
    signal u_cam_cfg_n61980: Std_logic;
    signal u_cam_cfg_n59655: Std_logic;
    signal u_cam_cfg_n59263: Std_logic;
    signal u_cam_cfg_n60264: Std_logic;
    signal u_cam_cfg_n59729: Std_logic;
    signal u_cam_cfg_n59725: Std_logic;
    signal u_cam_cfg_n59735: Std_logic;
    signal u_cam_cfg_n62044: Std_logic;
    signal u_cam_cfg_n59731: Std_logic;
    signal u_cam_cfg_n27_adj_12136: Std_logic;
    signal u_cam_cfg_n59305: Std_logic;
    signal u_cam_cfg_n60318: Std_logic;
    signal u_cam_cfg_n60236: Std_logic;
    signal u_cam_cfg_n62038: Std_logic;
    signal u_cam_cfg_n50736: Std_logic;
    signal u_cam_cfg_n58905: Std_logic;
    signal u_cam_cfg_n20: Std_logic;
    signal u_cam_cfg_n29_adj_12135: Std_logic;
    signal u_cam_cfg_n59283: Std_logic;
    signal u_cam_cfg_n59285: Std_logic;
    signal u_cam_cfg_n60300: Std_logic;
    signal GND_net: Std_logic;
    signal MCLK_c: Std_logic;
    signal CRYSTAL_c: Std_logic;
    signal VCCI: Std_logic;
    component SD_DQ_13_B
      port (SDDQ13: out Std_logic);
    end component;
    component SD_DQ_14_B
      port (SDDQ14: out Std_logic);
    end component;
    component SD_DQ_15_B
      port (SDDQ15: out Std_logic);
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
    component M_D0B
      port (PADDI: out Std_logic; MD0: in Std_logic);
    end component;
    component RXB
      port (PADDI: out Std_logic; RXS: in Std_logic);
    end component;
    component CRYSTALB
      port (PADDI: out Std_logic; CRYSTALS: in Std_logic);
    end component;
    component M_CLKB
      port (PADDO: in Std_logic; MCLKS: out Std_logic);
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
      port (ESPD0: out Std_logic);
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
    component SD_DQ_0_B
      port (SDDQ0: out Std_logic);
    end component;
    component SD_DQ_1_B
      port (SDDQ1: out Std_logic);
    end component;
    component SD_DQ_2_B
      port (SDDQ2: out Std_logic);
    end component;
    component SD_DQ_3_B
      port (SDDQ3: out Std_logic);
    end component;
    component SD_DQ_4_B
      port (SDDQ4: out Std_logic);
    end component;
    component SD_DQ_5_B
      port (SDDQ5: out Std_logic);
    end component;
    component SD_DQ_6_B
      port (SDDQ6: out Std_logic);
    end component;
    component SD_DQ_7_B
      port (SDDQ7: out Std_logic);
    end component;
    component SD_DQ_8_B
      port (SDDQ8: out Std_logic);
    end component;
    component SD_DQ_9_B
      port (SDDQ9: out Std_logic);
    end component;
    component SD_DQ_10_B
      port (SDDQ10: out Std_logic);
    end component;
    component SD_DQ_11_B
      port (SDDQ11: out Std_logic);
    end component;
    component SD_DQ_12_B
      port (SDDQ12: out Std_logic);
    end component;
    component mux_341
      port (CLKB: in Std_logic; CEB: in Std_logic; DOB0: out Std_logic; 
            DOB1: out Std_logic; DOB2: out Std_logic; DOB3: out Std_logic; 
            DOB4: out Std_logic; DOB5: out Std_logic; DOB6: out Std_logic; 
            DOB7: out Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
            ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
            ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
            ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic);
    end component;
    component u_cam_cfg_u_rom_mux_839
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
    component u_cam_cfg_u_rom_mux_835
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
    component u_cam_cfg_u_rom_mux_838
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
    component u_cam_cfg_u_rom_mux_836
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
    component u_pll_PLLInst_0
      port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
            CLKOS: out Std_logic; CLKOP: out Std_logic);
    end component;
  begin
    u_ctrl_u_tx_SLICE_0I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n81, DI0=>u_ctrl_u_tx_n82, 
                A0=>u_ctrl_u_tx_clk_cnt_3, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n56540, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28555, FCO=>u_ctrl_u_tx_n56541, 
                F1=>u_ctrl_u_tx_n81, Q1=>u_ctrl_u_tx_clk_cnt_4, 
                F0=>u_ctrl_u_tx_n82, Q0=>u_ctrl_u_tx_clk_cnt_3);
    u_ctrl_u_tx_SLICE_1I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n83, DI0=>u_ctrl_u_tx_n84, 
                A0=>u_ctrl_u_tx_clk_cnt_1, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n56539, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28555, FCO=>u_ctrl_u_tx_n56540, 
                F1=>u_ctrl_u_tx_n83, Q1=>u_ctrl_u_tx_clk_cnt_2, 
                F0=>u_ctrl_u_tx_n84, Q0=>u_ctrl_u_tx_clk_cnt_1);
    u_ctrl_u_tx_SLICE_2I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_0, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n85, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28555, FCO=>u_ctrl_u_tx_n56539, 
                F1=>u_ctrl_u_tx_n85, Q1=>u_ctrl_u_tx_clk_cnt_0, F0=>open, 
                Q0=>open);
    u_ctrl_u_tx_SLICE_3I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_ctrl_u_tx_n70, A0=>u_ctrl_u_tx_clk_cnt_15, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>u_ctrl_u_tx_n56546, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_ctrl_u_tx_n28555, FCO=>open, F1=>open, 
                Q1=>open, F0=>u_ctrl_u_tx_n70, Q0=>u_ctrl_u_tx_clk_cnt_15);
    u_ctrl_u_tx_SLICE_4I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n71, DI0=>u_ctrl_u_tx_n72, 
                A0=>u_ctrl_u_tx_clk_cnt_13, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n56545, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28555, FCO=>u_ctrl_u_tx_n56546, 
                F1=>u_ctrl_u_tx_n71, Q1=>u_ctrl_u_tx_clk_cnt_14, 
                F0=>u_ctrl_u_tx_n72, Q0=>u_ctrl_u_tx_clk_cnt_13);
    u_ctrl_u_tx_SLICE_5I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n73, DI0=>u_ctrl_u_tx_n74, 
                A0=>u_ctrl_u_tx_clk_cnt_11, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n56544, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28555, FCO=>u_ctrl_u_tx_n56545, 
                F1=>u_ctrl_u_tx_n73, Q1=>u_ctrl_u_tx_clk_cnt_12, 
                F0=>u_ctrl_u_tx_n74, Q0=>u_ctrl_u_tx_clk_cnt_11);
    u_ctrl_u_tx_SLICE_6I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_10, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n75, DI0=>u_ctrl_u_tx_n76, 
                A0=>u_ctrl_u_tx_clk_cnt_9, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n56543, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28555, FCO=>u_ctrl_u_tx_n56544, 
                F1=>u_ctrl_u_tx_n75, Q1=>u_ctrl_u_tx_clk_cnt_10, 
                F0=>u_ctrl_u_tx_n76, Q0=>u_ctrl_u_tx_clk_cnt_9);
    u_ctrl_u_tx_SLICE_7I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n77, DI0=>u_ctrl_u_tx_n78, 
                A0=>u_ctrl_u_tx_clk_cnt_7, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n56542, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28555, FCO=>u_ctrl_u_tx_n56543, 
                F1=>u_ctrl_u_tx_n77, Q1=>u_ctrl_u_tx_clk_cnt_8, 
                F0=>u_ctrl_u_tx_n78, Q0=>u_ctrl_u_tx_clk_cnt_7);
    u_ctrl_u_tx_SLICE_8I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_tx_clk_cnt_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_tx_n79, DI0=>u_ctrl_u_tx_n80, 
                A0=>u_ctrl_u_tx_clk_cnt_5, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_tx_n56541, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n28555, FCO=>u_ctrl_u_tx_n56542, 
                F1=>u_ctrl_u_tx_n79, Q1=>u_ctrl_u_tx_clk_cnt_6, 
                F0=>u_ctrl_u_tx_n80, Q0=>u_ctrl_u_tx_clk_cnt_5);
    u_ctrl_u_rx_SLICE_9I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_ctrl_u_rx_n70, A0=>u_ctrl_u_rx_clk_cnt_15, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>u_ctrl_u_rx_n56594, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_257, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51518, FCO=>open, F1=>open, Q1=>open, 
                F0=>u_ctrl_u_rx_n70, Q0=>u_ctrl_u_rx_clk_cnt_15);
    u_ctrl_u_rx_SLICE_10I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n71, DI0=>u_ctrl_u_rx_n72, 
                A0=>u_ctrl_u_rx_clk_cnt_13, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n56593, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_257, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51518, FCO=>u_ctrl_u_rx_n56594, 
                F1=>u_ctrl_u_rx_n71, Q1=>u_ctrl_u_rx_clk_cnt_14, 
                F0=>u_ctrl_u_rx_n72, Q0=>u_ctrl_u_rx_clk_cnt_13);
    u_ctrl_u_rx_SLICE_11I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n73, DI0=>u_ctrl_u_rx_n74, 
                A0=>u_ctrl_u_rx_clk_cnt_11, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n56592, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_257, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51518, FCO=>u_ctrl_u_rx_n56593, 
                F1=>u_ctrl_u_rx_n73, Q1=>u_ctrl_u_rx_clk_cnt_12, 
                F0=>u_ctrl_u_rx_n74, Q0=>u_ctrl_u_rx_clk_cnt_11);
    u_ctrl_u_rx_SLICE_12I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_10, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n75, DI0=>u_ctrl_u_rx_n76, 
                A0=>u_ctrl_u_rx_clk_cnt_9, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n56591, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_257, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51518, FCO=>u_ctrl_u_rx_n56592, 
                F1=>u_ctrl_u_rx_n75, Q1=>u_ctrl_u_rx_clk_cnt_10, 
                F0=>u_ctrl_u_rx_n76, Q0=>u_ctrl_u_rx_clk_cnt_9);
    u_ctrl_u_rx_SLICE_13I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n77, DI0=>u_ctrl_u_rx_n78, 
                A0=>u_ctrl_u_rx_clk_cnt_7, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n56590, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_257, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51518, FCO=>u_ctrl_u_rx_n56591, 
                F1=>u_ctrl_u_rx_n77, Q1=>u_ctrl_u_rx_clk_cnt_8, 
                F0=>u_ctrl_u_rx_n78, Q0=>u_ctrl_u_rx_clk_cnt_7);
    u_ctrl_u_rx_SLICE_14I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n79, DI0=>u_ctrl_u_rx_n80, 
                A0=>u_ctrl_u_rx_clk_cnt_5, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n56589, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_257, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51518, FCO=>u_ctrl_u_rx_n56590, 
                F1=>u_ctrl_u_rx_n79, Q1=>u_ctrl_u_rx_clk_cnt_6, 
                F0=>u_ctrl_u_rx_n80, Q0=>u_ctrl_u_rx_clk_cnt_5);
    u_ctrl_u_rx_SLICE_15I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n81, DI0=>u_ctrl_u_rx_n82, 
                A0=>u_ctrl_u_rx_clk_cnt_3, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n56588, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_257, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51518, FCO=>u_ctrl_u_rx_n56589, 
                F1=>u_ctrl_u_rx_n81, Q1=>u_ctrl_u_rx_clk_cnt_4, 
                F0=>u_ctrl_u_rx_n82, Q0=>u_ctrl_u_rx_clk_cnt_3);
    u_ctrl_u_rx_SLICE_16I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n83, DI0=>u_ctrl_u_rx_n84, 
                A0=>u_ctrl_u_rx_clk_cnt_1, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_ctrl_u_rx_n56587, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_257, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51518, FCO=>u_ctrl_u_rx_n56588, 
                F1=>u_ctrl_u_rx_n83, Q1=>u_ctrl_u_rx_clk_cnt_2, 
                F0=>u_ctrl_u_rx_n84, Q0=>u_ctrl_u_rx_clk_cnt_1);
    u_ctrl_u_rx_SLICE_17I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_ctrl_u_rx_clk_cnt_0, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_ctrl_u_rx_n85, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_257, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51518, FCO=>u_ctrl_u_rx_n56587, 
                F1=>u_ctrl_u_rx_n85, Q1=>u_ctrl_u_rx_clk_cnt_0, F0=>open, 
                Q0=>open);
    u_ctrl_u_cmd_SLICE_18I: SCCU2C
      generic map (CCU2_INJECT1_1=>"NO", INIT0_INITVAL=>X"9009", 
                   INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_rx_data_1, B0=>u_ctrl_u_cmd_chk_calc_1, 
                C0=>u_ctrl_rx_data_0, D0=>u_ctrl_u_cmd_chk_calc_0, 
                FCI=>u_ctrl_u_cmd_n56361, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>u_ctrl_u_cmd_cmd_valid_N_765, Q1=>open, 
                F0=>open, Q0=>open);
    u_ctrl_u_cmd_SLICE_19I: SCCU2C
      generic map (INIT0_INITVAL=>X"9009", INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_ctrl_rx_data_3, B1=>u_ctrl_u_cmd_chk_calc_3, 
                C1=>u_ctrl_rx_data_2, D1=>u_ctrl_u_cmd_chk_calc_2, DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_rx_data_5, B0=>u_ctrl_u_cmd_chk_calc_5, 
                C0=>u_ctrl_rx_data_4, D0=>u_ctrl_u_cmd_chk_calc_4, 
                FCI=>u_ctrl_u_cmd_n56360, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>u_ctrl_u_cmd_n56361, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    u_ctrl_u_cmd_SLICE_20I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"00FF", 
                   INIT1_INITVAL=>X"9009")
      port map (M1=>'X', A1=>u_ctrl_rx_data_7, B1=>u_ctrl_u_cmd_chk_calc_7, 
                C1=>u_ctrl_rx_data_6, D1=>u_ctrl_u_cmd_chk_calc_6, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_ctrl_u_cmd_n56360, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_21I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fe00", INIT1_INITVAL=>X"fe00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n62058, B1=>st_0, C1=>st_3, D1=>rom_addr_2, 
                DI1=>n316, DI0=>n317, A0=>n62058, B0=>st_0, C0=>st_3, 
                D0=>rom_addr_1, FCI=>n56560, M0=>'X', CE=>tick, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>n56561, F1=>n316, Q1=>rom_addr_2, F0=>n317, 
                Q0=>rom_addr_1);
    SLICE_22I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"8878", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>rom_addr_0, B1=>n58929, C1=>st_3, D1=>n54018, 
                DI1=>n318, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', 
                FCI=>'X', M0=>'X', CE=>tick, CLK=>SD_CLK_c, LSR=>'X', 
                FCO=>n56560, F1=>n318, Q1=>rom_addr_0, F0=>open, Q0=>open);
    SLICE_23I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"6aaa", INIT1_INITVAL=>X"6aaa")
      port map (M1=>'X', A1=>n56365, B1=>spi_done, C1=>n54095, 
                D1=>resp_tries_7, DI1=>'X', DI0=>'X', A0=>n56367, B0=>spi_done, 
                C0=>n54095, D0=>resp_tries_6, FCI=>n56553, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>open, F1=>n20, Q1=>open, F0=>n23, 
                Q0=>open);
    SLICE_24I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>wr_count_6, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>wr_count_5, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56557, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n56558, 
                F1=>n33, Q1=>open, F0=>n36_adj_12259, Q0=>open);
    SLICE_25I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"6aaa", INIT1_INITVAL=>X"6aaa")
      port map (M1=>'X', A1=>n56369, B1=>spi_done, C1=>n54095, 
                D1=>resp_tries_5, DI1=>'X', DI0=>'X', A0=>n56371, B0=>spi_done, 
                C0=>n54095, D0=>resp_tries_4, FCI=>n56552, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>n56553, F1=>n26, Q1=>open, F0=>n29, 
                Q0=>open);
    SLICE_26I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>wr_count_8, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>wr_count_7, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56558, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n56559, 
                F1=>n27, Q1=>open, F0=>n30, Q0=>open);
    SLICE_27I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"59aa")
      port map (M1=>'X', A1=>wr_count_0, B1=>n58356, C1=>wr_count_9, 
                D1=>spi_done, DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'1', FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n56555, F1=>n51_adj_12254, Q1=>open, F0=>open, Q0=>open);
    SLICE_28I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"6aaa", INIT1_INITVAL=>X"6aaa")
      port map (M1=>'X', A1=>n56373, B1=>spi_done, C1=>n54095, 
                D1=>resp_tries_3, DI1=>'X', DI0=>'X', A0=>n56375, B0=>spi_done, 
                C0=>n54095, D0=>resp_tries_2, FCI=>n56551, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>n56552, F1=>n32_adj_12253, Q1=>open, 
                F0=>n35, Q0=>open);
    SLICE_29I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"6aaa", INIT1_INITVAL=>X"6aaa")
      port map (M1=>'X', A1=>n56377, B1=>spi_done, C1=>n54095, 
                D1=>resp_tries_1, DI1=>'X', DI0=>'X', A0=>n56379, B0=>spi_done, 
                C0=>n54095, D0=>resp_tries_0, FCI=>n56550, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>n56551, F1=>n38, Q1=>open, F0=>n41, 
                Q0=>open);
    SLICE_30I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>n36, A0=>div_cnt_15, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56538, M0=>'X', CE=>u_sd_SD_CLK_c_enable_263, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36876, FCO=>open, F1=>open, Q1=>open, 
                F0=>n36, Q0=>div_cnt_15);
    SLICE_31I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"ffff")
      port map (M1=>'X', A1=>n53790, B1=>n53799, C1=>n58397, D1=>spi_done, 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n56550, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_32I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_14, B1=>'X', C1=>'X', D1=>'1', DI1=>n39, 
                DI0=>n42, A0=>div_cnt_13, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56537, M0=>'X', CE=>u_sd_SD_CLK_c_enable_263, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36876, FCO=>n56538, F1=>n39, 
                Q1=>div_cnt_14, F0=>n42, Q0=>div_cnt_13);
    SLICE_33I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_12, B1=>'X', C1=>'X', D1=>'1', DI1=>n45, 
                DI0=>n48, A0=>div_cnt_11, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56536, M0=>'X', CE=>u_sd_SD_CLK_c_enable_263, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36876, FCO=>n56537, F1=>n45, 
                Q1=>div_cnt_12, F0=>n48, Q0=>div_cnt_11);
    SLICE_34I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>wr_count_4, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>wr_count_3, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56556, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n56557, 
                F1=>n39_adj_12258, Q1=>open, F0=>n42_adj_12257, Q0=>open);
    SLICE_35I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_10, B1=>'X', C1=>'X', D1=>'1', DI1=>n51, 
                DI0=>n54, A0=>div_cnt_9, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56535, M0=>'X', CE=>u_sd_SD_CLK_c_enable_263, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36876, FCO=>n56536, F1=>n51, 
                Q1=>div_cnt_10, F0=>n54, Q0=>div_cnt_9);
    SLICE_36I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_8, B1=>'X', C1=>'X', D1=>'1', DI1=>n57, 
                DI0=>n60, A0=>div_cnt_7, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56534, M0=>'X', CE=>u_sd_SD_CLK_c_enable_263, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36876, FCO=>n56535, F1=>n57, 
                Q1=>div_cnt_8, F0=>n60, Q0=>div_cnt_7);
    SLICE_37I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_6, B1=>'X', C1=>'X', D1=>'1', DI1=>n63, 
                DI0=>n66, A0=>div_cnt_5, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56533, M0=>'X', CE=>u_sd_SD_CLK_c_enable_263, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36876, FCO=>n56534, F1=>n63, 
                Q1=>div_cnt_6, F0=>n66, Q0=>div_cnt_5);
    u_sdram_SLICE_38I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_sdram_n70, A0=>u_sdram_refresh_cnt_15, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>u_sdram_n56586, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n28589, FCO=>open, F1=>open, Q1=>open, 
                F0=>u_sdram_n70, Q0=>u_sdram_refresh_cnt_15);
    u_sdram_SLICE_39I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_refresh_cnt_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n71, DI0=>u_sdram_n72, A0=>u_sdram_refresh_cnt_13, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n56585, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n28589, 
                FCO=>u_sdram_n56586, F1=>u_sdram_n71, 
                Q1=>u_sdram_refresh_cnt_14, F0=>u_sdram_n72, 
                Q0=>u_sdram_refresh_cnt_13);
    u_sdram_SLICE_40I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_refresh_cnt_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n73, DI0=>u_sdram_n74, A0=>u_sdram_refresh_cnt_11, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n56584, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n28589, 
                FCO=>u_sdram_n56585, F1=>u_sdram_n73, 
                Q1=>u_sdram_refresh_cnt_12, F0=>u_sdram_n74, 
                Q0=>u_sdram_refresh_cnt_11);
    u_sdram_SLICE_41I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_refresh_cnt_10, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n75, DI0=>u_sdram_n76, A0=>u_sdram_refresh_cnt_9, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n56583, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n28589, 
                FCO=>u_sdram_n56584, F1=>u_sdram_n75, 
                Q1=>u_sdram_refresh_cnt_10, F0=>u_sdram_n76, 
                Q0=>u_sdram_refresh_cnt_9);
    u_sdram_SLICE_42I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_refresh_cnt_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n77, DI0=>u_sdram_n78, A0=>u_sdram_refresh_cnt_7, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n56582, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n28589, 
                FCO=>u_sdram_n56583, F1=>u_sdram_n77, 
                Q1=>u_sdram_refresh_cnt_8, F0=>u_sdram_n78, 
                Q0=>u_sdram_refresh_cnt_7);
    u_sdram_SLICE_43I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_refresh_cnt_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n79, DI0=>u_sdram_n80, A0=>u_sdram_refresh_cnt_5, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_sdram_n56581, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n28589, 
                FCO=>u_sdram_n56582, F1=>u_sdram_n79, 
                Q1=>u_sdram_refresh_cnt_6, F0=>u_sdram_n80, 
                Q0=>u_sdram_refresh_cnt_5);
    u_sdram_SLICE_44I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_refresh_cnt_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n81, DI0=>u_sdram_n82, A0=>u_sdram_n13, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>u_sdram_n56580, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_sdram_n28589, FCO=>u_sdram_n56581, 
                F1=>u_sdram_n81, Q1=>u_sdram_refresh_cnt_4, F0=>u_sdram_n82, 
                Q0=>u_sdram_n13);
    u_sdram_SLICE_45I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_n14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n83, DI0=>u_sdram_n84, A0=>u_sdram_n15, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>u_sdram_n56579, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_sdram_n28589, FCO=>u_sdram_n56580, 
                F1=>u_sdram_n83, Q1=>u_sdram_n14, F0=>u_sdram_n84, 
                Q0=>u_sdram_n15);
    u_sdram_SLICE_46I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_sdram_n16_adj_12245, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_sdram_n85, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_sdram_n28589, 
                FCO=>u_sdram_n56579, F1=>u_sdram_n85, 
                Q1=>u_sdram_n16_adj_12245, F0=>open, Q0=>open);
    SLICE_47I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_4, B1=>'X', C1=>'X', D1=>'1', DI1=>n69, 
                DI0=>n72, A0=>div_cnt_3, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56532, M0=>'X', CE=>u_sd_SD_CLK_c_enable_263, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36876, FCO=>n56533, F1=>n69, 
                Q1=>div_cnt_4, F0=>n72, Q0=>div_cnt_3);
    SLICE_48I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"1e1e", INIT1_INITVAL=>X"1e1e")
      port map (M1=>'X', A1=>n13, B1=>n14, C1=>dummy_left_7, D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>n13, B0=>n14, C0=>dummy_left_6, D0=>'1', 
                FCI=>n56572, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>n22, Q1=>open, F0=>n25, Q0=>open);
    SLICE_49I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"1e1e", INIT1_INITVAL=>X"1e1e")
      port map (M1=>'X', A1=>n13, B1=>n14, C1=>dummy_left_5, D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>n13, B0=>n14, C0=>dummy_left_4, D0=>'1', 
                FCI=>n56571, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n56572, 
                F1=>n28, Q1=>open, F0=>n31, Q0=>open);
    SLICE_50I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"1e1e", INIT1_INITVAL=>X"1e1e")
      port map (M1=>'X', A1=>n13, B1=>n14, C1=>dummy_left_3, D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>n13, B0=>n14, C0=>dummy_left_2, D0=>'1', 
                FCI=>n56570, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n56571, 
                F1=>n34, Q1=>open, F0=>n37, Q0=>open);
    SLICE_51I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_2, B1=>'X', C1=>'X', D1=>'1', DI1=>n75, 
                DI0=>n78, A0=>div_cnt_1, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56531, M0=>'X', CE=>u_sd_SD_CLK_c_enable_263, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36876, FCO=>n56532, F1=>n75, 
                Q1=>div_cnt_2, F0=>n78, Q0=>div_cnt_1);
    SLICE_52I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"999a", INIT1_INITVAL=>X"1e1e")
      port map (M1=>'X', A1=>n13, B1=>n14, C1=>dummy_left_1, D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>dummy_left_0, B0=>spi_done, C0=>n13, D0=>n14, 
                FCI=>n56569, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n56570, 
                F1=>n40, Q1=>open, F0=>n43, Q0=>open);
    SLICE_53I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"11ee")
      port map (M1=>'X', A1=>n13, B1=>n14, C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n56569, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_54I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fe00", INIT1_INITVAL=>X"fe00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n62058, B1=>st_0, C1=>st_3, D1=>rom_addr_10, 
                DI1=>n308, DI0=>n309, A0=>n62058, B0=>st_0, C0=>st_3, 
                D0=>rom_addr_9, FCI=>n56564, M0=>'X', CE=>tick, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>open, F1=>n308, Q1=>rom_addr_10, F0=>n309, 
                Q0=>rom_addr_9);
    SLICE_55I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fe00", INIT1_INITVAL=>X"fe00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n62058, B1=>st_0, C1=>st_3, D1=>rom_addr_8, 
                DI1=>n310, DI0=>n311, A0=>n62058, B0=>st_0, C0=>st_3, 
                D0=>rom_addr_7, FCI=>n56563, M0=>'X', CE=>tick, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>n56564, F1=>n310, Q1=>rom_addr_8, F0=>n311, 
                Q0=>rom_addr_7);
    SLICE_56I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>div_cnt_0, B1=>'X', C1=>'X', D1=>'1', DI1=>n81, 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>u_sd_SD_CLK_c_enable_263, CLK=>SD_CLK_c, 
                LSR=>u_sd_n36876, FCO=>n56531, F1=>n81, Q1=>div_cnt_0, 
                F0=>open, Q0=>open);
    SLICE_57I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>wr_count_9, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56559, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>open, Q1=>open, F0=>n24, Q0=>open);
    u_sd_SLICE_58I: SCCU2C
      generic map (INIT0_INITVAL=>X"0001", INIT1_INITVAL=>X"0081")
      port map (M1=>'X', A1=>div_cnt_6, B1=>u_sd_sck_N_10230_3, C1=>div_cnt_7, 
                D1=>div_cnt_4, DI1=>'X', DI0=>'X', A0=>div_cnt_11, 
                B0=>div_cnt_10, C0=>div_cnt_9, D0=>div_cnt_8, FCI=>u_sd_n56358, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>u_sd_n56359, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    u_sd_SLICE_59I: SCCU2C
      generic map (CCU2_INJECT1_1=>"NO", INIT0_INITVAL=>X"8001", 
                   INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>div_cnt_6, B0=>div_cnt_5, C0=>div_cnt_3, 
                D0=>div_cnt_2, FCI=>u_sd_n56359, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>open, F1=>u_sd_sck_N_10229, Q1=>open, F0=>open, 
                Q0=>open);
    u_sd_SLICE_60I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"0088", 
                   INIT1_INITVAL=>X"0001")
      port map (M1=>'X', A1=>div_cnt_15, B1=>div_cnt_14, C1=>div_cnt_13, 
                D1=>div_cnt_12, DI1=>'X', DI0=>'X', A0=>div_cnt_1, 
                B0=>div_cnt_0, C0=>'X', D0=>'1', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>u_sd_n56358, F1=>open, Q1=>open, 
                F0=>open, Q0=>open);
    u_cam_cfg_SLICE_61I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_cam_cfg_divc_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_cam_cfg_n42, DI0=>u_cam_cfg_n43_adj_12137, 
                A0=>u_cam_cfg_divc_7, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_cam_cfg_n56577, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_tick_N_429, FCO=>open, F1=>u_cam_cfg_n42, 
                Q1=>u_cam_cfg_divc_8, F0=>u_cam_cfg_n43_adj_12137, 
                Q0=>u_cam_cfg_divc_7);
    u_cam_cfg_SLICE_62I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_cam_cfg_divc_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_cam_cfg_n44_adj_12138, DI0=>u_cam_cfg_n45, 
                A0=>u_cam_cfg_divc_5, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>u_cam_cfg_n56576, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_tick_N_429, FCO=>u_cam_cfg_n56577, 
                F1=>u_cam_cfg_n44_adj_12138, Q1=>u_cam_cfg_divc_6, 
                F0=>u_cam_cfg_n45, Q0=>u_cam_cfg_divc_5);
    u_cam_cfg_SLICE_63I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_cam_cfg_divc_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_cam_cfg_n46, DI0=>u_cam_cfg_n47, A0=>u_cam_cfg_divc_3, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_cam_cfg_n56575, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_cam_cfg_tick_N_429, 
                FCO=>u_cam_cfg_n56576, F1=>u_cam_cfg_n46, Q1=>u_cam_cfg_divc_4, 
                F0=>u_cam_cfg_n47, Q0=>u_cam_cfg_divc_3);
    u_cam_cfg_SLICE_64I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_cam_cfg_divc_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_cam_cfg_n48, DI0=>u_cam_cfg_n49, A0=>u_cam_cfg_divc_1, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>u_cam_cfg_n56574, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_cam_cfg_tick_N_429, 
                FCO=>u_cam_cfg_n56575, F1=>u_cam_cfg_n48, Q1=>u_cam_cfg_divc_2, 
                F0=>u_cam_cfg_n49, Q0=>u_cam_cfg_divc_1);
    u_cam_cfg_SLICE_65I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>u_cam_cfg_divc_0, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>u_cam_cfg_n50, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_tick_N_429, FCO=>u_cam_cfg_n56574, 
                F1=>u_cam_cfg_n50, Q1=>u_cam_cfg_divc_0, F0=>open, Q0=>open);
    SLICE_66I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>wr_count_2, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>wr_count_1, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n56555, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n56556, 
                F1=>n45_adj_12256, Q1=>open, F0=>n48_adj_12255, Q0=>open);
    SLICE_67I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fe00", INIT1_INITVAL=>X"fe00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n62058, B1=>st_0, C1=>st_3, D1=>rom_addr_6, 
                DI1=>n312, DI0=>n313, A0=>n62058, B0=>st_0, C0=>st_3, 
                D0=>rom_addr_5, FCI=>n56562, M0=>'X', CE=>tick, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>n56563, F1=>n312, Q1=>rom_addr_6, F0=>n313, 
                Q0=>rom_addr_5);
    SLICE_68I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fe00", INIT1_INITVAL=>X"fe00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>n62058, B1=>st_0, C1=>st_3, D1=>rom_addr_4, 
                DI1=>n314, DI0=>n315, A0=>n62058, B0=>st_0, C0=>st_3, 
                D0=>rom_addr_3, FCI=>n56561, M0=>'X', CE=>tick, CLK=>SD_CLK_c, 
                LSR=>'X', FCO=>n56562, F1=>n314, Q1=>rom_addr_4, F0=>n315, 
                Q0=>rom_addr_3);
    u_sd_SLICE_69I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"6666", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_sck_N_10228, A0=>M_CLK_c, 
                B0=>u_sd_sck_N_10229, C0=>'X', D0=>'X', M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_263, CLK=>SD_CLK_c, LSR=>u_sd_n36895, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_sck_N_10228, Q0=>M_CLK_c);
    u_sd_SLICE_70I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FACA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_n49306, A0=>u_sd_spi_tx_7, 
                B0=>u_sd_spi_busy_N_10255, C0=>u_sd_spi_busy, D0=>u_sd_n62515, 
                M0=>'X', CE=>u_sd_SD_CLK_c_enable_12, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n49306, 
                Q0=>M_CMD_c);
    u_sd_SLICE_71I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CCDC", 
                   LUT1_INITVAL=>X"8888", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>M_D3_c, B1=>u_sd_n25, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_cs_n_N_10075, A0=>u_sd_n62034, 
                B0=>u_sd_n27_adj_12170, C0=>u_sd_n23_adj_12171, D0=>u_sd_st_5, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_n27_adj_12170, Q1=>open, OFX0=>open, 
                F0=>u_sd_cs_n_N_10075, Q0=>M_D3_c);
    u_sdram_SLICE_72I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sdram_SD_A_12_N_2210_9, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>SD_A_c_9);
    u_sdram_SLICE_73I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"FFFE", 
                   LUT1_INITVAL=>X"DCCC", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_SD_A_12_N_2210_9, 
                B1=>u_sdram_st_2, C1=>u_sdram_n19202, D1=>u_sdram_n62005, 
                DI1=>'X', DI0=>u_sdram_n62005, A0=>u_sdram_wait_cnt_0, 
                B0=>u_sdram_wait_cnt_1, C0=>u_sdram_wait_cnt_3, 
                D0=>u_sdram_wait_cnt_2, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n19202, OFX1=>open, F1=>u_sdram_n35931, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n62005, Q0=>SD_CAS_N_c);
    u_sdram_SLICE_74I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C5C5", 
                   LUT1_INITVAL=>X"5151", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n19204, 
                B1=>u_sdram_st_2, C1=>u_sdram_n62005, D1=>'X', DI1=>'X', 
                DI0=>u_sdram_SD_RAS_N_N_2416, A0=>u_sdram_SD_A_12_N_2210_9, 
                B0=>u_sdram_n62005, C0=>u_sdram_n19202, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sdram_SD_CLK_c_enable_259, Q1=>open, OFX0=>open, 
                F0=>u_sdram_SD_RAS_N_N_2416, Q0=>SD_RAS_N_c);
    u_sdram_SLICE_75I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"5555", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_n62052, 
                A0=>u_sdram_SD_A_12_N_2210_9, B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_sdram_n62052, 
                Q0=>SD_WE_N_c);
    u_ctrl_u_tx_SLICE_76I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C5C5", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_tx_tx_N_1135, 
                A0=>u_ctrl_u_tx_n24557, B0=>u_ctrl_u_tx_tx_N_1136, 
                C0=>u_ctrl_u_tx_n24556, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_tx_tx_N_1135, Q0=>TX_c);
    u_cam_cfg_SLICE_77I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F707", 
                   LUT1_INITVAL=>X"0202", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>u_cam_cfg_st_1, 
                C1=>u_cam_cfg_st_2, D1=>'X', DI1=>'X', 
                DI0=>u_cam_cfg_scl_N_406, A0=>st_0, B0=>u_cam_cfg_st_1, 
                C0=>u_cam_cfg_st_2, D0=>u_cam_cfg_n61458, M0=>st_3, 
                CE=>u_cam_cfg_SD_CLK_c_enable_8, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_scl_N_406, 
                F0=>open, Q0=>cam_scl_c);
    SLICE_78I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CAAA", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n60440, A0=>capture_enable, 
                B0=>cmd_arg_0, C0=>n58126, D0=>cmd_opcode_4, M0=>'X', 
                CE=>u_ctrl_SD_CLK_c_enable_164, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n60440, 
                Q0=>capture_enable);
    u_ctrl_u_cmd_SLICE_79I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_ctrl_u_cmd_bytes_2_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>cmd_arg_0);
    u_sd_SLICE_81I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECA0", 
                   LUT1_INITVAL=>X"8CAF", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n40, B1=>dummy_left_1, 
                C1=>u_sd_n50935, D1=>u_sd_n13, 
                DI1=>u_sd_dummy_left_7_N_10021_1, 
                DI0=>u_sd_dummy_left_7_N_10021_0, A0=>n43, B0=>dummy_left_0, 
                C0=>u_sd_n50935, D0=>u_sd_n13, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_dummy_left_7_N_10021_1, 
                Q1=>dummy_left_1, OFX0=>open, F0=>u_sd_dummy_left_7_N_10021_0, 
                Q0=>dummy_left_0);
    u_sd_SLICE_82I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECA0", 
                   LUT1_INITVAL=>X"8CAF", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n34, B1=>dummy_left_3, 
                C1=>u_sd_n50935, D1=>u_sd_n13, 
                DI1=>u_sd_dummy_left_7_N_10021_3, 
                DI0=>u_sd_dummy_left_7_N_10021_2, A0=>n37, B0=>dummy_left_2, 
                C0=>u_sd_n50935, D0=>u_sd_n13, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_dummy_left_7_N_10021_3, 
                Q1=>dummy_left_3, OFX0=>open, F0=>u_sd_dummy_left_7_N_10021_2, 
                Q0=>dummy_left_2);
    u_sd_SLICE_83I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECA0", 
                   LUT1_INITVAL=>X"ECA0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n28, B1=>dummy_left_5, 
                C1=>u_sd_n50935, D1=>u_sd_n13, 
                DI1=>u_sd_dummy_left_7_N_10021_5, 
                DI0=>u_sd_dummy_left_7_N_10021_4, A0=>n31, B0=>dummy_left_4, 
                C0=>u_sd_n50935, D0=>u_sd_n13, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_dummy_left_7_N_10021_5, 
                Q1=>dummy_left_5, OFX0=>open, F0=>u_sd_dummy_left_7_N_10021_4, 
                Q0=>dummy_left_4);
    u_sd_SLICE_84I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECA0", 
                   LUT1_INITVAL=>X"ECA0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n22, B1=>dummy_left_7, 
                C1=>u_sd_n50935, D1=>u_sd_n13, 
                DI1=>u_sd_dummy_left_7_N_10021_7, 
                DI0=>u_sd_dummy_left_7_N_10021_6, A0=>n25, B0=>dummy_left_6, 
                C0=>u_sd_n50935, D0=>u_sd_n13, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_dummy_left_7_N_10021_7, 
                Q1=>dummy_left_7, OFX0=>open, F0=>u_sd_dummy_left_7_N_10021_6, 
                Q0=>dummy_left_6);
    u_cam_cfg_SLICE_85I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"5554", LUT1_INITVAL=>X"FFFE", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>post_delay_1, 
                B1=>post_delay_5, C1=>post_delay_3, D1=>u_cam_cfg_post_delay_7, 
                DI1=>'X', DI0=>u_cam_cfg_n43, A0=>post_delay_0, 
                B0=>u_cam_cfg_n14_adj_12133, C0=>u_cam_cfg_n59319, 
                D0=>post_delay_2, M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_250, 
                CLK=>SD_CLK_c, LSR=>u_cam_cfg_n51503, OFX1=>open, 
                F1=>u_cam_cfg_n14_adj_12133, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n43, Q0=>post_delay_0);
    u_cam_cfg_SLICE_86I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D020", 
                   LUT1_INITVAL=>X"D020", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n61999, B1=>n59497, 
                C1=>u_cam_cfg_n61986, D1=>post_delay_3, DI1=>u_cam_cfg_n58131, 
                DI0=>u_cam_cfg_n58130, A0=>n61999, B0=>post_delay_0, 
                C0=>u_cam_cfg_n61986, D0=>post_delay_1, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_250, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n58131, Q1=>post_delay_3, OFX0=>open, 
                F0=>u_cam_cfg_n58130, Q0=>post_delay_1);
    u_cam_cfg_SLICE_87I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F37B", 
                   LUT1_INITVAL=>X"1111", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>u_cam_cfg_st_1, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>u_cam_cfg_n61946, A0=>n61999, 
                B0=>st_0, C0=>post_delay_2, D0=>n59339, M0=>st_3, 
                CE=>u_cam_cfg_SD_CLK_c_enable_250, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_n61946, 
                F0=>open, Q0=>post_delay_2);
    u_cam_cfg_SLICE_88I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"3113", 
                   LUT1_INITVAL=>X"8888", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_phase_0, 
                B1=>u_cam_cfg_phase_1, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_cam_cfg_n58278, A0=>st_0, B0=>st_3, C0=>post_delay_4, 
                D0=>n58657, M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_250, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n62055, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n58278, Q0=>post_delay_4);
    u_cam_cfg_SLICE_89I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FD02", LUT1_INITVAL=>X"FD02", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n61999, B1=>n59339, 
                C1=>n59637, D1=>post_delay_6, DI1=>u_cam_cfg_n56800, 
                DI0=>u_cam_cfg_n56802, A0=>n61999, B0=>n62013, C0=>n59627, 
                D0=>post_delay_5, M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_250, 
                CLK=>SD_CLK_c, LSR=>u_cam_cfg_n51503, OFX1=>open, 
                F1=>u_cam_cfg_n56800, Q1=>post_delay_6, OFX0=>open, 
                F0=>u_cam_cfg_n56802, Q0=>post_delay_5);
    u_sd_SLICE_90I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FEEE", 
                   LUT1_INITVAL=>X"FEEE", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n67_adj_12202, 
                B1=>u_sd_n61_adj_12188, C1=>resp_tries_1, D1=>u_sd_n63, 
                DI1=>u_sd_resp_tries_7_N_9997_1, 
                DI0=>u_sd_resp_tries_7_N_9997_0, A0=>u_sd_n67, B0=>u_sd_n61, 
                C0=>resp_tries_0, D0=>u_sd_n63, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_resp_tries_7_N_9997_1, Q1=>resp_tries_1, OFX0=>open, 
                F0=>u_sd_resp_tries_7_N_9997_0, Q0=>resp_tries_0);
    u_sd_SLICE_91I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FF54", 
                   LUT1_INITVAL=>X"FF54", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_n61342, 
                C1=>u_sd_n70_adj_12244, D1=>u_sd_n59137, 
                DI1=>u_sd_resp_tries_7_N_9997_3, 
                DI0=>u_sd_resp_tries_7_N_9997_2, A0=>u_sd_st_2, 
                B0=>u_sd_n61294, C0=>u_sd_n70, D0=>u_sd_n59135, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_resp_tries_7_N_9997_3, Q1=>resp_tries_3, OFX0=>open, 
                F0=>u_sd_resp_tries_7_N_9997_2, Q0=>resp_tries_2);
    u_sd_SLICE_92I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FF54", 
                   LUT1_INITVAL=>X"FF54", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, 
                B1=>u_sd_n73_adj_12196, C1=>u_sd_n70_adj_12231, 
                D1=>u_sd_n59133, DI1=>u_sd_resp_tries_7_N_9997_5, 
                DI0=>u_sd_resp_tries_7_N_9997_4, A0=>u_sd_st_2, 
                B0=>u_sd_n61383, C0=>u_sd_n70_adj_12199, D0=>u_sd_n59131, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_resp_tries_7_N_9997_5, Q1=>resp_tries_5, OFX0=>open, 
                F0=>u_sd_resp_tries_7_N_9997_4, Q0=>resp_tries_4);
    u_sd_SLICE_93I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FF54", 
                   LUT1_INITVAL=>X"FF54", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_n61440, 
                C1=>u_sd_n70_adj_12213, D1=>u_sd_n59129, 
                DI1=>u_sd_resp_tries_7_N_9997_7, 
                DI0=>u_sd_resp_tries_7_N_9997_6, A0=>u_sd_st_2, 
                B0=>u_sd_n61422, C0=>u_sd_n70_adj_12220, D0=>u_sd_n59127, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_resp_tries_7_N_9997_7, Q1=>resp_tries_7, OFX0=>open, 
                F0=>u_sd_resp_tries_7_N_9997_6, Q0=>resp_tries_6);
    SLICE_95I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"3A0A", 
                   LUT1_INITVAL=>X"EEEE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>st_3, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n60443, A0=>sda_oe, B0=>n62040, 
                C0=>n32, D0=>n12, M0=>'X', CE=>tick, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>n62040, Q1=>open, OFX0=>open, F0=>n60443, 
                Q0=>sda_oe);
    SLICE_96I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"0008", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_bit_idx_1, 
                B1=>u_ctrl_u_rx_n62035, C1=>u_ctrl_u_rx_n59913, 
                D1=>u_ctrl_u_rx_n12, DI1=>'X', DI0=>n60441, A0=>shreg_7, 
                B0=>rx_s2, C0=>n59883, D0=>n59881, M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_183, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>n59883, Q1=>open, OFX0=>open, F0=>n60441, 
                Q0=>shreg_7);
    u_sd_SLICE_97I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"0001", LUT1_INITVAL=>X"8000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy_N_10255, 
                B1=>u_sd_sck_N_10229, C1=>u_sd_half_phase, D1=>u_sd_spi_busy, 
                DI1=>'X', DI0=>u_sd_spi_busy_N_10255, A0=>u_sd_bit_cnt_1, 
                B0=>u_sd_bit_cnt_2, C0=>u_sd_bit_cnt_3, D0=>u_sd_bit_cnt_0, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_n61961, OFX1=>open, 
                F1=>u_sd_SD_CLK_c_enable_193, Q1=>open, OFX0=>open, 
                F0=>u_sd_spi_busy_N_10255, Q0=>spi_done);
    u_cam_cfg_SLICE_98I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"3535", 
                   LUT1_INITVAL=>X"101F", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_2, 
                B1=>u_cam_cfg_st_1, C1=>st_3, D1=>st_0, DI1=>'X', 
                DI0=>u_cam_cfg_n54126, A0=>u_cam_cfg_n54085, 
                B0=>u_cam_cfg_n58756, C0=>u_cam_cfg_st_2, D0=>'X', 
                M0=>u_cam_cfg_n60488, CE=>u_cam_cfg_SD_CLK_c_enable_216, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_n54126, F0=>open, Q0=>st_0);
    u_cam_cfg_SLICE_99I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"2F20", 
                   LUT1_INITVAL=>X"3A30", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n59743, 
                B1=>u_cam_cfg_n62057, C1=>u_cam_cfg_st_2, D1=>u_cam_cfg_n62056, 
                DI1=>'X', DI0=>u_cam_cfg_n300, A0=>st_0, B0=>n62058, C0=>st_3, 
                D0=>u_cam_cfg_n7_adj_12134, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_252, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n7_adj_12134, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n300, Q0=>st_3);
    u_cam_cfg_SLICE_100I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0800", 
                   LUT1_INITVAL=>X"8888", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_divc_8, 
                B1=>u_cam_cfg_divc_2, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_cam_cfg_tick_N_429, A0=>u_cam_cfg_n60238, 
                B0=>u_cam_cfg_n60306, C0=>u_cam_cfg_n60169, 
                D0=>u_cam_cfg_n60242, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n60238, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_tick_N_429, Q0=>tick);
    u_cam_cfg_SLICE_101I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"33FB", 
                   LUT1_INITVAL=>X"7F55", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_2, 
                B1=>u_cam_cfg_byte_idx_0, C1=>u_cam_cfg_byte_idx_1, 
                D1=>u_cam_cfg_phase_0, DI1=>'X', DI0=>u_cam_cfg_n62072, 
                A0=>u_cam_cfg_bitn_1, B0=>u_cam_cfg_st_2, C0=>u_cam_cfg_bitn_2, 
                D0=>u_cam_cfg_bitn_0, M0=>st_0, 
                CE=>u_cam_cfg_SD_CLK_c_enable_18, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_n62072, 
                F0=>open, Q0=>u_cam_cfg_bitn_0);
    u_cam_cfg_SLICE_102I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"9898", LUT1_INITVAL=>X"E0E0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_bitn_0, 
                B1=>u_cam_cfg_bitn_1, C1=>u_cam_cfg_bitn_2, D1=>'X', 
                DI1=>u_cam_cfg_n50625, DI0=>u_cam_cfg_n50624, 
                A0=>u_cam_cfg_bitn_1, B0=>u_cam_cfg_bitn_0, 
                C0=>u_cam_cfg_bitn_2, D0=>'X', M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_244, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n55737, OFX1=>open, F1=>u_cam_cfg_n50625, 
                Q1=>u_cam_cfg_bitn_2, OFX0=>open, F0=>u_cam_cfg_n50624, 
                Q0=>u_cam_cfg_bitn_1);
    u_cam_cfg_SLICE_103I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"B0C0", 
                   LUT1_INITVAL=>X"2000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>u_cam_cfg_st_1, 
                C1=>u_cam_cfg_phase_1, D1=>u_cam_cfg_phase_0, DI1=>'X', 
                DI0=>u_cam_cfg_n60439, A0=>u_cam_cfg_byte_idx_1, 
                B0=>u_cam_cfg_byte_idx_0, C0=>u_cam_cfg_st_2, 
                D0=>u_cam_cfg_n50498, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_219, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n50498, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n60439, Q0=>u_cam_cfg_byte_idx_0);
    u_cam_cfg_SLICE_104I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6060", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_n58934, 
                A0=>u_cam_cfg_byte_idx_1, B0=>u_cam_cfg_byte_idx_0, 
                C0=>u_cam_cfg_st_2, D0=>'X', M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_245, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n58934, Q0=>u_cam_cfg_byte_idx_1);
    u_cam_cfg_SLICE_105I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28062, C1=>u_cam_cfg_u_rom_n28086, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_8, 
                A0=>u_cam_cfg_u_rom_n27990, B0=>u_cam_cfg_u_rom_n28014, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_8, F0=>open, Q0=>u_cam_cfg_cur_reg_0);
    u_cam_cfg_SLICE_106I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28061, C1=>u_cam_cfg_u_rom_n28085, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_9, 
                A0=>u_cam_cfg_u_rom_n27989, B0=>u_cam_cfg_u_rom_n28013, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_9, F0=>open, Q0=>u_cam_cfg_cur_reg_1);
    u_cam_cfg_SLICE_107I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28060, C1=>u_cam_cfg_u_rom_n28084, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_10, 
                A0=>u_cam_cfg_u_rom_n27988, B0=>u_cam_cfg_u_rom_n28012, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_10, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_2);
    u_cam_cfg_SLICE_108I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28059, C1=>u_cam_cfg_u_rom_n28083, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_11, 
                A0=>u_cam_cfg_u_rom_n27987, B0=>u_cam_cfg_u_rom_n28011, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_11, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_3);
    u_cam_cfg_SLICE_109I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28058, C1=>u_cam_cfg_u_rom_n28082, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_12, 
                A0=>u_cam_cfg_u_rom_n27986, B0=>u_cam_cfg_u_rom_n28010, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_12, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_4);
    u_cam_cfg_SLICE_110I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28057, C1=>u_cam_cfg_u_rom_n28081, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_13, 
                A0=>u_cam_cfg_u_rom_n27985, B0=>u_cam_cfg_u_rom_n28009, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_13, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_5);
    u_cam_cfg_SLICE_111I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28056, C1=>u_cam_cfg_u_rom_n28080, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_15, 
                A0=>u_cam_cfg_u_rom_n27984, B0=>u_cam_cfg_u_rom_n28008, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_15, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_7);
    u_cam_cfg_SLICE_112I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28055, C1=>u_cam_cfg_u_rom_n28079, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_16, 
                A0=>u_cam_cfg_u_rom_n27983, B0=>u_cam_cfg_u_rom_n28007, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_16, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_8);
    u_cam_cfg_SLICE_113I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28054, C1=>u_cam_cfg_u_rom_n28078, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_17, 
                A0=>u_cam_cfg_u_rom_n27982, B0=>u_cam_cfg_u_rom_n28006, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_17, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_9);
    u_cam_cfg_SLICE_114I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28053, C1=>u_cam_cfg_u_rom_n28077, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_18, 
                A0=>u_cam_cfg_u_rom_n27981, B0=>u_cam_cfg_u_rom_n28005, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_18, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_10);
    u_cam_cfg_SLICE_115I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28052, C1=>u_cam_cfg_u_rom_n28076, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_19, 
                A0=>u_cam_cfg_u_rom_n27980, B0=>u_cam_cfg_u_rom_n28004, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_19, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_11);
    u_cam_cfg_SLICE_116I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28051, C1=>u_cam_cfg_u_rom_n28075, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_20, 
                A0=>u_cam_cfg_u_rom_n27979, B0=>u_cam_cfg_u_rom_n28003, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_20, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_12);
    u_cam_cfg_SLICE_117I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28050, C1=>u_cam_cfg_u_rom_n28074, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_21, 
                A0=>u_cam_cfg_u_rom_n27978, B0=>u_cam_cfg_u_rom_n28002, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_21, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_13);
    u_cam_cfg_SLICE_118I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28048, C1=>u_cam_cfg_u_rom_n28072, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_22, 
                A0=>u_cam_cfg_u_rom_n27976, B0=>u_cam_cfg_u_rom_n28000, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_22, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_14);
    u_cam_cfg_SLICE_119I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28049, C1=>u_cam_cfg_u_rom_n28073, 
                D1=>'X', DI1=>'X', DI0=>u_cam_cfg_rom_entry_23, 
                A0=>u_cam_cfg_u_rom_n27977, B0=>u_cam_cfg_u_rom_n28001, 
                C0=>n309, D0=>'X', M0=>n308, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_23, F0=>open, 
                Q0=>u_cam_cfg_cur_reg_15);
    u_cam_cfg_SLICE_120I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>n27890, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>n27891, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_cam_cfg_cur_val_1, OFX0=>open, F0=>open, 
                Q0=>u_cam_cfg_cur_val_0);
    u_cam_cfg_SLICE_121I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>n27888, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>n27889, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_cam_cfg_cur_val_3, OFX0=>open, F0=>open, 
                Q0=>u_cam_cfg_cur_val_2);
    u_cam_cfg_SLICE_122I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>n27886, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>n27887, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_cam_cfg_cur_val_5, OFX0=>open, F0=>open, 
                Q0=>u_cam_cfg_cur_val_4);
    u_cam_cfg_SLICE_123I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>n27884, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>n27885, CE=>u_cam_cfg_SD_CLK_c_enable_243, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_cam_cfg_cur_val_7, OFX0=>open, F0=>open, 
                Q0=>u_cam_cfg_cur_val_6);
    u_cam_cfg_SLICE_124I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"8484", 
                   LUT1_INITVAL=>X"C060", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_phase_0, 
                B1=>u_cam_cfg_phase_1, C1=>u_cam_cfg_st_2, D1=>u_cam_cfg_st_1, 
                DI1=>u_cam_cfg_n60442, DI0=>u_cam_cfg_n7, 
                A0=>u_cam_cfg_phase_0, B0=>u_cam_cfg_st_2, C0=>u_cam_cfg_st_1, 
                D0=>'X', M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_219, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n60442, 
                Q1=>u_cam_cfg_phase_1, OFX0=>open, F0=>u_cam_cfg_n7, 
                Q0=>u_cam_cfg_phase_0);
    SLICE_125I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FD02", LUT1_INITVAL=>X"FFFE", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>post_delay_1, 
                B1=>post_delay_2, C1=>post_delay_4, D1=>post_delay_3, DI1=>'X', 
                DI0=>u_cam_cfg_n56798, A0=>n61999, B0=>n59647, C0=>n59649, 
                D0=>u_cam_cfg_post_delay_7, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_250, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n51503, OFX1=>open, F1=>n59649, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n56798, Q0=>u_cam_cfg_post_delay_7);
    u_cam_cfg_SLICE_126I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"F1E0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_byte_idx_1, 
                B1=>u_cam_cfg_byte_idx_0, C1=>u_cam_cfg_n219, 
                D1=>u_cam_cfg_cur_reg_10, DI1=>u_cam_cfg_n241, 
                DI0=>u_cam_cfg_n243, A0=>u_cam_cfg_n52366, 
                B0=>u_cam_cfg_cur_val_0, C0=>u_cam_cfg_byte_idx_1, D0=>'X', 
                M0=>'X', CE=>u_cam_cfg_SD_CLK_c_enable_255, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n55733, OFX1=>open, F1=>u_cam_cfg_n241, 
                Q1=>u_cam_cfg_sh_2, OFX0=>open, F0=>u_cam_cfg_n243, 
                Q0=>u_cam_cfg_sh_0);
    u_cam_cfg_SLICE_127I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C088", 
                   LUT1_INITVAL=>X"2020", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_2, 
                B1=>u_cam_cfg_byte_idx_0, C1=>u_cam_cfg_cur_val_1, D1=>'X', 
                DI1=>'X', DI0=>u_cam_cfg_n62099, A0=>u_cam_cfg_cur_reg_9, 
                B0=>u_cam_cfg_st_2, C0=>u_cam_cfg_cur_reg_1, 
                D0=>u_cam_cfg_byte_idx_0, M0=>u_cam_cfg_byte_idx_1, 
                CE=>u_cam_cfg_SD_CLK_c_enable_245, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_cam_cfg_n62099, 
                F0=>open, Q0=>u_cam_cfg_sh_1);
    u_cam_cfg_SLICE_128I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"F1E0", LUT1_INITVAL=>X"F1E0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_byte_idx_1, 
                B1=>u_cam_cfg_byte_idx_0, C1=>u_cam_cfg_n217, 
                D1=>u_cam_cfg_cur_reg_12, DI1=>u_cam_cfg_n239, 
                DI0=>u_cam_cfg_n240, A0=>u_cam_cfg_byte_idx_1, 
                B0=>u_cam_cfg_byte_idx_0, C0=>u_cam_cfg_n218, 
                D0=>u_cam_cfg_cur_reg_11, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_255, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n55733, OFX1=>open, F1=>u_cam_cfg_n239, 
                Q1=>u_cam_cfg_sh_4, OFX0=>open, F0=>u_cam_cfg_n240, 
                Q0=>u_cam_cfg_sh_3);
    u_cam_cfg_SLICE_129I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"F1E0", LUT1_INITVAL=>X"F1E0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_byte_idx_1, 
                B1=>u_cam_cfg_byte_idx_0, C1=>u_cam_cfg_n215, 
                D1=>u_cam_cfg_cur_reg_14, DI1=>u_cam_cfg_n237, 
                DI0=>u_cam_cfg_n238, A0=>u_cam_cfg_byte_idx_1, 
                B0=>u_cam_cfg_byte_idx_0, C0=>u_cam_cfg_n216, 
                D0=>u_cam_cfg_cur_reg_13, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_255, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n55733, OFX1=>open, F1=>u_cam_cfg_n237, 
                Q1=>u_cam_cfg_sh_6, OFX0=>open, F0=>u_cam_cfg_n238, 
                Q0=>u_cam_cfg_sh_5);
    u_cam_cfg_SLICE_130I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"F1E0", LUT1_INITVAL=>X"F4B0", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_byte_idx_1, 
                B1=>u_cam_cfg_byte_idx_0, C1=>u_cam_cfg_cur_val_7, 
                D1=>u_cam_cfg_cur_reg_7, DI1=>'X', DI0=>u_cam_cfg_n236, 
                A0=>u_cam_cfg_byte_idx_1, B0=>u_cam_cfg_byte_idx_0, 
                C0=>u_cam_cfg_n214, D0=>u_cam_cfg_cur_reg_15, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_255, CLK=>SD_CLK_c, 
                LSR=>u_cam_cfg_n55733, OFX1=>open, F1=>u_cam_cfg_n214, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n236, Q0=>u_cam_cfg_sh_7);
    u_cam_cfg_SLICE_131I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"1410", 
                   LUT1_INITVAL=>X"FFFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_1, 
                B1=>u_cam_cfg_st_2, C1=>st_3, D1=>st_0, DI1=>'X', 
                DI0=>u_cam_cfg_n302, A0=>st_3, B0=>st_0, C0=>u_cam_cfg_st_1, 
                D0=>u_cam_cfg_n51468, M0=>'X', 
                CE=>u_cam_cfg_SD_CLK_c_enable_216, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>n58929, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n302, Q0=>u_cam_cfg_st_1);
    u_cam_cfg_SLICE_132I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"4040", 
                   LUT1_INITVAL=>X"0415", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3, B1=>u_cam_cfg_st_1, 
                C1=>st_0, D1=>u_cam_cfg_n11, DI1=>'X', DI0=>u_cam_cfg_n62111, 
                A0=>st_3, B0=>u_cam_cfg_st_1, C0=>st_0, D0=>'X', 
                M0=>u_cam_cfg_st_2, CE=>u_cam_cfg_SD_CLK_c_enable_251, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_n62111, F0=>open, Q0=>u_cam_cfg_st_2);
    u_ctrl_u_regs_SLICE_133I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_seq_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_seq_0, CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_ack_seq_1, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_ack_seq_0);
    u_ctrl_u_regs_SLICE_134I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_seq_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_seq_2, CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_ack_seq_3, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_ack_seq_2);
    u_ctrl_u_regs_SLICE_135I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_seq_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_seq_4, CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_ack_seq_5, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_ack_seq_4);
    u_ctrl_u_regs_SLICE_136I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_seq_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_seq_6, CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_ack_seq_7, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_ack_seq_6);
    u_ctrl_SLICE_137I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FBEB", 
                   LUT1_INITVAL=>X"FFFB", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_n62017, 
                B1=>cmd_opcode_4, C1=>u_ctrl_cmd_opcode_5, D1=>u_ctrl_n62014, 
                DI1=>'X', DI0=>u_ctrl_n62066, A0=>u_ctrl_n62017, 
                B0=>cmd_opcode_4, C0=>u_ctrl_cmd_opcode_5, D0=>u_ctrl_n62014, 
                M0=>u_ctrl_cmd_opcode_2, CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_n62066, 
                F0=>open, Q0=>u_ctrl_ack_type_0);
    u_ctrl_SLICE_138I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0110", 
                   LUT1_INITVAL=>X"FEFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_6, 
                B1=>u_ctrl_u_cmd_cmd_opcode_7, C1=>u_ctrl_u_cmd_cmd_opcode_3, 
                D1=>u_ctrl_n62021, DI1=>'X', DI0=>u_ctrl_n58855, 
                A0=>cmd_opcode_4, B0=>u_ctrl_u_cmd_n61983, 
                C0=>u_ctrl_cmd_opcode_5, D0=>u_ctrl_cmd_opcode_0, M0=>'X', 
                CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n61983, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n58855, Q0=>u_ctrl_ack_type_1);
    u_ctrl_u_regs_SLICE_140I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_regs_n61915, 
                A0=>u_ctrl_u_regs_n61914, B0=>u_ctrl_u_regs_n61911, 
                C0=>u_ctrl_cmd_opcode_1, D0=>'X', M0=>'X', 
                CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, LSR=>u_ctrl_n51538, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_regs_n61915, Q0=>u_ctrl_ack_value_0);
    u_ctrl_u_regs_SLICE_141I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"0062", 
                   LUT1_INITVAL=>X"1200", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_cmd_opcode_0, 
                B1=>u_ctrl_cmd_opcode_5, C1=>u_ctrl_cmd_opcode_1, 
                D1=>u_ctrl_cmd_arg_1, DI1=>'X', DI0=>u_ctrl_u_regs_n60976, 
                A0=>u_ctrl_cmd_opcode_0, B0=>u_ctrl_cmd_opcode_5, 
                C0=>u_ctrl_u_regs_mode_0, D0=>u_ctrl_cmd_opcode_1, 
                M0=>cmd_opcode_4, CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_n51538, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_regs_n60976, F0=>open, Q0=>u_ctrl_ack_value_1);
    u_ctrl_u_regs_SLICE_142I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"200C", 
                   LUT1_INITVAL=>X"0100", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_cmd_opcode_0, 
                B1=>u_ctrl_cmd_opcode_1, C1=>cmd_opcode_4, 
                D1=>u_ctrl_u_regs_mode_1, DI1=>'X', DI0=>u_ctrl_u_regs_n61752, 
                A0=>u_ctrl_cmd_arg_2, B0=>u_ctrl_cmd_opcode_0, 
                C0=>u_ctrl_cmd_opcode_1, D0=>cmd_opcode_4, 
                M0=>u_ctrl_cmd_opcode_5, CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_n51538, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_regs_n61752, F0=>open, Q0=>u_ctrl_ack_value_2);
    u_ctrl_u_regs_SLICE_143I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"2000", 
                   LUT1_INITVAL=>X"2000", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_n4, B1=>u_ctrl_n61998, 
                C1=>u_ctrl_n160, D1=>u_ctrl_cmd_arg_4, 
                DI1=>u_ctrl_u_regs_n58030, DI0=>u_ctrl_u_regs_n58031, 
                A0=>u_ctrl_n4, B0=>u_ctrl_n61998, C0=>u_ctrl_n160, 
                D0=>u_ctrl_cmd_arg_3, M0=>'X', CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_ctrl_u_regs_n58030, 
                Q1=>u_ctrl_ack_value_4, OFX0=>open, F0=>u_ctrl_u_regs_n58031, 
                Q0=>u_ctrl_ack_value_3);
    u_ctrl_u_regs_SLICE_144I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FF35", 
                   LUT1_INITVAL=>X"ABBB", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_n62017, 
                B1=>u_ctrl_u_regs_n58119, C1=>u_ctrl_u_regs_n20, 
                D1=>u_ctrl_u_regs_n58023, DI1=>u_ctrl_u_regs_n57818, 
                DI0=>u_ctrl_u_regs_n61955, A0=>u_ctrl_u_regs_n14, 
                B0=>u_ctrl_n16, C0=>cmd_opcode_4, D0=>u_ctrl_n62017, M0=>'X', 
                CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_regs_n57818, Q1=>u_ctrl_ack_value_6, OFX0=>open, 
                F0=>u_ctrl_u_regs_n61955, Q0=>u_ctrl_ack_value_5);
    u_ctrl_u_regs_SLICE_145I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FF35", 
                   LUT1_INITVAL=>X"CECF", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_n62000, 
                B1=>u_ctrl_n62017, C1=>u_ctrl_u_regs_n36, D1=>u_ctrl_n4, 
                DI1=>u_ctrl_u_regs_n50905, DI0=>u_ctrl_u_regs_n61956, 
                A0=>u_ctrl_u_regs_n14_adj_12250, B0=>u_ctrl_n16_adj_12252, 
                C0=>cmd_opcode_4, D0=>u_ctrl_n62017, M0=>'X', 
                CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_regs_n50905, Q1=>u_ctrl_ack_value_8, OFX0=>open, 
                F0=>u_ctrl_u_regs_n61956, Q0=>u_ctrl_ack_value_7);
    u_ctrl_u_regs_SLICE_146I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0400", 
                   LUT1_INITVAL=>X"FCEE", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_n58158, 
                B1=>u_ctrl_n62017, C1=>u_ctrl_n168, D1=>cmd_opcode_4, 
                DI1=>u_ctrl_u_regs_n54058, DI0=>u_ctrl_u_regs_n58983, 
                A0=>u_ctrl_n62017, B0=>u_ctrl_n62021, C0=>cmd_opcode_4, 
                D0=>u_ctrl_u_regs_n18, M0=>'X', CE=>u_ctrl_cmd_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_ctrl_u_regs_n54058, 
                Q1=>u_ctrl_ack_value_10, OFX0=>open, F0=>u_ctrl_u_regs_n58983, 
                Q0=>u_ctrl_ack_value_9);
    u_ctrl_u_regs_SLICE_147I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FCEE", 
                   LUT1_INITVAL=>X"0100", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_n61998, 
                B1=>u_ctrl_n61996, C1=>cmd_opcode_4, 
                D1=>u_ctrl_u_regs_frame_stride_7, DI1=>u_ctrl_u_regs_n59052, 
                DI0=>u_ctrl_u_regs_n54062, A0=>u_ctrl_n58157, 
                B0=>u_ctrl_n62017, C0=>u_ctrl_n168, D0=>cmd_opcode_4, M0=>'X', 
                CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_regs_n59052, Q1=>u_ctrl_ack_value_12, OFX0=>open, 
                F0=>u_ctrl_u_regs_n54062, Q0=>u_ctrl_ack_value_11);
    u_ctrl_SLICE_148I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0010", 
                   LUT1_INITVAL=>X"FFCA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n60909, 
                B1=>u_ctrl_u_cmd_n60908, C1=>u_ctrl_cmd_opcode_1, 
                D1=>u_ctrl_n62017, DI1=>u_ctrl_n61951, DI0=>u_ctrl_n58853, 
                A0=>u_ctrl_cmd_opcode_5, B0=>u_ctrl_u_cmd_n61983, 
                C0=>u_ctrl_cmd_opcode_0, D0=>cmd_opcode_4, M0=>'X', 
                CE=>u_ctrl_cmd_valid, CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_n61951, Q1=>u_ctrl_ack_value_31, OFX0=>open, 
                F0=>u_ctrl_n58853, Q0=>u_ctrl_ack_value_30);
    u_ctrl_u_cmd_SLICE_149I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_2_2, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_2_1, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_arg_2, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_arg_1);
    u_ctrl_u_cmd_SLICE_150I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_2_4, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_2_3, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_arg_4, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_arg_3);
    u_ctrl_u_cmd_SLICE_151I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_2_6, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_2_5, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_arg_6, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_arg_5);
    u_ctrl_u_cmd_SLICE_153I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_1_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_1_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_opcode_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_opcode_0);
    u_ctrl_u_cmd_SLICE_154I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_1_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_1_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_opcode_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_opcode_2);
    u_ctrl_u_cmd_SLICE_155I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_6_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_6_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_seq_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_seq_0);
    u_ctrl_u_cmd_SLICE_156I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_6_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_6_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_seq_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_seq_2);
    u_ctrl_u_cmd_SLICE_157I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_6_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_6_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_seq_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_seq_4);
    u_ctrl_u_cmd_SLICE_158I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_6_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_6_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_cmd_seq_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_cmd_seq_6);
    u_ctrl_u_cmd_SLICE_159I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8888", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_cmd_n62019, 
                A0=>u_ctrl_u_cmd_n24331, B0=>u_ctrl_rx_valid, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_cmd_cmd_valid_N_765, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_cmd_n62019, 
                Q0=>u_ctrl_cmd_valid);
    u_ctrl_u_regs_SLICE_160I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_arg_6, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_arg_5, 
                CE=>u_ctrl_SD_CLK_c_enable_54, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_frame_stride_6, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_frame_stride_5);
    u_ctrl_u_tx_SLICE_161I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0ACE", 
                   LUT1_INITVAL=>X"0100", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_n60286, 
                B1=>u_ctrl_u_tx_n60284, C1=>u_ctrl_u_tx_clk_cnt_15, 
                D1=>u_ctrl_u_tx_n24555, DI1=>'X', DI0=>u_ctrl_u_tx_n49222, 
                A0=>u_ctrl_n24558, B0=>u_ctrl_u_tx_n59819, C0=>u_ctrl_n62048, 
                D0=>u_ctrl_u_tx_n58744, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_tx_n59819, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_tx_n49222, Q0=>u_ctrl_n24558);
    u_ctrl_u_rx_SLICE_162I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_rx_shreg_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_rx_shreg_0, 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_182, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_rx_data_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_rx_data_0);
    u_ctrl_u_rx_SLICE_163I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_rx_shreg_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_rx_shreg_2, 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_182, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_rx_data_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_rx_data_2);
    u_ctrl_u_rx_SLICE_164I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_rx_shreg_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_rx_shreg_4, 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_182, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_rx_data_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_rx_data_4);
    u_ctrl_u_rx_SLICE_165I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>shreg_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_ctrl_u_rx_shreg_6, 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_182, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_rx_data_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_rx_data_6);
    u_ctrl_u_rx_SLICE_166I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"0040", LUT1_INITVAL=>X"1000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_6, 
                B1=>u_ctrl_u_rx_clk_cnt_3, C1=>u_ctrl_u_rx_clk_cnt_9, 
                D1=>u_ctrl_u_rx_n24193, DI1=>'X', DI0=>u_ctrl_u_rx_n58764, 
                A0=>u_ctrl_u_rx_n62004, B0=>u_ctrl_u_rx_SD_CLK_c_enable_183, 
                C0=>u_ctrl_u_rx_n59899, D0=>u_ctrl_u_rx_n62025, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>rx_s2, OFX1=>open, 
                F1=>u_ctrl_u_rx_n59899, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n58764, Q0=>u_ctrl_rx_valid);
    u_ctrl_SLICE_167I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"2222", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_n62048, A0=>u_ctrl_tx_pkt_valid, 
                B0=>u_ctrl_tx_busy, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_ctrl_n24558, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_n62048, Q0=>u_ctrl_tx_busy);
    u_ctrl_u_ack_SLICE_168I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"E2E2", 
                   LUT1_INITVAL=>X"8888", REG1_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_ack_idx_0, FXA=>u_ctrl_u_ack_n60995, 
                FXB=>u_ctrl_u_ack_n60992, A1=>u_ctrl_u_ack_idx_1, 
                B1=>u_ctrl_u_ack_pkt_7_0, C1=>'X', D1=>'X', 
                DI1=>u_ctrl_u_ack_n60996, DI0=>'X', A0=>u_ctrl_u_ack_pkt_1_0, 
                B0=>u_ctrl_u_ack_idx_1, C0=>u_ctrl_u_ack_pkt_3_0, D0=>'X', 
                M0=>u_ctrl_u_ack_idx_2, CE=>u_ctrl_u_ack_SD_CLK_c_enable_93, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>u_ctrl_u_ack_n60996, F1=>open, 
                Q1=>u_ctrl_tx_pkt_data_0, OFX0=>u_ctrl_u_ack_n60992, F0=>open, 
                Q0=>open);
    u_ctrl_u_ack_SLICE_169I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_n61732, 
                B1=>u_ctrl_u_ack_n61729, C1=>u_ctrl_u_ack_idx_0, D1=>'X', 
                DI1=>u_ctrl_u_ack_n61733, DI0=>u_ctrl_u_ack_n61656, 
                A0=>u_ctrl_u_ack_n61655, B0=>u_ctrl_u_ack_n61654, 
                C0=>u_ctrl_u_ack_idx_0, D0=>'X', M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_93, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_n61733, Q1=>u_ctrl_tx_pkt_data_2, 
                OFX0=>open, F0=>u_ctrl_u_ack_n61656, Q0=>u_ctrl_tx_pkt_data_1);
    u_ctrl_u_ack_SLICE_170I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, 
                B1=>u_ctrl_u_ack_n3, C1=>u_ctrl_u_ack_n60350, D1=>'X', 
                DI1=>'X', DI0=>u_ctrl_u_ack_n65, A0=>u_ctrl_u_ack_pkt_1_0, 
                B0=>u_ctrl_u_ack_pkt_4_7, C0=>u_ctrl_u_ack_idx_0, D0=>'X', 
                M0=>u_ctrl_u_ack_n60473, CE=>u_ctrl_u_ack_SD_CLK_c_enable_93, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_ack_n65, F0=>open, Q0=>u_ctrl_tx_pkt_data_3);
    u_ctrl_u_ack_SLICE_171I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, 
                B1=>u_ctrl_u_ack_n3_adj_12247, C1=>u_ctrl_u_ack_n60353, 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_ack_n64, 
                A0=>u_ctrl_u_ack_pkt_4_7, B0=>u_ctrl_u_ack_pkt_1_0, 
                C0=>u_ctrl_u_ack_idx_0, D0=>'X', M0=>u_ctrl_u_ack_n60473, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_93, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_ack_n64, 
                F0=>open, Q0=>u_ctrl_tx_pkt_data_4);
    u_ctrl_u_ack_SLICE_172I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"B383", 
                   LUT1_INITVAL=>X"A820", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, 
                B1=>u_ctrl_u_ack_idx_1, C1=>u_ctrl_u_ack_pkt_4_7, 
                D1=>u_ctrl_u_ack_pkt_7_5, DI1=>'X', DI0=>u_ctrl_u_ack_n62102, 
                A0=>u_ctrl_u_ack_pkt_6_5, B0=>u_ctrl_u_ack_idx_2, 
                C0=>u_ctrl_u_ack_idx_1, D0=>u_ctrl_u_ack_pkt_2_5, 
                M0=>u_ctrl_u_ack_idx_0, CE=>u_ctrl_u_ack_SD_CLK_c_enable_93, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_ack_n62102, F0=>open, Q0=>u_ctrl_tx_pkt_data_5);
    u_ctrl_u_ack_SLICE_173I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, 
                B1=>u_ctrl_u_ack_n3_adj_12246, C1=>u_ctrl_u_ack_n60356, 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_ack_n62, 
                A0=>u_ctrl_u_ack_pkt_1_0, B0=>u_ctrl_u_ack_pkt_3_6, 
                C0=>u_ctrl_u_ack_idx_0, D0=>'X', M0=>u_ctrl_u_ack_n60473, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_93, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_ack_n62, 
                F0=>open, Q0=>u_ctrl_tx_pkt_data_6);
    u_ctrl_u_ack_SLICE_174I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"D8DD", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, 
                B1=>u_ctrl_u_ack_pkt_4_7, C1=>u_ctrl_u_ack_n2, 
                D1=>u_ctrl_u_ack_idx_1, DI1=>'X', DI0=>u_ctrl_u_ack_n61, 
                A0=>u_ctrl_u_ack_pkt_6_7, B0=>u_ctrl_u_ack_pkt_7_7, 
                C0=>u_ctrl_u_ack_idx_0, D0=>'X', M0=>u_ctrl_u_ack_n60478, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_93, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_ack_n61, 
                F0=>open, Q0=>u_ctrl_tx_pkt_data_7);
    u_ctrl_u_ack_SLICE_175I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"2222", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_ack_SD_CLK_c_enable_93, 
                A0=>u_ctrl_u_ack_sending, B0=>u_ctrl_tx_busy, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_ack_SD_CLK_c_enable_86, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_ack_SD_CLK_c_enable_93, 
                Q0=>u_ctrl_tx_pkt_valid);
    u_ctrl_u_ack_SLICE_176I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"D21E", LUT1_INITVAL=>X"2E2E", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_ack_valid, 
                B1=>u_ctrl_u_ack_sending, C1=>u_ctrl_tx_busy, D1=>'X', 
                DI1=>'X', DI0=>u_ctrl_u_ack_n8, A0=>u_ctrl_ack_valid, 
                B0=>u_ctrl_u_ack_sending, C0=>u_ctrl_u_ack_idx_0, 
                D0=>u_ctrl_tx_busy, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_ack_SD_CLK_c_enable_86, OFX1=>open, 
                F1=>u_ctrl_u_ack_SD_CLK_c_enable_40, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n8, Q0=>u_ctrl_u_ack_idx_0);
    u_ctrl_u_ack_SLICE_177I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"6666", LUT1_INITVAL=>X"6A6A", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, 
                B1=>u_ctrl_u_ack_idx_1, C1=>u_ctrl_u_ack_idx_0, D1=>'X', 
                DI1=>u_ctrl_u_ack_n72, DI0=>u_ctrl_u_ack_n73, 
                A0=>u_ctrl_u_ack_idx_1, B0=>u_ctrl_u_ack_idx_0, C0=>'X', 
                D0=>'X', M0=>'X', CE=>u_ctrl_u_ack_SD_CLK_c_enable_40, 
                CLK=>SD_CLK_c, LSR=>u_ctrl_u_ack_SD_CLK_c_enable_86, 
                OFX1=>open, F1=>u_ctrl_u_ack_n72, Q1=>u_ctrl_u_ack_idx_2, 
                OFX0=>open, F0=>u_ctrl_u_ack_n73, Q0=>u_ctrl_u_ack_idx_1);
    u_ctrl_u_ack_SLICE_178I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_type_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_type_0, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_1_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_1_0);
    u_ctrl_u_ack_SLICE_179I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_value_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_value_0, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_2_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_2_0);
    u_ctrl_u_ack_SLICE_180I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_value_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_value_2, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_2_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_2_2);
    u_ctrl_u_ack_SLICE_181I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_value_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_value_4, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_2_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_2_4);
    u_ctrl_u_ack_SLICE_182I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_value_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_value_6, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_2_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_2_6);
    u_ctrl_u_ack_SLICE_183I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_value_9, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_value_8, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_3_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_3_0);
    u_ctrl_u_ack_SLICE_184I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_value_11, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_value_10, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_3_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_3_2);
    u_ctrl_u_ack_SLICE_185I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_value_30, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_value_12, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_3_6, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_3_4);
    u_ctrl_u_ack_SLICE_186I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_ctrl_ack_value_31, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_ack_pkt_4_7);
    u_ctrl_u_ack_SLICE_187I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_seq_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_seq_0, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_6_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_6_0);
    u_ctrl_u_ack_SLICE_188I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_seq_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_seq_2, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_6_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_6_2);
    u_ctrl_u_ack_SLICE_189I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_seq_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_seq_4, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_6_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_6_4);
    u_ctrl_u_ack_SLICE_190I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_ack_seq_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_ack_seq_6, 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_ack_pkt_6_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_ack_pkt_6_6);
    u_ctrl_u_ack_SLICE_191I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6996", 
                   LUT1_INITVAL=>X"9669", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_ack_value_31, 
                B1=>u_ctrl_ack_value_1, C1=>u_ctrl_ack_type_1, 
                D1=>u_ctrl_u_ack_n6_adj_12248, DI1=>u_ctrl_u_ack_chk_1, 
                DI0=>u_ctrl_u_ack_chk_0, A0=>u_ctrl_ack_type_0, 
                B0=>u_ctrl_ack_value_8, C0=>u_ctrl_ack_value_0, 
                D0=>u_ctrl_u_ack_n4, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_chk_1, Q1=>u_ctrl_u_ack_pkt_7_1, 
                OFX0=>open, F0=>u_ctrl_u_ack_chk_0, Q0=>u_ctrl_u_ack_pkt_7_0);
    u_ctrl_u_ack_SLICE_192I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"9669", 
                   LUT1_INITVAL=>X"6996", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_ack_value_3, 
                B1=>u_ctrl_u_ack_n58176, C1=>u_ctrl_ack_seq_3, 
                D1=>u_ctrl_ack_value_11, DI1=>u_ctrl_u_ack_chk_3, 
                DI0=>u_ctrl_u_ack_chk_2, A0=>u_ctrl_ack_value_2, 
                B0=>u_ctrl_ack_value_10, C0=>u_ctrl_ack_seq_2, 
                D0=>u_ctrl_ack_value_31, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_chk_3, Q1=>u_ctrl_u_ack_pkt_7_3, 
                OFX0=>open, F0=>u_ctrl_u_ack_chk_2, Q0=>u_ctrl_u_ack_pkt_7_2);
    u_ctrl_u_ack_SLICE_193I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"6996", 
                   LUT1_INITVAL=>X"6969", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_ack_value_5, 
                B1=>u_ctrl_ack_seq_5, C1=>u_ctrl_ack_value_31, D1=>'X', 
                DI1=>u_ctrl_u_ack_chk_5, DI0=>u_ctrl_u_ack_chk_4, 
                A0=>u_ctrl_ack_value_4, B0=>u_ctrl_u_ack_n58176, 
                C0=>u_ctrl_ack_seq_4, D0=>u_ctrl_ack_value_12, M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_chk_5, Q1=>u_ctrl_u_ack_pkt_7_5, 
                OFX0=>open, F0=>u_ctrl_u_ack_chk_4, Q0=>u_ctrl_u_ack_pkt_7_4);
    u_ctrl_u_ack_SLICE_194I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"9696", 
                   LUT1_INITVAL=>X"6666", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_ack_value_7, 
                B1=>u_ctrl_ack_seq_7, C1=>'X', D1=>'X', 
                DI1=>u_ctrl_u_ack_chk_7, DI0=>u_ctrl_u_ack_chk_6, 
                A0=>u_ctrl_ack_value_6, B0=>u_ctrl_ack_seq_6, 
                C0=>u_ctrl_ack_type_0, D0=>'X', M0=>'X', 
                CE=>u_ctrl_u_ack_SD_CLK_c_enable_86, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_ack_chk_7, Q1=>u_ctrl_u_ack_pkt_7_7, 
                OFX0=>open, F0=>u_ctrl_u_ack_chk_6, Q0=>u_ctrl_u_ack_pkt_7_6);
    u_ctrl_u_ack_SLICE_195I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"8CCC", 
                   LUT1_INITVAL=>X"DDDD", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_2, 
                B1=>u_ctrl_tx_busy, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_ctrl_u_ack_n50298, A0=>u_ctrl_u_ack_n60163, 
                B0=>u_ctrl_u_ack_sending, C0=>u_ctrl_u_ack_idx_0, 
                D0=>u_ctrl_u_ack_idx_1, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_ack_SD_CLK_c_enable_86, OFX1=>open, 
                F1=>u_ctrl_u_ack_n60163, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n50298, Q0=>u_ctrl_u_ack_sending);
    u_ctrl_u_cmd_SLICE_196I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_102, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_1_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_1_0);
    u_ctrl_u_cmd_SLICE_197I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_102, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_1_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_1_2);
    u_ctrl_u_cmd_SLICE_198I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_102, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_1_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_1_4);
    u_ctrl_u_cmd_SLICE_199I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_102, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_1_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_1_6);
    u_ctrl_u_cmd_SLICE_200I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_110, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_2_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_2_0);
    u_ctrl_u_cmd_SLICE_201I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_110, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_2_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_2_2);
    u_ctrl_u_cmd_SLICE_202I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_110, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_2_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_2_4);
    u_ctrl_u_cmd_SLICE_203I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_110, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_2_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_2_6);
    u_ctrl_u_cmd_SLICE_204I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_118, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_3_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_3_0);
    u_ctrl_u_cmd_SLICE_205I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_118, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_3_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_3_2);
    u_ctrl_u_cmd_SLICE_206I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_118, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_3_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_3_4);
    u_ctrl_u_cmd_SLICE_207I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_118, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_3_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_3_6);
    u_ctrl_u_cmd_SLICE_208I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_126, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_4_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_4_0);
    u_ctrl_u_cmd_SLICE_209I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_126, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_4_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_4_2);
    u_ctrl_u_cmd_SLICE_210I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_126, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_4_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_4_4);
    u_ctrl_u_cmd_SLICE_211I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_126, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_4_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_4_6);
    u_ctrl_u_cmd_SLICE_212I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_134, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_5_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_5_0);
    u_ctrl_u_cmd_SLICE_213I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_134, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_5_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_5_2);
    u_ctrl_u_cmd_SLICE_214I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_134, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_5_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_5_4);
    u_ctrl_u_cmd_SLICE_215I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_134, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_5_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_5_6);
    u_ctrl_u_cmd_SLICE_216I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_0, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_142, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_6_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_6_0);
    u_ctrl_u_cmd_SLICE_217I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_2, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_142, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_6_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_6_2);
    u_ctrl_u_cmd_SLICE_218I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_142, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_6_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_6_4);
    u_ctrl_u_cmd_SLICE_219I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_rx_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_rx_data_6, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_142, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_bytes_6_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_cmd_bytes_6_6);
    u_ctrl_u_cmd_SLICE_220I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_bytes_1_6, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_bytes_1_3, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_cmd_cmd_opcode_6, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_cmd_cmd_opcode_3);
    u_ctrl_u_cmd_SLICE_222I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_n24333, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_n24332, CE=>u_ctrl_rx_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_u_cmd_n24332, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_cmd_n24331);
    u_ctrl_u_cmd_SLICE_223I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_n24335, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_n24334, CE=>u_ctrl_rx_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_u_cmd_n24334, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_cmd_n24333);
    u_ctrl_u_cmd_SLICE_224I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_u_cmd_n24337, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_u_cmd_n24336, CE=>u_ctrl_rx_valid, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_u_cmd_n24336, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_cmd_n24335);
    u_ctrl_u_cmd_SLICE_225I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"4444", 
                   LUT1_INITVAL=>X"ECEC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n24338, 
                B1=>u_ctrl_u_cmd_n24331, C1=>u_ctrl_u_cmd_n15, D1=>'X', 
                DI1=>u_ctrl_u_cmd_n49226, DI0=>u_ctrl_u_cmd_n24353, 
                A0=>u_ctrl_u_cmd_n15, B0=>u_ctrl_u_cmd_n24338, C0=>'X', 
                D0=>'X', M0=>'X', CE=>u_ctrl_rx_valid, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_n49226, Q1=>u_ctrl_u_cmd_n24338, 
                OFX0=>open, F0=>u_ctrl_u_cmd_n24353, Q0=>u_ctrl_u_cmd_n24337);
    u_ctrl_u_regs_SLICE_226I: SLOGICB
      generic map (M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AAAB", 
                   LUT1_INITVAL=>X"0040", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_M1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_arg_1, FXA=>'X', FXB=>'X', 
                A1=>u_ctrl_cmd_opcode_0, B1=>u_ctrl_u_regs_n12, 
                C1=>cmd_opcode_4, D1=>u_ctrl_cmd_opcode_5, DI1=>'X', 
                DI0=>u_ctrl_u_regs_n12, A0=>cmd_arg_0, B0=>u_ctrl_cmd_arg_1, 
                C0=>u_ctrl_u_regs_n59587, D0=>u_ctrl_u_regs_n59579, M0=>'X', 
                CE=>u_ctrl_SD_CLK_c_enable_54, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_regs_n61911, 
                Q1=>u_ctrl_u_regs_frame_stride_1, OFX0=>open, 
                F0=>u_ctrl_u_regs_n12, Q0=>u_ctrl_u_regs_frame_stride_0);
    u_ctrl_u_regs_SLICE_227I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_arg_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_arg_2, 
                CE=>u_ctrl_SD_CLK_c_enable_54, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_regs_frame_stride_3, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_regs_frame_stride_2);
    u_ctrl_u_regs_SLICE_228I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_arg_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_cmd_arg_4, 
                CE=>u_ctrl_SD_CLK_c_enable_54, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_regs_frame_stride_7, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_regs_frame_stride_4);
    u_ctrl_u_regs_SLICE_229I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_cmd_arg_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>cmd_arg_0, CE=>u_ctrl_SD_CLK_c_enable_94, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>u_ctrl_u_regs_mode_1, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_regs_mode_0);
    u_ctrl_u_rx_SLICE_230I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"5555", LUT1_INITVAL=>X"6666", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_bit_idx_1, 
                B1=>u_ctrl_u_rx_bit_idx_0, C1=>'X', D1=>'X', 
                DI1=>u_ctrl_u_rx_n19, DI0=>u_ctrl_u_rx_n20, 
                A0=>u_ctrl_u_rx_bit_idx_0, B0=>'X', C0=>'X', D0=>'X', M0=>'X', 
                CE=>u_ctrl_u_rx_SD_CLK_c_enable_265, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51533, OFX1=>open, F1=>u_ctrl_u_rx_n19, 
                Q1=>u_ctrl_u_rx_bit_idx_1, OFX0=>open, F0=>u_ctrl_u_rx_n20, 
                Q0=>u_ctrl_u_rx_bit_idx_0);
    u_ctrl_u_rx_SLICE_231I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"7878", LUT1_INITVAL=>X"8080", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_bit_idx_0, 
                B1=>u_ctrl_u_rx_bit_idx_2, C1=>u_ctrl_u_rx_bit_idx_1, D1=>'X', 
                DI1=>'X', DI0=>u_ctrl_u_rx_n18, A0=>u_ctrl_u_rx_bit_idx_1, 
                B0=>u_ctrl_u_rx_bit_idx_0, C0=>u_ctrl_u_rx_bit_idx_2, D0=>'X', 
                M0=>'X', CE=>u_ctrl_u_rx_SD_CLK_c_enable_265, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_rx_n51533, OFX1=>open, F1=>u_ctrl_u_rx_n61992, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_rx_n18, 
                Q0=>u_ctrl_u_rx_bit_idx_2);
    u_ctrl_u_rx_SLICE_232I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"AAAE", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n49293, 
                B1=>u_ctrl_u_rx_n59771, C1=>u_ctrl_u_rx_n9, 
                D1=>u_ctrl_u_rx_n11, DI1=>u_ctrl_u_rx_n49294, 
                DI0=>u_ctrl_u_rx_n57848, A0=>u_ctrl_u_rx_n61992, 
                B0=>u_ctrl_u_rx_n24193, C0=>u_ctrl_u_rx_n31, 
                D0=>u_ctrl_u_rx_n24194, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n49294, 
                Q1=>u_ctrl_u_rx_n24194, OFX0=>open, F0=>u_ctrl_u_rx_n57848, 
                Q0=>u_ctrl_u_rx_n24193);
    u_ctrl_u_rx_SLICE_233I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F4F4", 
                   LUT1_INITVAL=>X"FBBB", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n59088, 
                B1=>u_ctrl_u_rx_SD_CLK_c_enable_257, C1=>u_ctrl_u_rx_n24196, 
                D1=>rx_s2, DI1=>u_ctrl_u_rx_n58841, DI0=>u_ctrl_u_rx_n49298, 
                A0=>rx_s2, B0=>u_ctrl_u_rx_n24196, C0=>u_ctrl_u_rx_n35729, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n58841, Q1=>u_ctrl_u_rx_n24196, OFX0=>open, 
                F0=>u_ctrl_u_rx_n49298, Q0=>u_ctrl_u_rx_n24195);
    u_ctrl_u_rx_SLICE_234I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE)
      port map (M1=>u_ctrl_u_rx_rx_s1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>RX_c, CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>rx_s2, OFX0=>open, F0=>open, 
                Q0=>u_ctrl_u_rx_rx_s1);
    u_ctrl_u_rx_SLICE_235I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_262, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_0);
    u_ctrl_u_rx_SLICE_236I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_25, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_1);
    u_ctrl_u_rx_SLICE_237I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_28, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_2);
    u_ctrl_u_rx_SLICE_238I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_38, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_3);
    u_ctrl_u_rx_SLICE_239I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_165, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_4);
    u_ctrl_u_rx_SLICE_240I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_213, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_5);
    u_ctrl_u_rx_SLICE_241I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>rx_s2, CE=>u_ctrl_u_rx_SD_CLK_c_enable_215, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_ctrl_u_rx_shreg_6);
    u_ctrl_u_tx_SLICE_242I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"5555", LUT1_INITVAL=>X"6666", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_bit_idx_1, 
                B1=>u_ctrl_u_tx_bit_idx_0, C1=>'X', D1=>'X', 
                DI1=>u_ctrl_u_tx_n19, DI0=>u_ctrl_u_tx_n20, 
                A0=>u_ctrl_u_tx_bit_idx_0, B0=>'X', C0=>'X', D0=>'X', M0=>'X', 
                CE=>u_ctrl_u_tx_SD_CLK_c_enable_254, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n51515, OFX1=>open, F1=>u_ctrl_u_tx_n19, 
                Q1=>u_ctrl_u_tx_bit_idx_1, OFX0=>open, F0=>u_ctrl_u_tx_n20, 
                Q0=>u_ctrl_u_tx_bit_idx_0);
    u_ctrl_u_tx_SLICE_243I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"6A6A", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_ctrl_u_tx_n18, 
                A0=>u_ctrl_u_tx_bit_idx_2, B0=>u_ctrl_u_tx_bit_idx_1, 
                C0=>u_ctrl_u_tx_bit_idx_0, D0=>'X', M0=>'X', 
                CE=>u_ctrl_u_tx_SD_CLK_c_enable_254, CLK=>SD_CLK_c, 
                LSR=>u_ctrl_u_tx_n51515, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_tx_n18, Q0=>u_ctrl_u_tx_bit_idx_2);
    u_ctrl_u_tx_SLICE_244I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"AAAE", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_n49229, 
                B1=>u_ctrl_u_tx_n59833, C1=>u_ctrl_u_tx_n58744, 
                D1=>u_ctrl_u_tx_n60284, DI1=>u_ctrl_u_tx_n49230, 
                DI0=>u_ctrl_u_tx_n57932, A0=>u_ctrl_u_tx_n53999, 
                B0=>u_ctrl_u_tx_n24555, C0=>u_ctrl_u_tx_n61962, 
                D0=>u_ctrl_u_tx_n24556, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_tx_n49230, 
                Q1=>u_ctrl_u_tx_n24556, OFX0=>open, F0=>u_ctrl_u_tx_n57932, 
                Q0=>u_ctrl_u_tx_n24555);
    u_ctrl_u_tx_SLICE_245I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"FE00", 
                   LUT1_INITVAL=>X"DFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_clk_cnt_1, 
                B1=>u_ctrl_u_tx_n59607, C1=>u_ctrl_u_tx_clk_cnt_7, 
                D1=>u_ctrl_u_tx_clk_cnt_10, DI1=>'X', DI0=>u_ctrl_u_tx_n49223, 
                A0=>u_ctrl_u_tx_n59693, B0=>u_ctrl_u_tx_n58744, 
                C0=>u_ctrl_u_tx_n59691, D0=>u_ctrl_u_tx_n24557, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_ctrl_SD_CLK_c_enable_47, 
                OFX1=>open, F1=>u_ctrl_u_tx_n58744, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_tx_n49223, Q0=>u_ctrl_u_tx_n24557);
    u_ctrl_u_tx_SLICE_246I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_tx_pkt_data_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_tx_pkt_data_0, 
                CE=>u_ctrl_SD_CLK_c_enable_47, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_tx_shreg_1, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_tx_shreg_0);
    u_ctrl_u_tx_SLICE_247I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_tx_pkt_data_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_tx_pkt_data_2, 
                CE=>u_ctrl_SD_CLK_c_enable_47, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_tx_shreg_3, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_tx_shreg_2);
    u_ctrl_u_tx_SLICE_248I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_tx_pkt_data_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_tx_pkt_data_4, 
                CE=>u_ctrl_SD_CLK_c_enable_47, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_tx_shreg_5, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_tx_shreg_4);
    u_ctrl_u_tx_SLICE_249I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_ctrl_tx_pkt_data_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_ctrl_tx_pkt_data_6, 
                CE=>u_ctrl_SD_CLK_c_enable_47, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_ctrl_u_tx_shreg_7, OFX0=>open, 
                F0=>open, Q0=>u_ctrl_u_tx_shreg_6);
    u_sd_SLICE_250I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"5555", LUT1_INITVAL=>X"9999", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_bit_cnt_1, 
                B1=>u_sd_bit_cnt_0, C1=>'X', D1=>'X', DI1=>u_sd_n62022, 
                DI0=>u_sd_n62036, A0=>u_sd_bit_cnt_0, B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>u_sd_SD_CLK_c_enable_264, CLK=>SD_CLK_c, 
                LSR=>u_sd_n36895, OFX1=>open, F1=>u_sd_n62022, 
                Q1=>u_sd_bit_cnt_1, OFX0=>open, F0=>u_sd_n62036, 
                Q0=>u_sd_bit_cnt_0);
    u_sd_SLICE_251I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"E1E1", 
                   LUT1_INITVAL=>X"FE01", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_bit_cnt_1, 
                B1=>u_sd_bit_cnt_0, C1=>u_sd_bit_cnt_2, D1=>u_sd_bit_cnt_3, 
                DI1=>u_sd_n50648, DI0=>u_sd_n61985, A0=>u_sd_bit_cnt_1, 
                B0=>u_sd_bit_cnt_0, C0=>u_sd_bit_cnt_2, D0=>'X', M0=>'X', 
                CE=>u_sd_SD_CLK_c_enable_264, CLK=>SD_CLK_c, LSR=>u_sd_n36895, 
                OFX1=>open, F1=>u_sd_n50648, Q1=>u_sd_bit_cnt_3, OFX0=>open, 
                F0=>u_sd_n61985, Q0=>u_sd_bit_cnt_2);
    u_sd_SLICE_252I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECA0", 
                   LUT1_INITVAL=>X"ECCC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n63074, B1=>u_sd_n23, 
                C1=>u_sd_n19, D1=>u_sd_st_3, DI1=>u_sd_cmd_frame_47_N_9938_3, 
                DI0=>u_sd_cmd_frame_47_N_9938_1, A0=>u_sd_cmd_frame_1, 
                B0=>u_sd_n60047, C0=>u_sd_n58835, D0=>u_sd_n63074, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_cmd_frame_47_N_9938_3, Q1=>u_sd_cmd_frame_3, 
                OFX0=>open, F0=>u_sd_cmd_frame_47_N_9938_1, 
                Q0=>u_sd_cmd_frame_1);
    u_sd_SLICE_253I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AF23", 
                   LUT1_INITVAL=>X"FEFC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_5, 
                B1=>u_sd_n27_adj_12224, C1=>u_sd_n23_adj_12147, D1=>u_sd_n29, 
                DI1=>u_sd_cmd_frame_47_N_9938_5, 
                DI0=>u_sd_cmd_frame_47_N_9938_4, A0=>u_sd_st_3, 
                B0=>u_sd_n27_adj_12203, C0=>u_sd_n24_adj_12204, 
                D0=>u_sd_cmd_frame_4, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_cmd_frame_47_N_9938_5, 
                Q1=>u_sd_cmd_frame_5, OFX0=>open, 
                F0=>u_sd_cmd_frame_47_N_9938_4, Q0=>u_sd_cmd_frame_4);
    u_sd_SLICE_254I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FEFC", 
                   LUT1_INITVAL=>X"ECA0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_7, 
                B1=>u_sd_n63074, C1=>u_sd_n17, D1=>u_sd_n20_adj_12151, 
                DI1=>u_sd_cmd_frame_47_N_9938_7, 
                DI0=>u_sd_cmd_frame_47_N_9938_6, A0=>u_sd_cmd_frame_6, 
                B0=>u_sd_n27_adj_12223, C0=>u_sd_n23_adj_12147, D0=>u_sd_n29, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_cmd_frame_47_N_9938_7, Q1=>u_sd_cmd_frame_7, 
                OFX0=>open, F0=>u_sd_cmd_frame_47_N_9938_6, 
                Q0=>u_sd_cmd_frame_6);
    u_sd_SLICE_255I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_11, 
                B1=>u_sd_n25_adj_12215, C1=>'X', D1=>'X', 
                DI1=>u_sd_n26_adj_12219, DI0=>u_sd_n26_adj_12222, 
                A0=>u_sd_cmd_frame_9, B0=>u_sd_n25_adj_12215, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_n50392, OFX1=>open, 
                F1=>u_sd_n26_adj_12219, Q1=>u_sd_cmd_frame_11, OFX0=>open, 
                F0=>u_sd_n26_adj_12222, Q0=>u_sd_cmd_frame_9);
    u_sd_SLICE_256I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_15, 
                B1=>u_sd_n25_adj_12215, C1=>'X', D1=>'X', 
                DI1=>u_sd_n26_adj_12217, DI0=>u_sd_n26_adj_12218, 
                A0=>u_sd_cmd_frame_13, B0=>u_sd_n25_adj_12215, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_n50392, 
                OFX1=>open, F1=>u_sd_n26_adj_12217, Q1=>u_sd_cmd_frame_15, 
                OFX0=>open, F0=>u_sd_n26_adj_12218, Q0=>u_sd_cmd_frame_13);
    u_sd_SLICE_257I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"8888", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_n26_adj_12216, 
                A0=>u_sd_cmd_frame_16, B0=>u_sd_n25_adj_12215, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_n50392, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n26_adj_12216, Q0=>u_sd_cmd_frame_16);
    u_sd_SLICE_258I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F1F0", 
                   LUT1_INITVAL=>X"ECCC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n61988, 
                B1=>u_sd_n29_adj_12212, C1=>u_sd_n63074, 
                D1=>u_sd_n25_adj_12211, DI1=>u_sd_cmd_frame_47_N_9938_41, 
                DI0=>u_sd_cmd_frame_47_N_9938_38, A0=>u_sd_st_2, 
                B0=>u_sd_n61991, C0=>u_sd_n26_adj_12214, 
                D0=>u_sd_n52_adj_12167, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_cmd_frame_47_N_9938_41, 
                Q1=>u_sd_cmd_frame_41, OFX0=>open, 
                F0=>u_sd_cmd_frame_47_N_9938_38, Q0=>u_sd_cmd_frame_38);
    u_sd_SLICE_259I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0410", 
                   LUT1_INITVAL=>X"FEFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_5, B1=>u_sd_st_4, 
                C1=>u_sd_n62427, D1=>'X', DI1=>'X', 
                DI0=>u_sd_cmd_frame_47_N_9938_40, A0=>u_sd_n61991, 
                B0=>u_sd_st_2, C0=>u_sd_st_3, D0=>u_sd_st_1, 
                M0=>u_sd_cmd_frame_40, CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_cmd_frame_47_N_9938_40, F0=>open, 
                Q0=>u_sd_cmd_frame_40);
    u_sd_SLICE_260I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"DC50", 
                   LUT1_INITVAL=>X"EEEC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_44, 
                B1=>u_sd_n41_adj_12209, C1=>u_sd_n62047, D1=>u_sd_n61991, 
                DI1=>u_sd_cmd_frame_47_N_9938_44, 
                DI0=>u_sd_cmd_frame_47_N_9938_42, A0=>u_sd_st_3, 
                B0=>u_sd_n23_adj_12227, C0=>u_sd_n62084, D0=>u_sd_cmd_frame_42, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_cmd_frame_47_N_9938_44, Q1=>u_sd_cmd_frame_44, 
                OFX0=>open, F0=>u_sd_cmd_frame_47_N_9938_42, 
                Q0=>u_sd_cmd_frame_42);
    u_sd_SLICE_261I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C5C4", 
                   LUT1_INITVAL=>X"FFAB", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_43, 
                B1=>u_sd_n61991, C1=>u_sd_st_2, D1=>u_sd_n15_adj_12156, 
                DI1=>'X', DI0=>u_sd_cmd_frame_47_N_9938_43, A0=>u_sd_st_1, 
                B0=>u_sd_cmd_frame_43, C0=>u_sd_n61991, D0=>u_sd_st_2, 
                M0=>u_sd_st_3, CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_cmd_frame_47_N_9938_43, 
                F0=>open, Q0=>u_sd_cmd_frame_43);
    u_sd_SLICE_262I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EEEA", 
                   LUT1_INITVAL=>X"0508", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_st_1, 
                C1=>u_sd_n61991, D1=>u_sd_st_3, DI1=>'X', 
                DI0=>u_sd_cmd_frame_47_N_9938_45, A0=>u_sd_n23_adj_12147, 
                B0=>u_sd_cmd_frame_45, C0=>u_sd_n38_adj_12208, D0=>u_sd_n58162, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_n23_adj_12147, Q1=>open, OFX0=>open, 
                F0=>u_sd_cmd_frame_47_N_9938_45, Q0=>u_sd_cmd_frame_45);
    u_sd_SLICE_263I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECEC", 
                   LUT1_INITVAL=>X"ECEC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, 
                B1=>u_sd_n50_adj_12207, C1=>u_sd_n34, D1=>'X', 
                DI1=>u_sd_cmd_i_2_N_9986_1, DI0=>u_sd_cmd_i_2_N_9986_0, 
                A0=>u_sd_cmd_i_0, B0=>u_sd_n50, C0=>u_sd_n34, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_cmd_i_2_N_9986_1, Q1=>u_sd_cmd_i_1, OFX0=>open, 
                F0=>u_sd_cmd_i_2_N_9986_0, Q0=>u_sd_cmd_i_0);
    u_sd_SLICE_264I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"ECEC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_cmd_i_2_N_9986_2, 
                A0=>u_sd_cmd_i_2, B0=>u_sd_n50_adj_12205, C0=>u_sd_n34, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_cmd_i_2_N_9986_2, 
                Q0=>u_sd_cmd_i_2);
    u_sd_SLICE_265I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D0F0", 
                   LUT1_INITVAL=>X"EEEE", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>u_sd_speed_fast_N_10321, 
                A0=>u_sd_n62007, B0=>u_sd_n62006, C0=>u_sd_div_val_2, 
                D0=>u_sd_n63074, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_n62006, Q1=>open, OFX0=>open, 
                F0=>u_sd_speed_fast_N_10321, Q0=>u_sd_div_val_2);
    u_sd_SLICE_266I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"6666", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_half_phase_N_10260, 
                A0=>u_sd_half_phase, B0=>u_sd_sck_N_10229, C0=>'X', D0=>'X', 
                M0=>'X', CE=>u_sd_SD_CLK_c_enable_263, CLK=>SD_CLK_c, 
                LSR=>u_sd_n36895, OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_half_phase_N_10260, Q0=>u_sd_half_phase);
    u_sd_SLICE_267I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8888", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sd_n57222, A0=>u_sd_st_5, 
                B0=>u_sd_n30_adj_12192, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_sd_st_5, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n57222, Q0=>u_sd_n63084);
    u_sd_SLICE_268I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>M_D0_c, CE=>u_sd_SD_CLK_c_enable_266, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36895, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>u_sd_sh_rx_0);
    u_sd_SLICE_269I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>M_D0_c, CE=>u_sd_SD_CLK_c_enable_256, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36895, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>u_sd_sh_rx_1);
    u_sd_SLICE_270I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>M_D0_c, CE=>u_sd_SD_CLK_c_enable_261, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36895, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>u_sd_sh_rx_2);
    u_sd_SLICE_271I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>M_D0_c, CE=>u_sd_SD_CLK_c_enable_258, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36895, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>u_sd_sh_rx_3);
    u_sd_SLICE_272I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>M_D0_c, CE=>u_sd_SD_CLK_c_enable_10, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36895, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>u_sd_sh_rx_4);
    u_sd_SLICE_273I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>M_D0_c, CE=>u_sd_SD_CLK_c_enable_11, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36895, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>u_sd_sh_rx_5);
    u_sd_SLICE_274I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>M_D0_c, CE=>u_sd_SD_CLK_c_enable_16, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36895, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>u_sd_sh_rx_6);
    u_sd_SLICE_275I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>M_D0_c, CE=>u_sd_SD_CLK_c_enable_17, 
                CLK=>SD_CLK_c, LSR=>u_sd_n36895, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>u_sd_sh_rx_7);
    u_sd_SLICE_276I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"E4E4", 
                   LUT1_INITVAL=>X"7F7F", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy_N_10255, 
                B1=>u_sd_sck_N_10229, C1=>u_sd_half_phase, D1=>'X', DI1=>'X', 
                DI0=>u_sd_n51138, A0=>u_sd_spi_busy, B0=>u_sd_spi_start, 
                C0=>u_sd_n61965, D0=>'X', M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_n61965, Q1=>open, OFX0=>open, 
                F0=>u_sd_n51138, Q0=>u_sd_spi_busy);
    u_sd_SLICE_277I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_sd_sh_rx_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_sd_sh_rx_0, 
                CE=>u_sd_SD_CLK_c_enable_193, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_sd_spi_rx_1, OFX0=>open, F0=>open, 
                Q0=>u_sd_spi_rx_0);
    u_sd_SLICE_278I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_sd_sh_rx_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_sd_sh_rx_2, 
                CE=>u_sd_SD_CLK_c_enable_193, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_sd_spi_rx_3, OFX0=>open, F0=>open, 
                Q0=>u_sd_spi_rx_2);
    u_sd_SLICE_279I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_sd_sh_rx_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_sd_sh_rx_4, 
                CE=>u_sd_SD_CLK_c_enable_193, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_sd_spi_rx_5, OFX0=>open, F0=>open, 
                Q0=>u_sd_spi_rx_4);
    u_sd_SLICE_280I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>u_sd_sh_rx_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>u_sd_sh_rx_6, 
                CE=>u_sd_SD_CLK_c_enable_193, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>u_sd_spi_rx_7, OFX0=>open, F0=>open, 
                Q0=>u_sd_spi_rx_6);
    u_sd_SLICE_281I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"CCDC", LUT1_INITVAL=>X"00CA", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n37, B1=>u_sd_n40, 
                C1=>u_sd_st_3, D1=>u_sd_st_4, DI1=>'X', 
                DI0=>u_sd_n51_adj_12155, A0=>u_sd_SD_CLK_c_enable_263, 
                B0=>u_sd_n63068, C0=>u_sd_n45_adj_12153, D0=>u_sd_st_3, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_n63084, OFX1=>open, 
                F1=>u_sd_n63068, Q1=>open, OFX0=>open, F0=>u_sd_n51_adj_12155, 
                Q0=>u_sd_spi_start);
    u_sd_SLICE_282I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"B3A0", 
                   LUT1_INITVAL=>X"B3A0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_1, B1=>u_sd_st_5, 
                C1=>u_sd_n72, D1=>u_sd_n75_adj_12229, 
                DI1=>u_sd_spi_tx_7_N_9904_1, DI0=>u_sd_spi_tx_7_N_9904_0, 
                A0=>u_sd_spi_tx_0, B0=>u_sd_st_5, C0=>u_sd_n72, D0=>u_sd_n75, 
                M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, 
                F1=>u_sd_spi_tx_7_N_9904_1, Q1=>u_sd_spi_tx_1, OFX0=>open, 
                F0=>u_sd_spi_tx_7_N_9904_0, Q0=>u_sd_spi_tx_0);
    u_sd_SLICE_283I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"B3A0", 
                   LUT1_INITVAL=>X"B3A0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_3, B1=>u_sd_st_5, 
                C1=>u_sd_n72, D1=>u_sd_n75_adj_12228, 
                DI1=>u_sd_spi_tx_7_N_9904_3, DI0=>u_sd_spi_tx_7_N_9904_2, 
                A0=>u_sd_spi_tx_2, B0=>u_sd_st_5, C0=>u_sd_n72, 
                D0=>u_sd_n62329, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_spi_tx_7_N_9904_3, Q1=>u_sd_spi_tx_3, 
                OFX0=>open, F0=>u_sd_spi_tx_7_N_9904_2, Q0=>u_sd_spi_tx_2);
    u_sd_SLICE_284I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"B3A0", 
                   LUT1_INITVAL=>X"B3A0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_5, B1=>u_sd_st_5, 
                C1=>u_sd_n72, D1=>u_sd_n75_adj_12226, 
                DI1=>u_sd_spi_tx_7_N_9904_5, DI0=>u_sd_spi_tx_7_N_9904_4, 
                A0=>u_sd_spi_tx_4, B0=>u_sd_st_5, C0=>u_sd_n72, 
                D0=>u_sd_n62349, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_spi_tx_7_N_9904_5, Q1=>u_sd_spi_tx_5, 
                OFX0=>open, F0=>u_sd_spi_tx_7_N_9904_4, Q0=>u_sd_spi_tx_4);
    u_sd_SLICE_285I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"B3A0", 
                   LUT1_INITVAL=>X"B3A0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_7, B1=>u_sd_st_5, 
                C1=>u_sd_n72, D1=>u_sd_n75_adj_12225, 
                DI1=>u_sd_spi_tx_7_N_9904_7, DI0=>u_sd_spi_tx_7_N_9904_6, 
                A0=>u_sd_spi_tx_6, B0=>u_sd_st_5, C0=>u_sd_n72, 
                D0=>u_sd_n62369, M0=>'X', CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sd_spi_tx_7_N_9904_7, Q1=>u_sd_spi_tx_7, 
                OFX0=>open, F0=>u_sd_spi_tx_7_N_9904_6, Q0=>u_sd_spi_tx_6);
    u_sd_SLICE_286I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"7350", LUT1_INITVAL=>X"EEEA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n19_adj_12195, 
                B1=>u_sd_n62007, C1=>u_sd_n58669, D1=>u_sd_n61151, 
                DI1=>u_sd_n57130, DI0=>u_sd_n57216, A0=>u_sd_st_4, 
                B0=>u_sd_st_3, C0=>u_sd_n62114, D0=>u_sd_n18, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>u_sd_n63084, OFX1=>open, F1=>u_sd_n57130, 
                Q1=>u_sd_st_1, OFX0=>open, F0=>u_sd_n57216, Q0=>u_sd_st_0);
    u_sd_SLICE_287I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"8888", 
                   LUT1_INITVAL=>X"F707", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_st_1, 
                C1=>u_sd_st_3, D1=>u_sd_n63078, DI1=>'X', DI0=>u_sd_n62493, 
                A0=>u_sd_n11, B0=>u_sd_st_0, C0=>'X', D0=>'X', M0=>u_sd_st_2, 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_n63084, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>u_sd_n62493, F0=>open, Q0=>u_sd_st_2);
    u_sd_SLICE_288I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"F202", LUT1_INITVAL=>X"CACA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n58930, 
                B1=>u_sd_n12_adj_12146, C1=>u_sd_st_4, D1=>'X', 
                DI1=>u_sd_n57220, DI0=>u_sd_n62178, A0=>u_sd_st_3, 
                B0=>u_sd_st_4, C0=>u_sd_st_2, D0=>u_sd_n62176, M0=>'X', 
                CE=>'X', CLK=>SD_CLK_c, LSR=>u_sd_n63084, OFX1=>open, 
                F1=>u_sd_n57220, Q1=>u_sd_st_4, OFX0=>open, F0=>u_sd_n62178, 
                Q0=>u_sd_st_3);
    u_sdram_SLICE_291I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"FE00", 
                   LUT1_INITVAL=>X"EEEE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_wait_cnt_0, 
                B1=>u_sdram_wait_cnt_1, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_sdram_n61973, A0=>u_sdram_n62053, 
                B0=>u_sdram_wait_cnt_2, C0=>u_sdram_wait_cnt_3, 
                D0=>u_sdram_n19202, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_SD_A_12_N_2210_9, OFX1=>open, F1=>u_sdram_n62053, 
                Q1=>open, OFX0=>open, F0=>u_sdram_n61973, Q0=>u_sdram_n19202);
    u_sdram_SLICE_292I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_sdram_st_2, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_n62005, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>u_sdram_n19204);
    u_sdram_SLICE_293I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net_000_BUF1, A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>u_sdram_refresh_req_N_2426, 
                CLK=>SD_CLK_c, LSR=>u_sdram_n50301, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>VCC_net_000_BUF1, 
                Q0=>u_sdram_refresh_req);
    u_sdram_SLICE_294I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FAEE", 
                   LUT1_INITVAL=>X"2222", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_n19204, 
                B1=>u_sdram_refresh_req, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>u_sdram_n57908, A0=>u_sdram_n4, B0=>u_sdram_n19202, 
                C0=>u_sdram_st_2, D0=>u_sdram_n62005, M0=>'X', CE=>'X', 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>u_sdram_n4, Q1=>open, 
                OFX0=>open, F0=>u_sdram_n57908, Q0=>u_sdram_st_2);
    u_sdram_SLICE_295I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"3A3A", 
                   LUT1_INITVAL=>X"CA3A", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_SD_A_12_N_2210_9, 
                B1=>u_sdram_wait_cnt_1, C1=>u_sdram_n35931, 
                D1=>u_sdram_wait_cnt_0, DI1=>u_sdram_n30, DI0=>u_sdram_n31, 
                A0=>u_sdram_SD_A_12_N_2210_9, B0=>u_sdram_wait_cnt_0, 
                C0=>u_sdram_n35931, D0=>'X', M0=>'X', 
                CE=>u_sdram_SD_CLK_c_enable_259, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_sdram_n30, Q1=>u_sdram_wait_cnt_1, 
                OFX0=>open, F0=>u_sdram_n31, Q0=>u_sdram_wait_cnt_0);
    u_sdram_SLICE_296I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"5115", 
                   LUT1_INITVAL=>X"A9A9", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_wait_cnt_2, 
                B1=>u_sdram_wait_cnt_0, C1=>u_sdram_wait_cnt_1, D1=>'X', 
                DI1=>'X', DI0=>u_sdram_n61015, A0=>u_sdram_SD_A_12_N_2210_9, 
                B0=>u_sdram_n61973, C0=>u_sdram_n62053, D0=>u_sdram_wait_cnt_2, 
                M0=>u_sdram_st_2, CE=>u_sdram_SD_CLK_c_enable_259, 
                CLK=>SD_CLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sdram_n61015, F0=>open, Q0=>u_sdram_wait_cnt_2);
    u_sdram_SLICE_297I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0707", 
                   LUT1_INITVAL=>X"FE01", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_wait_cnt_0, 
                B1=>u_sdram_wait_cnt_1, C1=>u_sdram_wait_cnt_2, 
                D1=>u_sdram_wait_cnt_3, DI1=>'X', DI0=>u_sdram_n61044, 
                A0=>u_sdram_n62005, B0=>u_sdram_n19202, 
                C0=>u_sdram_SD_A_12_N_2210_9, D0=>'X', M0=>u_sdram_n35931, 
                CE=>u_sdram_SD_CLK_c_enable_259, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sdram_n61044, F0=>open, 
                Q0=>u_sdram_wait_cnt_3);
    u_sd_SLICE_298I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"DC50", 
                   LUT1_INITVAL=>X"DC50", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_5, B1=>wr_count_1, 
                C1=>u_sd_n28_adj_12179, D1=>u_sd_n31_adj_12160, 
                DI1=>u_sd_wr_count_9_N_10061_1, DI0=>u_sd_wr_count_9_N_10061_0, 
                A0=>u_sd_st_5, B0=>wr_count_0, C0=>u_sd_n28, 
                D0=>u_sd_n31_adj_12160, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_wr_count_9_N_10061_1, 
                Q1=>wr_count_1, OFX0=>open, F0=>u_sd_wr_count_9_N_10061_0, 
                Q0=>wr_count_0);
    u_sd_SLICE_299I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"DC50", 
                   LUT1_INITVAL=>X"DC50", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_5, B1=>wr_count_3, 
                C1=>u_sd_n28_adj_12177, D1=>u_sd_n31_adj_12160, 
                DI1=>u_sd_wr_count_9_N_10061_3, DI0=>u_sd_wr_count_9_N_10061_2, 
                A0=>u_sd_st_5, B0=>wr_count_2, C0=>u_sd_n28_adj_12178, 
                D0=>u_sd_n31_adj_12160, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_wr_count_9_N_10061_3, 
                Q1=>wr_count_3, OFX0=>open, F0=>u_sd_wr_count_9_N_10061_2, 
                Q0=>wr_count_2);
    u_sd_SLICE_300I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"DC50", 
                   LUT1_INITVAL=>X"DC50", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_5, B1=>wr_count_5, 
                C1=>u_sd_n28_adj_12175, D1=>u_sd_n31_adj_12160, 
                DI1=>u_sd_wr_count_9_N_10061_5, DI0=>u_sd_wr_count_9_N_10061_4, 
                A0=>u_sd_st_5, B0=>wr_count_4, C0=>u_sd_n28_adj_12176, 
                D0=>u_sd_n31_adj_12160, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_wr_count_9_N_10061_5, 
                Q1=>wr_count_5, OFX0=>open, F0=>u_sd_wr_count_9_N_10061_4, 
                Q0=>wr_count_4);
    u_sd_SLICE_301I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"DC50", 
                   LUT1_INITVAL=>X"DC50", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_5, B1=>wr_count_7, 
                C1=>u_sd_n28_adj_12173, D1=>u_sd_n31_adj_12160, 
                DI1=>u_sd_wr_count_9_N_10061_7, DI0=>u_sd_wr_count_9_N_10061_6, 
                A0=>u_sd_st_5, B0=>wr_count_6, C0=>u_sd_n28_adj_12174, 
                D0=>u_sd_n31_adj_12160, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_wr_count_9_N_10061_7, 
                Q1=>wr_count_7, OFX0=>open, F0=>u_sd_wr_count_9_N_10061_6, 
                Q0=>wr_count_6);
    u_sd_SLICE_302I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"DC50", 
                   LUT1_INITVAL=>X"DC50", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_5, B1=>wr_count_9, 
                C1=>u_sd_n28_adj_12168, D1=>u_sd_n31_adj_12160, 
                DI1=>u_sd_wr_count_9_N_10061_9, DI0=>u_sd_wr_count_9_N_10061_8, 
                A0=>u_sd_st_5, B0=>wr_count_8, C0=>u_sd_n28_adj_12169, 
                D0=>u_sd_n31_adj_12160, M0=>'X', CE=>'X', CLK=>SD_CLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_sd_wr_count_9_N_10061_9, 
                Q1=>wr_count_9, OFX0=>open, F0=>u_sd_wr_count_9_N_10061_8, 
                Q0=>wr_count_8);
    u_ctrl_u_tx_i23327_SLICE_303I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_bit_idx_0, 
                B1=>u_ctrl_u_tx_shreg_2, C1=>u_ctrl_u_tx_shreg_3, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_tx_shreg_0, 
                B0=>u_ctrl_u_tx_shreg_1, C0=>u_ctrl_u_tx_bit_idx_0, D0=>'X', 
                M0=>u_ctrl_u_tx_bit_idx_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_tx_n60494, 
                F0=>open, Q0=>open);
    u_ctrl_u_tx_i23328_SLICE_304I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>u_ctrl_u_tx_bit_idx_2, FXA=>u_ctrl_u_tx_n60494, 
                FXB=>u_ctrl_u_tx_n60495, A1=>u_ctrl_u_tx_bit_idx_0, 
                B1=>u_ctrl_u_tx_shreg_6, C1=>u_ctrl_u_tx_shreg_7, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_tx_shreg_4, 
                B0=>u_ctrl_u_tx_shreg_5, C0=>u_ctrl_u_tx_bit_idx_0, D0=>'X', 
                M0=>u_ctrl_u_tx_bit_idx_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>u_ctrl_u_tx_tx_N_1136, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_tx_n60495, F0=>open, Q0=>open);
    u_ctrl_u_regs_i24342_SLICE_305I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2C2C", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_cmd_opcode_5, 
                B1=>cmd_arg_0, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>capture_enable, B0=>u_ctrl_cmd_opcode_0, 
                C0=>u_ctrl_cmd_opcode_5, D0=>'X', M0=>cmd_opcode_4, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_ctrl_u_regs_n61914, F0=>open, Q0=>open);
    u_ctrl_u_ack_i24161_SLICE_306I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_1, 
                B1=>u_ctrl_u_ack_pkt_7_1, C1=>u_ctrl_u_ack_pkt_4_7, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_1_1, 
                B0=>u_ctrl_u_ack_pkt_3_1, C0=>u_ctrl_u_ack_idx_1, D0=>'X', 
                M0=>u_ctrl_u_ack_idx_2, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_ack_n61654, 
                F0=>open, Q0=>open);
    u_ctrl_u_ack_i23759_SLICE_307I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_1, 
                B1=>u_ctrl_u_ack_pkt_3_6, C1=>u_ctrl_u_ack_pkt_6_0, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_idx_1, 
                B0=>u_ctrl_u_ack_pkt_2_0, C0=>'X', D0=>'X', 
                M0=>u_ctrl_u_ack_idx_2, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_ack_n60995, 
                F0=>open, Q0=>open);
    u_ctrl_u_ack_i24226_SLICE_308I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"BBBB", LUT1_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_ack_idx_1, 
                B1=>u_ctrl_u_ack_pkt_6_2, C1=>u_ctrl_u_ack_pkt_4_7, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_2_2, 
                B0=>u_ctrl_u_ack_idx_1, C0=>'X', D0=>'X', 
                M0=>u_ctrl_u_ack_idx_2, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_ctrl_u_ack_n61732, 
                F0=>open, Q0=>open);
    u_sd_i106_SLICE_309I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"2A00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>resp_tries_1, B1=>u_sd_n62003, 
                C1=>spi_done, D1=>u_sd_n62002, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>u_sd_n57018, C0=>resp_tries_1, D0=>'X', 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n66, F0=>open, Q0=>open);
    u_sd_i24511_SLICE_310I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"E288")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n60337, B1=>u_sd_st_0, 
                C1=>u_sd_n63073, D1=>u_sd_st_3, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n60337, B0=>u_sd_st_0, C0=>'X', D0=>'X', 
                M0=>u_sd_st_2, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n62325, F0=>open, Q0=>open);
    u_sd_i106_adj_657_SLICE_311I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"2A00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>resp_tries_5, B1=>u_sd_n62003, 
                C1=>spi_done, D1=>u_sd_n62002, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>u_sd_n57018, C0=>resp_tries_5, D0=>'X', 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n66_adj_12142, F0=>open, 
                Q0=>open);
    u_sd_i24527_SLICE_312I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"E288")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n60341, B1=>u_sd_st_0, 
                C1=>u_sd_n63072, D1=>u_sd_st_3, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n60341, B0=>u_sd_st_0, C0=>'X', D0=>'X', 
                M0=>u_sd_st_2, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n62345, F0=>open, Q0=>open);
    u_sd_i106_adj_660_SLICE_313I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"2A00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>resp_tries_0, B1=>u_sd_n62003, 
                C1=>spi_done, D1=>u_sd_n62002, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>u_sd_n57018, C0=>resp_tries_0, D0=>'X', 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n66_adj_12145, F0=>open, 
                Q0=>open);
    u_sd_i52_SLICE_314I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>n51_adj_12254, D1=>u_sd_n62007, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>u_sd_n62047, C0=>wr_count_0, D0=>u_sd_n62008, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28, F0=>open, Q0=>open);
    u_sd_i24513_SLICE_315I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F808", LUT1_INITVAL=>X"F100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, 
                B1=>u_sd_spi_start, C1=>u_sd_spi_tx_2, D1=>u_sd_n50876, 
                DI1=>'X', DI0=>'X', A0=>u_sd_n62326, B0=>u_sd_st_0, 
                C0=>u_sd_st_1, D0=>u_sd_n62325, M0=>u_sd_st_4, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n62329, F0=>open, Q0=>open);
    u_sd_i15532_rep_74_SLICE_316I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"1000", LUT1_INITVAL=>X"DCCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, 
                B1=>u_sd_spi_start, C1=>u_sd_n333, D1=>u_sd_cmd_i_2, DI1=>'X', 
                DI0=>'X', A0=>u_sd_cmd_i_1, B0=>u_sd_spi_start, C0=>u_sd_n333, 
                D0=>u_sd_cmd_i_2, M0=>u_sd_spi_tx_7, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n60323, 
                F0=>open, Q0=>open);
    u_sd_i24371_SLICE_317I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0404", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, 
                B1=>u_sd_cmd_i_0, C1=>u_sd_cmd_frame_1, D1=>u_sd_cmd_frame_9, 
                DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_1, B0=>u_sd_cmd_frame_41, 
                C0=>u_sd_cmd_i_0, D0=>'X', M0=>u_sd_cmd_i_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n60334, 
                F0=>open, Q0=>open);
    u_sd_i24431_SLICE_318I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2222", LUT1_INITVAL=>X"0626")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_4, 
                C1=>u_sd_st_1, D1=>spi_done, DI1=>'X', DI0=>'X', A0=>u_sd_st_3, 
                B0=>u_sd_st_4, C0=>'X', D0=>'X', M0=>u_sd_st_0, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n62176, F0=>open, Q0=>open);
    u_sd_i24367_SLICE_319I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0404", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, 
                B1=>u_sd_cmd_i_0, C1=>u_sd_cmd_frame_5, D1=>u_sd_cmd_frame_13, 
                DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_1, B0=>u_sd_cmd_frame_45, 
                C0=>u_sd_cmd_i_0, D0=>'X', M0=>u_sd_cmd_i_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n60332, 
                F0=>open, Q0=>open);
    u_sd_i24829_SLICE_320I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_n62793, 
                C1=>u_sd_n62788, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n62795, 
                B0=>u_sd_st_1, C0=>u_sd_st_2, D0=>'X', M0=>u_sd_st_0, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n62798, F0=>open, Q0=>open);
    u_sd_i52_adj_780_SLICE_321I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>n24, D1=>u_sd_n62007, DI1=>'X', DI0=>'X', A0=>spi_done, 
                B0=>u_sd_n62047, C0=>wr_count_9, D0=>u_sd_n62008, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12168, F0=>open, 
                Q0=>open);
    u_sd_i24825_SLICE_322I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F0FE", LUT1_INITVAL=>X"ACAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_7, 
                B1=>u_sd_n60323, C1=>u_sd_spi_busy, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>n13, B0=>n14, C0=>u_sd_spi_tx_7, 
                D0=>u_sd_SD_CLK_c_enable_263, M0=>u_sd_st_3, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n62792, 
                F0=>open, Q0=>open);
    u_sd_i48_SLICE_323I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FF04", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n61948, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_4, 
                B0=>u_sd_st_0, C0=>u_sd_n58286, D0=>u_sd_n46, M0=>u_sd_st_3, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n30_adj_12192, F0=>open, Q0=>open);
    u_sd_i52_adj_782_SLICE_324I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>n30, D1=>u_sd_n62007, DI1=>'X', DI0=>'X', A0=>spi_done, 
                B0=>u_sd_n62047, C0=>wr_count_7, D0=>u_sd_n62008, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12173, F0=>open, 
                Q0=>open);
    u_sd_i52_adj_785_SLICE_325I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>n27, D1=>u_sd_n62007, DI1=>'X', DI0=>'X', A0=>spi_done, 
                B0=>u_sd_n62047, C0=>wr_count_8, D0=>u_sd_n62008, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12169, F0=>open, 
                Q0=>open);
    u_sd_i118_SLICE_326I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"FF40")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_n427, 
                C1=>u_sd_st_1, D1=>u_sd_n56618, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_st_3, C0=>u_sd_n427, D0=>u_sd_st_1, 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n60_adj_12194, F0=>open, 
                Q0=>open);
    u_sd_i118_adj_792_SLICE_327I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"FF40")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_n425, 
                C1=>u_sd_st_1, D1=>u_sd_n56612, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_st_3, C0=>u_sd_n425, D0=>u_sd_st_1, 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n60_adj_12198, F0=>open, 
                Q0=>open);
    u_sd_i24820_SLICE_328I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"E2E2", LUT1_INITVAL=>X"C0D0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, 
                B1=>u_sd_spi_tx_7, C1=>u_sd_st_1, D1=>u_sd_spi_start, DI1=>'X', 
                DI0=>'X', A0=>u_sd_n60323, B0=>u_sd_spi_busy, 
                C0=>u_sd_spi_tx_7, D0=>'X', M0=>u_sd_st_3, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n62788, 
                F0=>open, Q0=>open);
    u_sd_i118_adj_795_SLICE_329I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"FF40")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_n423, 
                C1=>u_sd_st_1, D1=>u_sd_n56606, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_st_3, C0=>u_sd_n423, D0=>u_sd_st_1, 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n60_adj_12201, F0=>open, 
                Q0=>open);
    u_sd_i118_adj_801_SLICE_330I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"FF40")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_n428, 
                C1=>u_sd_st_1, D1=>u_sd_n56600, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_st_3, C0=>u_sd_n428, D0=>u_sd_st_1, 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n60, F0=>open, Q0=>open);
    u_sd_i48_adj_816_SLICE_331I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4444", LUT1_INITVAL=>X"0200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_st_5, 
                C1=>u_sd_st_4, D1=>u_sd_st_0, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_cmd_frame_44, C0=>'X', D0=>'X', 
                M0=>u_sd_st_3, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n27_adj_12210, F0=>open, 
                Q0=>open);
    u_sd_i52_adj_819_SLICE_332I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>n36_adj_12259, D1=>u_sd_n62007, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>u_sd_n62047, C0=>wr_count_5, D0=>u_sd_n62008, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12175, F0=>open, 
                Q0=>open);
    u_sd_i52_adj_823_SLICE_333I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>n33, D1=>u_sd_n62007, DI1=>'X', DI0=>'X', A0=>spi_done, 
                B0=>u_sd_n62047, C0=>wr_count_6, D0=>u_sd_n62008, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12174, F0=>open, 
                Q0=>open);
    u_sd_i23861_SLICE_334I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C404", LUT1_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_0, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n63070, B0=>u_sd_st_0, 
                C0=>u_sd_st_4, D0=>spi_done, M0=>u_sd_st_1, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n61151, 
                F0=>open, Q0=>open);
    u_sd_i24638_SLICE_335I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"E4E4", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>u_sd_bit_cnt_2, FXA=>u_sd_n62514, FXB=>u_sd_n62511, 
                A1=>u_sd_bit_cnt_0, B1=>u_sd_spi_tx_5, C1=>u_sd_spi_tx_6, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_bit_cnt_0, 
                B0=>u_sd_spi_tx_3, C0=>u_sd_spi_tx_4, D0=>'X', 
                M0=>u_sd_bit_cnt_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>u_sd_n62515, F1=>open, Q1=>open, OFX0=>u_sd_n62511, 
                F0=>open, Q0=>open);
    u_sd_i19517_SLICE_336I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F2D0", LUT1_INITVAL=>X"FE10")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, 
                B1=>u_sd_SD_CLK_c_enable_263, C1=>u_sd_n60344, D1=>u_sd_n60342, 
                DI1=>'X', DI0=>'X', A0=>u_sd_st_2, 
                B0=>u_sd_SD_CLK_c_enable_263, C0=>u_sd_n60343, D0=>u_sd_n60344, 
                M0=>u_sd_st_3, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n56600, F0=>open, Q0=>open);
    u_sd_i50_SLICE_337I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2A2A", LUT1_INITVAL=>X"0002")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_st_0, 
                C1=>n61979, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', A0=>u_sd_st_4, 
                B0=>spi_done, C0=>u_sd_n61947, D0=>'X', M0=>u_sd_st_2, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n46, F0=>open, Q0=>open);
    u_sd_i24339_SLICE_338I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CA00", LUT1_INITVAL=>X"8880")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n62043, B1=>u_sd_n62042, 
                C1=>u_sd_n61982, D1=>resp_tries_6, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n61900, B0=>u_sd_n61899, C0=>u_sd_st_4, D0=>u_sd_st_1, 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n61903, F0=>open, Q0=>open);
    u_sd_i19523_SLICE_339I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F2D0", LUT1_INITVAL=>X"FE10")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, 
                B1=>u_sd_SD_CLK_c_enable_263, C1=>u_sd_n60332, D1=>u_sd_n60326, 
                DI1=>'X', DI0=>'X', A0=>u_sd_st_2, 
                B0=>u_sd_SD_CLK_c_enable_263, C0=>u_sd_n60327, D0=>u_sd_n60332, 
                M0=>u_sd_st_3, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n56606, F0=>open, Q0=>open);
    u_sd_i24327_SLICE_340I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CA00", LUT1_INITVAL=>X"8880")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n62043, B1=>u_sd_n62042, 
                C1=>u_sd_n61982, D1=>resp_tries_7, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n61891, B0=>u_sd_n61890, C0=>u_sd_st_4, D0=>u_sd_st_1, 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n61894, F0=>open, Q0=>open);
    u_sd_i19529_SLICE_341I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F2D0", LUT1_INITVAL=>X"FE10")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, 
                B1=>u_sd_SD_CLK_c_enable_263, C1=>u_sd_n60330, D1=>u_sd_n60328, 
                DI1=>'X', DI0=>'X', A0=>u_sd_st_2, 
                B0=>u_sd_SD_CLK_c_enable_263, C0=>u_sd_n60329, D0=>u_sd_n60330, 
                M0=>u_sd_st_3, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n56612, F0=>open, Q0=>open);
    u_sd_i24642_SLICE_342I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"E4E4", LUT1_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_bit_cnt_0, 
                B1=>u_sd_spi_tx_2, C1=>u_sd_spi_tx_1, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sd_bit_cnt_0, B0=>u_sd_spi_tx_7, 
                C0=>u_sd_spi_tx_0, D0=>'X', M0=>u_sd_bit_cnt_1, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n62514, F0=>open, Q0=>open);
    u_sd_i52_adj_847_SLICE_343I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>n39_adj_12258, D1=>u_sd_n62007, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>u_sd_n62047, C0=>wr_count_4, D0=>u_sd_n62008, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12176, F0=>open, 
                Q0=>open);
    u_sd_i52_adj_849_SLICE_344I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>n42_adj_12257, D1=>u_sd_n62007, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>u_sd_n62047, C0=>wr_count_3, D0=>u_sd_n62008, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12177, F0=>open, 
                Q0=>open);
    u_sd_i19535_SLICE_345I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F2D0", LUT1_INITVAL=>X"FE10")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, 
                B1=>u_sd_SD_CLK_c_enable_263, C1=>u_sd_n60334, D1=>u_sd_n60324, 
                DI1=>'X', DI0=>'X', A0=>u_sd_st_2, 
                B0=>u_sd_SD_CLK_c_enable_263, C0=>u_sd_n60325, D0=>u_sd_n60334, 
                M0=>u_sd_st_3, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n56618, F0=>open, Q0=>open);
    u_sd_i24317_SLICE_346I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CA00", LUT1_INITVAL=>X"8880")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n62043, B1=>u_sd_n62042, 
                C1=>resp_tries_3, D1=>u_sd_n61982, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n61876, B0=>u_sd_n60915, C0=>u_sd_st_4, D0=>u_sd_st_1, 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n61879, F0=>open, Q0=>open);
    u_sd_i54_SLICE_347I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C088", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n473, B1=>u_sd_n50851, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_1, 
                B0=>u_sd_n62047, C0=>u_sd_n12_adj_12140, D0=>u_sd_st_1, 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n50_adj_12207, F0=>open, 
                Q0=>open);
    u_sd_i54_adj_860_SLICE_348I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C088", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n472, B1=>u_sd_n50851, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_2, 
                B0=>u_sd_n62047, C0=>u_sd_n12, D0=>u_sd_st_1, M0=>u_sd_st_0, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n50_adj_12205, F0=>open, Q0=>open);
    u_sd_i24547_SLICE_349I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F808", LUT1_INITVAL=>X"F100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, 
                B1=>u_sd_spi_start, C1=>u_sd_spi_tx_6, D1=>u_sd_n50876, 
                DI1=>'X', DI0=>'X', A0=>u_sd_n62366, B0=>u_sd_st_0, 
                C0=>u_sd_st_1, D0=>u_sd_n62365, M0=>u_sd_st_4, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n62369, F0=>open, Q0=>open);
    u_sd_i106_adj_861_SLICE_350I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CA00", LUT1_INITVAL=>X"1010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_st_3, 
                C1=>u_sd_n61950, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n58377, 
                B0=>u_sd_n58695, C0=>u_sd_st_4, D0=>u_sd_st_1, M0=>u_sd_st_0, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n66_adj_12193, F0=>open, Q0=>open);
    u_sd_i24984_SLICE_351I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"7D75", LUT1_INITVAL=>X"FDF5")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n63074, B1=>u_sd_st_2, 
                C1=>u_sd_st_0, D1=>u_sd_st_3, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n63074, B0=>u_sd_st_2, C0=>u_sd_st_0, D0=>u_sd_st_3, 
                M0=>u_sd_st_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n23_adj_12227, F0=>open, 
                Q0=>open);
    u_sd_i24544_SLICE_352I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"E288")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n60339, B1=>u_sd_st_0, 
                C1=>u_sd_n63071, D1=>u_sd_st_3, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n60339, B0=>u_sd_st_0, C0=>'X', D0=>'X', 
                M0=>u_sd_st_2, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n62365, F0=>open, Q0=>open);
    u_sd_i106_adj_863_SLICE_353I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CA00", LUT1_INITVAL=>X"1010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_st_3, 
                C1=>u_sd_n61949, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n58378, 
                B0=>u_sd_n58696, C0=>u_sd_st_4, D0=>u_sd_st_1, M0=>u_sd_st_0, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n66_adj_12189, F0=>open, Q0=>open);
    u_sd_i24530_SLICE_354I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F808", LUT1_INITVAL=>X"F100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, 
                B1=>u_sd_spi_start, C1=>u_sd_spi_tx_4, D1=>u_sd_n50876, 
                DI1=>'X', DI0=>'X', A0=>u_sd_n62346, B0=>u_sd_st_0, 
                C0=>u_sd_st_1, D0=>u_sd_n62345, M0=>u_sd_st_4, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n62349, F0=>open, Q0=>open);
    u_sd_i24407_SLICE_355I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C2C2", LUT1_INITVAL=>X"4040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_2, 
                B1=>u_sd_cmd_i_0, C1=>u_sd_cmd_frame_16, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sd_cmd_frame_40, B0=>u_sd_cmd_i_2, 
                C0=>u_sd_cmd_i_0, D0=>'X', M0=>u_sd_cmd_i_1, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n60344, 
                F0=>open, Q0=>open);
    u_sd_i52_adj_867_SLICE_356I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>n45_adj_12256, D1=>u_sd_n62007, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>u_sd_n62047, C0=>wr_count_2, D0=>u_sd_n62008, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12178, F0=>open, 
                Q0=>open);
    u_sd_i52_adj_868_SLICE_357I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4000", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>n48_adj_12255, D1=>u_sd_n62007, DI1=>'X', DI0=>'X', 
                A0=>spi_done, B0=>u_sd_n62047, C0=>wr_count_1, D0=>u_sd_n62008, 
                M0=>u_sd_st_4, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n28_adj_12179, F0=>open, 
                Q0=>open);
    u_sd_i24403_SLICE_358I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0404", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, 
                B1=>u_sd_cmd_i_0, C1=>u_sd_cmd_frame_3, D1=>u_sd_cmd_frame_11, 
                DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_1, B0=>u_sd_cmd_frame_43, 
                C0=>u_sd_cmd_i_0, D0=>'X', M0=>u_sd_cmd_i_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n60330, 
                F0=>open, Q0=>open);
    u_sd_i54_adj_871_SLICE_359I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0C88", LUT1_INITVAL=>X"6A00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_0, B1=>u_sd_n62060, 
                C1=>spi_done, D1=>u_sd_n50851, DI1=>'X', DI0=>'X', 
                A0=>u_sd_cmd_i_0, B0=>u_sd_n62047, C0=>u_sd_n53766, 
                D0=>u_sd_st_1, M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n50, F0=>open, 
                Q0=>open);
    u_sd_i24401_SLICE_360I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FFEF", LUT1_INITVAL=>X"55D5")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_0, 
                C1=>u_sd_st_1, D1=>spi_done, DI1=>'X', DI0=>'X', A0=>u_sd_st_3, 
                B0=>u_sd_n63070, C0=>u_sd_st_0, D0=>u_sd_st_1, M0=>u_sd_st_2, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n62114, F0=>open, Q0=>open);
    u_sd_i24395_SLICE_361I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"5557", LUT1_INITVAL=>X"D557")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n63074, B1=>u_sd_st_1, 
                C1=>u_sd_st_2, D1=>u_sd_st_3, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n63074, B0=>u_sd_st_1, C0=>u_sd_st_2, D0=>u_sd_st_3, 
                M0=>u_sd_st_0, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n34, F0=>open, Q0=>open);
    u_sd_i24389_SLICE_362I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"BEBA", LUT1_INITVAL=>X"FEFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n58162, B1=>u_sd_st_3, 
                C1=>u_sd_st_0, D1=>u_sd_st_2, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n58162, B0=>u_sd_st_3, C0=>u_sd_st_0, D0=>u_sd_st_2, 
                M0=>u_sd_st_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n25, F0=>open, Q0=>open);
    u_sd_i37_SLICE_363I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FAEA", LUT1_INITVAL=>X"3232")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_0, B1=>u_sd_st_1, 
                C1=>n61979, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_0, 
                B0=>u_sd_st_1, C0=>spi_done, D0=>u_sd_n59001, M0=>u_sd_st_2, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_sd_n21, F0=>open, Q0=>open);
    u_sd_i24385_SLICE_364I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"1515", LUT1_INITVAL=>X"0145")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_0, B1=>u_sd_st_2, 
                C1=>u_sd_st_4, D1=>u_sd_st_3, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_0, B0=>u_sd_st_2, C0=>u_sd_st_4, D0=>'X', 
                M0=>u_sd_st_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n62090, F0=>open, Q0=>open);
    u_sd_i24381_SLICE_365I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A2A2", LUT1_INITVAL=>X"A0EC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_frame_42, 
                B1=>u_sd_st_1, C1=>u_sd_st_0, D1=>u_sd_n61991, DI1=>'X', 
                DI0=>'X', A0=>u_sd_cmd_frame_42, B0=>u_sd_st_1, C0=>u_sd_st_0, 
                D0=>'X', M0=>u_sd_st_2, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>u_sd_n62084, F0=>open, 
                Q0=>open);
    u_sd_i24377_SLICE_366I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"BBBF", LUT1_INITVAL=>X"FB7F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_0, B1=>u_sd_n63074, 
                C1=>u_sd_st_3, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_0, B0=>u_sd_n63074, C0=>u_sd_st_3, D0=>u_sd_st_1, 
                M0=>u_sd_st_2, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_n25_adj_12215, F0=>open, 
                Q0=>open);
    u_sd_i24375_SLICE_367I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4444", LUT1_INITVAL=>X"44E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, 
                B1=>u_sd_spi_start, C1=>u_sd_sck_N_10229, 
                D1=>u_sd_spi_busy_N_10255, DI1=>'X', DI0=>'X', 
                A0=>u_sd_spi_busy, B0=>u_sd_spi_start, C0=>'X', D0=>'X', 
                M0=>u_sd_half_phase, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_sd_SD_CLK_c_enable_264, F0=>open, 
                Q0=>open);
    u_cam_cfg_i47_SLICE_368I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2727", LUT1_INITVAL=>X"3232")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_1, B1=>st_3, 
                C1=>u_cam_cfg_n44, D1=>'X', DI1=>'X', DI0=>'X', A0=>st_0, 
                B0=>u_cam_cfg_st_1, C0=>st_3, D0=>'X', M0=>u_cam_cfg_st_2, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>n32, F0=>open, Q0=>open);
    u_cam_cfg_i14340_SLICE_369I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"1111", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_phase_0, 
                B1=>u_cam_cfg_phase_1, C1=>u_cam_cfg_byte_idx_0, 
                D1=>u_cam_cfg_byte_idx_1, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_n54127, B0=>n61999, C0=>'X', D0=>'X', 
                M0=>u_cam_cfg_st_2, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>u_cam_cfg_n51468, F0=>open, Q0=>open);
    u_cam_cfg_i23334_SLICE_370I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_bitn_0, 
                B1=>u_cam_cfg_sh_2, C1=>u_cam_cfg_sh_3, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_cam_cfg_sh_0, B0=>u_cam_cfg_sh_1, 
                C0=>u_cam_cfg_bitn_0, D0=>'X', M0=>u_cam_cfg_bitn_1, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_n60501, F0=>open, Q0=>open);
    u_cam_cfg_i23335_SLICE_371I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>u_cam_cfg_bitn_2, FXA=>u_cam_cfg_n60501, 
                FXB=>u_cam_cfg_n60502, A1=>u_cam_cfg_bitn_0, 
                B1=>u_cam_cfg_sh_6, C1=>u_cam_cfg_sh_7, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_cam_cfg_sh_4, B0=>u_cam_cfg_sh_5, 
                C0=>u_cam_cfg_bitn_0, D0=>'X', M0=>u_cam_cfg_bitn_1, CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>u_cam_cfg_sda_oe_N_417, F1=>open, 
                Q1=>open, OFX0=>u_cam_cfg_n60502, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i23194_SLICE_372I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28070, C1=>u_cam_cfg_u_rom_n28094, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_u_rom_n27998, 
                B0=>u_cam_cfg_u_rom_n28022, C0=>n309, D0=>'X', M0=>n308, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_0, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i23245_SLICE_373I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28064, C1=>u_cam_cfg_u_rom_n28088, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_u_rom_n27992, 
                B0=>u_cam_cfg_u_rom_n28016, C0=>n309, D0=>'X', M0=>n308, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_6, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i23248_SLICE_374I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28065, C1=>u_cam_cfg_u_rom_n28089, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_u_rom_n27993, 
                B0=>u_cam_cfg_u_rom_n28017, C0=>n309, D0=>'X', M0=>n308, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_5, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i23251_SLICE_375I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28066, C1=>u_cam_cfg_u_rom_n28090, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_u_rom_n27994, 
                B0=>u_cam_cfg_u_rom_n28018, C0=>n309, D0=>'X', M0=>n308, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_4, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i23254_SLICE_376I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28067, C1=>u_cam_cfg_u_rom_n28091, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_u_rom_n27995, 
                B0=>u_cam_cfg_u_rom_n28019, C0=>n309, D0=>'X', M0=>n308, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_3, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i23257_SLICE_377I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28068, C1=>u_cam_cfg_u_rom_n28092, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_u_rom_n27996, 
                B0=>u_cam_cfg_u_rom_n28020, C0=>n309, D0=>'X', M0=>n308, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_2, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i23260_SLICE_378I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28069, C1=>u_cam_cfg_u_rom_n28093, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_u_rom_n27997, 
                B0=>u_cam_cfg_u_rom_n28021, C0=>n309, D0=>'X', M0=>n308, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_1, F0=>open, Q0=>open);
    u_cam_cfg_u_rom_i23242_SLICE_379I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n309, 
                B1=>u_cam_cfg_u_rom_n28063, C1=>u_cam_cfg_u_rom_n28087, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_u_rom_n27991, 
                B0=>u_cam_cfg_u_rom_n28015, C0=>n309, D0=>'X', M0=>n308, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>u_cam_cfg_rom_entry_7, F0=>open, Q0=>open);
    u_ctrl_SLICE_380I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FAEE", 
                   LUT1_INITVAL=>X"01FF", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_cmd_opcode_5, 
                B1=>u_ctrl_cmd_opcode_2, C1=>u_ctrl_cmd_arg_7, 
                D1=>u_ctrl_n58202, DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_5, 
                B0=>u_ctrl_cmd_opcode_1, C0=>u_ctrl_cmd_opcode_2, 
                D0=>u_ctrl_cmd_opcode_0, M0=>u_ctrl_u_cmd_bytes_2_7, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_n16_adj_12252, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n58202, Q0=>u_ctrl_cmd_arg_7);
    u_ctrl_u_tx_SLICE_381I: SLOGICB
      generic map (LUT0_INITVAL=>X"3A3A", LUT1_INITVAL=>X"A8AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>u_ctrl_u_tx_SD_CLK_c_enable_254, B1=>u_ctrl_u_tx_n53999, 
                C1=>u_ctrl_u_tx_n61962, D1=>u_ctrl_u_tx_n24556, DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_n24558, B0=>u_ctrl_u_tx_n61963, 
                C0=>u_ctrl_u_tx_n24556, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_tx_n51515, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_tx_SD_CLK_c_enable_254, Q0=>open);
    SLICE_382I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFF", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>post_delay_0, 
                B1=>u_cam_cfg_n14_adj_12133, C1=>u_cam_cfg_n59319, 
                D1=>post_delay_2, DI1=>'X', DI0=>'X', A0=>post_delay_2, 
                B0=>post_delay_3, C0=>n59339, D0=>n61999, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n61999, Q1=>open, 
                OFX0=>open, F0=>n58657, Q0=>open);
    SLICE_383I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>resp_tries_4, B1=>u_sd_n59159, 
                C1=>u_sd_n59153, D1=>resp_tries_2, DI1=>'X', DI0=>'X', 
                A0=>n31914, B0=>resp_tries_2, C0=>n61979, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n31914, Q1=>open, 
                OFX0=>open, F0=>n56375, Q0=>open);
    u_sdram_SLICE_384I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"B3B3", 
                   LUT1_INITVAL=>X"FFFE", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_SD_A_12_N_2210_9, 
                B1=>u_sdram_n19202, C1=>u_sdram_st_2, D1=>u_sdram_n19204, 
                DI1=>'X', DI0=>'X', A0=>u_sdram_n19204, 
                B0=>u_sdram_wr_ready_N_2408, C0=>u_sdram_refresh_req, D0=>'X', 
                M0=>u_sdram_n19204, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sdram_refresh_req, OFX1=>open, 
                F1=>u_sdram_wr_ready_N_2408, Q1=>open, OFX0=>open, 
                F0=>u_sdram_n50301, Q0=>u_sdram_SD_A_12_N_2210_9);
    u_sd_SLICE_385I: SLOGICB
      generic map (LUT0_INITVAL=>X"A8A8", LUT1_INITVAL=>X"88F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n61976, B1=>resp_tries_2, 
                C1=>u_sd_n60919, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>resp_tries_2, C0=>u_sd_n61982, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n61950, Q1=>open, OFX0=>open, F0=>u_sd_n60919, 
                Q0=>open);
    u_sd_SLICE_386I: SLOGICB
      generic map (LUT0_INITVAL=>X"95FF", LUT1_INITVAL=>X"DFDF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_0, 
                B1=>u_sd_cmd_i_1, C1=>u_sd_cmd_i_2, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sd_cmd_i_0, B0=>u_sd_n62060, C0=>spi_done, 
                D0=>u_sd_n63074, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n62060, Q1=>open, OFX0=>open, 
                F0=>u_sd_n53766, Q0=>open);
    u_sd_SLICE_387I: SLOGICB
      generic map (LUT0_INITVAL=>X"F088", LUT1_INITVAL=>X"3070")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n62003, B1=>spi_done, 
                C1=>u_sd_st_1, D1=>u_sd_st_0, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n61976, B0=>u_sd_st_0, C0=>u_sd_n60997, D0=>u_sd_st_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n60997, Q1=>open, OFX0=>open, F0=>u_sd_n61948, 
                Q0=>open);
    u_sd_SLICE_388I: SLOGICB
      generic map (LUT0_INITVAL=>X"88F0", LUT1_INITVAL=>X"A8A8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>resp_tries_4, 
                C1=>u_sd_n61982, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n61976, 
                B0=>resp_tries_4, C0=>u_sd_n60906, D0=>u_sd_st_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n60906, 
                Q1=>open, OFX0=>open, F0=>u_sd_n61949, Q0=>open);
    u_sd_SLICE_389I: SLOGICB
      generic map (LUT0_INITVAL=>X"7040", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_st_0, 
                C1=>u_sd_n55, D1=>resp_tries_5, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>u_sd_n61982, C0=>u_sd_n4, D0=>resp_tries_5, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n73_adj_12196, Q1=>open, OFX0=>open, F0=>u_sd_n55, 
                Q0=>open);
    u_sd_SLICE_390I: SLOGICB
      generic map (LUT0_INITVAL=>X"000E", LUT1_INITVAL=>X"7400")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_SD_CLK_c_enable_263, 
                B1=>u_sd_st_2, C1=>u_sd_n59081, D1=>u_sd_st_0, DI1=>'X', 
                DI0=>'X', A0=>n13, B0=>n14, C0=>u_sd_SD_CLK_c_enable_263, 
                D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n37, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59081, Q0=>open);
    u_sd_SLICE_391I: SLOGICB
      generic map (LUT0_INITVAL=>X"7040", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_st_0, 
                C1=>u_sd_n55_adj_12163, D1=>resp_tries_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>u_sd_n61982, C0=>u_sd_n4, D0=>resp_tries_1, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n73_adj_12186, Q1=>open, OFX0=>open, 
                F0=>u_sd_n55_adj_12163, Q0=>open);
    u_sd_SLICE_392I: SLOGICB
      generic map (LUT0_INITVAL=>X"5044", LUT1_INITVAL=>X"7040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_n61982, 
                C1=>u_sd_n4, D1=>resp_tries_0, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>resp_tries_0, C0=>u_sd_n55_adj_12166, 
                D0=>u_sd_st_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n55_adj_12166, Q1=>open, OFX0=>open, 
                F0=>u_sd_n73, Q0=>open);
    u_sd_SLICE_393I: SLOGICB
      generic map (LUT0_INITVAL=>X"5450", LUT1_INITVAL=>X"4C4C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_1, 
                C1=>u_sd_st_0, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_4, 
                B0=>u_sd_n84, C0=>u_sd_n61149, D0=>u_sd_st_3, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n61149, Q1=>open, 
                OFX0=>open, F0=>u_sd_n19_adj_12195, Q0=>open);
    u_cam_cfg_SLICE_394I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAC0", LUT1_INITVAL=>X"7775")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n62055, B1=>st_0, 
                C1=>u_cam_cfg_n62054, D1=>u_cam_cfg_bitn_0, DI1=>'X', DI0=>'X', 
                A0=>n61999, B0=>u_cam_cfg_n11, C0=>u_cam_cfg_st_2, D0=>st_0, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n11, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n14, 
                Q0=>open);
    u_cam_cfg_SLICE_395I: SLOGICB
      generic map (LUT0_INITVAL=>X"05C5", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_bitn_0, 
                B1=>u_cam_cfg_bitn_1, C1=>u_cam_cfg_phase_1, 
                D1=>u_cam_cfg_bitn_2, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_phase_1, B0=>u_cam_cfg_n59433, 
                C0=>u_cam_cfg_phase_0, D0=>st_0, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n59433, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n44, Q0=>open);
    u_cam_cfg_SLICE_396I: SLOGICB
      generic map (LUT0_INITVAL=>X"4044", LUT1_INITVAL=>X"4C0C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n62023, 
                B1=>u_cam_cfg_n61968, C1=>u_cam_cfg_st_2, D1=>u_cam_cfg_n50498, 
                DI1=>'X', DI0=>'X', A0=>st_3, B0=>tick, C0=>u_cam_cfg_st_2, 
                D0=>u_cam_cfg_n62057, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_SD_CLK_c_enable_255, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n61968, Q0=>open);
    u_cam_cfg_SLICE_397I: SLOGICB
      generic map (LUT0_INITVAL=>X"8C0C", LUT1_INITVAL=>X"1050")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_1, B1=>st_0, 
                C1=>u_cam_cfg_n62055, D1=>u_cam_cfg_n62023, DI1=>'X', DI0=>'X', 
                A0=>st_0, B0=>u_cam_cfg_n61968, C0=>u_cam_cfg_st_2, 
                D0=>u_cam_cfg_n59009, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n59009, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n55737, Q0=>open);
    u_ctrl_u_tx_SLICE_398I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF01", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_clk_cnt_11, 
                B1=>u_ctrl_u_tx_clk_cnt_13, C1=>u_ctrl_u_tx_clk_cnt_0, 
                D1=>u_ctrl_u_tx_clk_cnt_3, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_tx_n58744, B0=>u_ctrl_u_tx_n60288, 
                C0=>u_ctrl_u_tx_n60290, D0=>u_ctrl_n24558, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_tx_n60290, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_tx_n28555, Q0=>open);
    u_ctrl_u_tx_SLICE_399I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_clk_cnt_8, 
                B1=>u_ctrl_u_tx_clk_cnt_5, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_tx_clk_cnt_9, 
                B0=>u_ctrl_u_tx_clk_cnt_12, C0=>u_ctrl_u_tx_n59603, 
                D0=>u_ctrl_u_tx_clk_cnt_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_tx_n59603, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_tx_n59607, Q0=>open);
    u_ctrl_u_tx_SLICE_400I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"1010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_n60286, 
                B1=>u_ctrl_u_tx_clk_cnt_15, C1=>u_ctrl_u_tx_n24557, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_tx_clk_cnt_3, 
                B0=>u_ctrl_u_tx_clk_cnt_2, C0=>u_ctrl_u_tx_clk_cnt_0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_tx_n59833, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_tx_n60286, Q0=>open);
    u_ctrl_u_tx_SLICE_401I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_clk_cnt_4, 
                B1=>u_ctrl_u_tx_clk_cnt_14, C1=>u_ctrl_u_tx_clk_cnt_2, 
                D1=>u_ctrl_u_tx_clk_cnt_15, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_tx_n58744, B0=>u_ctrl_u_tx_n60288, 
                C0=>u_ctrl_u_tx_n60290, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_tx_n60288, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_tx_n61963, Q0=>open);
    u_ctrl_u_tx_SLICE_402I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"8A8A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_n24556, 
                B1=>u_ctrl_u_tx_n61962, C1=>u_ctrl_u_tx_n53999, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_tx_bit_idx_1, 
                B0=>u_ctrl_u_tx_bit_idx_0, C0=>u_ctrl_u_tx_bit_idx_2, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_tx_n49229, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_tx_n53999, Q0=>open);
    u_ctrl_u_tx_SLICE_403I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_n59693, 
                B1=>u_ctrl_u_tx_n58744, C1=>u_ctrl_u_tx_n59691, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_tx_clk_cnt_14, 
                B0=>u_ctrl_u_tx_clk_cnt_11, C0=>u_ctrl_u_tx_clk_cnt_13, 
                D0=>u_ctrl_u_tx_clk_cnt_2, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_tx_n61962, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_tx_n59693, Q0=>open);
    u_ctrl_u_rx_SLICE_404I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n60007, 
                B1=>u_ctrl_u_rx_n24194, C1=>u_ctrl_u_rx_n62025, 
                D1=>u_ctrl_u_rx_clk_cnt_3, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_clk_cnt_6, B0=>u_ctrl_u_rx_bit_idx_2, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n60019, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n60007, Q0=>open);
    u_ctrl_u_rx_SLICE_405I: SLOGICB
      generic map (LUT0_INITVAL=>X"F700", LUT1_INITVAL=>X"FFFB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n59545, 
                B1=>u_ctrl_u_rx_SD_CLK_c_enable_183, C1=>u_ctrl_u_rx_n62028, 
                D1=>u_ctrl_u_rx_n59485, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_bit_idx_1, B0=>u_ctrl_u_rx_n62035, 
                C0=>u_ctrl_u_rx_n31, D0=>u_ctrl_u_rx_n24194, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n31, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_n49293, Q0=>open);
    u_ctrl_u_rx_SLICE_406I: SLOGICB
      generic map (LUT0_INITVAL=>X"FBFF", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_5, 
                B1=>u_ctrl_u_rx_clk_cnt_14, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_n62028, B0=>u_ctrl_u_rx_bit_idx_2, 
                C0=>u_ctrl_u_rx_n12, D0=>u_ctrl_u_rx_n24194, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n62028, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_rx_n59963, Q0=>open);
    u_ctrl_u_rx_SLICE_407I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_2, 
                B1=>u_ctrl_u_rx_clk_cnt_12, C1=>u_ctrl_u_rx_clk_cnt_15, 
                D1=>u_ctrl_u_rx_clk_cnt_11, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n12, B0=>u_ctrl_u_rx_n62028, 
                C0=>u_ctrl_u_rx_n59913, D0=>u_ctrl_u_rx_n60073, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n12, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_rx_n59088, Q0=>open);
    u_ctrl_u_rx_SLICE_408I: SLOGICB
      generic map (LUT0_INITVAL=>X"EFFF", LUT1_INITVAL=>X"0040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n60043, 
                B1=>u_ctrl_u_rx_SD_CLK_c_enable_183, C1=>u_ctrl_u_rx_clk_cnt_9, 
                D1=>u_ctrl_u_rx_n60035, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n12, B0=>u_ctrl_u_rx_n62028, 
                C0=>u_ctrl_u_rx_bit_idx_0, D0=>u_ctrl_u_rx_n24194, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_SD_CLK_c_enable_25, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n60043, Q0=>open);
    u_ctrl_u_rx_SLICE_409I: SLOGICB
      generic map (LUT0_INITVAL=>X"EFFF", LUT1_INITVAL=>X"0040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n60003, 
                B1=>u_ctrl_u_rx_SD_CLK_c_enable_183, C1=>u_ctrl_u_rx_clk_cnt_9, 
                D1=>u_ctrl_u_rx_n59995, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n12, B0=>u_ctrl_u_rx_n62028, 
                C0=>u_ctrl_u_rx_bit_idx_1, D0=>u_ctrl_u_rx_n24194, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_SD_CLK_c_enable_28, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n60003, Q0=>open);
    u_ctrl_u_rx_SLICE_410I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_8, 
                B1=>u_ctrl_u_rx_clk_cnt_0, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_clk_cnt_13, 
                B0=>u_ctrl_u_rx_clk_cnt_6, C0=>u_ctrl_u_rx_n62024, 
                D0=>u_ctrl_u_rx_n60063, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_rx_n62024, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n60073, Q0=>open);
    u_ctrl_u_rx_SLICE_411I: SLOGICB
      generic map (LUT0_INITVAL=>X"0400", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_8, 
                B1=>u_ctrl_u_rx_clk_cnt_0, C1=>u_ctrl_u_rx_clk_cnt_10, 
                D1=>u_ctrl_u_rx_n60057, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n60019, B0=>u_ctrl_u_rx_SD_CLK_c_enable_183, 
                C0=>u_ctrl_u_rx_n60021, D0=>u_ctrl_u_rx_n62010, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_SD_CLK_c_enable_183, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_SD_CLK_c_enable_38, Q0=>open);
    u_ctrl_u_rx_SLICE_412I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_7, 
                B1=>u_ctrl_u_rx_clk_cnt_1, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_n60057, B0=>u_ctrl_u_rx_n24193, 
                C0=>u_ctrl_u_rx_clk_cnt_9, D0=>u_ctrl_u_rx_clk_cnt_10, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n60057, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n60063, Q0=>open);
    u_ctrl_u_rx_SLICE_413I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n59913, 
                B1=>u_ctrl_u_rx_n62020, C1=>u_ctrl_u_rx_n59929, 
                D1=>u_ctrl_u_rx_clk_cnt_13, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_clk_cnt_3, B0=>u_ctrl_u_rx_clk_cnt_4, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n59919, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n59913, Q0=>open);
    u_ctrl_u_rx_SLICE_414I: SLOGICB
      generic map (LUT0_INITVAL=>X"0400", LUT1_INITVAL=>X"FFEF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_5, 
                B1=>u_ctrl_u_rx_clk_cnt_14, C1=>u_ctrl_u_rx_clk_cnt_9, 
                D1=>u_ctrl_u_rx_n12, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n60021, B0=>u_ctrl_u_rx_SD_CLK_c_enable_183, 
                C0=>u_ctrl_u_rx_n59919, D0=>u_ctrl_u_rx_n24194, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n60021, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_SD_CLK_c_enable_262, Q0=>open);
    u_ctrl_u_rx_SLICE_415I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"0008")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n59559, 
                B1=>u_ctrl_u_rx_SD_CLK_c_enable_183, C1=>u_ctrl_u_rx_clk_cnt_6, 
                D1=>u_ctrl_u_rx_n12, DI1=>'X', DI0=>'X', A0=>rx_s2, 
                B0=>u_ctrl_u_rx_valid_N_511, C0=>u_ctrl_u_rx_n24193, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_valid_N_511, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_SD_CLK_c_enable_182, Q0=>open);
    u_ctrl_u_rx_SLICE_416I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_13, 
                B1=>u_ctrl_u_rx_clk_cnt_3, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_n62028, B0=>u_ctrl_u_rx_n60240, 
                C0=>u_ctrl_u_rx_clk_cnt_4, D0=>u_ctrl_u_rx_clk_cnt_9, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n60240, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n59559, Q0=>open);
    u_ctrl_u_rx_SLICE_417I: SLOGICB
      generic map (LUT0_INITVAL=>X"0040", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_bit_idx_0, 
                B1=>u_ctrl_u_rx_bit_idx_2, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_n60021, 
                B0=>u_ctrl_u_rx_SD_CLK_c_enable_183, C0=>u_ctrl_u_rx_n62035, 
                D0=>u_ctrl_u_rx_n59939, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_rx_n62035, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_SD_CLK_c_enable_213, Q0=>open);
    u_ctrl_u_rx_SLICE_418I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFB", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_6, 
                B1=>u_ctrl_u_rx_bit_idx_1, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_n59929, B0=>u_ctrl_u_rx_n24194, 
                C0=>u_ctrl_u_rx_n60240, D0=>u_ctrl_u_rx_clk_cnt_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n59929, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n59939, Q0=>open);
    u_ctrl_u_rx_SLICE_419I: SLOGICB
      generic map (LUT0_INITVAL=>X"0040", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n62026, 
                B1=>u_ctrl_u_rx_n62025, C1=>u_ctrl_u_rx_bit_idx_0, 
                D1=>u_ctrl_u_rx_bit_idx_1, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n59963, B0=>u_ctrl_u_rx_SD_CLK_c_enable_183, 
                C0=>u_ctrl_u_rx_clk_cnt_9, D0=>u_ctrl_u_rx_n59955, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n59955, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_SD_CLK_c_enable_165, Q0=>open);
    u_ctrl_u_rx_SLICE_420I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"AA2A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>u_ctrl_u_rx_SD_CLK_c_enable_265, B1=>u_ctrl_u_rx_n59533, 
                C1=>u_ctrl_u_rx_SD_CLK_c_enable_183, D1=>u_ctrl_u_rx_n61992, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_n24196, 
                B0=>u_ctrl_u_rx_valid_N_511, C0=>u_ctrl_u_rx_n24194, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n51533, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_SD_CLK_c_enable_265, Q0=>open);
    u_ctrl_u_rx_SLICE_421I: SLOGICB
      generic map (LUT0_INITVAL=>X"0004", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_5, 
                B1=>u_ctrl_u_rx_clk_cnt_14, C1=>u_ctrl_u_rx_n12, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_n62004, 
                B0=>u_ctrl_u_rx_n59873, C0=>u_ctrl_u_rx_n60240, 
                D0=>u_ctrl_u_rx_clk_cnt_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n62004, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_n59533, Q0=>open);
    u_ctrl_u_rx_SLICE_422I: SLOGICB
      generic map (LUT0_INITVAL=>X"4040", LUT1_INITVAL=>X"0100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_5, 
                B1=>u_ctrl_u_rx_clk_cnt_14, C1=>u_ctrl_u_rx_clk_cnt_13, 
                D1=>u_ctrl_u_rx_n59873, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_clk_cnt_6, B0=>u_ctrl_u_rx_clk_cnt_9, 
                C0=>u_ctrl_u_rx_n24194, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n59881, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n59873, Q0=>open);
    u_ctrl_u_rx_SLICE_423I: SLOGICB
      generic map (LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n62028, 
                B1=>u_ctrl_u_rx_n59457, C1=>u_ctrl_u_rx_n60240, 
                D1=>u_ctrl_u_rx_clk_cnt_4, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_clk_cnt_9, B0=>u_ctrl_u_rx_n24195, C0=>rx_s2, 
                D0=>u_ctrl_u_rx_clk_cnt_7, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n59465, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_n59457, Q0=>open);
    u_ctrl_u_rx_SLICE_424I: SLOGICB
      generic map (LUT0_INITVAL=>X"0008", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n62004, 
                B1=>u_ctrl_u_rx_n59765, C1=>u_ctrl_u_rx_clk_cnt_4, D1=>rx_s2, 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_clk_cnt_9, 
                B0=>u_ctrl_u_rx_n24195, C0=>u_ctrl_u_rx_clk_cnt_7, 
                D0=>u_ctrl_u_rx_n60240, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_rx_n59771, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n59765, Q0=>open);
    u_ctrl_u_rx_SLICE_425I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"F7F7")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_8, 
                B1=>u_ctrl_u_rx_clk_cnt_0, C1=>u_ctrl_u_rx_clk_cnt_1, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_n59465, B0=>u_ctrl_u_rx_n9, 
                C0=>u_ctrl_u_rx_n11, D0=>u_ctrl_u_rx_n12, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n11, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_SD_CLK_c_enable_257, Q0=>open);
    u_ctrl_u_rx_SLICE_426I: SLOGICB
      generic map (LUT0_INITVAL=>X"0400", LUT1_INITVAL=>X"EFEF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_5, 
                B1=>u_ctrl_u_rx_clk_cnt_14, C1=>u_ctrl_u_rx_bit_idx_2, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_n59983, 
                B0=>u_ctrl_u_rx_SD_CLK_c_enable_183, C0=>u_ctrl_u_rx_n61993, 
                D0=>u_ctrl_u_rx_clk_cnt_9, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n61993, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_SD_CLK_c_enable_215, Q0=>open);
    u_ctrl_u_rx_SLICE_427I: SLOGICB
      generic map (LUT0_INITVAL=>X"080C", LUT1_INITVAL=>X"AAA8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_n24195, 
                B1=>u_ctrl_u_rx_n59547, C1=>u_ctrl_u_rx_n9, 
                D1=>u_ctrl_u_rx_n11, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n60194, B0=>u_ctrl_u_rx_SD_CLK_c_enable_257, 
                C0=>u_ctrl_u_rx_n35729, D0=>u_ctrl_u_rx_n31, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n35729, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_rx_n51518, Q0=>open);
    u_ctrl_u_rx_SLICE_428I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFEF", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_4, 
                B1=>u_ctrl_u_rx_clk_cnt_13, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_n59971, B0=>u_ctrl_u_rx_n59977, 
                C0=>u_ctrl_u_rx_n24194, D0=>u_ctrl_u_rx_n62025, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n62025, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n59983, Q0=>open);
    u_ctrl_u_rx_SLICE_429I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_9, 
                B1=>u_ctrl_u_rx_n12, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_rx_n59545, B0=>u_ctrl_u_rx_n62028, 
                C0=>u_ctrl_u_rx_n62025, D0=>u_ctrl_u_rx_n59537, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n59545, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n59547, Q0=>open);
    u_ctrl_u_rx_SLICE_430I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_3, 
                B1=>u_ctrl_u_rx_clk_cnt_6, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_bit_idx_0, B0=>u_ctrl_u_rx_bit_idx_2, 
                C0=>u_ctrl_u_rx_n62025, D0=>u_ctrl_u_rx_n62026, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_rx_n62026, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n59995, Q0=>open);
    u_ctrl_SLICE_431I: SLOGICB
      generic map (LUT0_INITVAL=>X"0488", LUT1_INITVAL=>X"1111")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_cmd_opcode_1, 
                B1=>u_ctrl_cmd_opcode_2, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_cmd_opcode_0, B0=>u_ctrl_n62021, 
                C0=>u_ctrl_u_regs_n59571, D0=>u_ctrl_cmd_opcode_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_n62021, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_regs_n36, Q0=>open);
    u_ctrl_SLICE_432I: SLOGICB
      generic map (LUT0_INITVAL=>X"0122", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_cmd_opcode_0, 
                B1=>u_ctrl_cmd_opcode_1, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>cmd_opcode_4, B0=>u_ctrl_n62014, C0=>u_ctrl_u_regs_n59577, 
                D0=>u_ctrl_cmd_opcode_5, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_n62014, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_regs_n58119, Q0=>open);
    u_ctrl_u_cmd_SLICE_433I: SLOGICB
      generic map (LUT0_INITVAL=>X"DFFF", LUT1_INITVAL=>X"FFFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_rx_data_5, 
                B1=>u_ctrl_rx_data_3, C1=>u_ctrl_u_cmd_n60105, 
                D1=>u_ctrl_rx_data_1, DI1=>'X', DI0=>'X', A0=>u_ctrl_rx_data_0, 
                B0=>u_ctrl_u_cmd_n60109, C0=>u_ctrl_rx_data_7, 
                D0=>u_ctrl_rx_data_2, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_n60109, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n15, Q0=>open);
    u_ctrl_u_cmd_SLICE_434I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n24332, 
                B1=>u_ctrl_u_cmd_n24331, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_n24333, B0=>u_ctrl_u_cmd_n62037, 
                C0=>u_ctrl_rx_valid, D0=>u_ctrl_u_cmd_n24334, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_cmd_n62037, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_cmd_n61964, Q0=>open);
    u_ctrl_u_cmd_SLICE_435I: SLOGICB
      generic map (LUT0_INITVAL=>X"9669", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_0, 
                B1=>u_ctrl_u_cmd_bytes_3_0, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_bytes_1_0, B0=>u_ctrl_u_cmd_n60051, 
                C0=>u_ctrl_u_cmd_n60049, D0=>u_ctrl_u_cmd_bytes_6_0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n60049, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_0, Q0=>open);
    u_ctrl_u_cmd_SLICE_436I: SLOGICB
      generic map (LUT0_INITVAL=>X"E0E0", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_cmd_opcode_6, 
                B1=>u_ctrl_u_cmd_cmd_opcode_7, C1=>u_ctrl_u_cmd_cmd_opcode_3, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_2, 
                B0=>u_ctrl_n62017, C0=>u_ctrl_cmd_valid, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_n62017, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_n51538, Q0=>open);
    u_ctrl_u_cmd_SLICE_437I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n24334, 
                B1=>u_ctrl_u_cmd_n61994, C1=>u_ctrl_u_cmd_n24335, 
                D1=>u_ctrl_rx_valid, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_n24332, B0=>u_ctrl_u_cmd_n24331, 
                C0=>u_ctrl_u_cmd_n24333, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_cmd_SD_CLK_c_enable_118, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_cmd_n61994, Q0=>open);
    u_ctrl_u_cmd_SLICE_438I: SLOGICB
      generic map (LUT0_INITVAL=>X"0020", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n24332, 
                B1=>u_ctrl_u_cmd_n24331, C1=>u_ctrl_u_cmd_n24334, 
                D1=>u_ctrl_u_cmd_n24333, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_n24336, B0=>u_ctrl_u_cmd_n61974, 
                C0=>u_ctrl_rx_valid, D0=>u_ctrl_u_cmd_n24335, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_cmd_n61974, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_cmd_SD_CLK_c_enable_110, 
                Q0=>open);
    u_ctrl_u_cmd_SLICE_439I: SLOGICB
      generic map (LUT0_INITVAL=>X"2000", LUT1_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cmd_opcode_4, 
                B1=>u_ctrl_cmd_opcode_5, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_n4, B0=>u_ctrl_u_cmd_n61983, C0=>u_ctrl_cmd_valid, 
                D0=>u_ctrl_cmd_opcode_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_n4, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_SD_CLK_c_enable_94, Q0=>open);
    u_ctrl_u_cmd_SLICE_440I: SLOGICB
      generic map (LUT0_INITVAL=>X"2000", LUT1_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_cmd_valid, 
                B1=>u_ctrl_cmd_opcode_0, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_n4, B0=>u_ctrl_n62017, C0=>n58126, 
                D0=>u_ctrl_u_cmd_n60123, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n58126, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_SD_CLK_c_enable_54, Q0=>open);
    u_ctrl_u_cmd_SLICE_441I: SLOGICB
      generic map (LUT0_INITVAL=>X"9669", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_5, 
                B1=>u_ctrl_u_cmd_bytes_3_5, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_bytes_1_5, B0=>u_ctrl_u_cmd_n59857, 
                C0=>u_ctrl_u_cmd_n59855, D0=>u_ctrl_u_cmd_bytes_6_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n59855, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_5, Q0=>open);
    u_ctrl_u_cmd_SLICE_442I: SLOGICB
      generic map (LUT0_INITVAL=>X"6996", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_4, 
                B1=>u_ctrl_u_cmd_bytes_3_4, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_bytes_1_4, B0=>u_ctrl_u_cmd_n60139, 
                C0=>u_ctrl_u_cmd_n60137, D0=>u_ctrl_u_cmd_bytes_6_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n60137, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_4, Q0=>open);
    u_ctrl_u_cmd_SLICE_443I: SLOGICB
      generic map (LUT0_INITVAL=>X"6996", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_3, 
                B1=>u_ctrl_u_cmd_bytes_3_3, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_bytes_1_3, B0=>u_ctrl_u_cmd_n60131, 
                C0=>u_ctrl_u_cmd_n60129, D0=>u_ctrl_u_cmd_bytes_6_3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n60129, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_3, Q0=>open);
    u_ctrl_u_cmd_SLICE_444I: SLOGICB
      generic map (LUT0_INITVAL=>X"9669", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_2, 
                B1=>u_ctrl_u_cmd_bytes_3_2, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_bytes_1_2, B0=>u_ctrl_u_cmd_n59865, 
                C0=>u_ctrl_u_cmd_n59863, D0=>u_ctrl_u_cmd_bytes_6_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n59863, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_2, Q0=>open);
    u_ctrl_u_cmd_SLICE_445I: SLOGICB
      generic map (LUT0_INITVAL=>X"9669", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_7, 
                B1=>u_ctrl_u_cmd_bytes_3_7, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_bytes_1_7, B0=>u_ctrl_u_cmd_n59843, 
                C0=>u_ctrl_u_cmd_n59841, D0=>u_ctrl_u_cmd_bytes_6_7, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n59841, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_7, Q0=>open);
    u_ctrl_u_cmd_SLICE_446I: SLOGICB
      generic map (LUT0_INITVAL=>X"6996", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_6, 
                B1=>u_ctrl_u_cmd_bytes_3_6, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_bytes_1_6, B0=>u_ctrl_u_cmd_n60117, 
                C0=>u_ctrl_u_cmd_n60115, D0=>u_ctrl_u_cmd_bytes_6_6, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n60115, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_6, Q0=>open);
    u_ctrl_u_cmd_SLICE_447I: SLOGICB
      generic map (LUT0_INITVAL=>X"6996", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_bytes_5_1, 
                B1=>u_ctrl_u_cmd_bytes_3_1, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_cmd_bytes_1_1, B0=>u_ctrl_u_cmd_n60149, 
                C0=>u_ctrl_u_cmd_n60147, D0=>u_ctrl_u_cmd_bytes_6_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_n60147, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_chk_calc_1, Q0=>open);
    SLICE_448I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n62011, 
                B1=>u_sd_n8_adj_12157, C1=>u_sd_n59389, D1=>u_sd_n62009, 
                DI1=>'X', DI0=>'X', A0=>n31914, B0=>resp_tries_0, C0=>n61979, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n61979, Q1=>open, OFX0=>open, F0=>n56379, Q0=>open);
    u_sdram_SLICE_449I: SLOGICB
      generic map (LUT0_INITVAL=>X"FAEA", LUT1_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_wr_ready_N_2408, 
                B1=>u_sdram_refresh_req_N_2426, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sdram_n59509, B0=>u_sdram_n59501, 
                C0=>u_sdram_refresh_cnt_10, D0=>u_sdram_n16, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n28589, Q1=>open, 
                OFX0=>open, F0=>u_sdram_refresh_req_N_2426, Q0=>open);
    u_sdram_SLICE_450I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_refresh_cnt_13, 
                B1=>u_sdram_refresh_cnt_14, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sdram_refresh_cnt_15, B0=>u_sdram_n59505, 
                C0=>u_sdram_refresh_cnt_12, D0=>u_sdram_refresh_cnt_11, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sdram_n59505, Q1=>open, OFX0=>open, F0=>u_sdram_n59509, 
                Q0=>open);
    u_sd_SLICE_451I: SLOGICB
      generic map (LUT0_INITVAL=>X"8282", LUT1_INITVAL=>X"FFEF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n76, B1=>u_sd_n79, 
                C1=>u_sd_n62006, D1=>u_sd_n63084, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_st_0, C0=>u_sd_st_3, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n63, 
                Q1=>open, OFX0=>open, F0=>u_sd_n79, Q0=>open);
    u_sd_SLICE_452I: SLOGICB
      generic map (LUT0_INITVAL=>X"2B28", LUT1_INITVAL=>X"CC50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, 
                B1=>u_sd_spi_tx_4, C1=>u_sd_n8, D1=>u_sd_SD_CLK_c_enable_263, 
                DI1=>'X', DI0=>'X', A0=>u_sd_n60341, B0=>u_sd_st_2, 
                C0=>u_sd_st_3, D0=>u_sd_n291, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n60341, Q1=>open, OFX0=>open, 
                F0=>u_sd_n62346, Q0=>open);
    u_sd_SLICE_453I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"A2A2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, 
                B1=>u_sd_sck_N_10229, C1=>u_sd_half_phase, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sd_n62049, B0=>u_sd_bit_cnt_0, C0=>u_sd_n31, 
                D0=>u_sd_SD_CLK_c_enable_263, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n31, Q1=>open, OFX0=>open, 
                F0=>u_sd_SD_CLK_c_enable_266, Q0=>open);
    u_sd_SLICE_454I: SLOGICB
      generic map (LUT0_INITVAL=>X"2B28", LUT1_INITVAL=>X"CC50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, 
                B1=>u_sd_spi_tx_6, C1=>u_sd_n14_adj_12154, 
                D1=>u_sd_SD_CLK_c_enable_263, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n60339, B0=>u_sd_st_2, C0=>u_sd_st_3, D0=>u_sd_n289, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n60339, Q1=>open, OFX0=>open, F0=>u_sd_n62366, 
                Q0=>open);
    u_sd_SLICE_455I: SLOGICB
      generic map (LUT0_INITVAL=>X"FB00", LUT1_INITVAL=>X"1111")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n63084, B1=>u_sd_st_4, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_0, 
                B0=>u_sd_n63074, C0=>u_sd_n31_adj_12139, D0=>u_sd_cmd_frame_3, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n63074, Q1=>open, OFX0=>open, F0=>u_sd_n23, Q0=>open);
    u_sd_SLICE_456I: SLOGICB
      generic map (LUT0_INITVAL=>X"0008", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wr_count_4, B1=>wr_count_6, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n62031, 
                B0=>wr_count_3, C0=>wr_count_9, D0=>u_sd_n60268, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n62031, 
                Q1=>open, OFX0=>open, F0=>u_sd_n59001, Q0=>open);
    u_sd_SLICE_457I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wr_count_5, B1=>wr_count_8, 
                C1=>wr_count_0, D1=>wr_count_2, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n62031, B0=>wr_count_3, C0=>u_sd_n15, D0=>u_sd_n62030, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n15, 
                Q1=>open, OFX0=>open, F0=>n58356, Q0=>open);
    u_sd_SLICE_458I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDC", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>dummy_left_2, 
                B1=>dummy_left_1, C1=>dummy_left_0, D1=>dummy_left_4, DI1=>'X', 
                DI0=>'X', A0=>u_sd_SD_CLK_c_enable_263, B0=>u_sd_spi_tx_6, 
                C0=>n14, D0=>n13, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n13, Q1=>open, OFX0=>open, F0=>u_sd_n289, 
                Q0=>open);
    u_sd_SLICE_459I: SLOGICB
      generic map (LUT0_INITVAL=>X"6AAA", LUT1_INITVAL=>X"1010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_5, B1=>u_sd_st_4, 
                C1=>u_sd_n472, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_2, 
                B0=>u_sd_cmd_i_0, C0=>spi_done, D0=>u_sd_cmd_i_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n12, 
                Q1=>open, OFX0=>open, F0=>u_sd_n472, Q0=>open);
    u_sd_SLICE_460I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"DDDC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_SD_CLK_c_enable_263, 
                B1=>u_sd_spi_tx_2, C1=>n14, D1=>n13, DI1=>'X', DI0=>'X', 
                A0=>dummy_left_6, B0=>dummy_left_7, C0=>dummy_left_3, 
                D0=>dummy_left_5, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n293, Q1=>open, OFX0=>open, F0=>n14, 
                Q0=>open);
    u_sd_SLICE_461I: SLOGICB
      generic map (LUT0_INITVAL=>X"F7FF", LUT1_INITVAL=>X"FFCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n58836, B1=>u_sd_n58949, 
                C1=>u_sd_st_0, D1=>u_sd_n63084, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_st_1, C0=>u_sd_st_4, D0=>u_sd_st_3, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n31_adj_12160, Q1=>open, OFX0=>open, F0=>u_sd_n58949, 
                Q0=>open);
    u_sd_SLICE_462I: SLOGICB
      generic map (LUT0_INITVAL=>X"F011", LUT1_INITVAL=>X"4000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, B1=>spi_done, 
                C1=>u_sd_cmd_i_2, D1=>u_sd_cmd_i_0, DI1=>'X', DI0=>'X', 
                A0=>n13, B0=>n14, C0=>u_sd_n61982, D0=>u_sd_n62042, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n61982, 
                Q1=>open, OFX0=>open, F0=>u_sd_n58286, Q0=>open);
    u_sd_SLICE_463I: SLOGICB
      generic map (LUT0_INITVAL=>X"1010", LUT1_INITVAL=>X"46CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_0, 
                B1=>u_sd_cmd_i_1, C1=>u_sd_cmd_i_2, D1=>spi_done, DI1=>'X', 
                DI0=>'X', A0=>u_sd_st_5, B0=>u_sd_st_4, C0=>u_sd_n473, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n473, Q1=>open, OFX0=>open, F0=>u_sd_n12_adj_12140, 
                Q0=>open);
    u_sd_SLICE_464I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"FFAD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_2, 
                C1=>u_sd_st_1, D1=>u_sd_n61991, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n63084, B0=>u_sd_st_4, C0=>u_sd_st_0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n17, 
                Q1=>open, OFX0=>open, F0=>u_sd_n61991, Q0=>open);
    u_sd_SLICE_465I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFF", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_st_1, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n63084, 
                B0=>u_sd_st_4, C0=>u_sd_st_0, D0=>u_sd_n62042, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n62042, 
                Q1=>open, OFX0=>open, F0=>u_sd_n29, Q0=>open);
    u_sd_SLICE_466I: SLOGICB
      generic map (LUT0_INITVAL=>X"010E", LUT1_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n60_adj_12194, 
                B1=>u_sd_n61969, C1=>u_sd_st_4, D1=>u_sd_n50876, DI1=>'X', 
                DI0=>'X', A0=>u_sd_st_1, B0=>u_sd_st_0, C0=>u_sd_st_3, 
                D0=>u_sd_st_2, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n75_adj_12229, Q1=>open, OFX0=>open, 
                F0=>u_sd_n50876, Q0=>open);
    u_sd_SLICE_467I: SLOGICB
      generic map (LUT0_INITVAL=>X"1111", LUT1_INITVAL=>X"4000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_n63074, 
                C1=>u_sd_n62007, D1=>u_sd_st_0, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_3, B0=>u_sd_st_2, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n50935, 
                Q1=>open, OFX0=>open, F0=>u_sd_n62007, Q0=>open);
    u_sd_SLICE_468I: SLOGICB
      generic map (LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_1, 
                C1=>u_sd_n50861, D1=>resp_tries_3, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_st_0, C0=>n32_adj_12253, 
                D0=>u_sd_n63084, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n70_adj_12244, Q1=>open, OFX0=>open, 
                F0=>u_sd_n50861, Q0=>open);
    u_sd_SLICE_469I: SLOGICB
      generic map (LUT0_INITVAL=>X"0808", LUT1_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>resp_tries_1, B1=>n38, 
                C1=>u_sd_st_1, D1=>u_sd_n61997, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_st_0, C0=>u_sd_st_5, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n69_adj_12187, Q1=>open, OFX0=>open, F0=>u_sd_n61997, 
                Q0=>open);
    u_sd_SLICE_470I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8880")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n62047, B1=>u_sd_n62008, 
                C1=>u_sd_st_4, D1=>spi_done, DI1=>'X', DI0=>'X', A0=>u_sd_st_0, 
                B0=>u_sd_st_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n58930, Q1=>open, OFX0=>open, 
                F0=>u_sd_n62008, Q0=>open);
    u_sd_SLICE_471I: SLOGICB
      generic map (LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_1, 
                C1=>u_sd_n50860, D1=>resp_tries_5, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_st_0, C0=>n26, D0=>u_sd_n63084, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n70_adj_12231, Q1=>open, OFX0=>open, F0=>u_sd_n50860, 
                Q0=>open);
    u_sd_SLICE_472I: SLOGICB
      generic map (LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_1, 
                C1=>u_sd_n50857, D1=>resp_tries_6, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_st_0, C0=>n23, D0=>u_sd_st_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n70_adj_12220, Q1=>open, OFX0=>open, F0=>u_sd_n50857, 
                Q0=>open);
    u_sd_SLICE_473I: SLOGICB
      generic map (LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_1, 
                C1=>u_sd_n50863, D1=>resp_tries_7, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_st_0, C0=>n20, D0=>u_sd_st_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n70_adj_12213, Q1=>open, OFX0=>open, F0=>u_sd_n50863, 
                Q0=>open);
    u_sd_SLICE_474I: SLOGICB
      generic map (LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_1, 
                C1=>u_sd_n50859, D1=>resp_tries_4, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_st_0, C0=>n29, D0=>u_sd_st_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n70_adj_12199, Q1=>open, OFX0=>open, F0=>u_sd_n50859, 
                Q0=>open);
    u_sd_SLICE_475I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFDF", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_st_3, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_1, 
                B0=>u_sd_n62047, C0=>u_sd_n63074, D0=>u_sd_st_0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n62047, 
                Q1=>open, OFX0=>open, F0=>u_sd_n58835, Q0=>open);
    u_sd_SLICE_476I: SLOGICB
      generic map (LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"5140")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_1, 
                C1=>u_sd_n50862, D1=>resp_tries_2, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_st_0, C0=>n35, D0=>u_sd_st_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n70, 
                Q1=>open, OFX0=>open, F0=>u_sd_n50862, Q0=>open);
    u_sd_SLICE_477I: SLOGICB
      generic map (LUT0_INITVAL=>X"88F8", LUT1_INITVAL=>X"FEFC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_n62090, 
                C1=>u_sd_n59247, D1=>u_sd_n69, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_st_0, C0=>u_sd_st_3, D0=>u_sd_st_1, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n72, 
                Q1=>open, OFX0=>open, F0=>u_sd_n69, Q0=>open);
    u_sd_SLICE_478I: SLOGICB
      generic map (LUT0_INITVAL=>X"0080", LUT1_INITVAL=>X"4CCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n59145, B1=>spi_done, 
                C1=>n31914, D1=>u_sd_n8_adj_12157, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_0, B0=>u_sd_st_1, C0=>u_sd_st_4, D0=>u_sd_n28863, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n28863, Q1=>open, OFX0=>open, F0=>u_sd_n58669, 
                Q0=>open);
    u_sd_SLICE_479I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBBB", LUT1_INITVAL=>X"0200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_bit_cnt_0, B1=>u_sd_n31, 
                C1=>u_sd_n58144, D1=>u_sd_SD_CLK_c_enable_263, DI1=>'X', 
                DI0=>'X', A0=>u_sd_bit_cnt_2, B0=>u_sd_bit_cnt_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_SD_CLK_c_enable_258, Q1=>open, OFX0=>open, 
                F0=>u_sd_n58144, Q0=>open);
    u_sd_SLICE_480I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1F1", LUT1_INITVAL=>X"F400")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_n61989, 
                C1=>u_sd_n23_adj_12227, D1=>u_sd_cmd_frame_41, DI1=>'X', 
                DI0=>'X', A0=>u_sd_st_2, B0=>u_sd_st_1, C0=>u_sd_st_0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n29_adj_12212, Q1=>open, OFX0=>open, F0=>u_sd_n61989, 
                Q0=>open);
    u_sd_SLICE_481I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_rx_3, 
                B1=>u_sd_spi_rx_5, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sd_spi_rx_6, B0=>u_sd_spi_rx_4, C0=>u_sd_spi_rx_7, 
                D0=>u_sd_n62012, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n62012, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59145, Q0=>open);
    u_sd_SLICE_482I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0EE", LUT1_INITVAL=>X"7FFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n59441, B1=>n31914, 
                C1=>u_sd_n8_adj_12157, D1=>u_sd_n59177, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_0, B0=>u_sd_n59001, C0=>u_sd_n49970, D0=>u_sd_st_1, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n49970, Q1=>open, OFX0=>open, F0=>u_sd_n61947, 
                Q0=>open);
    u_sd_SLICE_483I: SLOGICB
      generic map (LUT0_INITVAL=>X"0A3A", LUT1_INITVAL=>X"B0F0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, B1=>spi_done, 
                C1=>u_sd_n62047, D1=>u_sd_n62045, DI1=>'X', DI0=>'X', 
                A0=>u_sd_n56868, B0=>u_sd_n60228, C0=>u_sd_st_4, D0=>u_sd_st_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n56868, Q1=>open, OFX0=>open, F0=>u_sd_n57018, 
                Q0=>open);
    u_sd_SLICE_484I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444", LUT1_INITVAL=>X"0040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_st_0, 
                C1=>u_sd_n61990, D1=>u_sd_n63084, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>u_sd_st_2, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n15_adj_12156, Q1=>open, OFX0=>open, F0=>u_sd_n61990, 
                Q0=>open);
    u_sd_SLICE_485I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n59207, 
                B1=>u_sd_n8_adj_12157, C1=>u_sd_n62011, D1=>u_sd_spi_rx_6, 
                DI1=>'X', DI0=>'X', A0=>u_sd_spi_rx_7, B0=>u_sd_spi_rx_3, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n54095, Q1=>open, OFX0=>open, F0=>u_sd_n62011, 
                Q0=>open);
    u_sd_SLICE_486I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n59441, B1=>u_sd_st_1, 
                C1=>u_sd_spi_rx_4, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sd_spi_rx_7, B0=>u_sd_spi_rx_3, C0=>u_sd_spi_rx_5, 
                D0=>u_sd_spi_rx_6, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n59443, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59441, Q0=>open);
    u_sd_SLICE_487I: SLOGICB
      generic map (LUT0_INITVAL=>X"7000", LUT1_INITVAL=>X"4040")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, 
                B1=>u_sd_cmd_i_2, C1=>u_sd_cmd_i_0, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sd_n62003, B0=>spi_done, C0=>resp_tries_4, 
                D0=>u_sd_n62047, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n62003, Q1=>open, OFX0=>open, 
                F0=>u_sd_n58378, Q0=>open);
    u_sd_SLICE_488I: SLOGICB
      generic map (LUT0_INITVAL=>X"A088", LUT1_INITVAL=>X"5454")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_n28863, 
                C1=>u_sd_st_2, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_1, 
                B0=>u_sd_n56868, C0=>u_sd_n30_adj_12161, D0=>u_sd_st_4, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n30_adj_12161, Q1=>open, OFX0=>open, F0=>u_sd_n11, 
                Q0=>open);
    u_sd_SLICE_489I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A", LUT1_INITVAL=>X"F1F1")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, 
                B1=>u_sd_spi_start, C1=>u_sd_spi_tx_0, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sd_n60, B0=>u_sd_n268, C0=>u_sd_st_4, 
                D0=>u_sd_n50876, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n268, Q1=>open, OFX0=>open, F0=>u_sd_n75, 
                Q0=>open);
    u_sd_SLICE_490I: SLOGICB
      generic map (LUT0_INITVAL=>X"E2E2", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n62792, B1=>u_sd_n62789, 
                C1=>u_sd_st_1, D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n60323, 
                B0=>u_sd_spi_busy, C0=>u_sd_spi_tx_7, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n62793, 
                Q1=>open, OFX0=>open, F0=>u_sd_n62789, Q0=>open);
    u_sd_SLICE_491I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"0200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_bit_cnt_0, B1=>u_sd_n31, 
                C1=>u_sd_n62049, D1=>u_sd_SD_CLK_c_enable_263, DI1=>'X', 
                DI0=>'X', A0=>u_sd_bit_cnt_1, B0=>u_sd_bit_cnt_2, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_SD_CLK_c_enable_256, Q1=>open, OFX0=>open, 
                F0=>u_sd_n62049, Q0=>open);
    u_sd_SLICE_492I: SLOGICB
      generic map (LUT0_INITVAL=>X"EA0A", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n61293, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>resp_tries_2, 
                B0=>u_sd_n61982, C0=>u_sd_st_0, D0=>u_sd_n4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n61294, Q1=>open, 
                OFX0=>open, F0=>u_sd_n61293, Q0=>open);
    u_sd_SLICE_493I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A", LUT1_INITVAL=>X"D555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_done, 
                B1=>u_sd_n8_adj_12157, C1=>n31914, D1=>u_sd_n59443, DI1=>'X', 
                DI0=>'X', A0=>u_sd_n21, B0=>u_sd_n59447, C0=>u_sd_st_0, 
                D0=>u_sd_n58179, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n58179, Q1=>open, OFX0=>open, 
                F0=>u_sd_n18, Q0=>open);
    u_sd_SLICE_494I: SLOGICB
      generic map (LUT0_INITVAL=>X"EA0A", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n61341, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>resp_tries_3, 
                B0=>u_sd_n61982, C0=>u_sd_st_0, D0=>u_sd_n4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n61342, Q1=>open, 
                OFX0=>open, F0=>u_sd_n61341, Q0=>open);
    u_sd_SLICE_495I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"8A0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_tx_0, B1=>u_sd_st_1, 
                C1=>u_sd_st_2, D1=>u_sd_SD_CLK_c_enable_263, DI1=>'X', 
                DI0=>'X', A0=>u_sd_spi_busy, B0=>u_sd_spi_start, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n60342, Q1=>open, OFX0=>open, 
                F0=>u_sd_SD_CLK_c_enable_263, Q0=>open);
    u_sd_SLICE_496I: SLOGICB
      generic map (LUT0_INITVAL=>X"1110", LUT1_INITVAL=>X"88DC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_spi_tx_3, 
                C1=>u_sd_n61967, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_spi_busy, B0=>u_sd_spi_start, C0=>n13, D0=>n14, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n60329, Q1=>open, OFX0=>open, F0=>u_sd_n61967, 
                Q0=>open);
    u_sd_SLICE_497I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1F1", LUT1_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n60_adj_12198, 
                B1=>u_sd_n61970, C1=>u_sd_st_4, D1=>u_sd_n50876, DI1=>'X', 
                DI0=>'X', A0=>u_sd_spi_busy, B0=>u_sd_spi_start, 
                C0=>u_sd_spi_tx_3, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n75_adj_12228, Q1=>open, 
                OFX0=>open, F0=>u_sd_n61970, Q0=>open);
    u_sd_SLICE_498I: SLOGICB
      generic map (LUT0_INITVAL=>X"5150", LUT1_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>resp_tries_0, B1=>n41, 
                C1=>u_sd_st_1, D1=>u_sd_n61997, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_st_3, C0=>u_sd_n73, 
                D0=>u_sd_n69_adj_12165, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n69_adj_12165, Q1=>open, OFX0=>open, 
                F0=>u_sd_n61, Q0=>open);
    u_sd_SLICE_499I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1F1", LUT1_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n62798, B1=>u_sd_n61972, 
                C1=>u_sd_st_4, D1=>u_sd_n50876, DI1=>'X', DI0=>'X', 
                A0=>u_sd_spi_busy, B0=>u_sd_spi_start, C0=>u_sd_spi_tx_7, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n75_adj_12225, Q1=>open, OFX0=>open, F0=>u_sd_n61972, 
                Q0=>open);
    u_sd_SLICE_500I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444", LUT1_INITVAL=>X"EA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>resp_tries_7, B1=>u_sd_n61982, 
                C1=>u_sd_st_0, D1=>u_sd_n4, DI1=>'X', DI0=>'X', A0=>u_sd_st_5, 
                B0=>u_sd_st_3, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n61439, Q1=>open, OFX0=>open, 
                F0=>u_sd_n4, Q0=>open);
    u_sd_SLICE_501I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1F1", LUT1_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n60_adj_12201, 
                B1=>u_sd_n61971, C1=>u_sd_st_4, D1=>u_sd_n50876, DI1=>'X', 
                DI0=>'X', A0=>u_sd_spi_busy, B0=>u_sd_spi_start, 
                C0=>u_sd_spi_tx_5, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n75_adj_12226, Q1=>open, 
                OFX0=>open, F0=>u_sd_n61971, Q0=>open);
    u_sd_SLICE_502I: SLOGICB
      generic map (LUT0_INITVAL=>X"A4A4", LUT1_INITVAL=>X"CC50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_cmd_i_1, 
                B1=>u_sd_spi_tx_2, C1=>u_sd_n8_adj_12172, 
                D1=>u_sd_SD_CLK_c_enable_263, DI1=>'X', DI0=>'X', 
                A0=>u_sd_cmd_i_0, B0=>u_sd_cmd_frame_42, C0=>u_sd_cmd_i_2, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n60337, Q1=>open, OFX0=>open, F0=>u_sd_n8_adj_12172, 
                Q0=>open);
    u_sd_SLICE_503I: SLOGICB
      generic map (LUT0_INITVAL=>X"0008", LUT1_INITVAL=>X"BBBB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_bit_cnt_1, 
                B1=>u_sd_bit_cnt_2, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sd_SD_CLK_c_enable_263, B0=>u_sd_bit_cnt_0, 
                C0=>u_sd_n58153, D0=>u_sd_n31, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n58153, Q1=>open, OFX0=>open, 
                F0=>u_sd_SD_CLK_c_enable_11, Q0=>open);
    u_sd_SLICE_504I: SLOGICB
      generic map (LUT0_INITVAL=>X"EA0A", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n61382, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>resp_tries_4, 
                B0=>u_sd_n61982, C0=>u_sd_st_0, D0=>u_sd_n4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n61383, Q1=>open, 
                OFX0=>open, F0=>u_sd_n61382, Q0=>open);
    u_sd_SLICE_505I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444", LUT1_INITVAL=>X"A0B3")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_n63074, B1=>u_sd_st_1, 
                C1=>u_sd_n61987, D1=>u_sd_cmd_frame_4, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_0, B0=>u_sd_st_2, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n24_adj_12204, Q1=>open, OFX0=>open, F0=>u_sd_n61987, 
                Q0=>open);
    u_sd_SLICE_506I: SLOGICB
      generic map (LUT0_INITVAL=>X"EA0A", LUT1_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_4, B1=>u_sd_n61421, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>resp_tries_6, 
                B0=>u_sd_n61982, C0=>u_sd_st_0, D0=>u_sd_n4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n61422, Q1=>open, 
                OFX0=>open, F0=>u_sd_n61421, Q0=>open);
    u_sd_SLICE_507I: SLOGICB
      generic map (LUT0_INITVAL=>X"0ACA", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_st_3, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n27_adj_12210, 
                B0=>u_sd_n25_adj_12211, C0=>u_sd_st_1, D0=>u_sd_n61991, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n25_adj_12211, Q1=>open, OFX0=>open, 
                F0=>u_sd_n41_adj_12209, Q0=>open);
    u_sd_SLICE_508I: SLOGICB
      generic map (LUT0_INITVAL=>X"0020", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_bit_cnt_1, 
                B1=>u_sd_bit_cnt_2, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_sd_SD_CLK_c_enable_263, B0=>u_sd_bit_cnt_0, 
                C0=>u_sd_n58252, D0=>u_sd_n31, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n58252, Q1=>open, OFX0=>open, 
                F0=>u_sd_SD_CLK_c_enable_16, Q0=>open);
    u_cam_cfg_SLICE_509I: SLOGICB
      generic map (LUT0_INITVAL=>X"1030", LUT1_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>u_cam_cfg_st_1, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_n59755, 
                B0=>u_cam_cfg_n51433, C0=>tick, D0=>u_cam_cfg_n62056, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n62056, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_SD_CLK_c_enable_252, 
                Q0=>open);
    u_cam_cfg_SLICE_510I: SLOGICB
      generic map (LUT0_INITVAL=>X"0101", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n23, 
                B1=>u_cam_cfg_n59739, C1=>u_cam_cfg_n59269, 
                D1=>u_cam_cfg_n59267, DI1=>'X', DI0=>'X', A0=>n61999, 
                B0=>u_cam_cfg_n54127, C0=>u_cam_cfg_n59749, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n54127, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_SD_CLK_c_enable_243, 
                Q0=>open);
    u_cam_cfg_SLICE_511I: SLOGICB
      generic map (LUT0_INITVAL=>X"D100", LUT1_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>u_cam_cfg_st_1, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_n62057, 
                B0=>u_cam_cfg_st_2, C0=>u_cam_cfg_n59009, D0=>u_cam_cfg_n61984, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n62057, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_SD_CLK_c_enable_244, Q0=>open);
    u_cam_cfg_SLICE_512I: SLOGICB
      generic map (LUT0_INITVAL=>X"0020", LUT1_INITVAL=>X"1030")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n59655, 
                B1=>u_cam_cfg_n51433, C1=>tick, D1=>u_cam_cfg_n61980, DI1=>'X', 
                DI0=>'X', A0=>u_cam_cfg_st_2, B0=>u_cam_cfg_st_1, 
                C0=>u_cam_cfg_n11, D0=>st_3, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_cam_cfg_SD_CLK_c_enable_251, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n51433, Q0=>open);
    u_cam_cfg_SLICE_513I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_rom_entry_1, 
                B1=>u_cam_cfg_n59263, C1=>u_cam_cfg_rom_entry_12, 
                D1=>u_cam_cfg_rom_entry_7, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_rom_entry_0, B0=>u_cam_cfg_rom_entry_2, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n59269, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n59263, Q0=>open);
    u_cam_cfg_SLICE_514I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"F0F4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_phase_1, 
                B1=>u_cam_cfg_st_2, C1=>u_cam_cfg_st_1, D1=>u_cam_cfg_n60264, 
                DI1=>'X', DI0=>'X', A0=>u_cam_cfg_sda_oe_N_417, 
                B0=>u_cam_cfg_phase_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n12, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n60264, Q0=>open);
    u_cam_cfg_SLICE_515I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_rom_entry_5, 
                B1=>u_cam_cfg_rom_entry_6, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_cam_cfg_n59725, B0=>u_cam_cfg_rom_entry_7, 
                C0=>u_cam_cfg_n59729, D0=>u_cam_cfg_rom_entry_3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n59725, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n59735, Q0=>open);
    u_cam_cfg_SLICE_516I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n62055, 
                B1=>u_cam_cfg_bitn_0, C1=>st_0, D1=>u_cam_cfg_n62054, DI1=>'X', 
                DI0=>'X', A0=>u_cam_cfg_bitn_1, B0=>u_cam_cfg_bitn_2, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n58756, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n62054, Q0=>open);
    u_cam_cfg_SLICE_517I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFDF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_0, B1=>u_cam_cfg_n62044, 
                C1=>tick, D1=>u_cam_cfg_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_st_2, B0=>st_3, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n59749, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n62044, Q0=>open);
    u_cam_cfg_SLICE_518I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n23, 
                B1=>u_cam_cfg_n59739, C1=>u_cam_cfg_n59735, 
                D1=>u_cam_cfg_n59731, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_rom_entry_2, B0=>u_cam_cfg_rom_entry_12, 
                C0=>u_cam_cfg_rom_entry_4, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n59743, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n59731, Q0=>open);
    u_cam_cfg_SLICE_519I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444", LUT1_INITVAL=>X"A022")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n61984, 
                B1=>u_cam_cfg_n62057, C1=>u_cam_cfg_n59009, D1=>u_cam_cfg_st_2, 
                DI1=>'X', DI0=>'X', A0=>st_3, B0=>tick, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_SD_CLK_c_enable_18, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n61984, Q0=>open);
    u_cam_cfg_SLICE_520I: SLOGICB
      generic map (LUT0_INITVAL=>X"CC4C", LUT1_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_rom_entry_8, 
                B1=>u_cam_cfg_rom_entry_17, C1=>u_cam_cfg_n27_adj_12136, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_n60236, B0=>st_0, 
                C0=>u_cam_cfg_n60318, D0=>u_cam_cfg_n59305, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n60236, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n54085, Q0=>open);
    u_cam_cfg_SLICE_521I: SLOGICB
      generic map (LUT0_INITVAL=>X"A022", LUT1_INITVAL=>X"4000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_phase_0, 
                B1=>u_cam_cfg_n62038, C1=>st_0, D1=>u_cam_cfg_phase_1, 
                DI1=>'X', DI0=>'X', A0=>tick, B0=>u_cam_cfg_n58905, 
                C0=>u_cam_cfg_n50736, D0=>st_3, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n58905, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_SD_CLK_c_enable_8, Q0=>open);
    u_cam_cfg_SLICE_522I: SLOGICB
      generic map (LUT0_INITVAL=>X"7070", LUT1_INITVAL=>X"A022")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_n61984, 
                B1=>u_cam_cfg_n62057, C1=>u_cam_cfg_n20, D1=>u_cam_cfg_st_2, 
                DI1=>'X', DI0=>'X', A0=>u_cam_cfg_byte_idx_1, 
                B0=>u_cam_cfg_byte_idx_0, C0=>u_cam_cfg_n50498, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_SD_CLK_c_enable_245, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n20, Q0=>open);
    u_cam_cfg_SLICE_523I: SLOGICB
      generic map (LUT0_INITVAL=>X"1030", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_1, 
                B1=>u_cam_cfg_st_2, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>st_0, B0=>n62058, C0=>tick, D0=>st_3, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n62058, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_SD_CLK_c_enable_250, Q0=>open);
    u_cam_cfg_SLICE_524I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_rom_entry_22, 
                B1=>u_cam_cfg_rom_entry_9, C1=>u_cam_cfg_rom_entry_11, 
                D1=>u_cam_cfg_rom_entry_20, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_n29_adj_12135, B0=>u_cam_cfg_n27_adj_12136, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n27_adj_12136, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n59739, Q0=>open);
    u_cam_cfg_SLICE_525I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_rom_entry_13, 
                B1=>u_cam_cfg_n59285, C1=>u_cam_cfg_n59283, 
                D1=>u_cam_cfg_rom_entry_19, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_n60300, B0=>u_cam_cfg_n29_adj_12135, 
                C0=>u_cam_cfg_rom_entry_5, D0=>u_cam_cfg_rom_entry_3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n29_adj_12135, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n60318, Q0=>open);
    u_sd_SLICE_526I: SLOGICB
      generic map (LUT0_INITVAL=>X"F7AD", LUT1_INITVAL=>X"4110")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_1, B1=>u_sd_st_0, 
                C1=>u_sd_st_2, D1=>u_sd_st_3, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_st_3, C0=>u_sd_st_1, D0=>u_sd_st_0, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n60047, Q1=>open, OFX0=>open, F0=>u_sd_n62427, 
                Q0=>open);
    u_sd_SLICE_527I: SLOGICB
      generic map (LUT0_INITVAL=>X"001F", LUT1_INITVAL=>X"1812")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_st_0, 
                C1=>u_sd_st_1, D1=>u_sd_st_3, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_1, B0=>u_sd_st_0, C0=>u_sd_st_2, D0=>u_sd_st_3, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n20_adj_12151, Q1=>open, OFX0=>open, 
                F0=>u_sd_n12_adj_12146, Q0=>open);
    u_sd_SLICE_528I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFF", LUT1_INITVAL=>X"50E0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_1, 
                C1=>u_sd_n63074, D1=>u_sd_st_2, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_3, B0=>u_sd_st_2, C0=>u_sd_st_1, D0=>u_sd_n63074, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n50851, Q1=>open, OFX0=>open, F0=>u_sd_n13, Q0=>open);
    u_sd_SLICE_529I: SLOGICB
      generic map (LUT0_INITVAL=>X"1110", LUT1_INITVAL=>X"FEFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_1, 
                C1=>u_sd_st_2, D1=>u_sd_st_4, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_st_3, C0=>u_sd_st_1, D0=>u_sd_st_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n58836, Q1=>open, OFX0=>open, F0=>u_sd_n62002, 
                Q0=>open);
    u_cam_cfg_SLICE_530I: SLOGICB
      generic map (LUT0_INITVAL=>X"00D0", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>st_3, B1=>tick, 
                C1=>u_cam_cfg_st_2, D1=>u_cam_cfg_n62057, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_n62057, B0=>u_cam_cfg_st_2, C0=>tick, D0=>st_3, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n55733, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_SD_CLK_c_enable_219, Q0=>open);
    u_ctrl_u_regs_SLICE_531I: SLOGICB
      generic map (LUT0_INITVAL=>X"0288", LUT1_INITVAL=>X"0288")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_n62021, 
                B1=>u_ctrl_cmd_opcode_0, C1=>u_ctrl_u_regs_frame_stride_0, 
                D1=>u_ctrl_cmd_opcode_5, DI1=>'X', DI0=>'X', A0=>u_ctrl_n62021, 
                B0=>u_ctrl_cmd_opcode_0, C0=>u_ctrl_u_regs_frame_stride_2, 
                D0=>u_ctrl_cmd_opcode_5, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_regs_n14, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_regs_n14_adj_12250, Q0=>open);
    u_ctrl_SLICE_532I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"1010", 
                   LUT1_INITVAL=>X"FDFD", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cmd_opcode_4, 
                B1=>u_ctrl_cmd_opcode_2, C1=>u_ctrl_cmd_opcode_5, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_2, 
                B0=>u_ctrl_cmd_opcode_5, C0=>cmd_opcode_4, D0=>'X', 
                M0=>u_ctrl_u_cmd_bytes_1_4, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_cmd_n60908, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_regs_n58023, Q0=>cmd_opcode_4);
    u_ctrl_u_cmd_SLICE_533I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFB", LUT1_INITVAL=>X"FFFB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_n62014, 
                B1=>u_ctrl_cmd_opcode_5, C1=>u_ctrl_frame_stride_5, 
                D1=>u_ctrl_cmd_opcode_2, DI1=>'X', DI0=>'X', A0=>u_ctrl_n62014, 
                B0=>u_ctrl_cmd_opcode_5, C0=>u_ctrl_frame_stride_6, 
                D0=>u_ctrl_cmd_opcode_2, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_n58158, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n58157, Q0=>open);
    u_ctrl_u_cmd_SLICE_534I: SLOGICB
      generic map (LUT0_INITVAL=>X"EFEF", LUT1_INITVAL=>X"FEF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_cmd_opcode_0, 
                B1=>u_ctrl_cmd_opcode_1, C1=>u_ctrl_cmd_opcode_5, 
                D1=>u_ctrl_cmd_opcode_2, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_cmd_opcode_0, B0=>u_ctrl_cmd_opcode_1, 
                C0=>u_ctrl_cmd_opcode_5, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_n168, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n61996, Q0=>open);
    u_ctrl_u_cmd_SLICE_535I: SLOGICB
      generic map (LUT0_INITVAL=>X"0808", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n24332, 
                B1=>u_ctrl_u_cmd_n24331, C1=>u_ctrl_u_cmd_n24333, 
                D1=>u_ctrl_rx_valid, DI1=>'X', DI0=>'X', A0=>u_ctrl_rx_valid, 
                B0=>u_ctrl_u_cmd_n24332, C0=>u_ctrl_u_cmd_n24331, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_SD_CLK_c_enable_134, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_SD_CLK_c_enable_142, Q0=>open);
    u_sd_SLICE_536I: SLOGICB
      generic map (LUT0_INITVAL=>X"1555", LUT1_INITVAL=>X"0E48")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_0, B1=>u_sd_st_4, 
                C1=>u_sd_st_2, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_4, B0=>u_sd_st_1, C0=>u_sd_st_0, D0=>spi_done, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n45_adj_12153, Q1=>open, OFX0=>open, F0=>u_sd_n63078, 
                Q0=>open);
    u_sd_SLICE_537I: SLOGICB
      generic map (LUT0_INITVAL=>X"6E44", LUT1_INITVAL=>X"DAFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_st_1, 
                C1=>u_sd_st_0, D1=>u_sd_n63074, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_st_1, C0=>spi_done, D0=>u_sd_st_0, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_sd_n27_adj_12203, Q1=>open, OFX0=>open, F0=>u_sd_n84, 
                Q0=>open);
    u_sd_SLICE_538I: SLOGICB
      generic map (LUT0_INITVAL=>X"A1A1", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>u_sd_st_2, 
                C1=>u_sd_n61991, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_st_2, B0=>u_sd_st_1, C0=>u_sd_st_3, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n50392, 
                Q1=>open, OFX0=>open, F0=>u_sd_n31_adj_12139, Q0=>open);
    u_sd_SLICE_539I: SLOGICB
      generic map (LUT0_INITVAL=>X"8880", LUT1_INITVAL=>X"0054")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>resp_tries_7, 
                C1=>spi_done, D1=>u_sd_st_2, DI1=>'X', DI0=>'X', A0=>u_sd_st_2, 
                B0=>u_sd_st_3, C0=>u_sd_n61982, D0=>resp_tries_7, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n61890, 
                Q1=>open, OFX0=>open, F0=>u_sd_n61891, Q0=>open);
    u_sd_SLICE_540I: SLOGICB
      generic map (LUT0_INITVAL=>X"8880", LUT1_INITVAL=>X"0054")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>resp_tries_6, 
                C1=>spi_done, D1=>u_sd_st_2, DI1=>'X', DI0=>'X', A0=>u_sd_st_2, 
                B0=>u_sd_st_3, C0=>u_sd_n61982, D0=>resp_tries_6, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n61899, 
                Q1=>open, OFX0=>open, F0=>u_sd_n61900, Q0=>open);
    u_sd_SLICE_541I: SLOGICB
      generic map (LUT0_INITVAL=>X"8880", LUT1_INITVAL=>X"0054")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_3, B1=>resp_tries_3, 
                C1=>spi_done, D1=>u_sd_st_2, DI1=>'X', DI0=>'X', A0=>u_sd_st_2, 
                B0=>u_sd_st_3, C0=>resp_tries_3, D0=>u_sd_n61982, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n60915, 
                Q1=>open, OFX0=>open, F0=>u_sd_n61876, Q0=>open);
    u_sd_SLICE_542I: SLOGICB
      generic map (LUT0_INITVAL=>X"E444", LUT1_INITVAL=>X"7F7F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, 
                B1=>u_sd_sck_N_10229, C1=>u_sd_half_phase, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sd_spi_busy, B0=>u_sd_spi_start, 
                C0=>u_sd_half_phase, D0=>u_sd_sck_N_10229, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n61961, Q1=>open, 
                OFX0=>open, F0=>u_sd_SD_CLK_c_enable_12, Q0=>open);
    u_sd_SLICE_543I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1E0", LUT1_INITVAL=>X"F1F1")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, 
                B1=>u_sd_spi_start, C1=>u_sd_spi_tx_1, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sd_spi_busy, B0=>u_sd_spi_start, 
                C0=>u_sd_spi_tx_1, D0=>u_sd_n60334, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n61969, Q1=>open, OFX0=>open, 
                F0=>u_sd_n427, Q0=>open);
    u_sd_SLICE_544I: SLOGICB
      generic map (LUT0_INITVAL=>X"0004", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_done, B1=>resp_tries_4, 
                C1=>u_sd_st_2, D1=>u_sd_st_3, DI1=>'X', DI0=>'X', A0=>spi_done, 
                B0=>resp_tries_2, C0=>u_sd_st_2, D0=>u_sd_st_3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n58696, 
                Q1=>open, OFX0=>open, F0=>u_sd_n58695, Q0=>open);
    u_sd_SLICE_545I: SLOGICB
      generic map (LUT0_INITVAL=>X"CF40", LUT1_INITVAL=>X"88DC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_spi_tx_5, 
                C1=>u_sd_n61967, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_SD_CLK_c_enable_263, B0=>u_sd_st_1, C0=>u_sd_st_2, 
                D0=>u_sd_spi_tx_5, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n60327, Q1=>open, OFX0=>open, 
                F0=>u_sd_n60326, Q0=>open);
    u_sd_SLICE_546I: SLOGICB
      generic map (LUT0_INITVAL=>X"5140", LUT1_INITVAL=>X"CF40")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_SD_CLK_c_enable_263, 
                B1=>u_sd_st_1, C1=>u_sd_st_2, D1=>u_sd_spi_tx_3, DI1=>'X', 
                DI0=>'X', A0=>u_sd_SD_CLK_c_enable_263, B0=>u_sd_st_2, 
                C0=>u_sd_st_1, D0=>u_sd_st_0, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n60328, Q1=>open, OFX0=>open, 
                F0=>u_sd_n40, Q0=>open);
    u_sd_SLICE_547I: SLOGICB
      generic map (LUT0_INITVAL=>X"CF40", LUT1_INITVAL=>X"88DC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_st_2, B1=>u_sd_spi_tx_1, 
                C1=>u_sd_n61967, D1=>u_sd_st_1, DI1=>'X', DI0=>'X', 
                A0=>u_sd_SD_CLK_c_enable_263, B0=>u_sd_st_1, C0=>u_sd_st_2, 
                D0=>u_sd_spi_tx_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_sd_n60325, Q1=>open, OFX0=>open, 
                F0=>u_sd_n60324, Q0=>open);
    u_sd_SLICE_548I: SLOGICB
      generic map (LUT0_INITVAL=>X"0002", LUT1_INITVAL=>X"0002")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_SD_CLK_c_enable_263, 
                B1=>u_sd_n31, C1=>u_sd_n58153, D1=>u_sd_bit_cnt_0, DI1=>'X', 
                DI0=>'X', A0=>u_sd_SD_CLK_c_enable_263, B0=>u_sd_bit_cnt_0, 
                C0=>u_sd_n58144, D0=>u_sd_n31, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_SD_CLK_c_enable_10, Q1=>open, 
                OFX0=>open, F0=>u_sd_SD_CLK_c_enable_261, Q0=>open);
    u_cam_cfg_SLICE_549I: SLOGICB
      generic map (LUT0_INITVAL=>X"0202", LUT1_INITVAL=>X"0100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_1, 
                B1=>u_cam_cfg_st_2, C1=>st_0, D1=>tick, DI1=>'X', DI0=>'X', 
                A0=>st_0, B0=>u_cam_cfg_st_1, C0=>u_cam_cfg_st_2, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n51503, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n50736, Q0=>open);
    u_cam_cfg_SLICE_550I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"1010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_st_1, 
                B1=>u_cam_cfg_st_2, C1=>st_0, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_st_1, B0=>u_cam_cfg_st_2, C0=>st_0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n61980, Q1=>open, OFX0=>open, F0=>n54018, 
                Q0=>open);
    u_cam_cfg_SLICE_551I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_rom_entry_10, 
                B1=>u_cam_cfg_rom_entry_21, C1=>u_cam_cfg_rom_entry_16, 
                D1=>u_cam_cfg_rom_entry_15, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_rom_entry_18, B0=>u_cam_cfg_rom_entry_23, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n59285, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n59283, Q0=>open);
    u_cam_cfg_SLICE_552I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_divc_6, 
                B1=>u_cam_cfg_divc_5, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_divc_3, B0=>u_cam_cfg_divc_7, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n60169, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n60242, Q0=>open);
    u_sdram_SLICE_553I: SLOGICB
      generic map (LUT0_INITVAL=>X"C8C0", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sdram_refresh_cnt_9, 
                B1=>u_sdram_refresh_cnt_8, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sdram_refresh_cnt_4, B0=>u_sdram_refresh_cnt_7, 
                C0=>u_sdram_refresh_cnt_6, D0=>u_sdram_refresh_cnt_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sdram_n59501, 
                Q1=>open, OFX0=>open, F0=>u_sdram_n16, Q0=>open);
    u_sd_SLICE_554I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_done, B1=>u_sd_spi_rx_5, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_rx_1, 
                B0=>u_sd_spi_rx_2, C0=>u_sd_spi_rx_0, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n59389, 
                Q1=>open, OFX0=>open, F0=>u_sd_n8_adj_12157, Q0=>open);
    u_cam_cfg_SLICE_555I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_rom_entry_3, 
                B1=>u_cam_cfg_rom_entry_5, C1=>u_cam_cfg_rom_entry_6, 
                D1=>u_cam_cfg_rom_entry_4, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_rom_entry_8, B0=>u_cam_cfg_rom_entry_17, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n59267, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n23, 
                Q0=>open);
    u_sd_SLICE_556I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"7F7F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>wr_count_7, B1=>wr_count_1, 
                C1=>u_sd_n15, D1=>'X', DI1=>'X', DI0=>'X', A0=>wr_count_7, 
                B0=>wr_count_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n60268, Q1=>open, OFX0=>open, 
                F0=>u_sd_n62030, Q0=>open);
    u_ctrl_u_regs_SLICE_557I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_cmd_arg_7, 
                B1=>u_ctrl_cmd_arg_5, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_cmd_arg_2, B0=>u_ctrl_cmd_arg_3, 
                C0=>u_ctrl_cmd_arg_4, D0=>u_ctrl_cmd_arg_6, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_ctrl_u_regs_n59579, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_regs_n59587, Q0=>open);
    u_sd_SLICE_558I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"DDDC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_SD_CLK_c_enable_263, 
                B1=>u_sd_spi_tx_4, C1=>n14, D1=>n13, DI1=>'X', DI0=>'X', 
                A0=>n13, B0=>n14, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_sd_n291, Q1=>open, OFX0=>open, 
                F0=>u_sd_n63070, Q0=>open);
    u_ctrl_u_cmd_SLICE_559I: SLOGICB
      generic map (LUT0_INITVAL=>X"0400", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_cmd_n24333, 
                B1=>u_ctrl_u_cmd_n62037, C1=>u_ctrl_u_cmd_n24334, 
                D1=>u_ctrl_rx_valid, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_cmd_n24336, B0=>u_ctrl_u_cmd_n61964, 
                C0=>u_ctrl_u_cmd_n24335, D0=>u_ctrl_u_cmd_n24337, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_cmd_SD_CLK_c_enable_126, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_SD_CLK_c_enable_102, Q0=>open);
    u_cam_cfg_SLICE_560I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"BFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n61999, 
                B1=>u_cam_cfg_rom_entry_0, C1=>u_cam_cfg_rom_entry_12, 
                D1=>u_cam_cfg_rom_entry_4, DI1=>'X', DI0=>'X', 
                A0=>post_delay_4, B0=>post_delay_6, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_cam_cfg_n59305, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n59319, Q0=>open);
    u_ctrl_u_tx_SLICE_561I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_tx_clk_cnt_4, 
                B1=>u_ctrl_u_tx_clk_cnt_11, C1=>u_ctrl_u_tx_clk_cnt_13, 
                D1=>u_ctrl_u_tx_clk_cnt_14, DI1=>'X', DI0=>'X', 
                A0=>u_ctrl_u_tx_clk_cnt_3, B0=>u_ctrl_u_tx_clk_cnt_0, 
                C0=>u_ctrl_u_tx_clk_cnt_4, D0=>u_ctrl_u_tx_clk_cnt_15, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_ctrl_u_tx_n60284, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_tx_n59691, Q0=>open);
    u_cam_cfg_SLICE_562I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"F046")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_phase_1, 
                B1=>u_cam_cfg_phase_0, C1=>st_0, D1=>u_cam_cfg_st_1, DI1=>'X', 
                DI0=>'X', A0=>u_cam_cfg_byte_idx_1, B0=>u_cam_cfg_byte_idx_0, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_cam_cfg_n61458, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n62023, Q0=>open);
    u_cam_cfg_SLICE_563I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_cam_cfg_rom_entry_6, 
                B1=>u_cam_cfg_rom_entry_7, C1=>u_cam_cfg_rom_entry_1, 
                D1=>u_cam_cfg_rom_entry_2, DI1=>'X', DI0=>'X', 
                A0=>u_cam_cfg_rom_entry_1, B0=>u_cam_cfg_rom_entry_0, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>u_cam_cfg_n60300, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n59729, Q0=>open);
    u_sd_SLICE_564I: SLOGICB
      generic map (LUT0_INITVAL=>X"2000", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_sd_spi_busy, 
                B1=>u_sd_spi_start, C1=>u_sd_sck_N_10229, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_sd_SD_CLK_c_enable_263, B0=>u_sd_n31, 
                C0=>u_sd_n58252, D0=>u_sd_bit_cnt_0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>u_sd_n36876, Q1=>open, 
                OFX0=>open, F0=>u_sd_SD_CLK_c_enable_17, Q0=>open);
    SLICE_565I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC", LUT1_INITVAL=>X"ACAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n31914, B1=>resp_tries_4, 
                C1=>n61979, D1=>'X', DI1=>'X', DI0=>'X', A0=>n31914, 
                B0=>resp_tries_1, C0=>n61979, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n56371, Q1=>open, 
                OFX0=>open, F0=>n56377, Q0=>open);
    u_ctrl_u_rx_SLICE_566I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_6, 
                B1=>u_ctrl_u_rx_clk_cnt_3, C1=>u_ctrl_u_rx_bit_idx_0, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_n62026, 
                B0=>u_ctrl_u_rx_n62025, C0=>u_ctrl_u_rx_bit_idx_1, 
                D0=>u_ctrl_u_rx_bit_idx_2, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>u_ctrl_u_rx_n59971, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_rx_n60035, Q0=>open);
    u_ctrl_u_rx_SLICE_567I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>u_ctrl_u_rx_clk_cnt_3, 
                B1=>u_ctrl_u_rx_clk_cnt_7, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>u_ctrl_u_rx_n24196, B0=>u_ctrl_u_rx_n24195, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>u_ctrl_u_rx_n59537, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n60194, Q0=>open);
    u_ctrl_SLICE_568I: SLOGICB
      generic map (LUT0_INITVAL=>X"2020")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_tx_pkt_valid, 
                B0=>u_ctrl_tx_busy, C0=>u_ctrl_n24558, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_SD_CLK_c_enable_47, Q0=>open);
    u_ctrl_u_rx_SLICE_569I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_bit_idx_1, 
                B0=>u_ctrl_u_rx_bit_idx_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n62010, Q0=>open);
    u_ctrl_u_rx_SLICE_570I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_bit_idx_0, 
                B0=>u_ctrl_u_rx_bit_idx_2, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n62020, Q0=>open);
    u_ctrl_u_rx_SLICE_571I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_bit_idx_1, 
                B0=>u_ctrl_u_rx_n12, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n59977, Q0=>open);
    u_ctrl_u_rx_SLICE_572I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_clk_cnt_3, 
                B0=>u_ctrl_u_rx_clk_cnt_6, C0=>u_ctrl_u_rx_clk_cnt_13, 
                D0=>u_ctrl_u_rx_clk_cnt_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n59485, Q0=>open);
    u_ctrl_u_rx_SLICE_573I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_rx_clk_cnt_6, 
                B0=>u_ctrl_u_rx_clk_cnt_10, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_rx_n9, Q0=>open);
    u_ctrl_u_regs_SLICE_574I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cmd_opcode_4, 
                B0=>u_ctrl_u_regs_frame_stride_3, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_regs_n59571, Q0=>open);
    u_ctrl_u_regs_SLICE_575I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBBB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_0, 
                B0=>u_ctrl_cmd_arg_6, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_regs_n20, Q0=>open);
    u_ctrl_u_regs_SLICE_576I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_2, 
                B0=>u_ctrl_u_regs_frame_stride_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_ctrl_u_regs_n59577, Q0=>open);
    u_ctrl_u_regs_SLICE_577I: SLOGICB
      generic map (LUT0_INITVAL=>X"6262")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_0, 
                B0=>u_ctrl_cmd_opcode_5, C0=>u_ctrl_u_regs_frame_stride_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_u_regs_n18, 
                Q0=>open);
    u_ctrl_u_cmd_SLICE_578I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_rx_data_4, 
                B0=>u_ctrl_rx_data_6, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n60105, Q0=>open);
    u_ctrl_u_cmd_SLICE_579I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_2_0, 
                B0=>u_ctrl_u_cmd_bytes_4_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n60051, Q0=>open);
    u_ctrl_u_cmd_SLICE_580I: SLOGICB
      generic map (LUT0_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_1, 
                B0=>u_ctrl_cmd_opcode_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_n160, Q0=>open);
    u_ctrl_u_cmd_SLICE_581I: SLOGICB
      generic map (LUT0_INITVAL=>X"E0E0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_0, 
                B0=>u_ctrl_cmd_opcode_1, C0=>u_ctrl_cmd_opcode_2, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_n62000, Q0=>open);
    u_ctrl_u_cmd_SLICE_582I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFFE", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_cmd_opcode_6, 
                B0=>u_ctrl_u_cmd_cmd_opcode_7, C0=>u_ctrl_u_cmd_cmd_opcode_3, 
                D0=>u_ctrl_cmd_opcode_2, M0=>u_ctrl_u_cmd_bytes_1_7, 
                CE=>u_ctrl_u_cmd_SD_CLK_c_enable_163, CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n61998, 
                Q0=>u_ctrl_u_cmd_cmd_opcode_7);
    u_ctrl_u_cmd_SLICE_583I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_n24331, 
                B0=>u_ctrl_rx_valid, C0=>u_ctrl_u_cmd_cmd_valid_N_765, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_cmd_SD_CLK_c_enable_163, 
                Q0=>open);
    u_ctrl_u_cmd_SLICE_584I: SLOGICB
      generic map (LUT0_INITVAL=>X"01FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_5, 
                B0=>u_ctrl_cmd_opcode_2, C0=>u_ctrl_cmd_arg_5, 
                D0=>u_ctrl_n58202, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_ctrl_n16, 
                Q0=>open);
    u_ctrl_u_cmd_SLICE_585I: SLOGICB
      generic map (LUT0_INITVAL=>X"0001")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_1, 
                B0=>u_ctrl_cmd_opcode_2, C0=>u_ctrl_cmd_opcode_5, 
                D0=>u_ctrl_n62017, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_SD_CLK_c_enable_164, Q0=>open);
    u_ctrl_u_cmd_SLICE_586I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_cmd_opcode_2, 
                B0=>u_ctrl_cmd_opcode_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n60123, Q0=>open);
    u_ctrl_u_cmd_SLICE_587I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEC5")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cmd_opcode_4, 
                B0=>u_ctrl_cmd_opcode_2, C0=>u_ctrl_cmd_opcode_0, 
                D0=>u_ctrl_cmd_opcode_5, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n60909, Q0=>open);
    u_ctrl_u_cmd_SLICE_588I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_2_5, 
                B0=>u_ctrl_u_cmd_bytes_4_5, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n59857, Q0=>open);
    u_ctrl_u_cmd_SLICE_589I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_2_4, 
                B0=>u_ctrl_u_cmd_bytes_4_4, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n60139, Q0=>open);
    u_ctrl_u_cmd_SLICE_590I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_2_3, 
                B0=>u_ctrl_u_cmd_bytes_4_3, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n60131, Q0=>open);
    u_ctrl_u_cmd_SLICE_591I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_2_2, 
                B0=>u_ctrl_u_cmd_bytes_4_2, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n59865, Q0=>open);
    u_ctrl_u_cmd_SLICE_592I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_2_7, 
                B0=>u_ctrl_u_cmd_bytes_4_7, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n59843, Q0=>open);
    u_ctrl_u_cmd_SLICE_593I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_2_6, 
                B0=>u_ctrl_u_cmd_bytes_4_6, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n60117, Q0=>open);
    u_ctrl_u_cmd_SLICE_594I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_cmd_bytes_2_1, 
                B0=>u_ctrl_u_cmd_bytes_4_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_cmd_n60149, Q0=>open);
    u_ctrl_SLICE_595I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"2222", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_ack_valid, 
                B0=>u_ctrl_u_ack_sending, C0=>'X', D0=>'X', 
                M0=>u_ctrl_cmd_valid, CE=>'X', CLK=>SD_CLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_SD_CLK_c_enable_86, Q0=>u_ctrl_ack_valid);
    u_ctrl_u_ack_SLICE_596I: SLOGICB
      generic map (LUT0_INITVAL=>X"C088")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_2_3, 
                B0=>u_ctrl_u_ack_idx_1, C0=>u_ctrl_u_ack_pkt_3_3, 
                D0=>u_ctrl_u_ack_idx_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n3, Q0=>open);
    u_ctrl_u_ack_SLICE_597I: SLOGICB
      generic map (LUT0_INITVAL=>X"D800")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_idx_2, 
                B0=>u_ctrl_u_ack_pkt_7_2, C0=>u_ctrl_u_ack_pkt_3_2, 
                D0=>u_ctrl_u_ack_idx_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n61729, Q0=>open);
    u_ctrl_u_ack_SLICE_598I: SLOGICB
      generic map (LUT0_INITVAL=>X"C088")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_2_6, 
                B0=>u_ctrl_u_ack_idx_1, C0=>u_ctrl_u_ack_pkt_3_6, 
                D0=>u_ctrl_u_ack_idx_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n3_adj_12246, Q0=>open);
    u_ctrl_u_ack_SLICE_599I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_6_6, 
                B0=>u_ctrl_u_ack_pkt_7_6, C0=>u_ctrl_u_ack_idx_0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_ack_n60356, Q0=>open);
    u_ctrl_u_ack_SLICE_600I: SLOGICB
      generic map (LUT0_INITVAL=>X"C088")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_2_4, 
                B0=>u_ctrl_u_ack_idx_1, C0=>u_ctrl_u_ack_pkt_3_4, 
                D0=>u_ctrl_u_ack_idx_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n3_adj_12247, Q0=>open);
    u_ctrl_u_ack_SLICE_601I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_6_4, 
                B0=>u_ctrl_u_ack_pkt_7_4, C0=>u_ctrl_u_ack_idx_0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_ack_n60353, Q0=>open);
    u_ctrl_u_ack_SLICE_602I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_ack_value_31, 
                B0=>u_ctrl_ack_type_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n58176, Q0=>open);
    u_ctrl_u_ack_SLICE_603I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_ack_value_9, 
                B0=>u_ctrl_ack_seq_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n6_adj_12248, Q0=>open);
    u_ctrl_u_ack_SLICE_604I: SLOGICB
      generic map (LUT0_INITVAL=>X"D855")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_idx_2, 
                B0=>u_ctrl_u_ack_pkt_6_1, C0=>u_ctrl_u_ack_pkt_2_1, 
                D0=>u_ctrl_u_ack_idx_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n61655, Q0=>open);
    u_ctrl_u_ack_SLICE_605I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_6_3, 
                B0=>u_ctrl_u_ack_pkt_7_3, C0=>u_ctrl_u_ack_idx_0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_ctrl_u_ack_n60350, Q0=>open);
    u_ctrl_u_ack_SLICE_606I: SLOGICB
      generic map (LUT0_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_ack_seq_0, 
                B0=>u_ctrl_ack_value_30, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n4, Q0=>open);
    u_ctrl_u_ack_SLICE_607I: SLOGICB
      generic map (LUT0_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_pkt_2_7, 
                B0=>u_ctrl_u_ack_idx_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n2, Q0=>open);
    u_ctrl_u_ack_SLICE_608I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_idx_2, 
                B0=>u_ctrl_u_ack_idx_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n60478, Q0=>open);
    u_ctrl_u_ack_SLICE_609I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_ctrl_u_ack_idx_2, 
                B0=>u_ctrl_u_ack_idx_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_ctrl_u_ack_n60473, Q0=>open);
    SLICE_610I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>post_delay_0, 
                B0=>post_delay_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n59339, Q0=>open);
    SLICE_611I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>post_delay_3, 
                B0=>post_delay_4, C0=>post_delay_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n59627, Q0=>open);
    SLICE_612I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>post_delay_1, 
                B0=>post_delay_2, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n62013, Q0=>open);
    SLICE_613I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>post_delay_1, 
                B0=>post_delay_2, C0=>post_delay_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n59497, Q0=>open);
    SLICE_614I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>post_delay_2, 
                B0=>post_delay_3, C0=>post_delay_5, D0=>post_delay_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>n59637, Q0=>open);
    SLICE_615I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n31914, B0=>resp_tries_3, 
                C0=>n61979, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n56373, 
                Q0=>open);
    SLICE_616I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n31914, B0=>resp_tries_6, 
                C0=>n61979, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n56367, 
                Q0=>open);
    SLICE_617I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n31914, B0=>resp_tries_7, 
                C0=>n61979, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n56365, 
                Q0=>open);
    SLICE_618I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n31914, B0=>resp_tries_5, 
                C0=>n61979, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n56369, 
                Q0=>open);
    SLICE_619I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>post_delay_5, 
                B0=>post_delay_0, C0=>post_delay_6, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n59647, Q0=>open);
    u_sd_SLICE_620I: SLOGICB
      generic map (LUT0_INITVAL=>X"E0E0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_3, B0=>u_sd_st_2, 
                C0=>u_sd_st_4, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n76, 
                Q0=>open);
    u_sd_SLICE_621I: SLOGICB
      generic map (LUT0_INITVAL=>X"B391")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_0, 
                B0=>u_sd_cmd_i_2, C0=>u_sd_cmd_frame_6, D0=>u_sd_cmd_frame_38, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_sd_n14_adj_12154, Q0=>open);
    u_sd_SLICE_622I: SLOGICB
      generic map (LUT0_INITVAL=>X"9180")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_0, 
                B0=>u_sd_cmd_i_2, C0=>u_sd_cmd_frame_4, D0=>u_sd_cmd_frame_44, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_sd_n8, Q0=>open);
    u_sd_SLICE_623I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_div_val_2, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_sck_N_10230_3, Q0=>open);
    u_sd_SLICE_624I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_rx_6, 
                B0=>u_sd_spi_rx_4, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n62009, Q0=>open);
    u_sd_SLICE_625I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF1")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_2, B0=>u_sd_st_1, 
                C0=>u_sd_st_4, D0=>u_sd_n63084, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n58162, Q0=>open);
    u_sd_SLICE_626I: SLOGICB
      generic map (LUT0_INITVAL=>X"1111")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_4, B0=>u_sd_st_3, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n62043, 
                Q0=>open);
    u_sd_SLICE_627I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_3, B0=>spi_done, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n60228, 
                Q0=>open);
    u_sd_SLICE_628I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_0, 
                B0=>u_sd_cmd_i_2, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n62045, Q0=>open);
    u_sd_SLICE_629I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_rx_3, 
                B0=>u_sd_spi_rx_5, C0=>u_sd_spi_rx_6, D0=>u_sd_spi_rx_7, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>n58397, Q0=>open);
    u_sd_SLICE_630I: SLOGICB
      generic map (LUT0_INITVAL=>X"7000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n62003, B0=>spi_done, 
                C0=>resp_tries_2, D0=>u_sd_n62047, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n58377, Q0=>open);
    u_sd_SLICE_631I: SLOGICB
      generic map (LUT0_INITVAL=>X"ECEC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_4, B0=>u_sd_n63084, 
                C0=>u_sd_st_3, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n59247, 
                Q0=>open);
    u_sd_SLICE_632I: SLOGICB
      generic map (LUT0_INITVAL=>X"E200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n60323, 
                B0=>u_sd_spi_busy, C0=>u_sd_spi_tx_7, D0=>u_sd_st_3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n62795, Q0=>open);
    u_sd_SLICE_633I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, 
                B0=>u_sd_spi_start, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n36895, Q0=>open);
    u_sd_SLICE_634I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1F1")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, 
                B0=>u_sd_spi_start, C0=>u_sd_spi_tx_6, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n63071, Q0=>open);
    u_sd_SLICE_635I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_2, B0=>u_sd_st_4, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n59447, 
                Q0=>open);
    u_sd_SLICE_636I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1E0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, 
                B0=>u_sd_spi_start, C0=>u_sd_spi_tx_5, D0=>u_sd_n60332, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_sd_n423, Q0=>open);
    u_sd_SLICE_637I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1E0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, 
                B0=>u_sd_spi_start, C0=>u_sd_spi_tx_3, D0=>u_sd_n60330, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_sd_n425, Q0=>open);
    u_sd_SLICE_638I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_5, 
                B0=>u_sd_n66_adj_12145, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n67, Q0=>open);
    u_sd_SLICE_639I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1E0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, 
                B0=>u_sd_spi_start, C0=>u_sd_spi_tx_0, D0=>u_sd_n60344, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_sd_n428, Q0=>open);
    u_sd_SLICE_640I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1F1")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, 
                B0=>u_sd_spi_start, C0=>u_sd_spi_tx_4, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n63072, Q0=>open);
    u_sd_SLICE_641I: SLOGICB
      generic map (LUT0_INITVAL=>X"F1F1")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_busy, 
                B0=>u_sd_spi_start, C0=>u_sd_spi_tx_2, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n63073, Q0=>open);
    u_sd_SLICE_642I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_1, B0=>u_sd_st_3, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n52_adj_12167, Q0=>open);
    u_sd_SLICE_643I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_rx_2, 
                B0=>u_sd_spi_rx_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n53790, Q0=>open);
    u_sd_SLICE_644I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_rx_0, 
                B0=>u_sd_spi_rx_4, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n53799, Q0=>open);
    u_sd_SLICE_645I: SLOGICB
      generic map (LUT0_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_0, 
                B0=>u_sd_cmd_frame_15, C0=>u_sd_cmd_frame_7, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n333, Q0=>open);
    u_sd_SLICE_646I: SLOGICB
      generic map (LUT0_INITVAL=>X"DC50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_5, B0=>resp_tries_7, 
                C0=>u_sd_n61894, D0=>u_sd_n63, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59129, Q0=>open);
    u_sd_SLICE_647I: SLOGICB
      generic map (LUT0_INITVAL=>X"2B28")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_n60337, B0=>u_sd_st_2, 
                C0=>u_sd_st_3, D0=>u_sd_n293, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n62326, Q0=>open);
    u_sd_SLICE_648I: SLOGICB
      generic map (LUT0_INITVAL=>X"DC50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_5, B0=>resp_tries_6, 
                C0=>u_sd_n61903, D0=>u_sd_n63, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59127, Q0=>open);
    u_sd_SLICE_649I: SLOGICB
      generic map (LUT0_INITVAL=>X"DC50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_5, B0=>resp_tries_5, 
                C0=>u_sd_n66_adj_12142, D0=>u_sd_n63, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59133, Q0=>open);
    u_sd_SLICE_650I: SLOGICB
      generic map (LUT0_INITVAL=>X"00DC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_3, 
                B0=>u_sd_n73_adj_12186, C0=>u_sd_n69_adj_12187, D0=>u_sd_st_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_sd_n61_adj_12188, Q0=>open);
    u_sd_SLICE_651I: SLOGICB
      generic map (LUT0_INITVAL=>X"1818")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_0, B0=>u_sd_st_2, 
                C0=>u_sd_st_1, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n19, 
                Q0=>open);
    u_sd_SLICE_652I: SLOGICB
      generic map (LUT0_INITVAL=>X"8181")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_2, B0=>u_sd_st_0, 
                C0=>u_sd_st_4, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n23_adj_12171, Q0=>open);
    u_sd_SLICE_653I: SLOGICB
      generic map (LUT0_INITVAL=>X"DC50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_5, B0=>resp_tries_4, 
                C0=>u_sd_n66_adj_12189, D0=>u_sd_n63, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59131, Q0=>open);
    u_sd_SLICE_654I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_0, B0=>u_sd_st_1, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n61988, 
                Q0=>open);
    u_sd_SLICE_655I: SLOGICB
      generic map (LUT0_INITVAL=>X"DC50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_5, B0=>resp_tries_3, 
                C0=>u_sd_n61879, D0=>u_sd_n63, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59137, Q0=>open);
    u_sd_SLICE_656I: SLOGICB
      generic map (LUT0_INITVAL=>X"DC50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_5, B0=>resp_tries_2, 
                C0=>u_sd_n66_adj_12193, D0=>u_sd_n63, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59135, Q0=>open);
    u_sd_SLICE_657I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_4, B0=>u_sd_n61439, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n61440, 
                Q0=>open);
    u_sd_SLICE_658I: SLOGICB
      generic map (LUT0_INITVAL=>X"BFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_i_1, B0=>spi_done, 
                C0=>u_sd_cmd_i_2, D0=>u_sd_cmd_i_0, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n61976, Q0=>open);
    u_sd_SLICE_659I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"4444", CHECK_M0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_5, B0=>u_sd_n66, 
                C0=>'X', D0=>'X', M0=>u_sd_n57222, CE=>'X', CLK=>SD_CLK_c, 
                LSR=>u_sd_st_5, OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n67_adj_12202, Q0=>u_sd_st_5);
    u_sd_SLICE_660I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_0, B0=>u_sd_spi_rx_4, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n59177, 
                Q0=>open);
    u_sd_SLICE_661I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_cmd_frame_38, 
                B0=>u_sd_n25, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n26_adj_12214, Q0=>open);
    u_sd_SLICE_662I: SLOGICB
      generic map (LUT0_INITVAL=>X"A8A8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_3, 
                B0=>u_sd_n15_adj_12156, C0=>u_sd_cmd_frame_6, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n27_adj_12223, Q0=>open);
    u_sd_SLICE_663I: SLOGICB
      generic map (LUT0_INITVAL=>X"A8A8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_3, 
                B0=>u_sd_n15_adj_12156, C0=>u_sd_cmd_frame_5, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n27_adj_12224, Q0=>open);
    u_sd_SLICE_664I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_spi_rx_5, 
                B0=>u_sd_spi_rx_4, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59207, Q0=>open);
    u_sd_SLICE_665I: SLOGICB
      generic map (LUT0_INITVAL=>X"88DC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_2, B0=>u_sd_spi_tx_0, 
                C0=>u_sd_n61967, D0=>u_sd_st_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n60343, Q0=>open);
    u_sd_SLICE_666I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>resp_tries_0, 
                B0=>resp_tries_7, C0=>resp_tries_1, D0=>resp_tries_6, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_sd_n59159, Q0=>open);
    u_sd_SLICE_667I: SLOGICB
      generic map (LUT0_INITVAL=>X"DADA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_3, B0=>u_sd_st_1, 
                C0=>u_sd_st_0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n38_adj_12208, Q0=>open);
    u_sd_SLICE_668I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>resp_tries_5, 
                B0=>resp_tries_3, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sd_n59153, Q0=>open);
    u_sd_SLICE_669I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_sd_st_3, B0=>u_sd_st_1, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_sd_n62034, 
                Q0=>open);
    u_cam_cfg_SLICE_670I: SLOGICB
      generic map (LUT0_INITVAL=>X"AA8A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>tick, B0=>st_3, 
                C0=>u_cam_cfg_n14, D0=>u_cam_cfg_st_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_SD_CLK_c_enable_216, Q0=>open);
    u_cam_cfg_SLICE_671I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_divc_0, 
                B0=>u_cam_cfg_divc_4, C0=>u_cam_cfg_divc_1, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_cam_cfg_n60306, Q0=>open);
    u_cam_cfg_SLICE_672I: SLOGICB
      generic map (LUT0_INITVAL=>X"1010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_st_2, B0=>st_3, 
                C0=>n61999, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n59755, Q0=>open);
    u_cam_cfg_SLICE_673I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>st_3, B0=>st_0, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n61986, Q0=>open);
    u_cam_cfg_SLICE_674I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>st_3, B0=>n61999, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n59655, Q0=>open);
    u_cam_cfg_SLICE_675I: SLOGICB
      generic map (LUT0_INITVAL=>X"F4B0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_byte_idx_1, 
                B0=>u_cam_cfg_byte_idx_0, C0=>u_cam_cfg_cur_val_4, 
                D0=>u_cam_cfg_cur_reg_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n217, 
                Q0=>open);
    u_cam_cfg_SLICE_676I: SLOGICB
      generic map (LUT0_INITVAL=>X"F4B0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_byte_idx_1, 
                B0=>u_cam_cfg_byte_idx_0, C0=>u_cam_cfg_cur_val_3, 
                D0=>u_cam_cfg_cur_reg_3, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n218, 
                Q0=>open);
    u_cam_cfg_SLICE_677I: SLOGICB
      generic map (LUT0_INITVAL=>X"F4B0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_byte_idx_1, 
                B0=>u_cam_cfg_byte_idx_0, C0=>u_cam_cfg_cur_val_2, 
                D0=>u_cam_cfg_cur_reg_2, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n219, 
                Q0=>open);
    u_cam_cfg_SLICE_678I: SLOGICB
      generic map (LUT0_INITVAL=>X"F4B0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_byte_idx_1, 
                B0=>u_cam_cfg_byte_idx_0, C0=>u_cam_cfg_cur_val_5, 
                D0=>u_cam_cfg_cur_reg_5, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n216, 
                Q0=>open);
    u_cam_cfg_SLICE_679I: SLOGICB
      generic map (LUT0_INITVAL=>X"F4B0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_byte_idx_1, 
                B0=>u_cam_cfg_byte_idx_0, C0=>u_cam_cfg_cur_val_6, 
                D0=>u_cam_cfg_cur_reg_15, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cfg_n215, 
                Q0=>open);
    u_cam_cfg_SLICE_680I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_cur_reg_8, 
                B0=>u_cam_cfg_cur_reg_0, C0=>u_cam_cfg_byte_idx_0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>u_cam_cfg_n52366, Q0=>open);
    u_cam_cfg_SLICE_681I: SLOGICB
      generic map (LUT0_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>u_cam_cfg_st_2, 
                B0=>u_cam_cfg_st_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n62038, Q0=>open);
    u_cam_cfg_SLICE_682I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>st_3, B0=>u_cam_cfg_st_1, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_cam_cfg_n60488, Q0=>open);
    SLICE_683I: SLOGICB
      generic map (LUT0_INITVAL=>X"0000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>GND_net, Q0=>open);
    SD_DQ_13_I: SD_DQ_13_B
      port map (SDDQ13=>SD_DQ(13));
    SD_DQ_14_I: SD_DQ_14_B
      port map (SDDQ14=>SD_DQ(14));
    SD_DQ_15_I: SD_DQ_15_B
      port map (SDDQ15=>SD_DQ(15));
    cam_sdaI: cam_sdaB
      port map (PADDT=>sda_oe, camsda=>cam_sda);
    cam_sclI: cam_sclB
      port map (PADDO=>cam_scl_c, camscl=>cam_scl);
    MCLKI: MCLKB
      port map (PADDO=>MCLK_c, MCLKS=>MCLK);
    M_D0I: M_D0B
      port map (PADDI=>M_D0_c, MD0=>M_D0);
    RXI: RXB
      port map (PADDI=>RX_c, RXS=>RX);
    CRYSTALI: CRYSTALB
      port map (PADDI=>CRYSTAL_c, CRYSTALS=>CRYSTAL);
    M_CLKI: M_CLKB
      port map (PADDO=>M_CLK_c, MCLKS=>M_CLK);
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
      port map (ESPD0=>ESP_D(0));
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
    SD_DQ_0_I: SD_DQ_0_B
      port map (SDDQ0=>SD_DQ(0));
    SD_DQ_1_I: SD_DQ_1_B
      port map (SDDQ1=>SD_DQ(1));
    SD_DQ_2_I: SD_DQ_2_B
      port map (SDDQ2=>SD_DQ(2));
    SD_DQ_3_I: SD_DQ_3_B
      port map (SDDQ3=>SD_DQ(3));
    SD_DQ_4_I: SD_DQ_4_B
      port map (SDDQ4=>SD_DQ(4));
    SD_DQ_5_I: SD_DQ_5_B
      port map (SDDQ5=>SD_DQ(5));
    SD_DQ_6_I: SD_DQ_6_B
      port map (SDDQ6=>SD_DQ(6));
    SD_DQ_7_I: SD_DQ_7_B
      port map (SDDQ7=>SD_DQ(7));
    SD_DQ_8_I: SD_DQ_8_B
      port map (SDDQ8=>SD_DQ(8));
    SD_DQ_9_I: SD_DQ_9_B
      port map (SDDQ9=>SD_DQ(9));
    SD_DQ_10_I: SD_DQ_10_B
      port map (SDDQ10=>SD_DQ(10));
    SD_DQ_11_I: SD_DQ_11_B
      port map (SDDQ11=>SD_DQ(11));
    SD_DQ_12_I: SD_DQ_12_B
      port map (SDDQ12=>SD_DQ(12));
    mux_341I: mux_341
      port map (CLKB=>SD_CLK_c, CEB=>tick, DOB0=>n27891, DOB1=>n27890, 
                DOB2=>n27889, DOB3=>n27888, DOB4=>n27887, DOB5=>n27886, 
                DOB6=>n27885, DOB7=>n27884, ADB3=>n318, ADB4=>n317, ADB5=>n316, 
                ADB6=>n315, ADB7=>n314, ADB8=>n313, ADB9=>n312, ADB10=>n311, 
                ADB11=>n310, ADB12=>n309, ADB13=>n308);
    u_cam_cfg_u_rom_mux_839I: u_cam_cfg_u_rom_mux_839
      port map (DOA4=>u_cam_cfg_u_rom_n28072, DOA3=>u_cam_cfg_u_rom_n28073, 
                DOA2=>u_cam_cfg_u_rom_n28074, DOA1=>u_cam_cfg_u_rom_n28075, 
                DOA0=>u_cam_cfg_u_rom_n28076, CLKB=>SD_CLK_c, CEB=>tick, 
                DOB0=>u_cam_cfg_u_rom_n28094, DOB1=>u_cam_cfg_u_rom_n28093, 
                DOB2=>u_cam_cfg_u_rom_n28092, DOB3=>u_cam_cfg_u_rom_n28091, 
                DOB4=>u_cam_cfg_u_rom_n28090, DOB5=>u_cam_cfg_u_rom_n28089, 
                DOB6=>u_cam_cfg_u_rom_n28088, DOB7=>u_cam_cfg_u_rom_n28087, 
                DOB8=>u_cam_cfg_u_rom_n28086, DOB9=>u_cam_cfg_u_rom_n28085, 
                DOB10=>u_cam_cfg_u_rom_n28084, DOB11=>u_cam_cfg_u_rom_n28083, 
                DOB12=>u_cam_cfg_u_rom_n28082, DOB13=>u_cam_cfg_u_rom_n28081, 
                DOB14=>u_cam_cfg_u_rom_n28080, DOB15=>u_cam_cfg_u_rom_n28079, 
                DOB16=>u_cam_cfg_u_rom_n28078, DOB17=>u_cam_cfg_u_rom_n28077, 
                ADB5=>n318, ADB6=>n317, ADB7=>n316, ADB8=>n315, ADB9=>n314, 
                ADB10=>n313, ADB11=>n312, ADB12=>n311, ADB13=>n310);
    u_cam_cfg_u_rom_mux_835I: u_cam_cfg_u_rom_mux_835
      port map (DOA4=>u_cam_cfg_u_rom_n27976, DOA3=>u_cam_cfg_u_rom_n27977, 
                DOA2=>u_cam_cfg_u_rom_n27978, DOA1=>u_cam_cfg_u_rom_n27979, 
                DOA0=>u_cam_cfg_u_rom_n27980, CLKB=>SD_CLK_c, CEB=>tick, 
                DOB0=>u_cam_cfg_u_rom_n27998, DOB1=>u_cam_cfg_u_rom_n27997, 
                DOB2=>u_cam_cfg_u_rom_n27996, DOB3=>u_cam_cfg_u_rom_n27995, 
                DOB4=>u_cam_cfg_u_rom_n27994, DOB5=>u_cam_cfg_u_rom_n27993, 
                DOB6=>u_cam_cfg_u_rom_n27992, DOB7=>u_cam_cfg_u_rom_n27991, 
                DOB8=>u_cam_cfg_u_rom_n27990, DOB9=>u_cam_cfg_u_rom_n27989, 
                DOB10=>u_cam_cfg_u_rom_n27988, DOB11=>u_cam_cfg_u_rom_n27987, 
                DOB12=>u_cam_cfg_u_rom_n27986, DOB13=>u_cam_cfg_u_rom_n27985, 
                DOB14=>u_cam_cfg_u_rom_n27984, DOB15=>u_cam_cfg_u_rom_n27983, 
                DOB16=>u_cam_cfg_u_rom_n27982, DOB17=>u_cam_cfg_u_rom_n27981, 
                ADB5=>n318, ADB6=>n317, ADB7=>n316, ADB8=>n315, ADB9=>n314, 
                ADB10=>n313, ADB11=>n312, ADB12=>n311, ADB13=>n310);
    u_cam_cfg_u_rom_mux_838I: u_cam_cfg_u_rom_mux_838
      port map (DOA4=>u_cam_cfg_u_rom_n28048, DOA3=>u_cam_cfg_u_rom_n28049, 
                DOA2=>u_cam_cfg_u_rom_n28050, DOA1=>u_cam_cfg_u_rom_n28051, 
                DOA0=>u_cam_cfg_u_rom_n28052, CLKB=>SD_CLK_c, CEB=>tick, 
                DOB0=>u_cam_cfg_u_rom_n28070, DOB1=>u_cam_cfg_u_rom_n28069, 
                DOB2=>u_cam_cfg_u_rom_n28068, DOB3=>u_cam_cfg_u_rom_n28067, 
                DOB4=>u_cam_cfg_u_rom_n28066, DOB5=>u_cam_cfg_u_rom_n28065, 
                DOB6=>u_cam_cfg_u_rom_n28064, DOB7=>u_cam_cfg_u_rom_n28063, 
                DOB8=>u_cam_cfg_u_rom_n28062, DOB9=>u_cam_cfg_u_rom_n28061, 
                DOB10=>u_cam_cfg_u_rom_n28060, DOB11=>u_cam_cfg_u_rom_n28059, 
                DOB12=>u_cam_cfg_u_rom_n28058, DOB13=>u_cam_cfg_u_rom_n28057, 
                DOB14=>u_cam_cfg_u_rom_n28056, DOB15=>u_cam_cfg_u_rom_n28055, 
                DOB16=>u_cam_cfg_u_rom_n28054, DOB17=>u_cam_cfg_u_rom_n28053, 
                ADB5=>n318, ADB6=>n317, ADB7=>n316, ADB8=>n315, ADB9=>n314, 
                ADB10=>n313, ADB11=>n312, ADB12=>n311, ADB13=>n310);
    u_cam_cfg_u_rom_mux_836I: u_cam_cfg_u_rom_mux_836
      port map (DOA4=>u_cam_cfg_u_rom_n28000, DOA3=>u_cam_cfg_u_rom_n28001, 
                DOA2=>u_cam_cfg_u_rom_n28002, DOA1=>u_cam_cfg_u_rom_n28003, 
                DOA0=>u_cam_cfg_u_rom_n28004, CLKB=>SD_CLK_c, CEB=>tick, 
                DOB0=>u_cam_cfg_u_rom_n28022, DOB1=>u_cam_cfg_u_rom_n28021, 
                DOB2=>u_cam_cfg_u_rom_n28020, DOB3=>u_cam_cfg_u_rom_n28019, 
                DOB4=>u_cam_cfg_u_rom_n28018, DOB5=>u_cam_cfg_u_rom_n28017, 
                DOB6=>u_cam_cfg_u_rom_n28016, DOB7=>u_cam_cfg_u_rom_n28015, 
                DOB8=>u_cam_cfg_u_rom_n28014, DOB9=>u_cam_cfg_u_rom_n28013, 
                DOB10=>u_cam_cfg_u_rom_n28012, DOB11=>u_cam_cfg_u_rom_n28011, 
                DOB12=>u_cam_cfg_u_rom_n28010, DOB13=>u_cam_cfg_u_rom_n28009, 
                DOB14=>u_cam_cfg_u_rom_n28008, DOB15=>u_cam_cfg_u_rom_n28007, 
                DOB16=>u_cam_cfg_u_rom_n28006, DOB17=>u_cam_cfg_u_rom_n28005, 
                ADB5=>n318, ADB6=>n317, ADB7=>n316, ADB8=>n315, ADB9=>n314, 
                ADB10=>n313, ADB11=>n312, ADB12=>n311, ADB13=>n310);
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


