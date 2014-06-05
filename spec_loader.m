clear all;

%*******************************************************************************
%* Test Case 1 - PI_25x25xT0p5
%*******************************************************************************
% field1 = 'Area';     value1 = (25e-3)^2; % Metres
% field2 = 'Zc';       value2 = 30.48e6; 
% field3 = 'Co';       value3 = 9.281e-06;
% field4 = 'Ze';       value4 = 50;
% field5 = 'Zo';       value5 = 1;
% field6 = 'vc';       value6 = 4054.03;
% field7 = 'L';        value7 = 0.495e-3;
% field8 = 'h';        value8 = 2.36492e9;
% field9 = 'f_range';  value9 = 4.05e6:1e1:4.14e6; %BW: 4e6:1e1:4.3e6;  %Normal: 0:1e4:10e6
% field10 = 'Z1';      value10 = 404;
% field11 = 'Z2';      value11 = 404;
% field12 = 'Y';       value12 = 1.245678e11;
% field13 = 'kt';      value13 = 0.48;
% field14 = 'title';   value14 = 'Test Case 1 (PZT5A) 25mmx25mm, 0.5mm thickness';
% % For lattice model
% % N -> Backing
% field15 = 'ZN';      value15 = [404];
% field16 = 'VN';      value16 = [302];
% % M -> Matching
% field17 = 'ZM';      value17 = [404,404];
% field18 = 'VM';      value18 =[302,302];
% field19 = 'lM';      value19 = [1e-3];
% spec = struct(field1,value1,field2,value2,field3,value3,...
%     field4,value4,field5,value5,field6,value6,field7,value7,...
%     field8,value8,field9,value9,field10,value10,field11,value11,...
%     field12,value12,field13,value13,field14,value14,field15,value15,...
%     field16,value16,field17,value17,field18,value18,field19,value19);


%*******************************************************************************
%* Test Case 2 - PI_20x20xT1
%*******************************************************************************
% field1 = 'Area';     value1 = (20e-3)^2; % Metres
% field2 = 'Zc';       value2 = 29.94e6; 
% field3 = 'Co';       value3 = 2.962-06;
% field4 = 'Ze';       value4 = 1;
% field5 = 'Zo';       value5 = 1;
% field6 = 'vc';       value6 = 4054.03;
% field7 = 'L';        value7 = 0.992e-3;
% field8 = 'h';        value8 = 2.36492e9;
% field9 = 'f_range';  value9 = 1.9e6:1e2:2.2e6; %BW: 1.6e6:1e2:2.5e6;  Normal: 0:1e4:5e6
% field10 = 'Z1';      value10 = 404;
% field11 = 'Z2';      value11 = 404;
% field12 = 'Y';       value12 = 1.213741e11;
% field13 = 'kt';      value13 = 0.48;
% field14 = 'title';   value14 = 'Test Case 2 (PZT5A) - 20mmx20mm, 1mm thickness';
% % For lattice model
% % N -> Backing
% field15 = 'ZN';      value15 = [404];
% field16 = 'VN';      value16 = [302];
% % M -> Matching
% field17 = 'ZM';      value17 = [404,404];
% field18 = 'VM';      value18 =[302,302];
% field19 = 'lM';      value19 = [1e-3];
% spec = struct(field1,value1,field2,value2,field3,value3,...
%     field4,value4,field5,value5,field6,value6,field7,value7,...
%     field8,value8,field9,value9,field10,value10,field11,value11,...
%     field12,value12,field13,value13,field14,value14,field15,value15,...
%     field16,value16,field17,value17,field18,value18,field19,value19);


%*******************************************************************************
%* Test Case 3 - PI_20x20xT2
%*******************************************************************************
% field1 = 'Area';     value1 = (20e-3)^2; % Metres
% field2 = 'Zc';       value2 = 29.94e6; 
% field3 = 'Co';       value3 = 1.495e-06;
% field4 = 'Ze';       value4 = 1;
% field5 = 'Zo';       value5 = 1;
% field6 = 'vc';       value6 = 4054.03;
% field7 = 'L';        value7 = 1.967e-3;
% field8 = 'h';        value8 = 2.36492e9;
% field9 = 'f_range';  value9 = 0.85e6:1e2:1.2e6; % Normal: 1:1e4:2.5e6;  BW: 0.8e6:1e2:1.3e6
% field10 = 'Z1';      value10 = 404;
% field11 = 'Z2';      value11 = 404;
% field12 = 'Y';       value12 = 1.213741e11;
% field13 = 'kt';      value13 = 0.48;
% field14 = 'title';   value14 = 'Test Case 3 (PZT5A) - 20mmx20mm, 2mm thickness';
% % For lattice model
% % N -> Backing
% field15 = 'ZN';      value15 = [404];
% field16 = 'VN';      value16 = [302];
% % M -> Matching
% field17 = 'ZM';      value17 = [404,404];
% field18 = 'VM';      value18 =[302,302];
% field19 = 'lM';      value19 = [1e-3];
% spec = struct(field1,value1,field2,value2,field3,value3,...
%     field4,value4,field5,value5,field6,value6,field7,value7,...
%     field8,value8,field9,value9,field10,value10,field11,value11,...
%     field12,value12,field13,value13,field14,value14,field15,value15,...
%     field16,value16,field17,value17,field18,value18,field19,value19);