<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="WR_b" />
        <signal name="XLXN_4" />
        <signal name="XLXN_7" />
        <signal name="XLXN_10" />
        <signal name="XLXN_6" />
        <signal name="XLXN_13" />
        <signal name="CS_b" />
        <signal name="XLXN_3" />
        <signal name="XLXN_16" />
        <signal name="RD_b" />
        <signal name="XLXN_18" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="A0" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_38" />
        <signal name="XLXN_42" />
        <signal name="XLXN_44" />
        <signal name="XLXN_46" />
        <signal name="XLXN_48" />
        <signal name="XLXN_37" />
        <signal name="XLXN_62" />
        <signal name="X" />
        <signal name="XLXN_29" />
        <signal name="XLXN_28" />
        <signal name="XLXN_19" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <port polarity="Input" name="WR_b" />
        <port polarity="Input" name="CS_b" />
        <port polarity="Input" name="RD_b" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="X" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
        </blockdef>
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="WR_b" name="I0" />
            <blockpin signalname="WR_b" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="I" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_5">
            <blockpin signalname="CS_b" name="I0" />
            <blockpin signalname="CS_b" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_6" name="I" />
            <blockpin signalname="XLXN_78" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="RD_b" name="I0" />
            <blockpin signalname="RD_b" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_15">
            <blockpin signalname="A0" name="I0" />
            <blockpin signalname="A0" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_25" name="I" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_28">
            <blockpin signalname="XLXN_77" name="I" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_21">
            <blockpin signalname="XLXN_78" name="I0" />
            <blockpin signalname="XLXN_75" name="I1" />
            <blockpin signalname="XLXN_77" name="I2" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_18">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="X" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_17">
            <blockpin signalname="XLXN_29" name="I0" />
            <blockpin signalname="X" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_14">
            <blockpin signalname="XLXN_78" name="I0" />
            <blockpin signalname="XLXN_75" name="I1" />
            <blockpin signalname="XLXN_71" name="I2" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_7">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_78" name="I1" />
            <blockpin signalname="XLXN_71" name="I2" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_41">
            <blockpin signalname="X" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="832" y="1104" name="XLXI_1" orien="R0" />
        <instance x="1152" y="1040" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1152" y1="1008" y2="1008" x1="1088" />
        </branch>
        <branch name="WR_b">
            <wire x2="816" y1="1008" y2="1008" x1="688" />
            <wire x2="816" y1="1008" y2="1040" x1="816" />
            <wire x2="832" y1="1040" y2="1040" x1="816" />
            <wire x2="832" y1="976" y2="976" x1="816" />
            <wire x2="816" y1="976" y2="1008" x1="816" />
        </branch>
        <iomarker fontsize="28" x="688" y="1008" name="WR_b" orien="R180" />
        <instance x="832" y="1360" name="XLXI_5" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1152" y1="1264" y2="1264" x1="1088" />
        </branch>
        <branch name="CS_b">
            <wire x2="816" y1="1264" y2="1264" x1="688" />
            <wire x2="816" y1="1264" y2="1296" x1="816" />
            <wire x2="832" y1="1296" y2="1296" x1="816" />
            <wire x2="832" y1="1232" y2="1232" x1="816" />
            <wire x2="816" y1="1232" y2="1264" x1="816" />
        </branch>
        <instance x="832" y="1568" name="XLXI_3" orien="R0" />
        <instance x="1152" y="1504" name="XLXI_4" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1152" y1="1472" y2="1472" x1="1088" />
        </branch>
        <branch name="RD_b">
            <wire x2="816" y1="1472" y2="1472" x1="688" />
            <wire x2="816" y1="1472" y2="1504" x1="816" />
            <wire x2="832" y1="1504" y2="1504" x1="816" />
            <wire x2="832" y1="1440" y2="1440" x1="816" />
            <wire x2="816" y1="1440" y2="1472" x1="816" />
        </branch>
        <iomarker fontsize="28" x="688" y="1264" name="CS_b" orien="R180" />
        <iomarker fontsize="28" x="688" y="1472" name="RD_b" orien="R180" />
        <instance x="1152" y="1296" name="XLXI_6" orien="R0" />
        <instance x="832" y="896" name="XLXI_15" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="1152" y1="800" y2="800" x1="1088" />
        </branch>
        <branch name="A0">
            <wire x2="816" y1="800" y2="800" x1="688" />
            <wire x2="816" y1="800" y2="832" x1="816" />
            <wire x2="832" y1="832" y2="832" x1="816" />
            <wire x2="832" y1="768" y2="768" x1="816" />
            <wire x2="816" y1="768" y2="800" x1="816" />
        </branch>
        <instance x="1152" y="832" name="XLXI_16" orien="R0" />
        <iomarker fontsize="28" x="688" y="800" name="A0" orien="R180" />
        <instance x="2016" y="672" name="XLXI_21" orien="R0" />
        <instance x="2448" y="1328" name="XLXI_18" orien="R0" />
        <instance x="2448" y="1072" name="XLXI_17" orien="R0" />
        <instance x="2064" y="1136" name="XLXI_14" orien="R0" />
        <instance x="2064" y="1392" name="XLXI_7" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="2448" y1="544" y2="544" x1="2272" />
        </branch>
        <branch name="X">
            <wire x2="2384" y1="800" y2="800" x1="2320" />
            <wire x2="2384" y1="800" y2="944" x1="2384" />
            <wire x2="2448" y1="944" y2="944" x1="2384" />
            <wire x2="2384" y1="944" y2="1200" x1="2384" />
            <wire x2="2448" y1="1200" y2="1200" x1="2384" />
            <wire x2="2448" y1="608" y2="608" x1="2384" />
            <wire x2="2384" y1="608" y2="800" x1="2384" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2448" y1="1008" y2="1008" x1="2320" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2448" y1="1264" y2="1264" x1="2320" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2064" y1="1472" y2="1472" x1="1376" />
            <wire x2="2064" y1="1328" y2="1472" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2320" y="800" name="X" orien="R180" />
        <instance x="1472" y="832" name="XLXI_28" orien="R0" />
        <branch name="XLXN_71">
            <wire x2="1936" y1="800" y2="800" x1="1696" />
            <wire x2="2064" y1="800" y2="800" x1="1936" />
            <wire x2="2064" y1="800" y2="944" x1="2064" />
            <wire x2="1936" y1="800" y2="1200" x1="1936" />
            <wire x2="2064" y1="1200" y2="1200" x1="1936" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="1696" y1="1008" y2="1008" x1="1376" />
            <wire x2="2064" y1="1008" y2="1008" x1="1696" />
            <wire x2="1696" y1="544" y2="1008" x1="1696" />
            <wire x2="2016" y1="544" y2="544" x1="1696" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="1424" y1="800" y2="800" x1="1376" />
            <wire x2="1472" y1="800" y2="800" x1="1424" />
            <wire x2="2016" y1="480" y2="480" x1="1424" />
            <wire x2="1424" y1="480" y2="800" x1="1424" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="1792" y1="1264" y2="1264" x1="1376" />
            <wire x2="1968" y1="1264" y2="1264" x1="1792" />
            <wire x2="2064" y1="1264" y2="1264" x1="1968" />
            <wire x2="2016" y1="608" y2="608" x1="1792" />
            <wire x2="1792" y1="608" y2="1264" x1="1792" />
            <wire x2="2064" y1="1072" y2="1072" x1="1968" />
            <wire x2="1968" y1="1072" y2="1264" x1="1968" />
        </branch>
        <instance x="2448" y="672" name="XLXI_41" orien="R0" />
    </sheet>
</drawing>