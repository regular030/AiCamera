
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.14.0.75.2

-- ldbanno -n VHDL -o AICAM_impl1_vho.vho -w -neg -gui -msgset C:/Users/kunsh/Desktop/AiCamera/Lattice Diamond/promote.xml AICAM_impl1.ncd 
-- Netlist created on Wed Feb 04 22:56:27 2026
-- Netlist written on Wed Feb 04 22:57:00 2026
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
      InstancePath  	: string := "cam_sdaB");

    port (camsda: out Std_logic);

    ATTRIBUTE Vital_Level0 OF cam_sdaB : ENTITY IS TRUE;

  end cam_sdaB;

  architecture Structure of cam_sdaB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal camsda_out 	: std_logic := 'X';

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
    cam_sda_pad: sapiobuf
      port map (I=>GNDI, T=>VCCI, PAD=>camsda_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (camsda_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    camsda 	<= camsda_out;


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
      InstancePath  	: string := "cam_sclB");

    port (camscl: out Std_logic);

    ATTRIBUTE Vital_Level0 OF cam_sclB : ENTITY IS TRUE;

  end cam_sclB;

  architecture Structure of cam_sclB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal camscl_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    cam_scl_pad: sapiobuf0001
      port map (I=>VCCI, PAD=>camscl_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (camscl_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    camscl 	<= camscl_out;


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

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    MCLK_pad: sapiobuf0002
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

-- entity sapiobuf0003
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0003 is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0003 : ENTITY IS TRUE;

  end sapiobuf0003;

  architecture Structure of sapiobuf0003 is
  begin
    INST5: OBZ
      port map (I=>I, T=>T, O=>PAD);
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_15: sapiobuf0003
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_14: sapiobuf0003
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_13: sapiobuf0003
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_12: sapiobuf0003
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_11: sapiobuf0003
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_10: sapiobuf0003
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_9: sapiobuf0003
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
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_8: sapiobuf0003
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
      tpd_PADDO_SDDQ7	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDDQ7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_7_B : ENTITY IS TRUE;

  end SD_DQ_7_B;

  architecture Structure of SD_DQ_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDDQ7_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_7: sapiobuf0003
      port map (I=>PADDO_ipd, T=>VCCI, PAD=>SDDQ7_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDDQ7_out)
    VARIABLE SDDQ7_zd         	: std_logic := 'X';
    VARIABLE SDDQ7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ7_zd 	:= SDDQ7_out;

    VitalPathDelay01 (
      OutSignal => SDDQ7, OutSignalName => "SDDQ7", OutTemp => SDDQ7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ7,
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
      tpd_PADDO_SDDQ6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDDQ6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_6_B : ENTITY IS TRUE;

  end SD_DQ_6_B;

  architecture Structure of SD_DQ_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDDQ6_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_6: sapiobuf0003
      port map (I=>PADDO_ipd, T=>VCCI, PAD=>SDDQ6_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDDQ6_out)
    VARIABLE SDDQ6_zd         	: std_logic := 'X';
    VARIABLE SDDQ6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ6_zd 	:= SDDQ6_out;

    VitalPathDelay01 (
      OutSignal => SDDQ6, OutSignalName => "SDDQ6", OutTemp => SDDQ6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ6,
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
      tpd_PADDO_SDDQ5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDDQ5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_5_B : ENTITY IS TRUE;

  end SD_DQ_5_B;

  architecture Structure of SD_DQ_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDDQ5_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_5: sapiobuf0003
      port map (I=>PADDO_ipd, T=>VCCI, PAD=>SDDQ5_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDDQ5_out)
    VARIABLE SDDQ5_zd         	: std_logic := 'X';
    VARIABLE SDDQ5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ5_zd 	:= SDDQ5_out;

    VitalPathDelay01 (
      OutSignal => SDDQ5, OutSignalName => "SDDQ5", OutTemp => SDDQ5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ5,
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
      tpd_PADDO_SDDQ4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDDQ4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_4_B : ENTITY IS TRUE;

  end SD_DQ_4_B;

  architecture Structure of SD_DQ_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDDQ4_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_4: sapiobuf0003
      port map (I=>PADDO_ipd, T=>VCCI, PAD=>SDDQ4_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDDQ4_out)
    VARIABLE SDDQ4_zd         	: std_logic := 'X';
    VARIABLE SDDQ4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ4_zd 	:= SDDQ4_out;

    VitalPathDelay01 (
      OutSignal => SDDQ4, OutSignalName => "SDDQ4", OutTemp => SDDQ4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ4,
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
      tpd_PADDO_SDDQ3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDDQ3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_3_B : ENTITY IS TRUE;

  end SD_DQ_3_B;

  architecture Structure of SD_DQ_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDDQ3_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_3: sapiobuf0003
      port map (I=>PADDO_ipd, T=>VCCI, PAD=>SDDQ3_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDDQ3_out)
    VARIABLE SDDQ3_zd         	: std_logic := 'X';
    VARIABLE SDDQ3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ3_zd 	:= SDDQ3_out;

    VitalPathDelay01 (
      OutSignal => SDDQ3, OutSignalName => "SDDQ3", OutTemp => SDDQ3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ3,
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
      tpd_PADDO_SDDQ2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDDQ2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_2_B : ENTITY IS TRUE;

  end SD_DQ_2_B;

  architecture Structure of SD_DQ_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDDQ2_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_2: sapiobuf0003
      port map (I=>PADDO_ipd, T=>VCCI, PAD=>SDDQ2_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDDQ2_out)
    VARIABLE SDDQ2_zd         	: std_logic := 'X';
    VARIABLE SDDQ2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ2_zd 	:= SDDQ2_out;

    VitalPathDelay01 (
      OutSignal => SDDQ2, OutSignalName => "SDDQ2", OutTemp => SDDQ2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ2,
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
      tpd_PADDO_SDDQ1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDDQ1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_1_B : ENTITY IS TRUE;

  end SD_DQ_1_B;

  architecture Structure of SD_DQ_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDDQ1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_1: sapiobuf0003
      port map (I=>PADDO_ipd, T=>VCCI, PAD=>SDDQ1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDDQ1_out)
    VARIABLE SDDQ1_zd         	: std_logic := 'X';
    VARIABLE SDDQ1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ1_zd 	:= SDDQ1_out;

    VitalPathDelay01 (
      OutSignal => SDDQ1, OutSignalName => "SDDQ1", OutTemp => SDDQ1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ1,
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
      tpd_PADDO_SDDQ0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; SDDQ0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_DQ_0_B : ENTITY IS TRUE;

  end SD_DQ_0_B;

  architecture Structure of SD_DQ_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal SDDQ0_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0003
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQ_pad_0: sapiobuf0003
      port map (I=>PADDO_ipd, T=>VCCI, PAD=>SDDQ0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, SDDQ0_out)
    VARIABLE SDDQ0_zd         	: std_logic := 'X';
    VARIABLE SDDQ0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDDQ0_zd 	:= SDDQ0_out;

    VitalPathDelay01 (
      OutSignal => SDDQ0, OutSignalName => "SDDQ0", OutTemp => SDDQ0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_SDDQ0,
                           PathCondition => TRUE)),
      GlitchData => SDDQ0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0004
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0004 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0004 : ENTITY IS TRUE;

  end sapiobuf0004;

  architecture Structure of sapiobuf0004 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQM_pad_1: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_DQM_pad_0: sapiobuf0004
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

    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_CLK_pad: sapiobuf0004
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
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_CS_N_pad: sapiobuf0004
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
      InstancePath  	: string := "SD_WE_NB");

    port (SDWEN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_WE_NB : ENTITY IS TRUE;

  end SD_WE_NB;

  architecture Structure of SD_WE_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDWEN_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_WE_N_pad: sapiobuf0004
      port map (I=>VCCI, PAD=>SDWEN_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDWEN_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDWEN 	<= SDWEN_out;


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
      InstancePath  	: string := "SD_RAS_NB");

    port (SDRASN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_RAS_NB : ENTITY IS TRUE;

  end SD_RAS_NB;

  architecture Structure of SD_RAS_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDRASN_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_RAS_N_pad: sapiobuf0004
      port map (I=>VCCI, PAD=>SDRASN_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDRASN_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDRASN 	<= SDRASN_out;


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
      InstancePath  	: string := "SD_CAS_NB");

    port (SDCASN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_CAS_NB : ENTITY IS TRUE;

  end SD_CAS_NB;

  architecture Structure of SD_CAS_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDCASN_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_CAS_N_pad: sapiobuf0004
      port map (I=>VCCI, PAD=>SDCASN_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDCASN_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDCASN 	<= SDCASN_out;


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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_12: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_11: sapiobuf0004
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
      InstancePath  	: string := "SD_A_9_B");

    port (SDA9: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SD_A_9_B : ENTITY IS TRUE;

  end SD_A_9_B;

  architecture Structure of SD_A_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal SDA9_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_9: sapiobuf0004
      port map (I=>GNDI, PAD=>SDA9_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (SDA9_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    SDA9 	<= SDA9_out;


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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_8: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_7: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_6: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_5: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_4: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_3: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_2: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_A_pad_1: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_BA_pad_1: sapiobuf0004
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
    component sapiobuf0004
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    SD_BA_pad_0: sapiobuf0004
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

    component sapiobuf0005
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    DOUT_pad: sapiobuf0005
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
      InstancePath  	: string := "ESP_D_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_ESPD7	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_ESPD7	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_7_B : ENTITY IS TRUE;

  end ESP_D_7_B;

  architecture Structure of ESP_D_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal ESPD7_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0006
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ESP_D_pad_7: sapiobuf0006
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>ESPD7_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, ESPD7_out)
    VARIABLE ESPD7_zd         	: std_logic := 'X';
    VARIABLE ESPD7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD7_zd 	:= ESPD7_out;

    VitalPathDelay01Z (
      OutSignal => ESPD7, OutSignalName => "ESPD7", OutTemp => ESPD7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ESPD7,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ESPD7,
                           PathCondition => TRUE)),
      GlitchData => ESPD7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "ESP_D_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_ESPD6	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_ESPD6	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_6_B : ENTITY IS TRUE;

  end ESP_D_6_B;

  architecture Structure of ESP_D_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal ESPD6_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0006
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ESP_D_pad_6: sapiobuf0006
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>ESPD6_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, ESPD6_out)
    VARIABLE ESPD6_zd         	: std_logic := 'X';
    VARIABLE ESPD6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD6_zd 	:= ESPD6_out;

    VitalPathDelay01Z (
      OutSignal => ESPD6, OutSignalName => "ESPD6", OutTemp => ESPD6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ESPD6,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ESPD6,
                           PathCondition => TRUE)),
      GlitchData => ESPD6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "ESP_D_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_ESPD5	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_ESPD5	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_5_B : ENTITY IS TRUE;

  end ESP_D_5_B;

  architecture Structure of ESP_D_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal ESPD5_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0006
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ESP_D_pad_5: sapiobuf0006
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>ESPD5_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, ESPD5_out)
    VARIABLE ESPD5_zd         	: std_logic := 'X';
    VARIABLE ESPD5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD5_zd 	:= ESPD5_out;

    VitalPathDelay01Z (
      OutSignal => ESPD5, OutSignalName => "ESPD5", OutTemp => ESPD5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ESPD5,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ESPD5,
                           PathCondition => TRUE)),
      GlitchData => ESPD5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "ESP_D_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_ESPD4	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_ESPD4	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_4_B : ENTITY IS TRUE;

  end ESP_D_4_B;

  architecture Structure of ESP_D_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal ESPD4_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0006
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ESP_D_pad_4: sapiobuf0006
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>ESPD4_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, ESPD4_out)
    VARIABLE ESPD4_zd         	: std_logic := 'X';
    VARIABLE ESPD4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD4_zd 	:= ESPD4_out;

    VitalPathDelay01Z (
      OutSignal => ESPD4, OutSignalName => "ESPD4", OutTemp => ESPD4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ESPD4,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ESPD4,
                           PathCondition => TRUE)),
      GlitchData => ESPD4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "ESP_D_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_ESPD3	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_ESPD3	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_3_B : ENTITY IS TRUE;

  end ESP_D_3_B;

  architecture Structure of ESP_D_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal ESPD3_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0006
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ESP_D_pad_3: sapiobuf0006
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>ESPD3_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, ESPD3_out)
    VARIABLE ESPD3_zd         	: std_logic := 'X';
    VARIABLE ESPD3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD3_zd 	:= ESPD3_out;

    VitalPathDelay01Z (
      OutSignal => ESPD3, OutSignalName => "ESPD3", OutTemp => ESPD3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ESPD3,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ESPD3,
                           PathCondition => TRUE)),
      GlitchData => ESPD3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

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
      InstancePath  	: string := "ESP_D_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_ESPD2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_ESPD2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_2_B : ENTITY IS TRUE;

  end ESP_D_2_B;

  architecture Structure of ESP_D_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal ESPD2_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0006
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ESP_D_pad_2: sapiobuf0006
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>ESPD2_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, ESPD2_out)
    VARIABLE ESPD2_zd         	: std_logic := 'X';
    VARIABLE ESPD2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD2_zd 	:= ESPD2_out;

    VitalPathDelay01Z (
      OutSignal => ESPD2, OutSignalName => "ESPD2", OutTemp => ESPD2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ESPD2,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ESPD2,
                           PathCondition => TRUE)),
      GlitchData => ESPD2_GlitchData,
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
      InstancePath  	: string := "ESP_D_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_ESPD1	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_ESPD1	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_1_B : ENTITY IS TRUE;

  end ESP_D_1_B;

  architecture Structure of ESP_D_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal ESPD1_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0006
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ESP_D_pad_1: sapiobuf0006
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>ESPD1_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, ESPD1_out)
    VARIABLE ESPD1_zd         	: std_logic := 'X';
    VARIABLE ESPD1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD1_zd 	:= ESPD1_out;

    VitalPathDelay01Z (
      OutSignal => ESPD1, OutSignalName => "ESPD1", OutTemp => ESPD1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ESPD1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ESPD1,
                           PathCondition => TRUE)),
      GlitchData => ESPD1_GlitchData,
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
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_ESPD0	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_PADDT_ESPD0	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ESP_D_0_B : ENTITY IS TRUE;

  end ESP_D_0_B;

  architecture Structure of ESP_D_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal ESPD0_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0006
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ESP_D_pad_0: sapiobuf0006
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>ESPD0_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, ESPD0_out)
    VARIABLE ESPD0_zd         	: std_logic := 'X';
    VARIABLE ESPD0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    ESPD0_zd 	:= ESPD0_out;

    VitalPathDelay01Z (
      OutSignal => ESPD0, OutSignalName => "ESPD0", OutTemp => ESPD0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ESPD0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ESPD0,
                           PathCondition => TRUE)),
      GlitchData => ESPD0_GlitchData,
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

    component sapiobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    CRYSTAL_pad: sapiobuf0007
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

