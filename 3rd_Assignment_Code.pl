% pc/3=(components , substandard , substandard_components)

pc(component(power_supply),substandard(cable),[thin_tube,optical_fiber]).
pc(component(power_supply),substandard(adapter),[wire,core]).
pc(component(power_supply),substandard(fan),[led]).

% component/2 = (αντικειμενο , συστατικο)

component(pc,power_supply).

% component_material/2 = (συστατικο , μεταλλο η πλαστικο)

component_material(power_supply,metal).

%  substandard/2 (συστατικό, υποσυστατικό)
substandard(power_supply,fan).
substandard(power_supply,caple).
substandard(power_supply,adapter).

%substandard_components (υποσυστατικό, [συστατικά, υποσυστατικού])

substandard_components(adapter,[wire,core]).
substandard_components(cable,[thin_tube,optical_fiber]).
substandard_components(fan,[led]).

pc(component(screen),substandard(crystal_liquid),[sealing_system,glass]).
pc(component(screen),substandard(tube),[electron_beam,graphics_circuit]).

component(pc,screen).
component_material(screen,plastic).
substandard(screen,crystal_liquid).
substandard(screen,tube).
substandard_components(tube,[electron_beam,graphics_circuit]).
substandard_components(crystal_liquid,[sealing_system,glass]).

pc(component(motherboard),substandard(capacitors),[boards]).
pc(component(motherboard),substandard(battery),[electrodes,microchip]).

component(pc,motherboard).
component_material(motherboard,plastic).
substandard(motherboard,battery).
substandard(motherboard,capacitors).
substandard_components(battery,[electrodes,microchip]).
substandard_components(capacitors,[boards]).


comp(Y,X):-component(Y,X).
subst(Y,X):-substandard(Y,X).

material(X,Y):-component_material(X,Y).

% allcomponents/1:  το σύνολο των συστατικών του υπολογιστή.
allcomponents(X):-component(X,Z),nl,write(Z),nl,inner_lvl(Z).

% οι λιστες
inner_lvl([H|T]):-component(H,Y),nl,write(Y),nl,inner_lvl(T).
inner_lvl([H|T]):-component(H,Y),inner2_lvl(Y).
inner2_lvl([E|F]):-component(E,G),nl,write(G),nl,inner2_lvl(F).