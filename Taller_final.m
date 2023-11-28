function varargout = Taller_final(varargin)
% TALLER_FINAL MATLAB code for Taller_final.fig
%      TALLER_FINAL, by itself, creates a new TALLER_FINAL or raises the existing
%      singleton*.
%
%      H = TALLER_FINAL returns the handle to a new TALLER_FINAL or the handle to
%      the existing singleton*.
%
%      TALLER_FINAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TALLER_FINAL.M with the given input arguments.
%
%      TALLER_FINAL('Property','Value',...) creates a new TALLER_FINAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Taller_final_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Taller_final_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Taller_final

% Last Modified by GUIDE v2.5 21-Aug-2020 18:37:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Taller_final_OpeningFcn, ...
                   'gui_OutputFcn',  @Taller_final_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Taller_final is made visible.
function Taller_final_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Taller_final (see VARARGIN)

% Choose default command line output for Taller_final
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Taller_final wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Taller_final_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
texto = get(handles.pushbutton1,'String'); 
vy = get(hObject, 'Value');
vx = get(handles.slider2, 'Value');
vw = get(handles.slider4, 'Value');
vz = get(handles.slider5, 'Value');
vr = get(handles.slider3, 'Value');
set(handles.edit2,'String',num2str(vr));
     lados = 4;
    radio = 1;
    theta = 360/lados;
    angulos = 0:theta:360;
    angulos = angulos + 90+vr;
    x=radio*cosd(angulos);
    y=radio*sind(angulos);
    if texto == 'Figura 1';
%         a = vx+vz;
%         b = vy+vw;
       plot(x+vx,y+vy,'Color',[0 0 1]);grid;%figura1
       hold on
       plot(x+vz,y+vw,'Color',[1 0 0]);%figura2
       for i = 1:length(x)-1;
           plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
       end
       hold off
       axis([-5 5 -5 5]);
       set(hObject,'String','Figura 2');
    else
%         a = vx+vz;
%         b = vy+vw; 
        plot(x+vx,y+vy,'Color',[0 0 1]);grid;
        hold on
        plot(x+vz,y+vw,'Color',[1 0 0]);
    
        for i = 1:length(x)-1;
            plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
        end
        hold off
        axis([-5 5 -5 5]);
       set(hObject,'String','Figura 1');
    end
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
texto = get(handles.pushbutton1,'String'); 
vy = get(handles.slider1, 'Value');
vx = get(hObject, 'Value');
vw = get(handles.slider4, 'Value');
vz = get(handles.slider5, 'Value');
vr = get(handles.slider3, 'Value');
set(handles.edit2,'String',num2str(vr));
    lados = 4;
    radio = 1;
    theta = 360/lados;
    angulos = 0:theta:360;
    angulos = angulos + 90+vr;
    x=radio*cosd(angulos);
    y=radio*sind(angulos);
    if texto == 'Figura 1';
%         a = vx+vz;
%         b = vy+vw;
       plot(x+vx,y+vy,'Color',[0 0 1]);grid;%figura1
       hold on
       plot(x+vz,y+vw,'Color',[1 0 0]);%figura2
       for i = 1:length(x)-1;
           plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
       end
       hold off
       axis([-5 5 -5 5]);
       set(hObject,'String','Figura 2');
    else
%         a = vx+vz;
%         b = vy+vw; 
        plot(x+vx,y+vy,'Color',[0 0 1]);grid;
        hold on
        plot(x+vz,y+vw,'Color',[1 0 0]);
    
        for i = 1:length(x)-1;
            plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
        end
        hold off
        axis([-5 5 -5 5]);
       set(hObject,'String','Figura 1');
    end
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
texto = get(hObject,'String');
set(handles.slider1,'Visible','on');
set(handles.slider2,'Visible','on');
set(handles.slider4,'Visible','on');
set(handles.slider5,'Visible','on');
vy = get(handles.slider1, 'Value');
vx = get(handles.slider2, 'Value');
vw = get(handles.slider4, 'Value');
vz = get(handles.slider5, 'Value');
vr = get(handles.slider3, 'Value');
set(handles.edit2,'String',num2str(vr));
     lados = 4;
    radio = 1;
    theta = 360/lados;
    angulos = 0:theta:360;
    angulos = angulos + 90+vr;
    x=radio*cosd(angulos);
    y=radio*sind(angulos);
    if texto == 'Figura 1';
       set(handles.slider1,'Visible','off');
       set(handles.slider2,'Visible','off');
       plot(x+vx,y+vy,'Color',[0 0 1]);grid;%figura1
       hold on
       plot(x+vz,y+vw,'Color',[1 0 0]);%figura2
       for i = 1:length(x)-1;
           plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
       end
       hold off
       axis([-5 5 -5 5]);
       set(hObject,'String','Figura 2');
    else
       set(handles.slider4,'Visible','off');
       set(handles.slider5,'Visible','off');