-- entity sapiobuf0008
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0008 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0008 : ENTITY IS TRUE;

  end sapiobuf0008;

  architecture Structure of sapiobuf0008 is
  begin
    INST1: IB
      port map (I=>PAD, O=>Z);
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    VSYNC_pad: sapiobuf0008
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    HREF_pad: sapiobuf0008
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    PCLK_pad: sapiobuf0008
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y9_pad: sapiobuf0008
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y8_pad: sapiobuf0008
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y7_pad: sapiobuf0008
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y6_pad: sapiobuf0008
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y5_pad: sapiobuf0008
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y4_pad: sapiobuf0008
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y3_pad: sapiobuf0008
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

    component sapiobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Y2_pad: sapiobuf0008
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

-- entity sapiobuf0009
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0009 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0009 : ENTITY IS TRUE;

  end sapiobuf0009;

  architecture Structure of sapiobuf0009 is
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

    component sapiobuf0009
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    DIN_pad: sapiobuf0009
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

    component sapiobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    CCLK_pad: sapiobuf0007
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

-- entity sapiobuf0010
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0010 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0010 : ENTITY IS TRUE;

  end sapiobuf0010;

  architecture Structure of sapiobuf0010 is
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

    component sapiobuf0010
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    SSPI_CS_n_pad: sapiobuf0010
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
          ESP_D: out Std_logic_vector (7 downto 0));



  end fpga_top;

  architecture Structure of fpga_top is
    signal por_cnt_12: Std_logic;
    signal por_cnt_11: Std_logic;
    signal n73: Std_logic;
    signal n74: Std_logic;
    signal rst_n: Std_logic;
    signal CRYSTAL_c: Std_logic;
    signal n389: Std_logic;
    signal n390: Std_logic;
    signal por_cnt_14: Std_logic;
    signal por_cnt_13: Std_logic;
    signal n71: Std_logic;
    signal n72: Std_logic;
    signal n391: Std_logic;
    signal por_cnt_15: Std_logic;
    signal n70: Std_logic;
    signal por_cnt_10: Std_logic;
    signal por_cnt_9: Std_logic;
    signal n75: Std_logic;
    signal n76: Std_logic;
    signal n388: Std_logic;
    signal por_cnt_8: Std_logic;
    signal por_cnt_7: Std_logic;
    signal n77: Std_logic;
    signal n78: Std_logic;
    signal n387: Std_logic;
    signal por_cnt_0: Std_logic;
    signal n85: Std_logic;
    signal n384: Std_logic;
    signal por_cnt_6: Std_logic;
    signal por_cnt_5: Std_logic;
    signal n79: Std_logic;
    signal n80: Std_logic;
    signal n386: Std_logic;
    signal por_cnt_4: Std_logic;
    signal por_cnt_3: Std_logic;
    signal n81: Std_logic;
    signal n82: Std_logic;
    signal n385: Std_logic;
    signal por_cnt_2: Std_logic;
    signal por_cnt_1: Std_logic;
    signal n83: Std_logic;
    signal n84: Std_logic;
    signal u_esp_shift_6: Std_logic;
    signal SSPI_CS_n_c: Std_logic;
    signal cam_frame_valid: Std_logic;
    signal u_esp_shift_6_N_133_7: Std_logic;
    signal CCLK_c: Std_logic;
    signal DOUT_c: Std_logic;
    signal mclk_div_cnt_1: Std_logic;
    signal MCLK_c: Std_logic;
    signal mclk_div_cnt_0: Std_logic;
    signal MCLK_N_43: Std_logic;
    signal SD_CLK_c: Std_logic;
    signal u_sdram_sd_clk_N_124: Std_logic;
    signal VSYNC_c: Std_logic;
    signal u_cam_cap_n424: Std_logic;
    signal PCLK_c: Std_logic;
    signal Y3_c_1: Std_logic;
    signal Y2_c_0: Std_logic;
    signal PCLK_c_enable_8: Std_logic;
    signal cam_pixel_0: Std_logic;
    signal cam_pixel_1: Std_logic;
    signal Y5_c_3: Std_logic;
    signal Y4_c_2: Std_logic;
    signal cam_pixel_2: Std_logic;
    signal cam_pixel_3: Std_logic;
    signal Y7_c_5: Std_logic;
    signal Y6_c_4: Std_logic;
    signal cam_pixel_4: Std_logic;
    signal cam_pixel_5: Std_logic;
    signal Y9_c_7: Std_logic;
    signal Y8_c_6: Std_logic;
    signal cam_pixel_6: Std_logic;
    signal cam_pixel_7: Std_logic;
    signal HREF_c: Std_logic;
    signal u_cam_cap_n423: Std_logic;
    signal cam_pixel_valid: Std_logic;
    signal esp_d_oe: Std_logic;
    signal esp_d_out_0: Std_logic;
    signal esp_d_out_1: Std_logic;
    signal esp_d_out_2: Std_logic;
    signal esp_d_out_3: Std_logic;
    signal esp_d_out_4: Std_logic;
    signal esp_d_out_5: Std_logic;
    signal esp_d_out_6: Std_logic;
    signal esp_d_out_7: Std_logic;
    signal n14: Std_logic;
    signal n1: Std_logic;
    signal n367: Std_logic;
    signal VCC_net: Std_logic;
    signal rst_n_N_38: Std_logic;
    signal sd_dq_out_0: Std_logic;
    signal sd_dq_out_1: Std_logic;
    signal sd_dq_out_2: Std_logic;
    signal sd_dq_out_3: Std_logic;
    signal sd_dq_out_4: Std_logic;
    signal sd_dq_out_5: Std_logic;
    signal sd_dq_out_6: Std_logic;
    signal sd_dq_out_7: Std_logic;
    signal u_esp_shift_0: Std_logic;
    signal DIN_c: Std_logic;
    signal u_esp_shift_6_N_133_1: Std_logic;
    signal u_esp_shift_6_N_133_0: Std_logic;
    signal u_esp_shift_1: Std_logic;
    signal u_esp_shift_2: Std_logic;
    signal u_esp_shift_6_N_133_3: Std_logic;
    signal u_esp_shift_6_N_133_2: Std_logic;
    signal u_esp_shift_3: Std_logic;
    signal u_esp_shift_6_N_133_4: Std_logic;
    signal u_esp_shift_4: Std_logic;
    signal u_esp_shift_5: Std_logic;
    signal u_esp_shift_6_N_133_6: Std_logic;
    signal n30: Std_logic;
    signal n25: Std_logic;
    signal n26: Std_logic;
    signal n22: Std_logic;
    signal n28: Std_logic;
    signal VCCI: Std_logic;
    component cam_sdaB
      port (camsda: out Std_logic);
    end component;
    component cam_sclB
      port (camscl: out Std_logic);
    end component;
    component MCLKB
      port (PADDO: in Std_logic; MCLKS: out Std_logic);
    end component;
    component SD_DQ_15_B
      port (SDDQ15: out Std_logic);
    end component;
    component SD_DQ_14_B
      port (SDDQ14: out Std_logic);
    end component;
    component SD_DQ_13_B
      port (SDDQ13: out Std_logic);
    end component;
    component SD_DQ_12_B
      port (SDDQ12: out Std_logic);
    end component;
    component SD_DQ_11_B
      port (SDDQ11: out Std_logic);
    end component;
    component SD_DQ_10_B
      port (SDDQ10: out Std_logic);
    end component;
    component SD_DQ_9_B
      port (SDDQ9: out Std_logic);
    end component;
    component SD_DQ_8_B
      port (SDDQ8: out Std_logic);
    end component;
    component SD_DQ_7_B
      port (PADDO: in Std_logic; SDDQ7: out Std_logic);
    end component;
    component SD_DQ_6_B
      port (PADDO: in Std_logic; SDDQ6: out Std_logic);
    end component;
    component SD_DQ_5_B
      port (PADDO: in Std_logic; SDDQ5: out Std_logic);
    end component;
    component SD_DQ_4_B
      port (PADDO: in Std_logic; SDDQ4: out Std_logic);
    end component;
    component SD_DQ_3_B
      port (PADDO: in Std_logic; SDDQ3: out Std_logic);
    end component;
    component SD_DQ_2_B
      port (PADDO: in Std_logic; SDDQ2: out Std_logic);
    end component;
    component SD_DQ_1_B
      port (PADDO: in Std_logic; SDDQ1: out Std_logic);
    end component;
    component SD_DQ_0_B
      port (PADDO: in Std_logic; SDDQ0: out Std_logic);
    end component;
    component SD_DQM_1_B
      port (SDDQM1: out Std_logic);
    end component;
    component SD_DQM_0_B
      port (SDDQM0: out Std_logic);
    end component;
    component SD_CLKB
      port (PADDO: in Std_logic; SDCLK: out Std_logic);
    end component;
    component SD_CS_NB
      port (SDCSN: out Std_logic);
    end component;
    component SD_WE_NB
      port (SDWEN: out Std_logic);
    end component;
    component SD_RAS_NB
      port (SDRASN: out Std_logic);
    end component;
    component SD_CAS_NB
      port (SDCASN: out Std_logic);
    end component;
    component SD_A_12_B
      port (SDA12: out Std_logic);
    end component;
    component SD_A_11_B
      port (SDA11: out Std_logic);
    end component;
    component SD_A_10_B
      port (SDA10: out Std_logic);
    end component;
    component SD_A_9_B
      port (SDA9: out Std_logic);
    end component;
    component SD_A_8_B
      port (SDA8: out Std_logic);
    end component;
    component SD_A_7_B
      port (SDA7: out Std_logic);
    end component;
    component SD_A_6_B
      port (SDA6: out Std_logic);
    end component;
    component SD_A_5_B
      port (SDA5: out Std_logic);
    end component;
    component SD_A_4_B
      port (SDA4: out Std_logic);
    end component;
    component SD_A_3_B
      port (SDA3: out Std_logic);
    end component;
    component SD_A_2_B
      port (SDA2: out Std_logic);
    end component;
    component SD_A_1_B
      port (SDA1: out Std_logic);
    end component;
    component SD_A_0_B
      port (SDA0: out Std_logic);
    end component;
    component SD_BA_1_B
      port (SDBA1: out Std_logic);
    end component;
    component SD_BA_0_B
      port (SDBA0: out Std_logic);
    end component;
    component DOUTB
      port (PADDO: in Std_logic; DOUTS: out Std_logic);
    end component;
    component ESP_D_7_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD7: out Std_logic);
    end component;
    component ESP_D_6_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD6: out Std_logic);
    end component;
    component ESP_D_5_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD5: out Std_logic);
    end component;
    component ESP_D_4_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD4: out Std_logic);
    end component;
    component ESP_D_3_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD3: out Std_logic);
    end component;
    component ESP_D_2_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD2: out Std_logic);
    end component;
    component ESP_D_1_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD1: out Std_logic);
    end component;
    component ESP_D_0_B
      port (PADDO: in Std_logic; PADDT: in Std_logic; ESPD0: out Std_logic);
    end component;
    component CRYSTALB
      port (PADDI: out Std_logic; CRYSTALS: in Std_logic);
    end component;
    component VSYNCB
      port (PADDI: out Std_logic; VSYNCS: in Std_logic);
    end component;
    component HREFB
      port (PADDI: out Std_logic; HREFS: in Std_logic);
    end component;
    component PCLKB
      port (PADDI: out Std_logic; PCLKS: in Std_logic);
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
    component DINB
      port (PADDI: out Std_logic; DINS: in Std_logic);
    end component;
    component CCLKB
      port (PADDI: out Std_logic; CCLKS: in Std_logic);
    end component;
    component SSPI_CS_nB
      port (PADDI: out Std_logic; SSPICSn: in Std_logic);
    end component;
  begin
    SLICE_0I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>por_cnt_12, B1=>'X', C1=>'X', D1=>'1', DI1=>n73, 
                DI0=>n74, A0=>'X', B0=>por_cnt_11, C0=>'X', D0=>'1', FCI=>n389, 
                M0=>'X', CE=>rst_n, CLK=>CRYSTAL_c, LSR=>'X', FCO=>n390, 
                F1=>n73, Q1=>por_cnt_12, F0=>n74, Q0=>por_cnt_11);
    SLICE_1I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>por_cnt_14, B1=>'X', C1=>'X', D1=>'1', DI1=>n71, 
                DI0=>n72, A0=>'X', B0=>por_cnt_13, C0=>'X', D0=>'1', FCI=>n390, 
                M0=>'X', CE=>rst_n, CLK=>CRYSTAL_c, LSR=>'X', FCO=>n391, 
                F1=>n71, Q1=>por_cnt_14, F0=>n72, Q0=>por_cnt_13);
    SLICE_2I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>n70, A0=>'X', B0=>por_cnt_15, C0=>'X', D0=>'1', FCI=>n391, 
                M0=>'X', CE=>rst_n, CLK=>CRYSTAL_c, LSR=>'X', FCO=>open, 
                F1=>open, Q1=>open, F0=>n70, Q0=>por_cnt_15);
    SLICE_3I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>por_cnt_10, C1=>'X', D1=>'1', DI1=>n75, 
                DI0=>n76, A0=>'X', B0=>por_cnt_9, C0=>'X', D0=>'1', FCI=>n388, 
                M0=>'X', CE=>rst_n, CLK=>CRYSTAL_c, LSR=>'X', FCO=>n389, 
                F1=>n75, Q1=>por_cnt_10, F0=>n76, Q0=>por_cnt_9);
    SLICE_4I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>por_cnt_8, C1=>'X', D1=>'1', DI1=>n77, 
                DI0=>n78, A0=>'X', B0=>por_cnt_7, C0=>'X', D0=>'1', FCI=>n387, 
                M0=>'X', CE=>rst_n, CLK=>CRYSTAL_c, LSR=>'X', FCO=>n388, 
                F1=>n77, Q1=>por_cnt_8, F0=>n78, Q0=>por_cnt_7);
    SLICE_5I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>por_cnt_0, C1=>'X', D1=>'1', DI1=>n85, 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>rst_n, CLK=>CRYSTAL_c, LSR=>'X', FCO=>n384, 
                F1=>n85, Q1=>por_cnt_0, F0=>open, Q0=>open);
    SLICE_6I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>por_cnt_6, B1=>'X', C1=>'X', D1=>'1', DI1=>n79, 
                DI0=>n80, A0=>'X', B0=>por_cnt_5, C0=>'X', D0=>'1', FCI=>n386, 
                M0=>'X', CE=>rst_n, CLK=>CRYSTAL_c, LSR=>'X', FCO=>n387, 
                F1=>n79, Q1=>por_cnt_6, F0=>n80, Q0=>por_cnt_5);
    SLICE_7I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>por_cnt_4, B1=>'X', C1=>'X', D1=>'1', DI1=>n81, 
                DI0=>n82, A0=>por_cnt_3, B0=>'X', C0=>'X', D0=>'1', FCI=>n385, 
                M0=>'X', CE=>rst_n, CLK=>CRYSTAL_c, LSR=>'X', FCO=>n386, 
                F1=>n81, Q1=>por_cnt_4, F0=>n82, Q0=>por_cnt_3);
    SLICE_8I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>por_cnt_2, C1=>'X', D1=>'1', DI1=>n83, 
                DI0=>n84, A0=>'X', B0=>por_cnt_1, C0=>'X', D0=>'1', FCI=>n384, 
                M0=>'X', CE=>rst_n, CLK=>CRYSTAL_c, LSR=>'X', FCO=>n385, 
                F1=>n83, Q1=>por_cnt_2, F0=>n84, Q0=>por_cnt_1);
    u_esp_SLICE_9I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", REG0_REGSET=>"SET", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"BB88", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_esp_shift_6_N_133_7, 
                A0=>cam_frame_valid, B0=>SSPI_CS_n_c, C0=>'X', 
                D0=>u_esp_shift_6, M0=>'X', CE=>'X', CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_esp_shift_6_N_133_7, Q0=>DOUT_c);
    SLICE_10I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"F05A", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>MCLK_N_43, A0=>mclk_div_cnt_0, B0=>'X', 
                C0=>MCLK_c, D0=>mclk_div_cnt_1, M0=>'X', CE=>'X', 
                CLK=>CRYSTAL_c, LSR=>rst_n, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>MCLK_N_43, Q0=>MCLK_c);
    u_sdram_SLICE_11I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"00FF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_sdram_sd_clk_N_124, A0=>'X', B0=>'X', 
                C0=>'X', D0=>SD_CLK_c, M0=>'X', CE=>'X', CLK=>CRYSTAL_c, 
                LSR=>rst_n, OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_sdram_sd_clk_N_124, Q0=>SD_CLK_c);
    u_cam_cap_SLICE_12I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"5555", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_cam_cap_n424, A0=>VSYNC_c, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>PCLK_c, LSR=>rst_n, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cap_n424, 
                Q0=>cam_frame_valid);
    u_cam_cap_SLICE_13I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>Y3_c_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y2_c_0, CE=>PCLK_c_enable_8, CLK=>PCLK_c, 
                LSR=>rst_n, OFX1=>open, F1=>open, Q1=>cam_pixel_1, OFX0=>open, 
                F0=>open, Q0=>cam_pixel_0);
    u_cam_cap_SLICE_14I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>Y5_c_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y4_c_2, CE=>PCLK_c_enable_8, CLK=>PCLK_c, 
                LSR=>rst_n, OFX1=>open, F1=>open, Q1=>cam_pixel_3, OFX0=>open, 
                F0=>open, Q0=>cam_pixel_2);
    u_cam_cap_SLICE_15I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>Y7_c_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y6_c_4, CE=>PCLK_c_enable_8, CLK=>PCLK_c, 
                LSR=>rst_n, OFX1=>open, F1=>open, Q1=>cam_pixel_5, OFX0=>open, 
                F0=>open, Q0=>cam_pixel_4);
    u_cam_cap_SLICE_16I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>Y9_c_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>Y8_c_6, CE=>PCLK_c_enable_8, CLK=>PCLK_c, 
                LSR=>rst_n, OFX1=>open, F1=>open, Q1=>cam_pixel_7, OFX0=>open, 
                F0=>open, Q0=>cam_pixel_6);
    u_cam_cap_SLICE_17I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"3300", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_cam_cap_n423, A0=>'X', B0=>VSYNC_c, 
                C0=>'X', D0=>HREF_c, M0=>'X', CE=>'X', CLK=>PCLK_c, LSR=>rst_n, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>u_cam_cap_n423, 
                Q0=>cam_pixel_valid);
    u_esp_SLICE_18I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   GSR=>"DISABLED", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>cam_pixel_valid, CE=>'X', CLK=>CRYSTAL_c, 
                LSR=>rst_n, OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>open, Q0=>esp_d_oe);
    u_esp_SLICE_19I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>cam_pixel_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>cam_pixel_0, CE=>'X', CLK=>CRYSTAL_c, LSR=>rst_n, 
                OFX1=>open, F1=>open, Q1=>esp_d_out_1, OFX0=>open, F0=>open, 
                Q0=>esp_d_out_0);
    u_esp_SLICE_20I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>cam_pixel_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>cam_pixel_2, CE=>'X', CLK=>CRYSTAL_c, LSR=>rst_n, 
                OFX1=>open, F1=>open, Q1=>esp_d_out_3, OFX0=>open, F0=>open, 
                Q0=>esp_d_out_2);
    u_esp_SLICE_21I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>cam_pixel_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>cam_pixel_4, CE=>'X', CLK=>CRYSTAL_c, LSR=>rst_n, 
                OFX1=>open, F1=>open, Q1=>esp_d_out_5, OFX0=>open, F0=>open, 
                Q0=>esp_d_out_4);
    u_esp_SLICE_22I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>cam_pixel_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>cam_pixel_6, CE=>'X', CLK=>CRYSTAL_c, LSR=>rst_n, 
                OFX1=>open, F1=>open, Q1=>esp_d_out_7, OFX0=>open, F0=>open, 
                Q0=>esp_d_out_6);
    SLICE_23I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"00FF", LUT1_INITVAL=>X"3C3C", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>mclk_div_cnt_1, 
                C1=>mclk_div_cnt_0, D1=>'X', DI1=>n14, DI0=>n1, A0=>'X', 
                B0=>'X', C0=>'X', D0=>mclk_div_cnt_0, M0=>'X', CE=>'X', 
                CLK=>CRYSTAL_c, LSR=>n367, OFX1=>open, F1=>n14, 
                Q1=>mclk_div_cnt_1, OFX0=>open, F0=>n1, Q0=>mclk_div_cnt_0);
    SLICE_24I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net, A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>rst_n_N_38, CLK=>CRYSTAL_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>VCC_net, 
                Q0=>rst_n);
    u_sdram_SLICE_25I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>cam_pixel_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>cam_pixel_0, CE=>cam_pixel_valid, CLK=>CRYSTAL_c, 
                LSR=>rst_n, OFX1=>open, F1=>open, Q1=>sd_dq_out_1, OFX0=>open, 
                F0=>open, Q0=>sd_dq_out_0);
    u_sdram_SLICE_26I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>cam_pixel_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>cam_pixel_2, CE=>cam_pixel_valid, CLK=>CRYSTAL_c, 
                LSR=>rst_n, OFX1=>open, F1=>open, Q1=>sd_dq_out_3, OFX0=>open, 
                F0=>open, Q0=>sd_dq_out_2);
    u_sdram_SLICE_27I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>cam_pixel_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>cam_pixel_4, CE=>cam_pixel_valid, CLK=>CRYSTAL_c, 
                LSR=>rst_n, OFX1=>open, F1=>open, Q1=>sd_dq_out_5, OFX0=>open, 
                F0=>open, Q0=>sd_dq_out_4);
    u_sdram_SLICE_28I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   LSRMUX=>"INV", GSR=>"DISABLED", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>cam_pixel_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>cam_pixel_6, CE=>cam_pixel_valid, CLK=>CRYSTAL_c, 
                LSR=>rst_n, OFX1=>open, F1=>open, Q1=>sd_dq_out_7, OFX0=>open, 
                F0=>open, Q0=>sd_dq_out_6);
    u_esp_SLICE_29I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", REG0_REGSET=>"SET", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"DD88", 
                   LUT1_INITVAL=>X"FA50", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>SSPI_CS_n_c, B1=>'X', 
                C1=>u_esp_shift_0, D1=>cam_pixel_1, DI1=>u_esp_shift_6_N_133_1, 
                DI0=>u_esp_shift_6_N_133_0, A0=>SSPI_CS_n_c, B0=>cam_pixel_0, 
                C0=>'X', D0=>DIN_c, M0=>'X', CE=>'X', CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>u_esp_shift_6_N_133_1, Q1=>u_esp_shift_1, 
                OFX0=>open, F0=>u_esp_shift_6_N_133_0, Q0=>u_esp_shift_0);
    u_esp_SLICE_30I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", REG0_REGSET=>"SET", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CFC0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>cam_pixel_3, 
                C1=>SSPI_CS_n_c, D1=>u_esp_shift_2, DI1=>u_esp_shift_6_N_133_3, 
                DI0=>u_esp_shift_6_N_133_2, A0=>u_esp_shift_1, B0=>cam_pixel_2, 
                C0=>SSPI_CS_n_c, D0=>'X', M0=>'X', CE=>'X', CLK=>CCLK_c, 
                LSR=>'X', OFX1=>open, F1=>u_esp_shift_6_N_133_3, 
                Q1=>u_esp_shift_3, OFX0=>open, F0=>u_esp_shift_6_N_133_2, 
                Q0=>u_esp_shift_2);
    u_esp_SLICE_31I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CFC0", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_esp_shift_6_N_133_4, A0=>'X', 
                B0=>cam_pixel_4, C0=>SSPI_CS_n_c, D0=>u_esp_shift_3, M0=>'X', 
                CE=>'X', CLK=>CCLK_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>u_esp_shift_6_N_133_4, Q0=>u_esp_shift_4);
    u_esp_SLICE_32I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", CHECK_M0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>u_esp_shift_4, CE=>'X', CLK=>CCLK_c, 
                LSR=>SSPI_CS_n_c, OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>open, Q0=>u_esp_shift_5);
    u_esp_SLICE_33I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AACC", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>u_esp_shift_6_N_133_6, 
                A0=>cam_pixel_valid, B0=>u_esp_shift_5, C0=>'X', 
                D0=>SSPI_CS_n_c, M0=>'X', CE=>'X', CLK=>CCLK_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>u_esp_shift_6_N_133_6, Q0=>u_esp_shift_6);
    SLICE_34I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"EAAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rst_n, B1=>n26, C1=>n25, 
                D1=>n30, DI1=>'X', DI0=>'X', A0=>por_cnt_0, B0=>por_cnt_8, 
                C0=>por_cnt_10, D0=>por_cnt_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>rst_n_N_38, Q1=>open, OFX0=>open, 
                F0=>n25, Q0=>open);
    SLICE_35I: SLOGICB
      generic map (LUT0_INITVAL=>X"F000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>por_cnt_13, B1=>por_cnt_3, 
                C1=>n28, D1=>n22, DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>por_cnt_4, D0=>por_cnt_9, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n30, Q1=>open, OFX0=>open, F0=>n22, 
                Q0=>open);
    SLICE_36I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"0AFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>HREF_c, B1=>'X', C1=>VSYNC_c, 
                D1=>rst_n, DI1=>'X', DI0=>'X', A0=>por_cnt_6, B0=>por_cnt_2, 
                C0=>por_cnt_11, D0=>por_cnt_12, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>PCLK_c_enable_8, Q1=>open, 
                OFX0=>open, F0=>n26, Q0=>open);
    SLICE_37I: SLOGICB
      generic map (LUT0_INITVAL=>X"0FCF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>mclk_div_cnt_0, 
                C0=>rst_n, D0=>mclk_div_cnt_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n367, 
                Q0=>open);
    SLICE_38I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>por_cnt_14, B0=>por_cnt_15, 
                C0=>por_cnt_5, D0=>por_cnt_7, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n28, 
                Q0=>open);
    cam_sdaI: cam_sdaB
      port map (camsda=>cam_sda);
    cam_sclI: cam_sclB
      port map (camscl=>cam_scl);
    MCLKI: MCLKB
      port map (PADDO=>MCLK_c, MCLKS=>MCLK);
    SD_DQ_15_I: SD_DQ_15_B
      port map (SDDQ15=>SD_DQ(15));
    SD_DQ_14_I: SD_DQ_14_B
      port map (SDDQ14=>SD_DQ(14));
    SD_DQ_13_I: SD_DQ_13_B
      port map (SDDQ13=>SD_DQ(13));
    SD_DQ_12_I: SD_DQ_12_B
      port map (SDDQ12=>SD_DQ(12));
    SD_DQ_11_I: SD_DQ_11_B
      port map (SDDQ11=>SD_DQ(11));
    SD_DQ_10_I: SD_DQ_10_B
      port map (SDDQ10=>SD_DQ(10));
    SD_DQ_9_I: SD_DQ_9_B
      port map (SDDQ9=>SD_DQ(9));
    SD_DQ_8_I: SD_DQ_8_B
      port map (SDDQ8=>SD_DQ(8));
    SD_DQ_7_I: SD_DQ_7_B
      port map (PADDO=>sd_dq_out_7, SDDQ7=>SD_DQ(7));
    SD_DQ_6_I: SD_DQ_6_B
      port map (PADDO=>sd_dq_out_6, SDDQ6=>SD_DQ(6));
    SD_DQ_5_I: SD_DQ_5_B
      port map (PADDO=>sd_dq_out_5, SDDQ5=>SD_DQ(5));
    SD_DQ_4_I: SD_DQ_4_B
      port map (PADDO=>sd_dq_out_4, SDDQ4=>SD_DQ(4));
    SD_DQ_3_I: SD_DQ_3_B
      port map (PADDO=>sd_dq_out_3, SDDQ3=>SD_DQ(3));
    SD_DQ_2_I: SD_DQ_2_B
      port map (PADDO=>sd_dq_out_2, SDDQ2=>SD_DQ(2));
    SD_DQ_1_I: SD_DQ_1_B
      port map (PADDO=>sd_dq_out_1, SDDQ1=>SD_DQ(1));
    SD_DQ_0_I: SD_DQ_0_B
      port map (PADDO=>sd_dq_out_0, SDDQ0=>SD_DQ(0));
    SD_DQM_1_I: SD_DQM_1_B
      port map (SDDQM1=>SD_DQM(1));
    SD_DQM_0_I: SD_DQM_0_B
      port map (SDDQM0=>SD_DQM(0));
    SD_CLKI: SD_CLKB
      port map (PADDO=>SD_CLK_c, SDCLK=>SD_CLK);
    SD_CS_NI: SD_CS_NB
      port map (SDCSN=>SD_CS_N);
    SD_WE_NI: SD_WE_NB
      port map (SDWEN=>SD_WE_N);
    SD_RAS_NI: SD_RAS_NB
      port map (SDRASN=>SD_RAS_N);
    SD_CAS_NI: SD_CAS_NB
      port map (SDCASN=>SD_CAS_N);
    SD_A_12_I: SD_A_12_B
      port map (SDA12=>SD_A(12));
    SD_A_11_I: SD_A_11_B
      port map (SDA11=>SD_A(11));
    SD_A_10_I: SD_A_10_B
      port map (SDA10=>SD_A(10));
    SD_A_9_I: SD_A_9_B
      port map (SDA9=>SD_A(9));
    SD_A_8_I: SD_A_8_B
      port map (SDA8=>SD_A(8));
    SD_A_7_I: SD_A_7_B
      port map (SDA7=>SD_A(7));
    SD_A_6_I: SD_A_6_B
      port map (SDA6=>SD_A(6));
    SD_A_5_I: SD_A_5_B
      port map (SDA5=>SD_A(5));
    SD_A_4_I: SD_A_4_B
      port map (SDA4=>SD_A(4));
    SD_A_3_I: SD_A_3_B
      port map (SDA3=>SD_A(3));
    SD_A_2_I: SD_A_2_B
      port map (SDA2=>SD_A(2));
    SD_A_1_I: SD_A_1_B
      port map (SDA1=>SD_A(1));
    SD_A_0_I: SD_A_0_B
      port map (SDA0=>SD_A(0));
    SD_BA_1_I: SD_BA_1_B
      port map (SDBA1=>SD_BA(1));
    SD_BA_0_I: SD_BA_0_B
      port map (SDBA0=>SD_BA(0));
    DOUTI: DOUTB
      port map (PADDO=>DOUT_c, DOUTS=>DOUT);
    ESP_D_7_I: ESP_D_7_B
      port map (PADDO=>esp_d_out_7, PADDT=>esp_d_oe, ESPD7=>ESP_D(7));
    ESP_D_6_I: ESP_D_6_B
      port map (PADDO=>esp_d_out_6, PADDT=>esp_d_oe, ESPD6=>ESP_D(6));
    ESP_D_5_I: ESP_D_5_B
      port map (PADDO=>esp_d_out_5, PADDT=>esp_d_oe, ESPD5=>ESP_D(5));
    ESP_D_4_I: ESP_D_4_B
      port map (PADDO=>esp_d_out_4, PADDT=>esp_d_oe, ESPD4=>ESP_D(4));
    ESP_D_3_I: ESP_D_3_B
      port map (PADDO=>esp_d_out_3, PADDT=>esp_d_oe, ESPD3=>ESP_D(3));
    ESP_D_2_I: ESP_D_2_B
      port map (PADDO=>esp_d_out_2, PADDT=>esp_d_oe, ESPD2=>ESP_D(2));
    ESP_D_1_I: ESP_D_1_B
      port map (PADDO=>esp_d_out_1, PADDT=>esp_d_oe, ESPD1=>ESP_D(1));
    ESP_D_0_I: ESP_D_0_B
      port map (PADDO=>esp_d_out_0, PADDT=>esp_d_oe, ESPD0=>ESP_D(0));
    CRYSTALI: CRYSTALB
      port map (PADDI=>CRYSTAL_c, CRYSTALS=>CRYSTAL);
    VSYNCI: VSYNCB
      port map (PADDI=>VSYNC_c, VSYNCS=>VSYNC);
    HREFI: HREFB
      port map (PADDI=>HREF_c, HREFS=>HREF);
    PCLKI: PCLKB
      port map (PADDI=>PCLK_c, PCLKS=>PCLK);
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
    DINI: DINB
      port map (PADDI=>DIN_c, DINS=>DIN);
    CCLKI: CCLKB
      port map (PADDI=>CCLK_c, CCLKS=>CCLK);
    SSPI_CS_nI: SSPI_CS_nB
      port map (PADDI=>SSPI_CS_n_c, SSPICSn=>SSPI_CS_n);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCC_net);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, ECP5U;
  configuration Structure_CON of fpga_top is
    for Structure
    end for;
  end Structure_CON;


