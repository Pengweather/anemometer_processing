% Initialization
angle = linspace(0, 360, 360 / 10 + 1)';

% Each row contains the start and end time for each wind speed listed in the wind
% speed category
time_periods = ["14:46:00", "14:46:30"; ... 
                "14:46:35", "14:47:05"; ...
                "14:47:20", "14:47:50"; ...
                "14:48:00", "14:48:30"; ...
                "14:48:40", "14:49:10"; ...
                "14:49:20", "14:49:50"; ...
                "14:50:00", "14:50:30"; ...
                "14:50:50", "14:51:20"; ... 
                "14:51:35", "14:52:05"; ...
                "14:52:15", "14:52:45"; ...
                "14:53:00", "14:53:30"; ...
                "14:53:40", "14:54:10"; ...
                "14:54:20", "14:54:50"; ...
                "14:55:00", "14:55:30"; ...
                "14:55:40", "14:56:15"; ...
                "14:56:45", "14:57:15"; ...
                "14:57:30", "14:58:00"; ...
                "14:58:15", "14:58:45"; ...
                "14:59:00", "14:59:30"; ...
                "14:59:40", "15:00:10"; ...
                "15:00:30", "15:01:00"; ...
                "15:01:10", "15:01:40"; ...
                "15:01:45", "15:02:15"; ...
                "15:02:20", "15:02:50"; ...
                "15:03:00", "15:03:30"; ...
                "15:03:35", "15:04:05"; ...
                "15:04:15", "15:04:45"; ...
                "15:05:00", "15:05:30"; ...
                "15:05:40", "15:06:10"; ...
                "15:06:20", "15:06:50"; ...
                "15:06:55", "15:07:25"; ...
                "15:07:30", "15:08:00"; ...
                "15:08:05", "15:08:35"; ...
                "15:08:40", "15:09:10"; ...
                "15:09:20", "15:09:50"; ...
                "15:09:55", "15:10:25"; ...
                "15:10:30", "15:11:00"];
% Parse data
fid = fopen('anemometer_graph_data_usblocal_0_25_rotation_test_vav.tsv');
data = textscan(fid, '%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s', 'HeaderLines', 1);
fclose(fid);

process_data(data, angle, time_periods, 'angle')