%         a = vx+vz;
%         b = vy+vw; 
        plot(x+vx,y+vy,'Color',[0 0 1]);grid;
        hold on
        plot(x+vz,y+vw,'Color',[1 0 0]);
    
        for i = 1:length(x)-1;
            plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
        end
        hold off
        axis([-5 5 -5 5]);
       set(hObject,'String','Figura 1');
    end
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
texto = get(handles.pushbutton1,'String'); 
vy = get(handles.slider1, 'Value');
vx = get(handles.slider2, 'Value');
vw = get(handles.slider4, 'Value');
vz = get(handles.slider5, 'Value');
vr = get(hObject, 'Value');
set(handles.edit2,'String',num2str(vr));
     lados = 4;
    radio = 1;
    theta = 360/lados;
    angulos = 0:theta:360;
    angulos = angulos + 90+vr;
    x=radio*cosd(angulos);
    y=radio*sind(angulos);
    if texto == 'Figura 1';
%         a = vx+vz;
%         b = vy+vw;
       plot(x+vx,y+vy,'Color',[0 0 1]);grid;%figura1
       hold on
       plot(x+vz,y+vw,'Color',[1 0 0]);%figura2
       for i = 1:length(x)-1;
           plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
       end
       hold off
       axis([-5 5 -5 5]);
       set(hObject,'String','Figura 2');
    else
%         a = vx+vz;
%         b = vy+vw; 
        plot(x+vx,y+vy,'Color',[0 0 1]);grid;
        hold on
        plot(x+vz,y+vw,'Color',[1 0 0]);
    
        for i = 1:length(x)-1;
            plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
        end
        hold off
        axis([-5 5 -5 5]);
       set(hObject,'String','Figura 1');
    end
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
texto = get(handles.pushbutton1,'String'); 
vy = get(handles.slider1, 'Value');
vx = get(handles.slider2, 'Value');
vw = get(hObject, 'Value');
vz = get(handles.slider5, 'Value');
vr = get(handles.slider3, 'Value');
set(handles.edit2,'String',num2str(vr));
    lados = 4;
    radio = 1;
    theta = 360/lados;
    angulos = 0:theta:360;
    angulos = angulos + 90+vr;
    x=radio*cosd(angulos);
    y=radio*sind(angulos);
    if texto == 'Figura 1';
%         a = vx+vz;
%         b = vy+vw;
       plot(x+vx,y+vy,'Color',[0 0 1]);grid;%figura1
       hold on
       plot(x+vz,y+vw,'Color',[1 0 0]);%figura2
       for i = 1:length(x)-1;
           plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
       end
       hold off
       axis([-5 5 -5 5]);
       set(hObject,'String','Figura 2');
    else
%         a = vx+vz;
%         b = vy+vw; 
        plot(x+vx,y+vy,'Color',[0 0 1]);grid;
        hold on
        plot(x+vz,y+vw,'Color',[1 0 0]);
    
        for i = 1:length(x)-1;
            plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
        end
        hold off
        axis([-5 5 -5 5]);
       set(hObject,'String','Figura 1');
    end
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
texto = get(handles.pushbutton1,'String'); 
vy = get(handles.slider1, 'Value');
vx = get(handles.slider2, 'Value');
vw = get(handles.slider4, 'Value');
vz = get(hObject, 'Value');
vr = get(handles.slider3, 'Value');
set(handles.edit2,'String',num2str(vr));
     lados = 4;
    radio = 1;
    theta = 360/lados;
    angulos = 0:theta:360;
    angulos = angulos + 90+vr;
    x=radio*cosd(angulos);
    y=radio*sind(angulos);
    if texto == 'Figura 1';
%         a = vx+vz;
%         b = vy+vw;
       plot(x+vx,y+vy,'Color',[0 0 1]);grid;%figura1
       hold on
       plot(x+vz,y+vw,'Color',[1 0 0]);%figura2
       for i = 1:length(x)-1;
           plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
       end
       hold off
       axis([-5 5 -5 5]);
       set(hObject,'String','Figura 2');
    else
%         a = vx+vz;
%         b = vy+vw; 
        plot(x+vx,y+vy,'Color',[0 0 1]);grid;
        hold on
        plot(x+vz,y+vw,'Color',[1 0 0]);
    
        for i = 1:length(x)-1;
            plot([x(i)+vx,x(i)+vz],[y(i)+vy,y(i)+vw],'Color',[0 1 0]);
        end
        hold off
        axis([-5 5 -5 5]);
       set(hObject,'String','Figura 1');
    end
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
