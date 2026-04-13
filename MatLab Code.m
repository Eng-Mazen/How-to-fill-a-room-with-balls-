%% Gathering room and ball volumes and type of arrnagement
room_volume = 1;
for i = 1 : 3
    room_dimension = input(['Enter dimension ' num2str(i) ' value (Ensure that its a number and in meter):']);
    room_volume = room_dimension * room_volume;
end
ball_diameter = input('Enter the ball diameter in meter: ');
ball_volume = pi * ball_diameter^3 / 6;
type_of_arrangement = lower(input("Enter the arrangement type of balls (sc, bcc, fcc, hcp, rand): ", 's'));

%% Solving for every case
if type_of_arrangement == "sc"
    N = 0.52 * room_volume / ball_volume;
    disp(["The number of balls = " fix(N)]);
elseif type_of_arrangement == "bcc"
    N = 0.68 * room_volume / ball_volume;
    disp(["The number of balls = " fix(N)]);
elseif type_of_arrangement == "fcc" || "hcp"
        N = 0.74 * room_volume / ball_volume;
        disp(["The number of balls = " fix(N)]);
elseif type_of_arrangement == "rand"
        pk = 0.52 + (0.74 - 0.52) * rand;
        N = pk * room_volume / ball_volume;
        disp(["The number of balls = " fix(N)]);
else
    disp("You Entered a wrong arrangement type, please restart the program")
end
