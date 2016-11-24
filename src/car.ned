//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package derp;



simple switch
{
    @display("i=abstract/switch");
    gates:
        input in;
        output out;

}



simple radar
{
    @display("i=device/receiverdish");

    gates:
        input in;
        output out;
}

simple CPU
{
    @display("i=device/cpu");
    gates:
        input in;
        output out;
}

simple cam
{
    @display("i=device/cam");
    gates:
        input in;
        output out;
}

simple crossdomain
{
    @display("i=block/cogwheel");
    gates:
        input in;
        output out;
}

//
// TODO auto-generated type
//
network Car
{
    @display("bgb=753.8462,306.9231,white");



    types:
    submodules:
        switch: switch {
            @display("p=297.69232,157.6923");
        }
        radar: radar {
            @display("p=550,158.46155");
        }

        cpu: CPU {
            @display("p=296.15387,64.61539");
        }
        front_cam: cam {
            @display("p=550,86.15385");
        }
        sidecam_r: cam {
            @display("p=440.00003,214.61539");
        }
        sidecam_l: cam {
            @display("p=435.38464,43.846157");
        }
        rearcam: cam {
            @display("p=123.84616,143.07693");
        }
        adascam: cam {
            @display("p=333.84616,80");
        }
        crossdomain: crossdomain {
            @display("p=297.69232,235.38463");
        }
    connections:
        radar.out --> {  delay = 100ms; } --> switch.in;
        switch.out --> {  delay = 100ms; } --> cpu.in;
        cpu.out --> {  delay = 100ms; } --> switch.in;
        sidecam_r.out --> {  delay = 100ms; } --> switch.in;
        sidecam_l.out --> {  delay = 100ms; } --> switch.in;
        front_cam.out --> {  delay = 100ms; } --> switch.in;
        adascam.out --> {  delay = 100ms; } --> switch.in;
        rearcam.out --> {  delay = 100ms; } --> switch.in;
        crossdomain.out --> {  delay = 100ms; } --> switch.in;
        switch.out --> {  delay = 100ms; } --> crossdomain.in;


}
